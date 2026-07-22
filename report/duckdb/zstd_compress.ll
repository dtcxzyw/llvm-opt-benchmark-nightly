inline.NumInlined: 798
inline.NumDeleted: 175
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN11duckdb_zstdL29ZSTD_buildSequencesStatisticsEPKNS_10seqStore_tEmPKNS_17ZSTD_fseCTables_tEPS3_PhPKhNS_13ZSTD_strategyEPjPvm:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i32 31, ptr %i.b, align 4, !tbaa !3
  %i.cc = call noundef i64 @_ZN11duckdb_zstd19HIST_countFast_wkspEPjS0_PKvmPvm(ptr noundef %8, ptr noundef nonnull %i.b, ptr noundef %i.g, i64 noundef %2, ptr noundef %9, i64 noundef %10)
  %i.cd = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  %i.ce = icmp ult i32 %i.cd, 29
  %i.cf = zext i1 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 3540
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !250
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 3540 ; 2 uses
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !250
  %i.cj = call noundef i32 @_ZN11duckdb_zstd23ZSTD_selectEncodingTypeEPNS_10FSE_repeatEPKjjmmjS3_PKsjNS_20ZSTD_defaultPolicy_eENS_13ZSTD_strategyE(ptr noundef nonnull %i.ci, ptr noundef %8, i32 noundef %i.cd, i64 noundef %i.cc, i64 noundef %2, i32 noundef 8, ptr noundef nonnull %3, ptr noundef nonnull @_ZN11duckdb_zstdL14OF_defaultNormE, i32 noundef 5, i32 noundef %i.cf, i32 noundef %7) ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !465
  %i.cl = ptrtoint ptr %i.cb to i64
  %i.cm = sub i64 %i.bt, %i.cl
  %i.cn = load i32, ptr %i.b, align 4, !tbaa !3
  %i.co = call noundef i64 @_ZN11duckdb_zstd16ZSTD_buildCTableEPvmPjjNS_20symbolEncodingType_eES1_jPKhmPKsjjPKjmS0_m(ptr noundef %i.cb, i64 noundef %i.cm, ptr noundef nonnull %4, i32 noundef 8, i32 noundef %i.cj, ptr noundef %8, i32 noundef %i.cn, ptr noundef %i.g, i64 noundef %2, ptr noundef nonnull @_ZN11duckdb_zstdL14OF_defaultNormE, i32 noundef 5, i32 noundef 28, ptr noundef nonnull %3, i64 noundef 772, ptr noundef %9, i64 noundef %10) ; 5 uses
  %i.cp = icmp ult i64 %i.co, -119
  br i1 %i.cp, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cq = icmp eq i32 %i.cj, 2
  br i1 %i.cq, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  store i64 %i.co, ptr %i.l, align 8, !tbaa !460
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.co, ptr %i.cr, align 8, !tbaa !464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.u

