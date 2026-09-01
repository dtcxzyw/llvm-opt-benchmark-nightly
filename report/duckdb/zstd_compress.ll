Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/zstd_compress?download=true
inline.NumInlined: 798
inline.NumDeleted: 175
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN11duckdb_zstdL29ZSTD_buildSequencesStatisticsEPKNS_10seqStore_tEmPKNS_17ZSTD_fseCTables_tEPS3_PhPKhNS_13ZSTD_strategyEPjPvm:bb.a
_ZN11duckdb_zstdL11ZSTD_MLcodeEj.exit.i:          ; preds = %bb.e, %bb.d
  %i.aw = phi i8 [ %i.as, %bb.d ], [ %i.av, %bb.e ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.i
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !220
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !221

._crit_edge.i:                                    ; preds = %_ZN11duckdb_zstdL11ZSTD_MLcodeEj.exit.i, %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !222 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !223
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bd
  store i8 35, ptr %i.be, align 1, !tbaa !220
  %.pr.i = load i32, ptr %i.ay, align 8, !tbaa !222
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.bf = phi i32 [ %.pr.i, %bb.f ], [ %i.az, %._crit_edge.i ]
  %i.bg = icmp eq i32 %i.bf, 2
  br i1 %i.bg, label %bb.h, label %_ZN11duckdb_zstd15ZSTD_seqToCodesEPKNS_10seqStore_tE.exit

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !223
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bj
  store i8 52, ptr %i.bk, align 1, !tbaa !220
  br label %_ZN11duckdb_zstd15ZSTD_seqToCodesEPKNS_10seqStore_tE.exit

_ZN11duckdb_zstd15ZSTD_seqToCodesEPKNS_10seqStore_tE.exit: ; preds = %bb.g, %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.bl, align 8, !tbaa !463
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 35, ptr %i.a, align 4, !tbaa !3
  %i.bm = call noundef i64 @_ZN11duckdb_zstd19HIST_countFast_wkspEPjS0_PKvmPvm(ptr noundef %8, ptr noundef nonnull %i.a, ptr noundef %i.i, i64 noundef %2, ptr noundef %9, i64 noundef %10)
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 3548
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !246
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 3548 ; 2 uses
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !246
  %i.bq = load i32, ptr %i.a, align 4, !tbaa !3
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 2224 ; 2 uses
  %i.bs = call noundef i32 @_ZN11duckdb_zstd23ZSTD_selectEncodingTypeEPNS_10FSE_repeatEPKjjmmjS3_PKsjNS_20ZSTD_defaultPolicy_eENS_13ZSTD_strategyE(ptr noundef nonnull %i.bp, ptr noundef %8, i32 noundef %i.bq, i64 noundef %i.bm, i64 noundef %2, i32 noundef 9, ptr noundef nonnull %i.br, ptr noundef nonnull @_ZN11duckdb_zstdL14LL_defaultNormE, i32 noundef 6, i32 noundef 1, i32 noundef %7) ; 3 uses
  store i32 %i.bs, ptr %0, align 8, !tbaa !464
  %i.bt = ptrtoint ptr %6 to i64                  ; 3 uses
  %i.bu = ptrtoint ptr %5 to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = load i32, ptr %i.a, align 4, !tbaa !3
  %i.bx = call noundef i64 @_ZN11duckdb_zstd16ZSTD_buildCTableEPvmPjjNS_20symbolEncodingType_eES1_jPKhmPKsjjPKjmS0_m(ptr noundef %5, i64 noundef %i.bv, ptr noundef nonnull %i.d, i32 noundef 9, i32 noundef %i.bs, ptr noundef %8, i32 noundef %i.bw, ptr noundef %i.i, i64 noundef %2, ptr noundef nonnull @_ZN11duckdb_zstdL14LL_defaultNormE, i32 noundef 6, i32 noundef 35, ptr noundef nonnull %i.br, i64 noundef 1316, ptr noundef %9, i64 noundef %10) ; 5 uses
  %i.by = icmp ult i64 %i.bx, -119
  br i1 %i.by, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZN11duckdb_zstd15ZSTD_seqToCodesEPKNS_10seqStore_tE.exit
  %i.bz = icmp eq i32 %i.bs, 2
  br i1 %i.bz, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  store i64 %i.bx, ptr %i.l, align 8, !tbaa !461
  br label %bb.l

bb.k:                                             ; preds = %_ZN11duckdb_zstd15ZSTD_seqToCodesEPKNS_10seqStore_tE.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bx, ptr %i.ca, align 8, !tbaa !465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.u

bb.l:                                             ; preds = %bb.i, %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 %i.bx ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
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
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !466
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
  store i64 %i.co, ptr %i.l, align 8, !tbaa !461
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.co, ptr %i.cr, align 8, !tbaa !465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.u

bb.p:                                             ; preds = %bb.m, %bb.n
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.co ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
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
  store i32 %i.cz, ptr %i.da, align 8, !tbaa !467
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
  store i64 %i.de, ptr %i.l, align 8, !tbaa !461
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.de, ptr %i.dh, align 8, !tbaa !465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.u

bb.t:                                             ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.di = add nuw nsw i64 %i.co, %i.bx
  %i.dj = add nuw nsw i64 %i.di, %i.de
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !465
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
  %5 = sub i32 %i.t, %i.aa                        ; 9 uses
  %6 = zext i32 %5 to i64                         ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %.sroa.1.0.copyload, i64 %6
  store ptr %7, ptr %.sroa.1.0..sroa_idx, align 8, !tbaa !265
  %8 = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !262
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 %6
  store ptr %i.ab, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !262
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %9 = load i32, ptr %i.ac, align 4, !tbaa !263   ; 2 uses
  %i.ad = add i32 %5, 2                           ; 3 uses
  %i.ae = icmp ult i32 %9, %i.ad
  %i.af = sub i32 %9, %5
  %storemerge.i = select i1 %i.ae, i32 2, i32 %i.af
  store i32 %storemerge.i, ptr %i.ac, align 4, !tbaa !263
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !264 ; 2 uses
  %i.ai = icmp ult i32 %i.ah, %i.ad
  %i.aj = sub i32 %i.ah, %5
  %storemerge33.i = select i1 %i.ai, i32 2, i32 %i.aj
  store i32 %storemerge33.i, ptr %i.ag, align 8, !tbaa !264
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !468
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !468
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !67
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !69
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !106
  %i.as = shl nuw i32 1, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !448
  tail call fastcc void @_ZN11duckdb_zstdL16ZSTD_reduceTableEPjjj(ptr noundef %i.au, i32 noundef %i.as, i32 noundef %5)
  %i.av = load i32, ptr %i.l, align 4, !tbaa !111 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !91
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !442
  %.not.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread21.i

bb.c:                                             ; preds = %bb.b
  %.not4.i.i = icmp eq i32 %i.av, 1
  br i1 %.not4.i.i, label %_ZN11duckdb_zstdL24ZSTD_reduceTable_btlazy2EPjjj.exit.i, label %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.i

_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.i: ; preds = %bb.c
  %i.ba = add i32 %i.av, -3
  %i.bb = icmp ult i32 %i.ba, 3
  %i.bc = icmp eq i32 %i.ax, 1
  %.not8.i.not.i = and i1 %i.bb, %i.bc
  br i1 %.not8.i.not.i, label %_ZN11duckdb_zstdL24ZSTD_reduceTable_btlazy2EPjjj.exit.i, label %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread21.i

_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread21.i: ; preds = %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.i, %bb.b
  %i.bd = load i32, ptr %i.a, align 8, !tbaa !107
  %i.be = shl nuw i32 1, %i.bd                    ; 3 uses
  %i.bf = icmp eq i32 %i.av, 6
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !449 ; 2 uses
  br i1 %i.bf, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread21.i
  %i.bi = lshr i32 %i.be, 4
  %i.bj = icmp sgt i32 %i.be, 15
  br i1 %i.bj, label %.preheader.i.i.preheader, label %_ZN11duckdb_zstdL24ZSTD_reduceTable_btlazy2EPjjj.exit.i

.preheader.i.i.preheader:                         ; preds = %bb.d
  %10 = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %i.bk = shufflevector <4 x i32> %10, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %11 = insertelement <4 x i32> poison, i32 %5, i64 0
  %i.bl = shufflevector <4 x i32> %11, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next7.i.i, %.preheader.i.i ], [ 0, %.preheader.i.i.preheader ] ; 2 uses
  %.020.i5.i.i = phi i32 [ %i.co, %.preheader.i.i ], [ 0, %.preheader.i.i.preheader ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.i.i ; 5 uses
  %i.bn = load <4 x i32>, ptr %i.bm, align 4, !tbaa !3 ; 3 uses
  %i.bo = icmp eq <4 x i32> %i.bn, splat (i32 1)
  %i.bp = icmp ult <4 x i32> %i.bn, %i.bk
  %i.bq = sub <4 x i32> %i.bn, %i.bl
  %i.br = select <4 x i1> %i.bp, <4 x i32> zeroinitializer, <4 x i32> %i.bq
  %i.bs = select <4 x i1> %i.bo, <4 x i32> splat (i32 1), <4 x i32> %i.br
  store <4 x i32> %i.bs, ptr %i.bm, align 4, !tbaa !3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %i.bu = load <4 x i32>, ptr %i.bt, align 4, !tbaa !3 ; 3 uses
  %i.bv = icmp eq <4 x i32> %i.bu, splat (i32 1)
  %i.bw = icmp ult <4 x i32> %i.bu, %i.bk
  %i.bx = sub <4 x i32> %i.bu, %i.bl
  %i.by = select <4 x i1> %i.bw, <4 x i32> zeroinitializer, <4 x i32> %i.bx
  %i.bz = select <4 x i1> %i.bv, <4 x i32> splat (i32 1), <4 x i32> %i.by
  store <4 x i32> %i.bz, ptr %i.bt, align 4, !tbaa !3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bm, i64 32 ; 2 uses
  %i.cb = load <4 x i32>, ptr %i.ca, align 4, !tbaa !3 ; 3 uses
  %i.cc = icmp eq <4 x i32> %i.cb, splat (i32 1)
  %i.cd = icmp ult <4 x i32> %i.cb, %i.bk
  %i.ce = sub <4 x i32> %i.cb, %i.bl
  %i.cf = select <4 x i1> %i.cd, <4 x i32> zeroinitializer, <4 x i32> %i.ce
  %i.cg = select <4 x i1> %i.cc, <4 x i32> splat (i32 1), <4 x i32> %i.cf
  store <4 x i32> %i.cg, ptr %i.ca, align 4, !tbaa !3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bm, i64 48 ; 2 uses
  %i.ci = load <4 x i32>, ptr %i.ch, align 4, !tbaa !3 ; 3 uses
  %i.cj = icmp eq <4 x i32> %i.ci, splat (i32 1)
  %i.ck = icmp ult <4 x i32> %i.ci, %i.bk
  %i.cl = sub <4 x i32> %i.ci, %i.bl
  %i.cm = select <4 x i1> %i.ck, <4 x i32> zeroinitializer, <4 x i32> %i.cl
  %i.cn = select <4 x i1> %i.cj, <4 x i32> splat (i32 1), <4 x i32> %i.cm
  store <4 x i32> %i.cn, ptr %i.ch, align 4, !tbaa !3
  %indvars.iv.next7.i.i = add nuw nsw i64 %indvars.iv.i.i, 16
  %i.co = add nuw nsw i32 %.020.i5.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.co, %i.bi
  br i1 %exitcond.not.i.i, label %_ZN11duckdb_zstdL24ZSTD_reduceTable_btlazy2EPjjj.exit.i, label %.preheader.i.i, !llvm.loop !469

bb.e:                                             ; preds = %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread21.i
  tail call fastcc void @_ZN11duckdb_zstdL16ZSTD_reduceTableEPjjj(ptr noundef %i.bh, i32 noundef %i.be, i32 noundef %5)
  br label %_ZN11duckdb_zstdL24ZSTD_reduceTable_btlazy2EPjjj.exit.i

_ZN11duckdb_zstdL24ZSTD_reduceTable_btlazy2EPjjj.exit.i: ; preds = %.preheader.i.i, %bb.e, %bb.d, %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.i, %bb.c
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !443 ; 2 uses
  %.not19.i = icmp eq i32 %i.cq, 0
  br i1 %.not19.i, label %_ZN11duckdb_zstdL16ZSTD_reduceIndexEPNS_17ZSTD_matchState_tEPKNS_18ZSTD_CCtx_params_sEj.exit, label %bb.f

bb.f:                                             ; preds = %_ZN11duckdb_zstdL24ZSTD_reduceTable_btlazy2EPjjj.exit.i
  %i.cr = shl nuw i32 1, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !450
  tail call fastcc void @_ZN11duckdb_zstdL16ZSTD_reduceTableEPjjj(ptr noundef %i.ct, i32 noundef %i.cr, i32 noundef %5)
  br label %_ZN11duckdb_zstdL16ZSTD_reduceIndexEPNS_17ZSTD_matchState_tEPKNS_18ZSTD_CCtx_params_sEj.exit

_ZN11duckdb_zstdL16ZSTD_reduceIndexEPNS_17ZSTD_matchState_tEPKNS_18ZSTD_CCtx_params_sEj.exit: ; preds = %_ZN11duckdb_zstdL24ZSTD_reduceTable_btlazy2EPjjj.exit.i, %bb.f
  %i.cu = load ptr, ptr %i.ap, align 8, !tbaa !69
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !68 ; 2 uses
  %i.cx = icmp ult ptr %i.cu, %i.cw
  br i1 %i.cx, label %bb.g, label %_ZN11duckdb_zstdL28ZSTD_cwksp_mark_tables_cleanEPNS_10ZSTD_cwkspE.exit

bb.g:                                             ; preds = %_ZN11duckdb_zstdL16ZSTD_reduceIndexEPNS_17ZSTD_matchState_tEPKNS_18ZSTD_CCtx_params_sEj.exit
  store ptr %i.cw, ptr %i.ap, align 8, !tbaa !69
  br label %_ZN11duckdb_zstdL28ZSTD_cwksp_mark_tables_cleanEPNS_10ZSTD_cwkspE.exit

_ZN11duckdb_zstdL28ZSTD_cwksp_mark_tables_cleanEPNS_10ZSTD_cwkspE.exit: ; preds = %_ZN11duckdb_zstdL16ZSTD_reduceIndexEPNS_17ZSTD_matchState_tEPKNS_18ZSTD_CCtx_params_sEj.exit, %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !266
  %storemerge = tail call i32 @llvm.usub.sat.i32(i32 %i.cz, i32 %5)
  store i32 %storemerge, ptr %i.cy, align 4, !tbaa !266
  store i32 0, ptr %i.b, align 8, !tbaa !445
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr null, ptr %i.da, align 8, !tbaa !447
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
  %.not54 = icmp eq i32 %i.e, 0                   ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not54, label %.thread67, label %.thread

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3200 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70   ; 2 uses
  br i1 %.not54, label %bb.g, label %bb.e

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
  %.not56 = icmp eq i32 %5, 0
  br i1 %.not56, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.w = load i32, ptr %i.v, align 8, !tbaa !272
  %i.x = icmp eq i32 %i.w, 0
  %i.y = icmp ult i64 %i.u, 25
  %or.cond = and i1 %i.y, %i.x
  br i1 %or.cond, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.z = tail call fastcc noundef i32 @_ZN11duckdb_zstdL10ZSTD_isRLEEPKhm(ptr noundef %3, i64 noundef %4)
  %.not57 = icmp eq i32 %i.z, 0
  br i1 %.not57, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load i8, ptr %3, align 1, !tbaa !220
  store i8 %i.aa, ptr %1, align 1, !tbaa !220
  br label %.thread67

bb.k:                                             ; preds = %bb.g, %bb.h, %bb.i
  %i.ab = add i64 %i.u, -2
  %or.cond4 = icmp ult i64 %i.ab, -121
  br i1 %or.cond4, label %bb.l, label %.thread67

bb.l:                                             ; preds = %bb.k
  %i.ac = load <2 x ptr>, ptr %i.g, align 8, !tbaa !62
  %i.ad = shufflevector <2 x ptr> %i.ac, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.ad, ptr %i.g, align 8, !tbaa !62
  br label %.thread67

.thread67:                                        ; preds = %bb.c, %bb.j, %bb.l, %bb.k
  %.14770 = phi i64 [ %i.u, %bb.k ], [ %i.u, %bb.l ], [ 0, %bb.c ], [ 1, %bb.j ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 3200
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !70
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 5604 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !192
  %i.ai = icmp eq i32 %i.ah, 2
  br i1 %i.ai, label %bb.m, label %.thread

bb.m:                                             ; preds = %.thread67
  store i32 1, ptr %i.ag, align 4, !tbaa !192
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %.thread67, %bb.m, %bb.e, %bb.f
  %.3 = phi i64 [ %.14770, %.thread67 ], [ 0, %bb.f ], [ %i.j, %bb.e ], [ %.14770, %bb.m ], [ %i.a, %bb.a ], [ -106, %bb.c ]
  ret i64 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN11duckdb_zstdL16ZSTD_reduceTableEPjjj(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #13 {
bb.a:
  %i.a = lshr i32 %1, 4
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
  %indvars.iv = phi i64 [ %indvars.iv.next7, %.preheader ], [ 0, %.preheader.preheader ] ; 5 uses
  %.020.i5 = phi i32 [ %i.ae, %.preheader ], [ 0, %.preheader.preheader ]
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
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv, 16
  %i.ae = add nuw nsw i32 %.020.i5, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ae, %i.a
  br i1 %exitcond.not, label %_ZN11duckdb_zstdL25ZSTD_reduceTable_internalEPjjji.exit, label %.preheader, !llvm.loop !469

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
  %i.i = load i32, ptr %i.h, align 4, !tbaa !390
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
  store ptr %i.r, ptr %i.s, align 8, !tbaa !470
end_hunk_0