bb.p:                                             ; preds = %bb.m, %bb.n
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.co ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i32 52, ptr %i.c, align 4, !tbaa !3
  %i.ct = call noundef i64 @_ZN11duckdb_zstd19HIST_countFast_wkspEPjS0_PKvmPvm(ptr noundef %8, ptr noundef nonnull %i.c, ptr noundef %i.k, i64 noundef %2, ptr noundef %9, i64 noundef %10)
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 3544
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !251
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 3544 ; 2 uses
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !251
  %i.cx = load i32, ptr %i.c, align 4, !tbaa !3
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 772 ; 2 uses
  %i.cz = call noundef i32 @_ZN11duckdb_zstd23ZSTD_selectEncodingTypeEPNS_10FSE_repeatEPKjjmmjS3_PKsjNS_20ZSTD_defaultPolicy_eENS_13ZSTD_strategyE(ptr noundef nonnull %i.cw, ptr noundef %8, i32 noundef %i.cx, i64 noundef %i.ct, i64 noundef %2, i32 noundef 9, ptr noundef nonnull %i.cy, ptr noundef nonnull @_ZN11duckdb_zstdL14ML_defaultNormE, i32 noundef 6, i32 noundef 1, i32 noundef %7) ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.cz, ptr %i.da, align 8, !tbaa !466
  %i.db = ptrtoint ptr %i.cs to i64
  %i.dc = sub i64 %i.bt, %i.db
  %i.dd = load i32, ptr %i.c, align 4, !tbaa !3
  %i.de = call noundef i64 @_ZN11duckdb_zstd16ZSTD_buildCTableEPvmPjjNS_20symbolEncodingType_eES1_jPKhmPKsjjPKjmS0_m(ptr noundef %i.cs, i64 noundef %i.dc, ptr noundef nonnull %i.e, i32 noundef 9, i32 noundef %i.cz, ptr noundef %8, i32 noundef %i.dd, ptr noundef %i.k, i64 noundef %2, ptr noundef nonnull @_ZN11duckdb_zstdL14ML_defaultNormE, i32 noundef 6, i32 noundef 52, ptr noundef nonnull %i.cy, i64 noundef 1452, ptr noundef %9, i64 noundef %10) ; 4 uses
  %i.df = icmp ult i64 %i.de, -119
  br i1 %i.df, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.dg = icmp eq i32 %i.cz, 2
  br i1 %i.dg, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  store i64 %i.de, ptr %i.l, align 8, !tbaa !460
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.de, ptr %i.dh, align 8, !tbaa !464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  br label %bb.u

bb.t:                                             ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.di = add nuw nsw i64 %i.co, %i.bx
  %i.dj = add nuw nsw i64 %i.di, %i.de
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !464
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.o, %bb.k, %bb.t
  ret void
}

declare noundef i64 @_ZN11duckdb_zstd19HIST_countFast_wkspEPjS0_PKvmPvm(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #12

declare noundef i32 @_ZN11duckdb_zstd23ZSTD_selectEncodingTypeEPNS_10FSE_repeatEPKjjmmjS3_PKsjNS_20ZSTD_defaultPolicy_eENS_13ZSTD_strategyE(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

declare noundef i64 @_ZN11duckdb_zstd16ZSTD_buildCTableEPvmPjjNS_20symbolEncodingType_eES1_jPKhmPKsjjPKjmS0_m(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN11duckdb_zstdL28ZSTD_overflowCorrectIfNeededEPNS_17ZSTD_matchState_tEPNS_10ZSTD_cwkspEPKNS_18ZSTD_CCtx_params_sEPKvS8_(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.1.0.copyload = load ptr, ptr %.sroa.1.0..sroa_idx, align 8, !tbaa !207 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = ptrtoint ptr %4 to i64
  %i.d = ptrtoint ptr %.sroa.1.0.copyload to i64  ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = trunc i64 %i.e to i32
  %i.g = icmp ult i32 %i.f, -536870911
  br i1 %i.g, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !105
  %i.j = shl nuw i32 1, %i.i
  %i.k = load i32, ptr %i.a, align 4, !tbaa !107
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !111
  %i.n = icmp ugt i32 %i.m, 5
  %.neg.i = sext i1 %i.n to i32
  %i.o = add i32 %i.k, %.neg.i
  %i.p = shl nuw i32 1, %i.o                      ; 3 uses
  %i.q = add i32 %i.p, -1
  %i.r = ptrtoint ptr %3 to i64
  %i.s = sub i64 %i.r, %i.d
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = and i32 %i.q, %i.t                       ; 2 uses
  %i.v = icmp samesign ult i32 %i.u, 2
  %i.w = tail call i32 @llvm.umax.i32(i32 %i.p, i32 2)
  %i.x = select i1 %i.v, i32 %i.w, i32 0
  %i.y = tail call i32 @llvm.umax.i32(i32 %i.j, i32 %i.p)
  %i.z = add nuw i32 %i.y, %i.u
  %i.aa = add i32 %i.z, %i.x
  %i.ab = sub i32 %i.t, %i.aa                     ; 9 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.1.0.copyload, i64 %i.ac
  store ptr %i.ad, ptr %.sroa.1.0..sroa_idx, align 8, !tbaa !265
  %i.ae = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !262
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store ptr %i.af, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !262
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !263 ; 2 uses
  %i.ai = add i32 %i.ab, 2                        ; 3 uses
  %i.aj = icmp ult i32 %i.ah, %i.ai
  %i.ak = sub i32 %i.ah, %i.ab
  %storemerge.i = select i1 %i.aj, i32 2, i32 %i.ak
  store i32 %storemerge.i, ptr %i.ag, align 4, !tbaa !263
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !264 ; 2 uses
  %i.an = icmp ult i32 %i.am, %i.ai
  %i.ao = sub i32 %i.am, %i.ab
  %storemerge33.i = select i1 %i.an, i32 2, i32 %i.ao
  store i32 %storemerge33.i, ptr %i.al, align 8, !tbaa !264
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !467
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !467
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !67
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  store ptr %i.at, ptr %i.au, align 8, !tbaa !69
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !106
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !447
  tail call fastcc void @_ZN11duckdb_zstdL16ZSTD_reduceTableEPjjj(ptr noundef %i.az, i32 noundef %i.ax, i32 noundef %i.ab)
  %i.ba = load i32, ptr %i.l, align 4, !tbaa !111 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !91
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !441
  %.not.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread21.i

bb.c:                                             ; preds = %bb.b
  %.not4.i.i = icmp eq i32 %i.ba, 1
  br i1 %.not4.i.i, label %_ZN11duckdb_zstdL24ZSTD_reduceTable_btlazy2EPjjj.exit.i, label %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.i

_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.i: ; preds = %bb.c
  %i.bf = add i32 %i.ba, -3
  %i.bg = icmp ult i32 %i.bf, 3
  %i.bh = icmp eq i32 %i.bc, 1
  %.not8.i.not.i = and i1 %i.bg, %i.bh
  br i1 %.not8.i.not.i, label %_ZN11duckdb_zstdL24ZSTD_reduceTable_btlazy2EPjjj.exit.i, label %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread21.i

_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread21.i: ; preds = %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.i, %bb.b
  %i.bi = load i32, ptr %i.a, align 8, !tbaa !107
  %i.bj = shl nuw i32 1, %i.bi                    ; 3 uses
  %i.bk = icmp eq i32 %i.ba, 6
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !448 ; 2 uses
  br i1 %i.bk, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread21.i
  %i.bn = sdiv i32 %i.bj, 16
  %i.bo = icmp sgt i32 %i.bj, 15
  br i1 %i.bo, label %.preheader.i.i.preheader, label %_ZN11duckdb_zstdL24ZSTD_reduceTable_btlazy2EPjjj.exit.i

.preheader.i.i.preheader:                         ; preds = %bb.d
  %i.bp = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %i.bq = shufflevector <4 x i32> %i.bp, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.br = insertelement <4 x i32> poison, i32 %i.ab, i64 0
  %i.bs = shufflevector <4 x i32> %i.br, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.preheader.i.i ], [ 0, %.preheader.i.i.preheader ] ; 2 uses
  %.021.i4.i.i = phi i32 [ %5, %.preheader.i.i ], [ 0, %.preheader.i.i.preheader ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.i.i ; 5 uses
  %i.bu = load <4 x i32>, ptr %i.bt, align 4, !tbaa !3 ; 3 uses
  %i.bv = icmp eq <4 x i32> %i.bu, splat (i32 1)
  %i.bw = icmp ult <4 x i32> %i.bu, %i.bq
  %i.bx = sub <4 x i32> %i.bu, %i.bs
  %i.by = select <4 x i1> %i.bw, <4 x i32> zeroinitializer, <4 x i32> %i.bx
  %i.bz = select <4 x i1> %i.bv, <4 x i32> splat (i32 1), <4 x i32> %i.by
  store <4 x i32> %i.bz, ptr %i.bt, align 4, !tbaa !3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %i.cb = load <4 x i32>, ptr %i.ca, align 4, !tbaa !3 ; 3 uses
  %i.cc = icmp eq <4 x i32> %i.cb, splat (i32 1)
  %i.cd = icmp ult <4 x i32> %i.cb, %i.bq
  %i.ce = sub <4 x i32> %i.cb, %i.bs
  %i.cf = select <4 x i1> %i.cd, <4 x i32> zeroinitializer, <4 x i32> %i.ce
  %i.cg = select <4 x i1> %i.cc, <4 x i32> splat (i32 1), <4 x i32> %i.cf
  store <4 x i32> %i.cg, ptr %i.ca, align 4, !tbaa !3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bt, i64 32 ; 2 uses
  %i.ci = load <4 x i32>, ptr %i.ch, align 4, !tbaa !3 ; 3 uses
  %i.cj = icmp eq <4 x i32> %i.ci, splat (i32 1)
  %i.ck = icmp ult <4 x i32> %i.ci, %i.bq
  %i.cl = sub <4 x i32> %i.ci, %i.bs
  %i.cm = select <4 x i1> %i.ck, <4 x i32> zeroinitializer, <4 x i32> %i.cl
  %i.cn = select <4 x i1> %i.cj, <4 x i32> splat (i32 1), <4 x i32> %i.cm
  store <4 x i32> %i.cn, ptr %i.ch, align 4, !tbaa !3
  %i.co = getelementptr inbounds nuw i8, ptr %i.bt, i64 48 ; 2 uses
  %i.cp = load <4 x i32>, ptr %i.co, align 4, !tbaa !3 ; 3 uses
  %i.cq = icmp eq <4 x i32> %i.cp, splat (i32 1)
  %i.cr = icmp ult <4 x i32> %i.cp, %i.bq
  %i.cs = sub <4 x i32> %i.cp, %i.bs
  %i.ct = select <4 x i1> %i.cr, <4 x i32> zeroinitializer, <4 x i32> %i.cs
  %i.cu = select <4 x i1> %i.cq, <4 x i32> splat (i32 1), <4 x i32> %i.ct
  store <4 x i32> %i.cu, ptr %i.co, align 4, !tbaa !3
  %5 = add nuw nsw i32 %.021.i4.i.i, 1            ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 16
  %exitcond.not.i.i = icmp eq i32 %5, %i.bn
  br i1 %exitcond.not.i.i, label %_ZN11duckdb_zstdL24ZSTD_reduceTable_btlazy2EPjjj.exit.i, label %.preheader.i.i, !llvm.loop !468

bb.e:                                             ; preds = %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread21.i
  tail call fastcc void @_ZN11duckdb_zstdL16ZSTD_reduceTableEPjjj(ptr noundef %i.bm, i32 noundef %i.bj, i32 noundef %i.ab)
  br label %_ZN11duckdb_zstdL24ZSTD_reduceTable_btlazy2EPjjj.exit.i

_ZN11duckdb_zstdL24ZSTD_reduceTable_btlazy2EPjjj.exit.i: ; preds = %.preheader.i.i, %bb.e, %bb.d, %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.i, %bb.c
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !442 ; 2 uses
  %.not19.i = icmp eq i32 %i.cw, 0
  br i1 %.not19.i, label %_ZN11duckdb_zstdL16ZSTD_reduceIndexEPNS_17ZSTD_matchState_tEPKNS_18ZSTD_CCtx_params_sEj.exit, label %bb.f

bb.f:                                             ; preds = %_ZN11duckdb_zstdL24ZSTD_reduceTable_btlazy2EPjjj.exit.i
  %i.cx = shl nuw i32 1, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !449
  tail call fastcc void @_ZN11duckdb_zstdL16ZSTD_reduceTableEPjjj(ptr noundef %i.cz, i32 noundef %i.cx, i32 noundef %i.ab)
  br label %_ZN11duckdb_zstdL16ZSTD_reduceIndexEPNS_17ZSTD_matchState_tEPKNS_18ZSTD_CCtx_params_sEj.exit

_ZN11duckdb_zstdL16ZSTD_reduceIndexEPNS_17ZSTD_matchState_tEPKNS_18ZSTD_CCtx_params_sEj.exit: ; preds = %_ZN11duckdb_zstdL24ZSTD_reduceTable_btlazy2EPjjj.exit.i, %bb.f
  %i.da = load ptr, ptr %i.au, align 8, !tbaa !69
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !68 ; 2 uses
  %i.dd = icmp ult ptr %i.da, %i.dc
  br i1 %i.dd, label %bb.g, label %_ZN11duckdb_zstdL28ZSTD_cwksp_mark_tables_cleanEPNS_10ZSTD_cwkspE.exit

bb.g:                                             ; preds = %_ZN11duckdb_zstdL16ZSTD_reduceIndexEPNS_17ZSTD_matchState_tEPKNS_18ZSTD_CCtx_params_sEj.exit
  store ptr %i.dc, ptr %i.au, align 8, !tbaa !69
  br label %_ZN11duckdb_zstdL28ZSTD_cwksp_mark_tables_cleanEPNS_10ZSTD_cwkspE.exit

_ZN11duckdb_zstdL28ZSTD_cwksp_mark_tables_cleanEPNS_10ZSTD_cwkspE.exit: ; preds = %_ZN11duckdb_zstdL16ZSTD_reduceIndexEPNS_17ZSTD_matchState_tEPKNS_18ZSTD_CCtx_params_sEj.exit, %bb.g
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !266
  %storemerge = tail call i32 @llvm.usub.sat.i32(i32 %i.df, i32 %i.ab)
  store i32 %storemerge, ptr %i.de, align 4, !tbaa !266
  store i32 0, ptr %i.b, align 8, !tbaa !444
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr null, ptr %i.dg, align 8, !tbaa !446
  br label %bb.h

bb.h:                                             ; preds = %_ZN11duckdb_zstdL28ZSTD_cwksp_mark_tables_cleanEPNS_10ZSTD_cwkspE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL27ZSTD_compressBlock_internalEPNS_11ZSTD_CCtx_sEPvmPKvmj(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc noundef i64 @_ZN11duckdb_zstdL18ZSTD_buildSeqStoreEPNS_11ZSTD_CCtx_sEPKvm(ptr noundef %0, ptr noundef %3, i64 noundef %4) ; 3 uses
  %i.b = icmp ult i64 %i.a, -119
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !273
  %.not53 = icmp eq i32 %i.e, 0                   ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not53, label %.thread66, label %.thread

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3200 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70   ; 2 uses
  br i1 %.not53, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 5616
  %i.j = tail call fastcc noundef i64 @_ZN11duckdb_zstdL23ZSTD_copyBlockSequencesEPNS_12SeqCollectorEPKNS_10seqStore_tEPKj(ptr noundef nonnull %i.d, ptr noundef nonnull %i.f, ptr noundef nonnull %i.i) ; 2 uses
  %i.k = icmp ult i64 %i.j, -119
  br i1 %i.k, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.l = load <2 x ptr>, ptr %i.g, align 8, !tbaa !62
  %i.m = shufflevector <2 x ptr> %i.l, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.m, ptr %i.g, align 8, !tbaa !62
  br label %.thread

bb.g:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3208
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !71
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3520
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !72
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !10
  %i.u = tail call fastcc noundef i64 @_ZN11duckdb_zstdL28ZSTD_entropyCompressSeqStoreEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmmSA_mi(ptr noundef nonnull %i.f, ptr noundef %i.h, ptr noundef %i.o, ptr noundef nonnull %i.p, ptr noundef %1, i64 noundef %2, i64 noundef %4, ptr noundef %i.r, i32 noundef %i.t) ; 4 uses
  %.not55 = icmp eq i32 %5, 0
  br i1 %.not55, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.w = load i32, ptr %i.v, align 8, !tbaa !272
  %i.x = icmp eq i32 %i.w, 0
  %i.y = icmp ult i64 %i.u, 25
  %or.cond = and i1 %i.y, %i.x
  br i1 %or.cond, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.z = tail call fastcc noundef i32 @_ZN11duckdb_zstdL10ZSTD_isRLEEPKhm(ptr noundef %3, i64 noundef %4)
  %.not56 = icmp eq i32 %i.z, 0
  br i1 %.not56, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load i8, ptr %3, align 1, !tbaa !220
  store i8 %i.aa, ptr %1, align 1, !tbaa !220
  br label %.thread66

bb.k:                                             ; preds = %bb.g, %bb.h, %bb.i
  %i.ab = add i64 %i.u, -2
  %or.cond4 = icmp ult i64 %i.ab, -121
  br i1 %or.cond4, label %bb.l, label %.thread66

bb.l:                                             ; preds = %bb.k
  %i.ac = load <2 x ptr>, ptr %i.g, align 8, !tbaa !62
  %i.ad = shufflevector <2 x ptr> %i.ac, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.ad, ptr %i.g, align 8, !tbaa !62
  br label %.thread66

.thread66:                                        ; preds = %bb.c, %bb.j, %bb.l, %bb.k
  %.15069 = phi i64 [ %i.u, %bb.k ], [ %i.u, %bb.l ], [ 0, %bb.c ], [ 1, %bb.j ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 3200
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !70
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 5604 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !192
  %i.ai = icmp eq i32 %i.ah, 2
  br i1 %i.ai, label %bb.m, label %.thread

bb.m:                                             ; preds = %.thread66
  store i32 1, ptr %i.ag, align 4, !tbaa !192
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %.thread66, %bb.m, %bb.e, %bb.f
  %.3 = phi i64 [ %.15069, %.thread66 ], [ 0, %bb.f ], [ %i.j, %bb.e ], [ %.15069, %bb.m ], [ %i.a, %bb.a ], [ -106, %bb.c ]
  ret i64 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN11duckdb_zstdL16ZSTD_reduceTableEPjjj(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #13 {
bb.a:
  %i.a = sdiv i32 %1, 16
  %i.b = add i32 %2, 2
  %i.c = icmp sgt i32 %1, 15
  br i1 %i.c, label %.preheader.preheader, label %_ZN11duckdb_zstdL25ZSTD_reduceTable_internalEPjjji.exit

.preheader.preheader:                             ; preds = %bb.a
  %i.d = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %i.e = shufflevector <4 x i32> %i.d, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.f = insertelement <4 x i32> poison, i32 %2, i64 0
  %i.g = shufflevector <4 x i32> %i.f, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 0, %.preheader.preheader ] ; 5 uses
  %.021.i4 = phi i32 [ %3, %.preheader ], [ 0, %.preheader.preheader ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.i = load <4 x i32>, ptr %i.h, align 4, !tbaa !3 ; 2 uses
  %i.j = icmp ult <4 x i32> %i.i, %i.e
  %i.k = sub <4 x i32> %i.i, %i.g
  %i.l = select <4 x i1> %i.j, <4 x i32> zeroinitializer, <4 x i32> %i.k
  store <4 x i32> %i.l, ptr %i.h, align 4, !tbaa !3
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.o = load <4 x i32>, ptr %i.n, align 4, !tbaa !3 ; 2 uses
  %i.p = icmp ult <4 x i32> %i.o, %i.e
  %i.q = sub <4 x i32> %i.o, %i.g
  %i.r = select <4 x i1> %i.p, <4 x i32> zeroinitializer, <4 x i32> %i.q
  store <4 x i32> %i.r, ptr %i.n, align 4, !tbaa !3
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.u = load <4 x i32>, ptr %i.t, align 4, !tbaa !3 ; 2 uses
  %i.v = icmp ult <4 x i32> %i.u, %i.e
  %i.w = sub <4 x i32> %i.u, %i.g
  %i.x = select <4 x i1> %i.v, <4 x i32> zeroinitializer, <4 x i32> %i.w
  store <4 x i32> %i.x, ptr %i.t, align 4, !tbaa !3
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 2 uses
  %i.aa = load <4 x i32>, ptr %i.z, align 4, !tbaa !3 ; 2 uses
  %i.ab = icmp ult <4 x i32> %i.aa, %i.e
  %i.ac = sub <4 x i32> %i.aa, %i.g
  %i.ad = select <4 x i1> %i.ab, <4 x i32> zeroinitializer, <4 x i32> %i.ac
  store <4 x i32> %i.ad, ptr %i.z, align 4, !tbaa !3
  %3 = add nuw nsw i32 %.021.i4, 1                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16
  %exitcond.not = icmp eq i32 %3, %i.a
  br i1 %exitcond.not, label %_ZN11duckdb_zstdL25ZSTD_reduceTable_internalEPjjji.exit, label %.preheader, !llvm.loop !468

_ZN11duckdb_zstdL25ZSTD_reduceTable_internalEPjjji.exit: ; preds = %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i64 -119, 2) i64 @_ZN11duckdb_zstdL18ZSTD_buildSeqStoreEPNS_11ZSTD_CCtx_sEPKvm(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %3 = alloca %"struct.duckdb_zstd::rawSeqStore_t", align 8 ; 8 uses
  %4 = alloca %"struct.duckdb_zstd::ZSTD_sequencePosition", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3216 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.c = icmp ult i64 %2, 7
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.e = load i32, ptr %i.d, align 4, !tbaa !198
  %i.f = icmp sgt i32 %i.e, 6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3160 ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11duckdb_zstd29ZSTD_ldm_skipRawSeqStoreBytesEPNS_13rawSeqStore_tEm(ptr noundef nonnull %i.g, i64 noundef %2)
  br label %.thread163

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.i = load i32, ptr %i.h, align 4, !tbaa !387
  tail call void @_ZN11duckdb_zstd22ZSTD_ldm_skipSequencesEPNS_13rawSeqStore_tEmj(ptr noundef nonnull %i.g, i64 noundef %2, i32 noundef %i.i)
  br label %.thread163

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3200
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !224
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 4 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !225
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !210
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 960
  store ptr %i.o, ptr %i.p, align 8, !tbaa !214
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store i32 0, ptr %i.q, align 8, !tbaa !222
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !70   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3448
  store ptr %i.r, ptr %i.s, align 8, !tbaa !469
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.u = load i32, ptr %i.t, align 8, !tbaa !470
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3456
  store i32 %i.u, ptr %i.v, align 8, !tbaa !471
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !472
  %i.y = ptrtoint ptr %1 to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = trunc i64 %i.aa to i32                  ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3260 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !266 ; 2 uses
  %i.ae = add i32 %i.ad, 384
  %i.af = icmp ult i32 %i.ae, %i.ab
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %reass.sub = sub i32 %i.ab, %i.ad
  %i.ag = add i32 %reass.sub, -384
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.ag, i32 192)
  %i.ah = sub i32 %i.ab, %spec.select
  store i32 %i.ah, ptr %i.ac, align 4, !tbaa !266
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.1.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %.sroa.1.0.copyload.i = load i32, ptr %.sroa.1.0..sroa_idx.i, align 8, !tbaa !3
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3244
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !3
  %.not.i = icmp ult i32 %.sroa.2.0.copyload.i, %.sroa.1.0.copyload.i
  br i1 %.not.i, label %_ZN11duckdb_zstdL24ZSTD_matchState_dictModeEPKNS_17ZSTD_matchState_tE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 3464
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !446 ; 2 uses
  %.not3.i = icmp eq ptr %i.aj, null
  br i1 %.not3.i, label %_ZN11duckdb_zstdL24ZSTD_matchState_dictModeEPKNS_17ZSTD_matchState_tE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 140
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !441
  %.not4.i = icmp eq i32 %i.al, 0
  %i.am = select i1 %.not4.i, i64 2, i64 3
  br label %_ZN11duckdb_zstdL24ZSTD_matchState_dictModeEPKNS_17ZSTD_matchState_tE.exit

_ZN11duckdb_zstdL24ZSTD_matchState_dictModeEPKNS_17ZSTD_matchState_tE.exit: ; preds = %bb.g, %bb.h, %bb.i
  %i.an = phi i64 [ 1, %bb.g ], [ %i.am, %bb.i ], [ 0, %bb.h ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 5616
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 3208 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !71 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 5616 ; 3 uses
  %i.as = load i32, ptr %i.ao, align 4, !tbaa !3
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !3
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 5620
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 5620
  store i32 %i.au, ptr %i.av, align 4, !tbaa !3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 5624
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 5624
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !3
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 3160
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !473
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !258
  %i.be = icmp ult i64 %i.bb, %i.bd
  br i1 %i.be, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZN11duckdb_zstdL24ZSTD_matchState_dictModeEPKNS_17ZSTD_matchState_tE.exit
  %i.bf = getelementptr i8, ptr %0, i64 424
  %.val146 = load ptr, ptr %i.bf, align 8, !tbaa !152
  %.not167 = icmp eq ptr %.val146, null
  br i1 %.not167, label %bb.k, label %.thread163

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !199
  %i.bi = tail call noundef i64 @_ZN11duckdb_zstd22ZSTD_ldm_blockCompressEPNS_13rawSeqStore_tEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjNS_18ZSTD_paramSwitch_eEPKvm(ptr noundef nonnull %i.az, ptr noundef nonnull %i.a, ptr noundef nonnull %i.k, ptr noundef nonnull %i.ar, i32 noundef %i.bh, ptr noundef %1, i64 noundef %2)
  br label %bb.z

bb.l:                                             ; preds = %_ZN11duckdb_zstdL24ZSTD_matchState_dictModeEPKNS_17ZSTD_matchState_tE.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !267
  %i.bl = icmp eq i32 %i.bk, 1
  br i1 %i.bl, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i8 0, i64 24, i1 false)
  %i.bn = getelementptr i8, ptr %0, i64 424
  %.val145 = load ptr, ptr %i.bn, align 8, !tbaa !152
  %.not = icmp eq ptr %.val145, null
  br i1 %.not, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 3144
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !430
  store ptr %i.bp, ptr %3, align 8, !tbaa !474
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 3152
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !431
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !475
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.bu = call noundef i64 @_ZN11duckdb_zstd26ZSTD_ldm_generateSequencesEPNS_10ldmState_tEPNS_13rawSeqStore_tEPKNS_11ldmParams_tEPKvm(ptr noundef nonnull %i.bt, ptr noundef nonnull %3, ptr noundef nonnull %i.bj, ptr noundef %1, i64 noundef %2) ; 2 uses
  %i.bv = icmp ult i64 %i.bu, -119
  br i1 %i.bv, label %bb.o, label %.thread

.thread:                                          ; preds = %bb.n, %bb.m
  %.1.ph = phi i64 [ -41, %bb.m ], [ %i.bu, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %.thread163

bb.o:                                             ; preds = %bb.n
  %i.bw = load ptr, ptr %i.ap, align 8, !tbaa !71
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 5616
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !199
  %i.ca = call noundef i64 @_ZN11duckdb_zstd22ZSTD_ldm_blockCompressEPNS_13rawSeqStore_tEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjNS_18ZSTD_paramSwitch_eEPKvm(ptr noundef nonnull %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.k, ptr noundef nonnull %i.bx, i32 noundef %i.bz, ptr noundef %1, i64 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.z

bb.p:                                             ; preds = %bb.l
  %i.cb = getelementptr i8, ptr %0, i64 424
  %.val = load ptr, ptr %i.cb, align 8, !tbaa !152 ; 2 uses
  %.not166 = icmp eq ptr %.val, null
  br i1 %.not166, label %bb.y, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = load i32, ptr %i.b, align 4, !tbaa !269
  %i.cd = shl nuw i32 1, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !476
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 5232 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !434
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 5240 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !433
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !477
  %i.cm = zext i32 %i.cd to i64
  %i.cn = tail call noundef i64 %.val(ptr noundef %i.cf, ptr noundef %i.ch, i64 noundef %i.cj, ptr noundef %1, i64 noundef %2, ptr noundef null, i64 noundef 0, i32 noundef %i.cl, i64 noundef %i.cm) ; 5 uses
  %i.co = load i64, ptr %i.ci, align 8, !tbaa !433 ; 2 uses
  %i.cp = add i64 %i.cn, -1
  %or.cond.not.i = icmp ult i64 %i.cp, %i.co
  br i1 %or.cond.not.i, label %bb.r, label %_ZN11duckdb_zstdL38ZSTD_postProcessSequenceProducerResultEPNS_13ZSTD_SequenceEmmm.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.cq = load ptr, ptr %i.cg, align 8, !tbaa !434
  %i.cr = getelementptr [16 x i8], ptr %i.cq, i64 %i.cn ; 3 uses
  %i.cs = getelementptr i8, ptr %i.cr, i64 -16
end_hunk_0
