inline.NumInlined: 801
inline.NumDeleted: 176
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN11duckdb_zstdL29ZSTD_buildSequencesStatisticsEPKNS_10seqStore_tEmPKNS_17ZSTD_fseCTables_tEPS3_PhPKhNS_13ZSTD_strategyEPjPvm:bb.a
  %i.af = trunc nuw nsw i32 %i.ae to i8
  %i.ag = sub nuw nsw i8 50, %i.af
  br label %_ZN11duckdb_zstdL11ZSTD_LLcodeEj.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.ah = zext nneg i16 %i.w to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @_ZZN11duckdb_zstdL11ZSTD_LLcodeEjE7LL_Code, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !220
  br label %_ZN11duckdb_zstdL11ZSTD_LLcodeEj.exit.i

_ZN11duckdb_zstdL11ZSTD_LLcodeEj.exit.i:          ; preds = %bb.c, %bb.b
  %i.ak = phi i8 [ %i.ag, %bb.b ], [ %i.aj, %bb.c ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !220
  %i.am = trunc nuw nsw i32 %i.y to i8
  %i.an = xor i8 %i.am, 31
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !220
  %i.ap = icmp ugt i16 %i.aa, 127
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11duckdb_zstdL11ZSTD_LLcodeEj.exit.i
  %i.aq = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.ab, i1 true)
  %i.ar = trunc nuw nsw i32 %i.aq to i8
  %i.as = sub nuw nsw i8 67, %i.ar
  br label %_ZN11duckdb_zstdL11ZSTD_MLcodeEj.exit.i

bb.e:                                             ; preds = %_ZN11duckdb_zstdL11ZSTD_LLcodeEj.exit.i
  %i.at = zext nneg i16 %i.aa to i64
  %i.au = getelementptr inbounds nuw i8, ptr @_ZZN11duckdb_zstdL11ZSTD_MLcodeEjE7ML_Code, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !220
  br label %_ZN11duckdb_zstdL11ZSTD_MLcodeEj.exit.i

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
  store i32 0, ptr %i.bl, align 8, !tbaa !462
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 35, ptr %i.a, align 4, !tbaa !3
  %i.bm = call noundef i64 @_ZN11duckdb_zstd19HIST_countFast_wkspEPjS0_PKvmPvm(ptr noundef %8, ptr noundef nonnull %i.a, ptr noundef %i.i, i64 noundef %2, ptr noundef %9, i64 noundef %10)
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 3548
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !246
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 3548 ; 2 uses
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !246
  %i.bq = load i32, ptr %i.a, align 4, !tbaa !3
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 2224 ; 2 uses
  %i.bs = call noundef i32 @_ZN11duckdb_zstd23ZSTD_selectEncodingTypeEPNS_10FSE_repeatEPKjjmmjS3_PKsjNS_20ZSTD_defaultPolicy_eENS_13ZSTD_strategyE(ptr noundef nonnull %i.bp, ptr noundef %8, i32 noundef %i.bq, i64 noundef %i.bm, i64 noundef %2, i32 noundef 9, ptr noundef nonnull %i.br, ptr noundef nonnull @_ZN11duckdb_zstdL14LL_defaultNormE, i32 noundef 6, i32 noundef 1, i32 noundef %7) ; 3 uses
  store i32 %i.bs, ptr %0, align 8, !tbaa !463
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
  store i64 %i.bx, ptr %i.l, align 8, !tbaa !460
  br label %bb.l

bb.k:                                             ; preds = %_ZN11duckdb_zstd15ZSTD_seqToCodesEPKNS_10seqStore_tE.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bx, ptr %i.ca, align 8, !tbaa !464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.u

bb.l:                                             ; preds = %bb.i, %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 %i.bx ; 3 uses
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
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 28
  %6 = load i32, ptr %5, align 4, !tbaa !111      ; 4 uses
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
  %i.l = icmp ugt i32 %6, 5
  %.neg.i = sext i1 %i.l to i32
  %i.m = add i32 %i.k, %.neg.i
  %i.n = shl nuw i32 1, %i.m                      ; 3 uses
  %i.o = add i32 %i.n, -1
  %i.p = ptrtoint ptr %3 to i64
  %i.q = sub i64 %i.p, %i.d
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %i.s = and i32 %i.o, %i.r                       ; 2 uses
  %i.t = icmp samesign ult i32 %i.s, 2
  %i.u = tail call i32 @llvm.umax.i32(i32 %i.n, i32 2)
  %i.v = select i1 %i.t, i32 %i.u, i32 0
  %i.w = tail call i32 @llvm.umax.i32(i32 %i.j, i32 %i.n)
  %i.x = add nuw i32 %i.w, %i.s
  %i.y = add i32 %i.x, %i.v
  %i.z = sub i32 %i.r, %i.y                       ; 9 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.1.0.copyload, i64 %i.aa
  store ptr %i.ab, ptr %.sroa.1.0..sroa_idx, align 8, !tbaa !265
  %i.ac = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !262
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store ptr %i.ad, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !262
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !263 ; 2 uses
  %i.ag = add i32 %i.z, 2                         ; 6 uses
  %i.ah = icmp ult i32 %i.af, %i.ag
  %i.ai = sub i32 %i.af, %i.z
  %storemerge.i = select i1 %i.ah, i32 2, i32 %i.ai
  store i32 %storemerge.i, ptr %i.ae, align 4, !tbaa !263
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !264 ; 2 uses
  %i.al = icmp ult i32 %i.ak, %i.ag
  %i.am = sub i32 %i.ak, %i.z
  %storemerge33.i = select i1 %i.al, i32 2, i32 %i.am
  store i32 %storemerge33.i, ptr %i.aj, align 8, !tbaa !264
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !467
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !467
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !67 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !69
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !106
  %i.av = shl nuw i32 1, %i.au                    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !447
  %7 = icmp sgt i32 %i.av, 15
  br i1 %7, label %.preheader.lr.ph.i.i, label %_ZN11duckdb_zstdL16ZSTD_reduceTableEPjjj.exit.i

.preheader.lr.ph.i.i:                             ; preds = %bb.b
  %8 = and i32 %i.av, 2147483632
  %flatten.tripcount.i.i = zext nneg i32 %8 to i64
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ag, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert38 = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat39 = shufflevector <4 x i32> %broadcast.splatinsert38, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader.lr.ph.i.i
  %index = phi i64 [ 0, %.preheader.lr.ph.i.i ], [ %index.next, %vector.body ] ; 2 uses
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %index ; 3 uses
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %9, align 4, !tbaa !3 ; 2 uses
  %wide.load40 = load <4 x i32>, ptr %10, align 4, !tbaa !3 ; 2 uses
  %11 = icmp ult <4 x i32> %wide.load, %broadcast.splat
  %12 = icmp ult <4 x i32> %wide.load40, %broadcast.splat
  %13 = sub <4 x i32> %wide.load, %broadcast.splat39
  %14 = sub <4 x i32> %wide.load40, %broadcast.splat39
  %15 = select <4 x i1> %11, <4 x i32> zeroinitializer, <4 x i32> %13
  %16 = select <4 x i1> %12, <4 x i32> zeroinitializer, <4 x i32> %14
  store <4 x i32> %15, ptr %9, align 4, !tbaa !3
  store <4 x i32> %16, ptr %10, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %17 = icmp eq i64 %index.next, %flatten.tripcount.i.i
  br i1 %17, label %_ZN11duckdb_zstdL16ZSTD_reduceTableEPjjj.exit.i, label %vector.body, !llvm.loop !468

_ZN11duckdb_zstdL16ZSTD_reduceTableEPjjj.exit.i:  ; preds = %vector.body, %bb.b
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 144
  %19 = load i32, ptr %18, align 8, !tbaa !91
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %21 = load i32, ptr %20, align 4, !tbaa !441
  %.not.i.i = icmp eq i32 %21, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread21.i

bb.c:                                             ; preds = %_ZN11duckdb_zstdL16ZSTD_reduceTableEPjjj.exit.i
  %.not4.i.i = icmp eq i32 %6, 1
  br i1 %.not4.i.i, label %_ZN11duckdb_zstdL24ZSTD_reduceTable_btlazy2EPjjj.exit.i, label %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.i

_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.i: ; preds = %bb.c
  %i.ay = add i32 %6, -3
  %i.az = icmp ult i32 %i.ay, 3
  %i.ba = icmp eq i32 %19, 1
  %.not8.i.not.i = and i1 %i.az, %i.ba
  br i1 %.not8.i.not.i, label %_ZN11duckdb_zstdL24ZSTD_reduceTable_btlazy2EPjjj.exit.i, label %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread21.i

_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread21.i: ; preds = %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.i, %_ZN11duckdb_zstdL16ZSTD_reduceTableEPjjj.exit.i
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !107
  %i.bc = shl nuw i32 1, %i.bb                    ; 3 uses
  %i.bd = icmp eq i32 %6, 6
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !448 ; 2 uses
  %22 = icmp sgt i32 %i.bc, 15                    ; 2 uses
  br i1 %i.bd, label %bb.d, label %29

bb.d:                                             ; preds = %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread21.i
  br i1 %22, label %.preheader.i.i.preheader, label %_ZN11duckdb_zstdL24ZSTD_reduceTable_btlazy2EPjjj.exit.i

.preheader.i.i.preheader:                         ; preds = %bb.d
  %23 = and i32 %i.bc, 2147483632
  %flatten.tripcount.i21.i = zext nneg i32 %23 to i64
  %i.bg = insertelement <4 x i32> poison, i32 %i.ag, i64 0
  %i.bh = shufflevector <4 x i32> %i.bg, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bi = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %i.bj = shufflevector <4 x i32> %i.bi, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.i.i.preheader ], [ %index.next66, %.preheader.i.i ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i.i ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %i.bm = load <4 x i32>, ptr %i.bk, align 4, !tbaa !3 ; 3 uses
  %wide.load65 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !3 ; 3 uses
  %24 = icmp eq <4 x i32> %i.bm, splat (i32 1)
  %25 = icmp eq <4 x i32> %wide.load65, splat (i32 1)
  %26 = icmp ult <4 x i32> %i.bm, %i.bh
  %i.bn = icmp ult <4 x i32> %wide.load65, %i.bh
  %i.bo = sub <4 x i32> %i.bm, %i.bj
  %27 = sub <4 x i32> %wide.load65, %i.bj
  %i.bp = select <4 x i1> %26, <4 x i32> zeroinitializer, <4 x i32> %i.bo
  %28 = select <4 x i1> %i.bn, <4 x i32> zeroinitializer, <4 x i32> %27
  %i.bq = select <4 x i1> %24, <4 x i32> splat (i32 1), <4 x i32> %i.bp
  %i.br = select <4 x i1> %25, <4 x i32> splat (i32 1), <4 x i32> %28
  store <4 x i32> %i.bq, ptr %i.bk, align 4, !tbaa !3
  store <4 x i32> %i.br, ptr %i.bl, align 4, !tbaa !3
  %index.next66 = add nuw i64 %indvars.iv.i.i, 8  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %index.next66, %flatten.tripcount.i21.i
  br i1 %exitcond.not.i.i, label %_ZN11duckdb_zstdL24ZSTD_reduceTable_btlazy2EPjjj.exit.i, label %.preheader.i.i, !llvm.loop !469

29:                                               ; preds = %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread21.i
  br i1 %22, label %bb.e, label %_ZN11duckdb_zstdL24ZSTD_reduceTable_btlazy2EPjjj.exit.i

bb.e:                                             ; preds = %29
  %30 = and i32 %i.bc, 2147483632
  %flatten.tripcount.i28.i = zext nneg i32 %30 to i64
  %broadcast.splatinsert44 = insertelement <4 x i32> poison, i32 %i.ag, i64 0
  %broadcast.splat45 = shufflevector <4 x i32> %broadcast.splatinsert44, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert46 = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat47 = shufflevector <4 x i32> %broadcast.splatinsert46, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %bb.e
  %index49 = phi i64 [ 0, %bb.e ], [ %index.next52, %vector.body48 ] ; 2 uses
  %31 = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %index49 ; 3 uses
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %wide.load50 = load <4 x i32>, ptr %31, align 4, !tbaa !3 ; 2 uses
  %wide.load51 = load <4 x i32>, ptr %32, align 4, !tbaa !3 ; 2 uses
  %33 = icmp ult <4 x i32> %wide.load50, %broadcast.splat45
  %34 = icmp ult <4 x i32> %wide.load51, %broadcast.splat45
  %35 = sub <4 x i32> %wide.load50, %broadcast.splat47
  %36 = sub <4 x i32> %wide.load51, %broadcast.splat47
  %37 = select <4 x i1> %33, <4 x i32> zeroinitializer, <4 x i32> %35
  %38 = select <4 x i1> %34, <4 x i32> zeroinitializer, <4 x i32> %36
  store <4 x i32> %37, ptr %31, align 4, !tbaa !3
  store <4 x i32> %38, ptr %32, align 4, !tbaa !3
  %index.next52 = add nuw i64 %index49, 8         ; 2 uses
  %39 = icmp eq i64 %index.next52, %flatten.tripcount.i28.i
  br i1 %39, label %_ZN11duckdb_zstdL24ZSTD_reduceTable_btlazy2EPjjj.exit.i, label %vector.body48, !llvm.loop !470

_ZN11duckdb_zstdL24ZSTD_reduceTable_btlazy2EPjjj.exit.i: ; preds = %vector.body48, %.preheader.i.i, %29, %bb.d, %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.i, %bb.c
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !442 ; 2 uses
  %.not19.i = icmp eq i32 %i.bt, 0
  br i1 %.not19.i, label %_ZN11duckdb_zstdL16ZSTD_reduceIndexEPNS_17ZSTD_matchState_tEPKNS_18ZSTD_CCtx_params_sEj.exit, label %bb.f

bb.f:                                             ; preds = %_ZN11duckdb_zstdL24ZSTD_reduceTable_btlazy2EPjjj.exit.i
  %i.bu = shl nuw i32 1, %i.bt                    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !449
  %40 = icmp sgt i32 %i.bu, 15
  br i1 %40, label %.preheader.lr.ph.i35.i, label %_ZN11duckdb_zstdL16ZSTD_reduceIndexEPNS_17ZSTD_matchState_tEPKNS_18ZSTD_CCtx_params_sEj.exit

.preheader.lr.ph.i35.i:                           ; preds = %bb.f
  %41 = and i32 %i.bu, 2147483632
  %flatten.tripcount.i36.i = zext nneg i32 %41 to i64
  %broadcast.splatinsert72 = insertelement <4 x i32> poison, i32 %i.ag, i64 0
  %broadcast.splat73 = shufflevector <4 x i32> %broadcast.splatinsert72, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert74 = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat75 = shufflevector <4 x i32> %broadcast.splatinsert74, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body76

vector.body76:                                    ; preds = %vector.body76, %.preheader.lr.ph.i35.i
  %index77 = phi i64 [ 0, %.preheader.lr.ph.i35.i ], [ %index.next80, %vector.body76 ] ; 2 uses
  %42 = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %index77 ; 3 uses
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %wide.load78 = load <4 x i32>, ptr %42, align 4, !tbaa !3 ; 2 uses
  %wide.load79 = load <4 x i32>, ptr %43, align 4, !tbaa !3 ; 2 uses
  %44 = icmp ult <4 x i32> %wide.load78, %broadcast.splat73
  %45 = icmp ult <4 x i32> %wide.load79, %broadcast.splat73
  %46 = sub <4 x i32> %wide.load78, %broadcast.splat75
  %47 = sub <4 x i32> %wide.load79, %broadcast.splat75
  %48 = select <4 x i1> %44, <4 x i32> zeroinitializer, <4 x i32> %46
  %49 = select <4 x i1> %45, <4 x i32> zeroinitializer, <4 x i32> %47
  store <4 x i32> %48, ptr %42, align 4, !tbaa !3
  store <4 x i32> %49, ptr %43, align 4, !tbaa !3
  %index.next80 = add nuw i64 %index77, 8         ; 2 uses
  %50 = icmp eq i64 %index.next80, %flatten.tripcount.i36.i
  br i1 %50, label %_ZN11duckdb_zstdL16ZSTD_reduceIndexEPNS_17ZSTD_matchState_tEPKNS_18ZSTD_CCtx_params_sEj.exit, label %vector.body76, !llvm.loop !471

_ZN11duckdb_zstdL16ZSTD_reduceIndexEPNS_17ZSTD_matchState_tEPKNS_18ZSTD_CCtx_params_sEj.exit: ; preds = %vector.body76, %_ZN11duckdb_zstdL24ZSTD_reduceTable_btlazy2EPjjj.exit.i, %bb.f
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !68 ; 2 uses
  %i.bz = icmp ult ptr %i.ar, %i.by
  br i1 %i.bz, label %bb.g, label %_ZN11duckdb_zstdL28ZSTD_cwksp_mark_tables_cleanEPNS_10ZSTD_cwkspE.exit

bb.g:                                             ; preds = %_ZN11duckdb_zstdL16ZSTD_reduceIndexEPNS_17ZSTD_matchState_tEPKNS_18ZSTD_CCtx_params_sEj.exit
  store ptr %i.by, ptr %i.as, align 8, !tbaa !69
  br label %_ZN11duckdb_zstdL28ZSTD_cwksp_mark_tables_cleanEPNS_10ZSTD_cwkspE.exit

_ZN11duckdb_zstdL28ZSTD_cwksp_mark_tables_cleanEPNS_10ZSTD_cwkspE.exit: ; preds = %_ZN11duckdb_zstdL16ZSTD_reduceIndexEPNS_17ZSTD_matchState_tEPKNS_18ZSTD_CCtx_params_sEj.exit, %bb.g
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !266
  %storemerge = tail call i32 @llvm.usub.sat.i32(i32 %i.cb, i32 %i.z)
  store i32 %storemerge, ptr %i.ca, align 4, !tbaa !266
  store i32 0, ptr %i.b, align 8, !tbaa !444
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr null, ptr %i.cc, align 8, !tbaa !446
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
  store ptr %i.r, ptr %i.s, align 8, !tbaa !472
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.u = load i32, ptr %i.t, align 8, !tbaa !473
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3456
  store i32 %i.u, ptr %i.v, align 8, !tbaa !474
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !475
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
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !476
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
  store ptr %i.bp, ptr %3, align 8, !tbaa !477
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 3152
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !431
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !478
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
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !479
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 5232 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !434
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 5240 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !433
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !480
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
  %.sroa.0.0.copyload.i = load i32, ptr %i.cs, align 4, !tbaa !3
  %.sroa.45.0..sroa_idx.i = getelementptr i8, ptr %i.cr, i64 -8
  %.sroa.45.0.copyload.i = load i32, ptr %.sroa.45.0..sroa_idx.i, align 4, !tbaa !3
  %i.ct = icmp eq i32 %.sroa.0.0.copyload.i, 0
  %i.cu = icmp eq i32 %.sroa.45.0.copyload.i, 0
  %or.cond4.i = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %or.cond4.i, label %_ZN11duckdb_zstdL38ZSTD_postProcessSequenceProducerResultEPNS_13ZSTD_SequenceEmmm.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cv = icmp eq i64 %i.cn, %i.co
  br i1 %i.cv, label %_ZN11duckdb_zstdL38ZSTD_postProcessSequenceProducerResultEPNS_13ZSTD_SequenceEmmm.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cr, i8 0, i64 16, i1 false)
  %i.cw = add i64 %i.cn, 1
  br label %_ZN11duckdb_zstdL38ZSTD_postProcessSequenceProducerResultEPNS_13ZSTD_SequenceEmmm.exit

_ZN11duckdb_zstdL38ZSTD_postProcessSequenceProducerResultEPNS_13ZSTD_SequenceEmmm.exit: ; preds = %bb.r, %bb.t
  %.1.i = phi i64 [ %i.cw, %bb.t ], [ %i.cn, %bb.r ] ; 7 uses
  %i.cx = icmp ult i64 %.1.i, -119
  br i1 %i.cx, label %bb.u, label %_ZN11duckdb_zstdL38ZSTD_postProcessSequenceProducerResultEPNS_13ZSTD_SequenceEmmm.exit.thread

bb.u:                                             ; preds = %_ZN11duckdb_zstdL38ZSTD_postProcessSequenceProducerResultEPNS_13ZSTD_SequenceEmmm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.cy = load ptr, ptr %i.cg, align 8, !tbaa !434 ; 6 uses
  %.not.i147 = icmp eq i64 %.1.i, 0
  br i1 %.not.i147, label %_ZN11duckdb_zstdL26ZSTD_fastSequenceLengthSumEPKNS_13ZSTD_SequenceEm.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.u
  %xtraiter = and i64 %.1.i, 3                    ; 3 uses
  %i.cz = icmp ult i64 %.1.i, 4
  br i1 %i.cz, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %.1.i, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.014.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ek, %.lr.ph.i ] ; 5 uses
  %.01013.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ef, %.lr.ph.i ]
  %.01112.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ej, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %.014.i ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !239
  %i.dd = zext i32 %i.dc to i64
  %i.de = add i64 %.01013.i, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !238
  %i.dh = zext i32 %i.dg to i64
  %i.di = add i64 %.01112.i, %i.dh
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %.014.i ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !239
  %i.dm = zext i32 %i.dl to i64
  %i.dn = add i64 %i.de, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !238
  %i.dq = zext i32 %i.dp to i64
  %i.dr = add i64 %i.di, %i.dq
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %.014.i ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 36
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !239
  %i.dv = zext i32 %i.du to i64
  %i.dw = add i64 %i.dn, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !238
  %i.dz = zext i32 %i.dy to i64
  %i.ea = add i64 %i.dr, %i.dz
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %.014.i ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 52
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !239
  %i.ee = zext i32 %i.ed to i64
  %i.ef = add i64 %i.dw, %i.ee                    ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 56
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !238
  %i.ei = zext i32 %i.eh to i64
  %i.ej = add i64 %i.ea, %i.ei                    ; 3 uses
  %i.ek = add nuw i64 %.014.i, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN11duckdb_zstdL26ZSTD_fastSequenceLengthSumEPKNS_13ZSTD_SequenceEm.exit.unr-lcssa, label %.lr.ph.i, !llvm.loop !481

_ZN11duckdb_zstdL26ZSTD_fastSequenceLengthSumEPKNS_13ZSTD_SequenceEm.exit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN11duckdb_zstdL26ZSTD_fastSequenceLengthSumEPKNS_13ZSTD_SequenceEm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN11duckdb_zstdL26ZSTD_fastSequenceLengthSumEPKNS_13ZSTD_SequenceEm.exit.unr-lcssa, %.lr.ph.i.preheader
  %.014.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ek, %_ZN11duckdb_zstdL26ZSTD_fastSequenceLengthSumEPKNS_13ZSTD_SequenceEm.exit.unr-lcssa ]
  %.01013.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ef, %_ZN11duckdb_zstdL26ZSTD_fastSequenceLengthSumEPKNS_13ZSTD_SequenceEm.exit.unr-lcssa ]
  %.01112.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ej, %_ZN11duckdb_zstdL26ZSTD_fastSequenceLengthSumEPKNS_13ZSTD_SequenceEm.exit.unr-lcssa ]
  %lcmp.mod183 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod183)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.014.i.epil = phi i64 [ %i.eu, %.lr.ph.i.epil ], [ %.014.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.01013.i.epil = phi i64 [ %i.ep, %.lr.ph.i.epil ], [ %.01013.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.01112.i.epil = phi i64 [ %i.et, %.lr.ph.i.epil ], [ %.01112.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %.014.i.epil ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.en = load i32, ptr %i.em, align 4, !tbaa !239
  %i.eo = zext i32 %i.en to i64
  %i.ep = add i64 %.01013.i.epil, %i.eo           ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !238
  %i.es = zext i32 %i.er to i64
  %i.et = add i64 %.01112.i.epil, %i.es           ; 2 uses
  %i.eu = add nuw i64 %.014.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN11duckdb_zstdL26ZSTD_fastSequenceLengthSumEPKNS_13ZSTD_SequenceEm.exit, label %.lr.ph.i.epil, !llvm.loop !482

_ZN11duckdb_zstdL26ZSTD_fastSequenceLengthSumEPKNS_13ZSTD_SequenceEm.exit: ; preds = %.lr.ph.i.epil, %_ZN11duckdb_zstdL26ZSTD_fastSequenceLengthSumEPKNS_13ZSTD_SequenceEm.exit.unr-lcssa
  %.lcssa180 = phi i64 [ %i.ef, %_ZN11duckdb_zstdL26ZSTD_fastSequenceLengthSumEPKNS_13ZSTD_SequenceEm.exit.unr-lcssa ], [ %i.ep, %.lr.ph.i.epil ]
  %.lcssa = phi i64 [ %i.ej, %_ZN11duckdb_zstdL26ZSTD_fastSequenceLengthSumEPKNS_13ZSTD_SequenceEm.exit.unr-lcssa ], [ %i.et, %.lr.ph.i.epil ]
  %i.ev = add i64 %.lcssa, %.lcssa180
  %i.ew = icmp ugt i64 %i.ev, %2
  br i1 %i.ew, label %bb.w, label %_ZN11duckdb_zstdL26ZSTD_fastSequenceLengthSumEPKNS_13ZSTD_SequenceEm.exit.thread

_ZN11duckdb_zstdL26ZSTD_fastSequenceLengthSumEPKNS_13ZSTD_SequenceEm.exit.thread: ; preds = %bb.u, %_ZN11duckdb_zstdL26ZSTD_fastSequenceLengthSumEPKNS_13ZSTD_SequenceEm.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !403
  %i.ez = call noundef i64 @_ZN11duckdb_zstd46ZSTD_copySequencesToSeqStoreExplicitBlockDelimEPNS_11ZSTD_CCtx_sEPNS_21ZSTD_sequencePositionEPKNS_13ZSTD_SequenceEmPKvmNS_18ZSTD_paramSwitch_eE(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %i.cy, i64 noundef %.1.i, ptr noundef %1, i64 noundef %2, i32 noundef %i.ey) ; 2 uses
  %i.fa = icmp ult i64 %i.ez, -119
  br i1 %i.fa, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN11duckdb_zstdL26ZSTD_fastSequenceLengthSumEPKNS_13ZSTD_SequenceEm.exit.thread
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 3504
  store ptr null, ptr %i.fb, align 8, !tbaa !483
  br label %bb.w

bb.w:                                             ; preds = %_ZN11duckdb_zstdL26ZSTD_fastSequenceLengthSumEPKNS_13ZSTD_SequenceEm.exit, %_ZN11duckdb_zstdL26ZSTD_fastSequenceLengthSumEPKNS_13ZSTD_SequenceEm.exit.thread, %bb.v
  %.3 = phi i64 [ %i.ez, %_ZN11duckdb_zstdL26ZSTD_fastSequenceLengthSumEPKNS_13ZSTD_SequenceEm.exit.thread ], [ 0, %bb.v ], [ -107, %_ZN11duckdb_zstdL26ZSTD_fastSequenceLengthSumEPKNS_13ZSTD_SequenceEm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %.thread163

_ZN11duckdb_zstdL38ZSTD_postProcessSequenceProducerResultEPNS_13ZSTD_SequenceEmmm.exit.thread: ; preds = %bb.q, %bb.s, %_ZN11duckdb_zstdL38ZSTD_postProcessSequenceProducerResultEPNS_13ZSTD_SequenceEmmm.exit
  %.1.i156 = phi i64 [ %.1.i, %_ZN11duckdb_zstdL38ZSTD_postProcessSequenceProducerResultEPNS_13ZSTD_SequenceEmmm.exit ], [ -106, %bb.s ], [ -106, %bb.q ]
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !484
  %.not140 = icmp eq i32 %i.fd, 0
  br i1 %.not140, label %.thread163, label %bb.x

bb.x:                                             ; preds = %_ZN11duckdb_zstdL38ZSTD_postProcessSequenceProducerResultEPNS_13ZSTD_SequenceEmmm.exit.thread
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !198 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !199
  %i.fi = add i32 %i.ff, -6
  %i.fj = icmp ult i32 %i.fi, -3
  %i.fk = icmp ne i32 %i.fh, 1
  %.not8.i = or i1 %i.fj, %i.fk
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr @_ZZN11duckdb_zstd26ZSTD_selectBlockCompressorENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eENS_15ZSTD_dictMode_eEE24rowBasedBlockCompressors, i64 %i.an
  %i.fm = zext nneg i32 %i.ff to i64
  %i.fn = getelementptr [8 x i8], ptr %i.fl, i64 %i.fm
  %i.fo = getelementptr i8, ptr %i.fn, i64 -24
  %i.fp = getelementptr inbounds nuw [80 x i8], ptr @_ZZN11duckdb_zstd26ZSTD_selectBlockCompressorENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eENS_15ZSTD_dictMode_eEE15blockCompressor, i64 %i.an
  %i.fq = sext i32 %i.ff to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %i.fq
  %.0.in.i = select i1 %.not8.i, ptr %i.fr, ptr %i.fo
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !62
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 3504
  store ptr null, ptr %i.fs, align 8, !tbaa !483
  %i.ft = load ptr, ptr %i.ap, align 8, !tbaa !71
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 5616
  %i.fv = tail call noundef i64 %.0.i(ptr noundef nonnull %i.a, ptr noundef nonnull %i.k, ptr noundef nonnull %i.fu, ptr noundef %1, i64 noundef %2)
  br label %bb.z

bb.y:                                             ; preds = %bb.p
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !198 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !199
  %i.ga = add i32 %i.fx, -6
  %i.gb = icmp ult i32 %i.ga, -3
  %i.gc = icmp ne i32 %i.fz, 1
  %.not8.i148 = or i1 %i.gb, %i.gc
  %i.gd = getelementptr inbounds nuw [24 x i8], ptr @_ZZN11duckdb_zstd26ZSTD_selectBlockCompressorENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eENS_15ZSTD_dictMode_eEE24rowBasedBlockCompressors, i64 %i.an
  %i.ge = zext nneg i32 %i.fx to i64
  %i.gf = getelementptr [8 x i8], ptr %i.gd, i64 %i.ge
  %i.gg = getelementptr i8, ptr %i.gf, i64 -24
  %i.gh = getelementptr inbounds nuw [80 x i8], ptr @_ZZN11duckdb_zstd26ZSTD_selectBlockCompressorENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eENS_15ZSTD_dictMode_eEE15blockCompressor, i64 %i.an
  %i.gi = sext i32 %i.fx to i64
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.gh, i64 %i.gi
  %.0.in.i149 = select i1 %.not8.i148, ptr %i.gj, ptr %i.gg
  %.0.i150 = load ptr, ptr %.0.in.i149, align 8, !tbaa !62
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 3504
  store ptr null, ptr %i.gk, align 8, !tbaa !483
  %i.gl = tail call noundef i64 %.0.i150(ptr noundef nonnull %i.a, ptr noundef nonnull %i.k, ptr noundef nonnull %i.ar, ptr noundef %1, i64 noundef %2)
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.o, %bb.y, %bb.k
  %.2133 = phi i64 [ %i.bi, %bb.k ], [ %i.ca, %bb.o ], [ %i.fv, %bb.x ], [ %i.gl, %bb.y ] ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.gn = sub i64 0, %.2133
  %i.go = getelementptr inbounds i8, ptr %i.gm, i64 %i.gn
  %i.gp = load ptr, ptr %i.n, align 8, !tbaa !225
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gp, ptr nonnull readonly align 1 %i.go, i64 %.2133, i1 false)
  %i.gq = load ptr, ptr %i.n, align 8, !tbaa !225
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %.2133
  store ptr %i.gr, ptr %i.n, align 8, !tbaa !225
  br label %.thread163

.thread163:                                       ; preds = %_ZN11duckdb_zstdL38ZSTD_postProcessSequenceProducerResultEPNS_13ZSTD_SequenceEmmm.exit.thread, %bb.w, %bb.j, %.thread, %bb.z, %bb.c, %bb.d
  %.7 = phi i64 [ 1, %bb.d ], [ 1, %bb.c ], [ 0, %bb.z ], [ -41, %bb.j ], [ %.1.ph, %.thread ], [ %.1.i156, %_ZN11duckdb_zstdL38ZSTD_postProcessSequenceProducerResultEPNS_13ZSTD_SequenceEmmm.exit.thread ], [ %.3, %bb.w ]
  ret i64 %.7
}

declare void @_ZN11duckdb_zstd29ZSTD_ldm_skipRawSeqStoreBytesEPNS_13rawSeqStore_tEm(ptr noundef, i64 noundef) local_unnamed_addr #12

declare void @_ZN11duckdb_zstd22ZSTD_ldm_skipSequencesEPNS_13rawSeqStore_tEmj(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #12

declare noundef i64 @_ZN11duckdb_zstd22ZSTD_ldm_blockCompressEPNS_13rawSeqStore_tEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjNS_18ZSTD_paramSwitch_eEPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #12

declare noundef i64 @_ZN11duckdb_zstd26ZSTD_ldm_generateSequencesEPNS_10ldmState_tEPNS_13rawSeqStore_tEPKNS_11ldmParams_tEPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN11duckdb_zstdL10ZSTD_isRLEEPKhm(ptr noundef %0, i64 noundef %1) unnamed_addr #9 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !220
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
  %.val60.i = load i64, ptr %0, align 1, !tbaa !78 ; 2 uses
  %.val.i = load i64, ptr %i.f, align 1, !tbaa !78 ; 2 uses
  %.not.i = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i, label %.preheader.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = xor i64 %.val.i, %.val60.i
  %i.k = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.j, i1 true)
  %i.l = lshr i64 %i.k, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.d, %bb.f
  %.pn.i = phi ptr [ %.049.i, %bb.f ], [ %0, %bb.d ]
  %.pn67.i = phi ptr [ %.045.i, %bb.f ], [ %i.f, %bb.d ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 5 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 3 uses
  %i.m = icmp ult ptr %.045.i, %i.h
  br i1 %i.m, label %bb.f, label %.loopexit.i

bb.f:                                             ; preds = %.preheader.i
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !78 ; 2 uses
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !78 ; 2 uses
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
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.c
  %.251.i = phi ptr [ %0, %bb.c ], [ %.049.i, %.preheader.i ] ; 4 uses
  %.247.i = phi ptr [ %i.f, %bb.c ], [ %.045.i, %.preheader.i ] ; 5 uses
  %i.u = getelementptr inbounds i8, ptr %i.g, i64 -3
  %i.v = icmp ult ptr %.247.i, %i.u
  br i1 %i.v, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.loopexit.i
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !3
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !3
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
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !256
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !256
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
  %i.af = load i8, ptr %.453.i, align 1, !tbaa !220
  %i.ag = load i8, ptr %.4.i, align 1, !tbaa !220
  %i.ah = icmp eq i8 %i.af, %i.ag
  %spec.select.idx.i = zext i1 %i.ah to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.4.i, i64 %spec.select.idx.i
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.5.i = phi ptr [ %.4.i, %bb.l ], [ %spec.select.i, %bb.m ]
  %i.ai = ptrtoint ptr %.5.i to i64
  %i.aj = ptrtoint ptr %i.f to i64
  %i.ak = sub i64 %i.ai, %i.aj
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.e, %.thread63.i, %bb.n
  %.3.i = phi i64 [ %i.t, %.thread63.i ], [ %i.ak, %bb.n ], [ %i.l, %bb.e ]
  %i.al = add nsw i64 %i.d, -1
  %.not27 = icmp eq i64 %.3.i, %i.al
  br i1 %.not27, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit, %bb.b
  %.not2834 = icmp ult i64 %1, 32
  br i1 %.not2834, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.o, %.critedge
  %.02335 = phi i64 [ %i.aq, %.critedge ], [ %i.d, %bb.o ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %.02335 ; 4 uses
  %.val = load i64, ptr %i.am, align 1, !tbaa !78
  %.not29 = icmp eq i64 %.val, %i.c
  br i1 %.not29, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.val.1 = load i64, ptr %i.an, align 1, !tbaa !78
  %.not29.1 = icmp eq i64 %.val.1, %i.c
  br i1 %.not29.1, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.val.2 = load i64, ptr %i.ao, align 1, !tbaa !78
  %.not29.2 = icmp eq i64 %.val.2, %i.c
  br i1 %.not29.2, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.val.3 = load i64, ptr %i.ap, align 1, !tbaa !78
  %.not29.3 = icmp eq i64 %.val.3, %i.c
  br i1 %.not29.3, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %bb.r
  %i.aq = add i64 %.02335, 32                     ; 2 uses
  %.not28 = icmp eq i64 %i.aq, %1
  br i1 %.not28, label %.loopexit, label %.preheader, !llvm.loop !485

.loopexit:                                        ; preds = %.critedge, %.preheader, %bb.p, %bb.q, %bb.r, %bb.o, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit, %bb.a
  %.2 = phi i32 [ 0, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ 1, %bb.a ], [ 1, %bb.o ], [ 1, %.critedge ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %.preheader ]
  ret i32 %.2
}

declare noundef i64 @_ZN11duckdb_zstd23ZSTD_compressSuperBlockEPNS_11ZSTD_CCtx_sEPvmPKvmj(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #19

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL33ZSTD_compressSeqStore_singleBlockEPNS_11ZSTD_CCtx_sEPKNS_10seqStore_tEPNS_10repcodes_sES6_PvmPKvmjj(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr noundef %4, i64 noundef %5, ptr nofree noundef readonly %6, i64 noundef %7, i32 noundef range(i32 0, 2) %8, i32 noundef range(i32 0, 2) %9) unnamed_addr #2 {
bb.a:
  %10 = alloca %"struct.duckdb_zstd::repcodes_s", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !486
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %_ZN11duckdb_zstdL29ZSTD_seqStore_resolveOffCodesEPNS_10repcodes_sES1_PKNS_10seqStore_tEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !214
  %i.c = load ptr, ptr %1, align 8, !tbaa !210    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3                   ; 2 uses
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = load i32, ptr %i.i, align 8, !tbaa !222
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.m = load i32, ptr %i.l, align 4, !tbaa !223
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi i32 [ %i.m, %bb.c ], [ %i.h, %bb.b ]
  %.not44.i = icmp eq i32 %i.h, 0
  br i1 %.not44.i, label %_ZN11duckdb_zstdL29ZSTD_seqStore_resolveOffCodesEPNS_10repcodes_sES1_PKNS_10seqStore_tEj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.s = zext i32 %i.n to i64
  %wide.trip.count.i = and i64 %i.g, 4294967295
  br label %bb.e

bb.e:                                             ; preds = %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit39.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit39.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i16, ptr %i.u, align 4, !tbaa !215
  %i.w = icmp eq i16 %i.v, 0
  %i.x = icmp ne i64 %indvars.iv.i, %i.s
  %i.y = select i1 %i.w, i1 %i.x, i1 false        ; 2 uses
  %i.z = zext i1 %i.y to i32                      ; 2 uses
  %i.aa = load i32, ptr %i.t, align 4, !tbaa !218 ; 5 uses
  %i.ab = add i32 %i.aa, -1                       ; 3 uses
  %or.cond.i = icmp ult i32 %i.ab, 3
  br i1 %or.cond.i, label %bb.f, label %thread-pre-split.i

bb.f:                                             ; preds = %bb.e
  %i.ac = add nuw nsw i32 %i.ab, %i.z             ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 3
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = load i32, ptr %2, align 4, !tbaa !3
  %i.af = add i32 %i.ae, -1
  %i.ag = load i32, ptr %3, align 4, !tbaa !3
  %i.ah = add i32 %i.ag, -1
  br label %_ZN11duckdb_zstdL30ZSTD_resolveRepcodeToRawOffsetEPKjjj.exit33.i

bb.h:                                             ; preds = %bb.f
  %i.ai = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ai
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  br label %_ZN11duckdb_zstdL30ZSTD_resolveRepcodeToRawOffsetEPKjjj.exit33.i

_ZN11duckdb_zstdL30ZSTD_resolveRepcodeToRawOffsetEPKjjj.exit33.i: ; preds = %bb.h, %bb.g
  %.0.i41.i = phi i32 [ %i.af, %bb.g ], [ %i.ak, %bb.h ]
  %.0.i32.i = phi i32 [ %i.ah, %bb.g ], [ %i.am, %bb.h ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i41.i, %.0.i32.i
  br i1 %.not.i, label %thread-pre-split.thread.i, label %bb.i

bb.i:                                             ; preds = %_ZN11duckdb_zstdL30ZSTD_resolveRepcodeToRawOffsetEPKjjj.exit33.i
  %i.an = add i32 %.0.i32.i, 3                    ; 2 uses
  store i32 %i.an, ptr %i.t, align 4, !tbaa !218
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.i, %bb.e
  %i.ao = phi i32 [ %i.aa, %bb.e ], [ %i.an, %bb.i ] ; 3 uses
  %i.ap = icmp ugt i32 %i.ao, 3
  br i1 %i.ap, label %bb.j, label %thread-pre-split.thread.i

bb.j:                                             ; preds = %thread-pre-split.i
  %i.aq = load <2 x i32>, ptr %2, align 4, !tbaa !3
  store <2 x i32> %i.aq, ptr %i.o, align 4, !tbaa !3
  %i.ar = add i32 %i.ao, -3
  br label %.sink.split.i.i

thread-pre-split.thread.i:                        ; preds = %thread-pre-split.i, %_ZN11duckdb_zstdL30ZSTD_resolveRepcodeToRawOffsetEPKjjj.exit33.i
  %i.as = phi i32 [ %i.ao, %thread-pre-split.i ], [ %i.aa, %_ZN11duckdb_zstdL30ZSTD_resolveRepcodeToRawOffsetEPKjjj.exit33.i ]
  %not..i = xor i1 %i.y, true
  %i.at = sext i1 %not..i to i32
  %i.au = add nsw i32 %i.as, %i.at                ; 3 uses
  switch i32 %i.au, label %bb.l [
    i32 0, label %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit.i
    i32 3, label %bb.k
  ]

bb.k:                                             ; preds = %thread-pre-split.thread.i
  %i.av = load i32, ptr %2, align 4, !tbaa !3     ; 2 uses
  %i.aw = add i32 %i.av, -1
  br label %bb.m

bb.l:                                             ; preds = %thread-pre-split.thread.i
  %i.ax = zext i32 %i.au to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3
  %.pre.i.i = load i32, ptr %2, align 4, !tbaa !3
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ba = phi i32 [ %i.av, %bb.k ], [ %.pre.i.i, %bb.l ]
  %i.bb = phi i32 [ %i.aw, %bb.k ], [ %i.az, %bb.l ]
  %.not22.i.i = icmp eq i32 %i.au, 1
  %.in.i.i = select i1 %.not22.i.i, ptr %i.p, ptr %i.o
  %i.bc = load i32, ptr %.in.i.i, align 4, !tbaa !3
  store i32 %i.bc, ptr %i.p, align 4, !tbaa !3
  store i32 %i.ba, ptr %i.o, align 4, !tbaa !3
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.m, %bb.j
  %.sink.i.i = phi i32 [ %i.bb, %bb.m ], [ %i.ar, %bb.j ]
  store i32 %.sink.i.i, ptr %2, align 4, !tbaa !3
  br label %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit.i

_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit.i:    ; preds = %.sink.split.i.i, %thread-pre-split.thread.i
  %i.bd = icmp ugt i32 %i.aa, 3
  br i1 %i.bd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit.i
  %i.be = load <2 x i32>, ptr %3, align 4, !tbaa !3
  store <2 x i32> %i.be, ptr %i.q, align 4, !tbaa !3
  %i.bf = add i32 %i.aa, -3
  br label %.sink.split.i36.i

bb.o:                                             ; preds = %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit.i
  %i.bg = add nsw i32 %i.ab, %i.z                 ; 3 uses
  switch i32 %i.bg, label %bb.q [
    i32 0, label %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit39.i
    i32 3, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.bh = load i32, ptr %3, align 4, !tbaa !3     ; 2 uses
  %i.bi = add i32 %i.bh, -1
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bj = zext i32 %i.bg to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3
  %.pre.i38.i = load i32, ptr %3, align 4, !tbaa !3
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bm = phi i32 [ %i.bh, %bb.p ], [ %.pre.i38.i, %bb.q ]
  %i.bn = phi i32 [ %i.bi, %bb.p ], [ %i.bl, %bb.q ]
  %.not22.i34.i = icmp eq i32 %i.bg, 1
  %.in.i35.i = select i1 %.not22.i34.i, ptr %i.r, ptr %i.q
  %i.bo = load i32, ptr %.in.i35.i, align 4, !tbaa !3
  store i32 %i.bo, ptr %i.r, align 4, !tbaa !3
  store i32 %i.bm, ptr %i.q, align 4, !tbaa !3
  br label %.sink.split.i36.i

.sink.split.i36.i:                                ; preds = %bb.r, %bb.n
  %.sink.i37.i = phi i32 [ %i.bn, %bb.r ], [ %i.bf, %bb.n ]
  store i32 %.sink.i37.i, ptr %3, align 4, !tbaa !3
  br label %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit39.i

_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit39.i:  ; preds = %.sink.split.i36.i, %bb.o
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11duckdb_zstdL29ZSTD_seqStore_resolveOffCodesEPNS_10repcodes_sES1_PKNS_10seqStore_tEj.exit, label %bb.e, !llvm.loop !487

_ZN11duckdb_zstdL29ZSTD_seqStore_resolveOffCodesEPNS_10repcodes_sES1_PKNS_10seqStore_tEj.exit: ; preds = %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit39.i, %bb.d, %bb.a
  %i.bp = icmp ult i64 %5, 3
  br i1 %i.bp, label %_ZN11duckdb_zstdL20ZSTD_noCompressBlockEPvmPKvmj.exit.thread, label %bb.s

bb.s:                                             ; preds = %_ZN11duckdb_zstdL29ZSTD_seqStore_resolveOffCodesEPNS_10repcodes_sES1_PKNS_10seqStore_tEj.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 3200 ; 6 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !70
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 3208
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !71
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 3 uses
  %i.bw = add i64 %5, -3
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 3520
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !72
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !10
  %i.cb = tail call fastcc noundef i64 @_ZN11duckdb_zstdL28ZSTD_entropyCompressSeqStoreEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmmSA_mi(ptr noundef %1, ptr noundef %i.br, ptr noundef %i.bt, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.bv, i64 noundef %i.bw, i64 noundef %7, ptr noundef %i.by, i32 noundef %i.ca) ; 5 uses
  %i.cc = icmp ult i64 %i.cb, -119
  br i1 %i.cc, label %bb.t, label %_ZN11duckdb_zstdL20ZSTD_noCompressBlockEPvmPKvmj.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !272
  %i.cf = icmp eq i32 %i.ce, 0
  %i.cg = icmp ult i64 %i.cb, 25
  %or.cond = and i1 %i.cg, %i.cf
  br i1 %or.cond, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ch = tail call fastcc noundef i32 @_ZN11duckdb_zstdL10ZSTD_isRLEEPKhm(ptr noundef %6, i64 noundef %7)
  %.not77 = icmp eq i32 %i.ch, 0
  %spec.select = select i1 %.not77, i64 %i.cb, i64 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.070 = phi i64 [ %i.cb, %bb.t ], [ %spec.select, %bb.u ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !273
  %.not78 = icmp eq i32 %i.cj, 0
  br i1 %.not78, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ck = call fastcc noundef i64 @_ZN11duckdb_zstdL23ZSTD_copyBlockSequencesEPNS_12SeqCollectorEPKNS_10seqStore_tEPKj(ptr noundef nonnull %i.ci, ptr noundef %1, ptr noundef nonnull %10) ; 2 uses
  %i.cl = icmp ult i64 %i.ck, -119
  br i1 %i.cl, label %bb.x, label %_ZN11duckdb_zstdL20ZSTD_noCompressBlockEPvmPKvmj.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.cm = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !62
  %i.cn = shufflevector <2 x ptr> %i.cm, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.cn, ptr %i.bq, align 8, !tbaa !62
  br label %_ZN11duckdb_zstdL20ZSTD_noCompressBlockEPvmPKvmj.exit.thread

bb.y:                                             ; preds = %bb.v
  switch i64 %.070, label %bb.ad [
    i64 0, label %bb.z
    i64 1, label %bb.ab
  ]

bb.z:                                             ; preds = %bb.y
  %i.co = add i64 %7, 3                           ; 4 uses
  %i.cp = icmp ugt i64 %i.co, %5
  br i1 %i.cp, label %_ZN11duckdb_zstdL20ZSTD_noCompressBlockEPvmPKvmj.exit.thread, label %_ZN11duckdb_zstdL20ZSTD_noCompressBlockEPvmPKvmj.exit

_ZN11duckdb_zstdL20ZSTD_noCompressBlockEPvmPKvmj.exit: ; preds = %bb.z
  %.tr.i = trunc i64 %7 to i32
  %i.cq = shl i32 %.tr.i, 3                       ; 2 uses
  %i.cr = or disjoint i32 %i.cq, %8
  %i.cs = trunc i32 %i.cr to i16
  store i16 %i.cs, ptr %4, align 1, !tbaa !256
  %i.ct = lshr i32 %i.cq, 16
  %i.cu = trunc i32 %i.ct to i8
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !220
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bv, ptr readonly align 1 %6, i64 %7, i1 false)
  %i.cw = icmp ult i64 %i.co, -119
  br i1 %i.cw, label %bb.aa, label %_ZN11duckdb_zstdL20ZSTD_noCompressBlockEPvmPKvmj.exit.thread

bb.aa:                                            ; preds = %_ZN11duckdb_zstdL20ZSTD_noCompressBlockEPvmPKvmj.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %10, i64 12, i1 false), !tbaa.struct !486
  br label %bb.ae

bb.ab:                                            ; preds = %bb.y
  %i.cx = icmp eq i64 %5, 3
  br i1 %i.cx, label %_ZN11duckdb_zstdL20ZSTD_noCompressBlockEPvmPKvmj.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cy = load i8, ptr %6, align 1, !tbaa !220
  %.tr.i84 = trunc i64 %7 to i32
  %i.cz = shl i32 %.tr.i84, 3                     ; 2 uses
  %i.da = or disjoint i32 %i.cz, %8
  %i.db = trunc i32 %i.da to i16
  %i.dc = or disjoint i16 %i.db, 2
  store i16 %i.dc, ptr %4, align 1, !tbaa !256
  %i.dd = lshr i32 %i.cz, 16
  %i.de = trunc i32 %i.dd to i8
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 %i.de, ptr %i.df, align 1, !tbaa !220
  store i8 %i.cy, ptr %i.bv, align 1, !tbaa !220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %10, i64 12, i1 false), !tbaa.struct !486
  br label %bb.ae

bb.ad:                                            ; preds = %bb.y
  %i.dg = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !62
  %i.dh = shufflevector <2 x ptr> %i.dg, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.dh, ptr %i.bq, align 8, !tbaa !62
  %.tr.i86 = trunc i64 %.070 to i32
  %i.di = shl i32 %.tr.i86, 3                     ; 2 uses
  %i.dj = or disjoint i32 %i.di, %8
  %i.dk = trunc i32 %i.dj to i16
  %i.dl = or disjoint i16 %i.dk, 4
  store i16 %i.dl, ptr %4, align 1, !tbaa !256
  %i.dm = lshr i32 %i.di, 16
  %i.dn = trunc i32 %i.dm to i8
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !220
  %i.dp = add nuw i64 %.070, 3
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.aa
  %.069 = phi i64 [ %i.co, %bb.aa ], [ 4, %bb.ac ], [ %i.dp, %bb.ad ] ; 2 uses
  %i.dq = load ptr, ptr %i.bq, align 8, !tbaa !70
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 5604 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !192
  %i.dt = icmp eq i32 %i.ds, 2
  br i1 %i.dt, label %bb.af, label %_ZN11duckdb_zstdL20ZSTD_noCompressBlockEPvmPKvmj.exit.thread

bb.af:                                            ; preds = %bb.ae
  store i32 1, ptr %i.dr, align 4, !tbaa !192
  br label %_ZN11duckdb_zstdL20ZSTD_noCompressBlockEPvmPKvmj.exit.thread

_ZN11duckdb_zstdL20ZSTD_noCompressBlockEPvmPKvmj.exit.thread: ; preds = %bb.ab, %bb.z, %bb.ae, %bb.af, %_ZN11duckdb_zstdL29ZSTD_seqStore_resolveOffCodesEPNS_10repcodes_sES1_PKNS_10seqStore_tEj.exit, %bb.w, %_ZN11duckdb_zstdL20ZSTD_noCompressBlockEPvmPKvmj.exit, %bb.s, %bb.x
  %.4 = phi i64 [ %i.cb, %bb.s ], [ 0, %bb.x ], [ %i.ck, %bb.w ], [ -70, %_ZN11duckdb_zstdL29ZSTD_seqStore_resolveOffCodesEPNS_10repcodes_sES1_PKNS_10seqStore_tEj.exit ], [ %i.co, %_ZN11duckdb_zstdL20ZSTD_noCompressBlockEPvmPKvmj.exit ], [ -70, %bb.z ], [ %.069, %bb.af ], [ %.069, %bb.ae ], [ -70, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  ret i64 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN11duckdb_zstdL24ZSTD_deriveSeqStoreChunkEPNS_10seqStore_tEPKS0_mm(ptr nofree noundef captures(none) initializes((0, 80)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #20 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !tbaa.struct !279
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !210
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %2 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !210    ; 5 uses
  %.not.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i, label %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.i = load i32, ptr %i.h, align 4, !tbaa !223
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
  %.sroa.3.0.copyload.i = load i16, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !256
  %i.n = zext i16 %.sroa.3.0.copyload.i to i64
  %i.o = add i64 %.014.i, %i.n                    ; 3 uses
  %i.p = icmp eq i64 %.01213.i, %i.j
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr %i.k, align 8, !tbaa !222
  %i.r = icmp eq i32 %i.q, 1
  %i.s = add i64 %i.o, 65536
  %spec.select.i = select i1 %i.r, i64 %i.s, i64 %i.o
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.i = phi i64 [ %i.o, %bb.c ], [ %spec.select.i, %bb.d ]
  %i.t = or disjoint i64 %.01213.i, 1             ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.t
  %.sroa.3.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.sroa.3.0.copyload.i.1 = load i16, ptr %.sroa.3.0..sroa_idx.i.1, align 4, !tbaa !256
  %i.v = zext i16 %.sroa.3.0.copyload.i.1 to i64
  %i.w = add i64 %.1.i, %i.v                      ; 3 uses
  %i.x = icmp eq i64 %i.t, %i.j
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %i.k, align 8, !tbaa !222
  %i.z = icmp eq i32 %i.y, 1
  %i.aa = add i64 %i.w, 65536
  %spec.select.i.1 = select i1 %i.z, i64 %i.aa, i64 %i.w
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i.1 = phi i64 [ %i.w, %bb.e ], [ %spec.select.i.1, %bb.f ] ; 3 uses
  %i.ab = add nuw i64 %.01213.i, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !282

_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %i.ac = and i64 %i.f, 8
  %lcmp.mod.not = icmp eq i64 %i.ac, 0
  br i1 %lcmp.mod.not, label %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.014.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %.1.i.1, %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit.loopexit.unr-lcssa ]
  %.01213.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ab, %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod54 = trunc i64 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod54)
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.01213.i.epil.init
  %.sroa.3.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %.sroa.3.0.copyload.i.epil = load i16, ptr %.sroa.3.0..sroa_idx.i.epil, align 4, !tbaa !256
  %i.ae = zext i16 %.sroa.3.0.copyload.i.epil to i64
  %i.af = add i64 %.014.i.epil.init, %i.ae        ; 3 uses
  %i.ag = icmp eq i64 %.01213.i.epil.init, %i.j
  br i1 %i.ag, label %bb.h, label %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit

bb.h:                                             ; preds = %.epil.preheader
  %i.ah = load i32, ptr %i.k, align 8, !tbaa !222
  %i.ai = icmp eq i32 %i.ah, 1
  %i.aj = add i64 %i.af, 65536
  %spec.select.i.epil = select i1 %i.ai, i64 %i.aj, i64 %i.af
  br label %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit

_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit: ; preds = %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit.loopexit.unr-lcssa, %bb.h, %.epil.preheader, %bb.b
  %.0.lcssa.i = phi i64 [ 0, %bb.b ], [ %.1.i.1, %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit.loopexit.unr-lcssa ], [ %i.af, %.epil.preheader ], [ %spec.select.i.epil, %bb.h ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !224
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.0.lcssa.i
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !224
  br label %bb.i

bb.i:                                             ; preds = %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit, %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !222
  %.not35 = icmp eq i32 %i.ao, 0
  br i1 %.not35, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !223
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = icmp ugt i64 %2, %i.ar
  %i.at = icmp samesign ult i64 %3, %i.ar
  %or.cond = select i1 %i.as, i1 true, i1 %i.at
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.au, align 8, !tbaa !222
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.av = trunc nuw i64 %2 to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !223
  %i.ay = sub i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !223
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i
  %i.az = load ptr, ptr %1, align 8, !tbaa !210
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %2 ; 6 uses
  store ptr %i.ba, ptr %0, align 8, !tbaa !210
  %i.bb = load ptr, ptr %1, align 8, !tbaa !210   ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %3 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !214
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !214
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bb to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3
  %i.bk = icmp eq i64 %3, %i.bj
  br i1 %i.bk, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i36 = icmp eq ptr %i.bc, %i.ba
  br i1 %.not.i36, label %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46, label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %bb.n
  %i.bl = ptrtoint ptr %i.bc to i64
  %i.bm = ptrtoint ptr %i.ba to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = ashr exact i64 %i.bn, 3                 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !223
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstdL24ZSTD_deriveSeqStoreChunkEPNS_10seqStore_tEPKS0_mm:bb.a

.lr.ph.i37.new:                                   ; preds = %.lr.ph.i37
  %unroll_iter60 = and i64 %i.bo, -2
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %.lr.ph.i37.new
  %.014.i38 = phi i64 [ 0, %.lr.ph.i37.new ], [ %.1.i42.1, %bb.s ]
  %.01213.i39 = phi i64 [ 0, %.lr.ph.i37.new ], [ %i.cj, %bb.s ] ; 4 uses
  %niter61 = phi i64 [ 0, %.lr.ph.i37.new ], [ %niter61.next.1, %bb.s ]
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.01213.i39
  %.sroa.3.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %.sroa.3.0.copyload.i41 = load i16, ptr %.sroa.3.0..sroa_idx.i40, align 4, !tbaa !256
  %i.bv = zext i16 %.sroa.3.0.copyload.i41 to i64
  %i.bw = add i64 %.014.i38, %i.bv                ; 3 uses
  %i.bx = icmp eq i64 %.01213.i39, %i.br
  br i1 %i.bx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.by = load i32, ptr %i.bs, align 8, !tbaa !222
  %i.bz = icmp eq i32 %i.by, 1
  %i.ca = add i64 %i.bw, 65536
  %spec.select.i45 = select i1 %i.bz, i64 %i.ca, i64 %i.bw
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1.i42 = phi i64 [ %i.bw, %bb.o ], [ %spec.select.i45, %bb.p ]
  %i.cb = or disjoint i64 %.01213.i39, 1          ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.cb
  %.sroa.3.0..sroa_idx.i40.1 = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %.sroa.3.0.copyload.i41.1 = load i16, ptr %.sroa.3.0..sroa_idx.i40.1, align 4, !tbaa !256
  %i.cd = zext i16 %.sroa.3.0.copyload.i41.1 to i64
  %i.ce = add i64 %.1.i42, %i.cd                  ; 3 uses
  %i.cf = icmp eq i64 %i.cb, %i.br
  br i1 %i.cf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cg = load i32, ptr %i.bs, align 8, !tbaa !222
  %i.ch = icmp eq i32 %i.cg, 1
  %i.ci = add i64 %i.ce, 65536
  %spec.select.i45.1 = select i1 %i.ch, i64 %i.ci, i64 %i.ce
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1.i42.1 = phi i64 [ %i.ce, %bb.q ], [ %spec.select.i45.1, %bb.r ] ; 3 uses
  %i.cj = add nuw i64 %.01213.i39, 2              ; 2 uses
  %niter61.next.1 = add i64 %niter61, 2           ; 2 uses
  %niter61.ncmp.1 = icmp eq i64 %niter61.next.1, %unroll_iter60
  br i1 %niter61.ncmp.1, label %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46.loopexit.unr-lcssa, label %bb.o, !llvm.loop !282

_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46.loopexit.unr-lcssa: ; preds = %bb.s
  %i.ck = and i64 %i.bn, 8
  %lcmp.mod57.not = icmp eq i64 %i.ck, 0
  br i1 %lcmp.mod57.not, label %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46, label %.epil.preheader55

.epil.preheader55:                                ; preds = %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46.loopexit.unr-lcssa, %.lr.ph.i37
  %.014.i38.epil.init = phi i64 [ 0, %.lr.ph.i37 ], [ %.1.i42.1, %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46.loopexit.unr-lcssa ]
  %.01213.i39.epil.init = phi i64 [ 0, %.lr.ph.i37 ], [ %i.cj, %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod59 = trunc i64 %i.bo to i1
  tail call void @llvm.assume(i1 %lcmp.mod59)
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.01213.i39.epil.init
  %.sroa.3.0..sroa_idx.i40.epil = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %.sroa.3.0.copyload.i41.epil = load i16, ptr %.sroa.3.0..sroa_idx.i40.epil, align 4, !tbaa !256
  %i.cm = zext i16 %.sroa.3.0.copyload.i41.epil to i64
  %i.cn = add i64 %.014.i38.epil.init, %i.cm      ; 3 uses
  %i.co = icmp eq i64 %.01213.i39.epil.init, %i.br
  br i1 %i.co, label %bb.t, label %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46

bb.t:                                             ; preds = %.epil.preheader55
  %i.cp = load i32, ptr %i.bs, align 8, !tbaa !222
  %i.cq = icmp eq i32 %i.cp, 1
  %i.cr = add i64 %i.cn, 65536
  %spec.select.i45.epil = select i1 %i.cq, i64 %i.cr, i64 %i.cn
  br label %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46

_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46: ; preds = %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46.loopexit.unr-lcssa, %bb.t, %.epil.preheader55, %bb.n
  %.0.lcssa.i44 = phi i64 [ 0, %bb.n ], [ %.1.i42.1, %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46.loopexit.unr-lcssa ], [ %i.cn, %.epil.preheader55 ], [ %spec.select.i45.epil, %bb.t ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !224
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.0.lcssa.i44
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !225
  br label %bb.u

bb.u:                                             ; preds = %bb.m, %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !211
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %2
  store ptr %i.cy, ptr %i.cw, align 8, !tbaa !211
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !213
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %2
  store ptr %i.db, ptr %i.cz, align 8, !tbaa !213
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !212
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %2
  store ptr %i.de, ptr %i.dc, align 8, !tbaa !212
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11duckdb_zstdL28ZSTD_deriveBlockSplitsHelperEPNS_14seqStoreSplitsEmmPNS_11ZSTD_CCtx_sEPKNS_10seqStore_tE(ptr nofree noundef nonnull captures(none) %0, i64 noundef %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 3736 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 3816 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 3896 ; 2 uses
  %i.e = sub i64 %2, %1
  %i.f = icmp ult i64 %i.e, 300
  br i1 %i.f, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load i64, ptr %i.a, align 8, !tbaa !278
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %tailrecurse
  %i.g = phi i64 [ %i.v, %tailrecurse ], [ %.pre, %.lr.ph.preheader ]
  %.tr4853 = phi i64 [ %i.h, %tailrecurse ], [ %1, %.lr.ph.preheader ] ; 4 uses
  %.in = add i64 %.tr4853, %2
  %i.h = lshr i64 %.in, 1                         ; 6 uses
  %i.i = icmp ugt i64 %i.g, 195
  br i1 %i.i, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call fastcc void @_ZN11duckdb_zstdL24ZSTD_deriveSeqStoreChunkEPNS_10seqStore_tEPKS0_mm(ptr noundef nonnull %i.b, ptr noundef %4, i64 noundef %.tr4853, i64 noundef %2)
  tail call fastcc void @_ZN11duckdb_zstdL24ZSTD_deriveSeqStoreChunkEPNS_10seqStore_tEPKS0_mm(ptr noundef nonnull %i.c, ptr noundef %4, i64 noundef %.tr4853, i64 noundef %i.h)
  tail call fastcc void @_ZN11duckdb_zstdL24ZSTD_deriveSeqStoreChunkEPNS_10seqStore_tEPKS0_mm(ptr noundef nonnull %i.d, ptr noundef %4, i64 noundef %i.h, i64 noundef %2)
  %i.j = tail call fastcc noundef i64 @_ZN11duckdb_zstdL50ZSTD_buildEntropyStatisticsAndEstimateSubBlockSizeEPNS_10seqStore_tEPNS_11ZSTD_CCtx_sE(ptr noundef nonnull %i.b, ptr noundef %3) ; 2 uses
  %i.k = tail call fastcc noundef i64 @_ZN11duckdb_zstdL50ZSTD_buildEntropyStatisticsAndEstimateSubBlockSizeEPNS_10seqStore_tEPNS_11ZSTD_CCtx_sE(ptr noundef nonnull %i.c, ptr noundef %3) ; 2 uses
  %i.l = tail call fastcc noundef i64 @_ZN11duckdb_zstdL50ZSTD_buildEntropyStatisticsAndEstimateSubBlockSizeEPNS_10seqStore_tEPNS_11ZSTD_CCtx_sE(ptr noundef nonnull %i.d, ptr noundef %3) ; 2 uses
  %i.m = icmp ult i64 %i.j, -119
  %i.n = icmp ult i64 %i.k, -119
  %or.cond52 = and i1 %i.m, %i.n
  br i1 %or.cond52, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ult i64 %i.l, -119
  %i.p = add i64 %i.l, %i.k
  %i.q = icmp ult i64 %i.p, %i.j
  %or.cond = and i1 %i.o, %i.q
  br i1 %or.cond, label %tailrecurse, label %._crit_edge

tailrecurse:                                      ; preds = %bb.c
  tail call fastcc void @_ZN11duckdb_zstdL28ZSTD_deriveBlockSplitsHelperEPNS_14seqStoreSplitsEmmPNS_11ZSTD_CCtx_sEPKNS_10seqStore_tE(ptr noundef %0, i64 noundef %.tr4853, i64 noundef %i.h, ptr noundef nonnull %3, ptr noundef %4)
  %i.r = trunc i64 %i.h to i32
  %i.s = load ptr, ptr %0, align 8, !tbaa !276
  %i.t = load i64, ptr %i.a, align 8, !tbaa !278  ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t
  store i32 %i.r, ptr %i.u, align 4, !tbaa !3
  %i.v = add i64 %i.t, 1                          ; 2 uses
  store i64 %i.v, ptr %i.a, align 8, !tbaa !278
  %i.w = sub nsw i64 %2, %i.h
  %i.x = icmp ult i64 %i.w, 300
  br i1 %i.x, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %tailrecurse, %.lr.ph, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL50ZSTD_buildEntropyStatisticsAndEstimateSubBlockSizeEPNS_10seqStore_tEPNS_11ZSTD_CCtx_sE(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4920 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 3200
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 3208 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 3520 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !72
  %i.m = tail call noundef i64 @_ZN11duckdb_zstd27ZSTD_buildBlockEntropyStatsEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPNS_29ZSTD_entropyCTablesMetadata_tEPvm(ptr noundef %0, ptr noundef %i.g, ptr noundef %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.e, ptr noundef %i.l, i64 noundef 8920) ; 2 uses
  %i.n = icmp ult i64 %i.m, -119
  br i1 %i.n, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !224  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !225
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t                       ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !212  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !211  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !213 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !214 ; 4 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !210   ; 4 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 3                 ; 11 uses
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !71  ; 4 uses
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !72  ; 15 uses
  %i.ak = load i32, ptr %i.e, align 8, !tbaa !488 ; 2 uses
  %.not = icmp eq i32 %i.ak, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  store i32 255, ptr %i.d, align 4, !tbaa !3
  %i.al = icmp ugt i64 %i.u, 1023
  %i.am = select i1 %i.al, i64 4, i64 3
  %i.an = icmp ugt i64 %i.u, 16383
  %i.ao = zext i1 %i.an to i64
  %i.ap = add nuw nsw i64 %i.am, %i.ao
  %i.aq = icmp ult i64 %i.u, 256
  switch i32 %i.ak, label %bb.h [
    i32 0, label %_ZN11duckdb_zstdL30ZSTD_estimateBlockSize_literalEPKhmPKNS_17ZSTD_hufCTables_tEPKNS_25ZSTD_hufCTablesMetadata_tEPvmi.exit.i
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %_ZN11duckdb_zstdL30ZSTD_estimateBlockSize_literalEPKhmPKNS_17ZSTD_hufCTables_tEPKNS_25ZSTD_hufCTablesMetadata_tEPvmi.exit.i

bb.d:                                             ; preds = %bb.b, %bb.b
  %i.ar = call noundef i64 @_ZN11duckdb_zstd15HIST_count_wkspEPjS0_PKvmPvm(ptr noundef %i.aj, ptr noundef nonnull %i.d, ptr noundef %i.p, i64 noundef %i.u, ptr noundef %i.aj, i64 noundef 8920)
  %i.as = icmp ult i64 %i.ar, -119
  br i1 %i.as, label %bb.e, label %_ZN11duckdb_zstdL30ZSTD_estimateBlockSize_literalEPKhmPKNS_17ZSTD_hufCTables_tEPKNS_25ZSTD_hufCTablesMetadata_tEPvmi.exit.i

bb.e:                                             ; preds = %bb.d
  %i.at = load i32, ptr %i.d, align 4, !tbaa !3
  %i.au = call noundef i64 @_ZN11duckdb_zstd26HUF_estimateCompressedSizeEPKmPKjj(ptr noundef %i.ai, ptr noundef %i.aj, i32 noundef %i.at) ; 2 uses
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 5056
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !489
  %i.ax = add i64 %i.aw, %i.au
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i.i = phi i64 [ %i.ax, %bb.f ], [ %i.au, %bb.e ] ; 2 uses
  %i.ay = add i64 %.0.i.i, 6
  %spec.select.i.i = select i1 %i.aq, i64 %.0.i.i, i64 %i.ay
  %i.az = add i64 %i.ap, %spec.select.i.i
  br label %_ZN11duckdb_zstdL30ZSTD_estimateBlockSize_literalEPKhmPKNS_17ZSTD_hufCTables_tEPKNS_25ZSTD_hufCTablesMetadata_tEPvmi.exit.i

bb.h:                                             ; preds = %bb.b
  br label %_ZN11duckdb_zstdL30ZSTD_estimateBlockSize_literalEPKhmPKNS_17ZSTD_hufCTables_tEPKNS_25ZSTD_hufCTablesMetadata_tEPvmi.exit.i

_ZN11duckdb_zstdL30ZSTD_estimateBlockSize_literalEPKhmPKNS_17ZSTD_hufCTables_tEPKNS_25ZSTD_hufCTablesMetadata_tEPvmi.exit.i: ; preds = %bb.h, %bb.g, %bb.d, %bb.c, %bb.b
  %.126.i.i = phi i64 [ 0, %bb.h ], [ 1, %bb.c ], [ %i.u, %bb.b ], [ %i.az, %bb.g ], [ %i.u, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ai, i64 2064
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 5064
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 5068
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !490 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i32 31, ptr %i.c, align 4, !tbaa !3
  %i.bf = call noundef i64 @_ZN11duckdb_zstd19HIST_countFast_wkspEPjS0_PKvmPvm(ptr noundef %i.aj, ptr noundef nonnull %i.c, ptr noundef %i.w, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %i.ah, ptr noundef %i.aj, i64 noundef 8920) ; 0 uses
  switch i32 %i.bd, label %bb.j [
    i32 0, label %bb.i
    i32 1, label %.preheader.i.i.i
  ]

bb.i:                                             ; preds = %_ZN11duckdb_zstdL30ZSTD_estimateBlockSize_literalEPKhmPKNS_17ZSTD_hufCTables_tEPKNS_25ZSTD_hufCTablesMetadata_tEPvmi.exit.i
  %i.bg = load i32, ptr %i.c, align 4, !tbaa !3
  %i.bh = call noundef i64 @_ZN11duckdb_zstd21ZSTD_crossEntropyCostEPKsjPKjj(ptr noundef nonnull @_ZN11duckdb_zstdL14OF_defaultNormE, i32 noundef 5, ptr noundef %i.aj, i32 noundef %i.bg)
  br label %bb.l

bb.j:                                             ; preds = %_ZN11duckdb_zstdL30ZSTD_estimateBlockSize_literalEPKhmPKNS_17ZSTD_hufCTables_tEPKNS_25ZSTD_hufCTablesMetadata_tEPvmi.exit.i
  %i.bi = and i32 %i.bd, -2
  %or.cond.i.i.i = icmp eq i32 %i.bi, 2
  br i1 %or.cond.i.i.i, label %bb.k, label %.preheader.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bj = load i32, ptr %i.c, align 4, !tbaa !3
  %i.bk = call noundef i64 @_ZN11duckdb_zstd15ZSTD_fseBitCostEPKjS1_j(ptr noundef nonnull %i.ba, ptr noundef %i.aj, i32 noundef %i.bj)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.0.i.i.i = phi i64 [ %i.bh, %bb.i ], [ %i.bk, %bb.k ] ; 2 uses
  %i.bl = icmp ult i64 %.0.i.i.i, -119
  br i1 %i.bl, label %.preheader.i.i.i, label %bb.m

.preheader.i.i.i:                                 ; preds = %bb.l, %bb.j, %_ZN11duckdb_zstdL30ZSTD_estimateBlockSize_literalEPKhmPKNS_17ZSTD_hufCTables_tEPKNS_25ZSTD_hufCTablesMetadata_tEPvmi.exit.i
  %.043.i.i.i = phi i64 [ %.0.i.i.i, %bb.l ], [ 0, %bb.j ], [ 0, %_ZN11duckdb_zstdL30ZSTD_estimateBlockSize_literalEPKhmPKNS_17ZSTD_hufCTables_tEPKNS_25ZSTD_hufCTablesMetadata_tEPvmi.exit.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.preheader.i.i.i, %.lr.ph.split.us.i.i.i
  %.139.us.i.i.i = phi i64 [ %.2.us.i.i.i, %.lr.ph.split.us.i.i.i ], [ %.043.i.i.i, %.preheader.i.i.i ]
  %.03438.us.i.i.i = phi ptr [ %i.bm, %.lr.ph.split.us.i.i.i ], [ %i.w, %.preheader.i.i.i ] ; 2 uses
  %.pn.in.us.i.i.i = load i8, ptr %.03438.us.i.i.i, align 1, !tbaa !220
  %.pn.us.i.i.i = zext i8 %.pn.in.us.i.i.i to i64
  %.2.us.i.i.i = add i64 %.139.us.i.i.i, %.pn.us.i.i.i ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.03438.us.i.i.i, i64 1 ; 2 uses
  %i.bn = icmp ult ptr %i.bm, %i.be
  br i1 %i.bn, label %.lr.ph.split.us.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !491

bb.m:                                             ; preds = %bb.l
  %i.bo = mul i64 %i.ah, 10
  br label %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.split.us.i.i.i, %.preheader.i.i.i
  %.1.lcssa.i.i.i = phi i64 [ %.043.i.i.i, %.preheader.i.i.i ], [ %.2.us.i.i.i, %.lr.ph.split.us.i.i.i ]
  %i.bp = lshr i64 %.1.lcssa.i.i.i, 3
  br label %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit.i.i

_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.m
  %.033.i.i.i = phi i64 [ %i.bo, %bb.m ], [ %i.bp, %._crit_edge.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.bq = load i32, ptr %i.bb, align 8, !tbaa !492 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ai, i64 4288
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i32 35, ptr %i.b, align 4, !tbaa !3
  %i.bt = call noundef i64 @_ZN11duckdb_zstd19HIST_countFast_wkspEPjS0_PKvmPvm(ptr noundef %i.aj, ptr noundef nonnull %i.b, ptr noundef %i.y, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %i.ah, ptr noundef %i.aj, i64 noundef 8920) ; 0 uses
  switch i32 %i.bq, label %bb.o [
    i32 0, label %bb.n
    i32 1, label %.preheader.i27.i.i
  ]

bb.n:                                             ; preds = %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit.i.i
  %i.bu = load i32, ptr %i.b, align 4, !tbaa !3
  %i.bv = call noundef i64 @_ZN11duckdb_zstd21ZSTD_crossEntropyCostEPKsjPKjj(ptr noundef nonnull @_ZN11duckdb_zstdL14LL_defaultNormE, i32 noundef 6, ptr noundef %i.aj, i32 noundef %i.bu)
  br label %bb.q

bb.o:                                             ; preds = %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit.i.i
  %i.bw = and i32 %i.bq, -2
  %or.cond.i35.i.i = icmp eq i32 %i.bw, 2
  br i1 %or.cond.i35.i.i, label %bb.p, label %.preheader.i27.i.i

bb.p:                                             ; preds = %bb.o
  %i.bx = load i32, ptr %i.b, align 4, !tbaa !3
  %i.by = call noundef i64 @_ZN11duckdb_zstd15ZSTD_fseBitCostEPKjS1_j(ptr noundef nonnull %i.br, ptr noundef %i.aj, i32 noundef %i.bx)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.0.i34.i.i = phi i64 [ %i.bv, %bb.n ], [ %i.by, %bb.p ] ; 2 uses
  %i.bz = icmp ult i64 %.0.i34.i.i, -119
  br i1 %i.bz, label %.preheader.i27.i.i, label %bb.r

.preheader.i27.i.i:                               ; preds = %bb.q, %bb.o, %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit.i.i
  %.043.i28.i.i = phi i64 [ %.0.i34.i.i, %bb.q ], [ 0, %bb.o ], [ 0, %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit.i.i ] ; 2 uses
  %.not.i29.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i29.i.i, label %._crit_edge.i31.i.i, label %.lr.ph.split.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.ca = mul i64 %i.ah, 10
  br label %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit36.i.i

.lr.ph.split.i.i.i:                               ; preds = %.preheader.i27.i.i, %.lr.ph.split.i.i.i
  %.139.i.i.i = phi i64 [ %.2.i.i.i, %.lr.ph.split.i.i.i ], [ %.043.i28.i.i, %.preheader.i27.i.i ]
  %.03438.i.i.i = phi ptr [ %i.ce, %.lr.ph.split.i.i.i ], [ %i.y, %.preheader.i27.i.i ] ; 2 uses
  %i.cb = load i8, ptr %.03438.i.i.i, align 1, !tbaa !220
  %i.cc = zext i8 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr @_ZN11duckdb_zstdL7LL_bitsE, i64 %i.cc
  %.pn.in.i.i.i = load i8, ptr %i.cd, align 1, !tbaa !220
  %.pn.i.i.i = zext i8 %.pn.in.i.i.i to i64
  %.2.i.i.i = add i64 %.139.i.i.i, %.pn.i.i.i     ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.03438.i.i.i, i64 1 ; 2 uses
  %i.cf = icmp ult ptr %i.ce, %i.bs
  br i1 %i.cf, label %.lr.ph.split.i.i.i, label %._crit_edge.i31.i.i, !llvm.loop !491

._crit_edge.i31.i.i:                              ; preds = %.lr.ph.split.i.i.i, %.preheader.i27.i.i
  %.1.lcssa.i32.i.i = phi i64 [ %.043.i28.i.i, %.preheader.i27.i.i ], [ %.2.i.i.i, %.lr.ph.split.i.i.i ]
  %i.cg = lshr i64 %.1.lcssa.i32.i.i, 3
  br label %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit36.i.i

_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit36.i.i: ; preds = %._crit_edge.i31.i.i, %bb.r
  %.033.i33.i.i = phi i64 [ %i.ca, %bb.r ], [ %i.cg, %._crit_edge.i31.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 5072
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !253 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2836
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 52, ptr %i.a, align 4, !tbaa !3
  %i.cl = call noundef i64 @_ZN11duckdb_zstd19HIST_countFast_wkspEPjS0_PKvmPvm(ptr noundef %i.aj, ptr noundef nonnull %i.a, ptr noundef %i.aa, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %i.ah, ptr noundef %i.aj, i64 noundef 8920) ; 0 uses
  switch i32 %i.ci, label %bb.t [
    i32 0, label %bb.s
    i32 1, label %.preheader.i37.i.i
  ]

bb.s:                                             ; preds = %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit36.i.i
  %i.cm = load i32, ptr %i.a, align 4, !tbaa !3
  %i.cn = call noundef i64 @_ZN11duckdb_zstd21ZSTD_crossEntropyCostEPKsjPKjj(ptr noundef nonnull @_ZN11duckdb_zstdL14ML_defaultNormE, i32 noundef 6, ptr noundef %i.aj, i32 noundef %i.cm)
  br label %bb.v

bb.t:                                             ; preds = %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit36.i.i
  %i.co = and i32 %i.ci, -2
  %or.cond.i51.i.i = icmp eq i32 %i.co, 2
  br i1 %or.cond.i51.i.i, label %bb.u, label %.preheader.i37.i.i

bb.u:                                             ; preds = %bb.t
  %i.cp = load i32, ptr %i.a, align 4, !tbaa !3
  %i.cq = call noundef i64 @_ZN11duckdb_zstd15ZSTD_fseBitCostEPKjS1_j(ptr noundef nonnull %i.cj, ptr noundef %i.aj, i32 noundef %i.cp)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.0.i50.i.i = phi i64 [ %i.cn, %bb.s ], [ %i.cq, %bb.u ] ; 2 uses
  %i.cr = icmp ult i64 %.0.i50.i.i, -119
  br i1 %i.cr, label %.preheader.i37.i.i, label %bb.w

.preheader.i37.i.i:                               ; preds = %bb.v, %bb.t, %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit36.i.i
  %.043.i38.i.i = phi i64 [ %.0.i50.i.i, %bb.v ], [ 0, %bb.t ], [ 0, %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit36.i.i ] ; 2 uses
  %.not.i39.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i39.i.i, label %._crit_edge.i47.i.i, label %.lr.ph.split.i41.i.i

bb.w:                                             ; preds = %bb.v
  %i.cs = mul i64 %i.ah, 10
  br label %_ZN11duckdb_zstdL22ZSTD_estimateBlockSizeEPKhmS1_S1_S1_mPKNS_21ZSTD_entropyCTables_tEPKNS_29ZSTD_entropyCTablesMetadata_tEPvmii.exit

.lr.ph.split.i41.i.i:                             ; preds = %.preheader.i37.i.i, %.lr.ph.split.i41.i.i
  %.139.i42.i.i = phi i64 [ %.2.i46.i.i, %.lr.ph.split.i41.i.i ], [ %.043.i38.i.i, %.preheader.i37.i.i ]
  %.03438.i43.i.i = phi ptr [ %i.cw, %.lr.ph.split.i41.i.i ], [ %i.aa, %.preheader.i37.i.i ] ; 2 uses
  %i.ct = load i8, ptr %.03438.i43.i.i, align 1, !tbaa !220
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr @_ZN11duckdb_zstdL7ML_bitsE, i64 %i.cu
  %.pn.in.i44.i.i = load i8, ptr %i.cv, align 1, !tbaa !220
  %.pn.i45.i.i = zext i8 %.pn.in.i44.i.i to i64
  %.2.i46.i.i = add i64 %.139.i42.i.i, %.pn.i45.i.i ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.03438.i43.i.i, i64 1 ; 2 uses
  %i.cx = icmp ult ptr %i.cw, %i.ck
  br i1 %i.cx, label %.lr.ph.split.i41.i.i, label %._crit_edge.i47.i.i, !llvm.loop !491

._crit_edge.i47.i.i:                              ; preds = %.lr.ph.split.i41.i.i, %.preheader.i37.i.i
  %.1.lcssa.i48.i.i = phi i64 [ %.043.i38.i.i, %.preheader.i37.i.i ], [ %.2.i46.i.i, %.lr.ph.split.i41.i.i ]
  %i.cy = lshr i64 %.1.lcssa.i48.i.i, 3
  br label %_ZN11duckdb_zstdL22ZSTD_estimateBlockSizeEPKhmS1_S1_S1_mPKNS_21ZSTD_entropyCTables_tEPKNS_29ZSTD_entropyCTablesMetadata_tEPvmii.exit

_ZN11duckdb_zstdL22ZSTD_estimateBlockSizeEPKhmS1_S1_S1_mPKNS_21ZSTD_entropyCTables_tEPKNS_29ZSTD_entropyCTablesMetadata_tEPvmii.exit: ; preds = %bb.w, %._crit_edge.i47.i.i
  %.033.i49.i.i = phi i64 [ %i.cs, %bb.w ], [ %i.cy, %._crit_edge.i47.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 5216
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !493
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

bb.x:                                             ; preds = %bb.a, %_ZN11duckdb_zstdL22ZSTD_estimateBlockSizeEPKhmS1_S1_S1_mPKNS_21ZSTD_entropyCTables_tEPKNS_29ZSTD_entropyCTablesMetadata_tEPvmii.exit
  %.1 = phi i64 [ %i.dk, %_ZN11duckdb_zstdL22ZSTD_estimateBlockSizeEPKhmS1_S1_S1_mPKNS_21ZSTD_entropyCTables_tEPKNS_29ZSTD_entropyCTablesMetadata_tEPvmii.exit ], [ %i.m, %bb.a ]
  ret i64 %.1
}

declare noundef i64 @_ZN11duckdb_zstd21ZSTD_crossEntropyCostEPKsjPKjj(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

declare noundef i64 @_ZN11duckdb_zstd15ZSTD_fseBitCostEPKjS1_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL28ZSTD_entropyCompressSeqStoreEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmmSA_mi(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7, i32 noundef %8) unnamed_addr #21 {
bb.a:
  %9 = alloca %"struct.duckdb_zstd::ZSTD_symbolEncodingTypeStats_t", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !111  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 2064 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4288
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2836
  %i.f = load ptr, ptr %0, align 8, !tbaa !210    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !214  ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3                   ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !212
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !211
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !213
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 %5 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 212 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !224  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = icmp eq ptr %i.h, %i.f                   ; 2 uses
  %.pre.i = load ptr, ptr %i.w, align 8, !tbaa !225
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
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !116
  switch i32 %i.ae, label %bb.d [
    i32 1, label %_ZN11duckdb_zstdL34ZSTD_literalsCompressionIsDisabledEPKNS_18ZSTD_CCtx_params_sE.exit.i
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %._crit_edge.i
  br label %_ZN11duckdb_zstdL34ZSTD_literalsCompressionIsDisabledEPKNS_18ZSTD_CCtx_params_sE.exit.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.af = icmp eq i32 %i.b, 1
  br i1 %i.af, label %bb.e, label %_ZN11duckdb_zstdL34ZSTD_literalsCompressionIsDisabledEPKNS_18ZSTD_CCtx_params_sE.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !110
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  br label %_ZN11duckdb_zstdL34ZSTD_literalsCompressionIsDisabledEPKNS_18ZSTD_CCtx_params_sE.exit.i

_ZN11duckdb_zstdL34ZSTD_literalsCompressionIsDisabledEPKNS_18ZSTD_CCtx_params_sE.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %._crit_edge.i
  %.0.i.i = phi i32 [ 0, %._crit_edge.i ], [ 1, %bb.c ], [ 0, %bb.d ], [ %i.aj, %bb.e ]
  %i.ak = tail call noundef i64 @_ZN11duckdb_zstd21ZSTD_compressLiteralsEPvmPKvmS0_mPKNS_17ZSTD_hufCTables_tEPS3_NS_13ZSTD_strategyEiii(ptr noundef %4, i64 noundef %5, ptr noundef %i.v, i64 noundef %.pre136.i, ptr noundef nonnull %i.t, i64 noundef 8708, ptr noundef %1, ptr noundef %2, i32 noundef %i.b, i32 noundef %.0.i.i, i32 noundef %i.ac, i32 noundef %8) ; 4 uses
  %i.al = icmp ult i64 %i.ak, -119
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 %i.ak ; 8 uses
  br i1 %i.al, label %bb.f, label %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread

bb.f:                                             ; preds = %_ZN11duckdb_zstdL34ZSTD_literalsCompressionIsDisabledEPKNS_18ZSTD_CCtx_params_sE.exit.i
  %i.an = ptrtoint ptr %i.s to i64
  %gepdiff.i = sub nsw i64 %5, %i.ak
  %i.ao = icmp slt i64 %gepdiff.i, 4
  br i1 %i.ao, label %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = icmp ult i64 %i.l, 128
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = trunc nuw nsw i64 %i.l to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store i8 %i.aq, ptr %i.am, align 1, !tbaa !220
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.as = icmp ult i64 %i.l, 32512
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = lshr i64 %i.l, 8
  %i.au = trunc nuw nsw i64 %i.at to i8
  %i.av = or disjoint i8 %i.au, -128
  store i8 %i.av, ptr %i.am, align 1, !tbaa !220
  %i.aw = trunc i64 %i.l to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !220
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i8 -1, ptr %i.am, align 1, !tbaa !220
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.ba = trunc i64 %i.l to i16
  %i.bb = add i16 %i.ba, -32512
  store i16 %i.bb, ptr %i.az, align 1, !tbaa !256
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 3
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %.1114.i = phi ptr [ %i.ar, %bb.h ], [ %i.ay, %bb.j ], [ %i.bc, %bb.k ] ; 3 uses
  br i1 %i.y, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 2064
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3552) %i.c, ptr noundef nonnull align 8 dereferenceable(3552) %i.bd, i64 3552, i1 false)
  br label %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit

bb.n:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %.1114.i, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 2064
  call fastcc void @_ZN11duckdb_zstdL29ZSTD_buildSequencesStatisticsEPKNS_10seqStore_tEmPKNS_17ZSTD_fseCTables_tEPS3_PhPKhNS_13ZSTD_strategyEPjPvm(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull readonly %0, i64 noundef %i.l, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.c, ptr noundef nonnull %i.be, ptr noundef nonnull %i.s, i32 noundef %i.b, ptr noundef nonnull %7, ptr noundef nonnull %i.t, i64 noundef 8708)
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !464 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, -119
  br i1 %i.bi, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %bb.n
  %i.bj = load i32, ptr %9, align 8, !tbaa !463
  %i.bk = shl i32 %i.bj, 6
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !465
  %i.bn = shl i32 %i.bm, 4
  %i.bo = add i32 %i.bn, %i.bk
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !466
  %i.br = shl i32 %i.bq, 2
  %i.bs = add i32 %i.bo, %i.br
  %i.bt = trunc i32 %i.bs to i8
  store i8 %i.bt, ptr %.1114.i, align 1, !tbaa !220
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !460 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bh ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !462
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = sub i64 %i.an, %i.bz
  %i.cb = tail call noundef i64 @_ZN11duckdb_zstd20ZSTD_encodeSequencesEPvmPKjPKhS2_S4_S2_S4_PKNS_8seqDef_sEmii(ptr noundef nonnull %i.bw, i64 noundef %i.ca, ptr noundef nonnull %i.e, ptr noundef %i.r, ptr noundef nonnull %i.c, ptr noundef %i.n, ptr noundef nonnull %i.d, ptr noundef %i.p, ptr noundef %i.f, i64 noundef %i.l, i32 noundef %i.by, i32 noundef %8) ; 4 uses
  %i.cc = icmp ult i64 %i.cb, -119
  br i1 %i.cc, label %bb.p, label %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread

bb.p:                                             ; preds = %bb.o
  %.not129.i = icmp eq i64 %i.bv, 0
  %i.cd = add i64 %i.cb, %i.bv
  %i.ce = icmp ugt i64 %i.cd, 3
  %or.cond.not.i = or i1 %.not129.i, %i.ce
  br i1 %or.cond.not.i, label %bb.q, label %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread30

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cb
  br label %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit

.critedge.i:                                      ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread

_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit: ; preds = %bb.m, %bb.q
  %.1114.i.sink = phi ptr [ %.1114.i, %bb.m ], [ %i.cf, %bb.q ]
  %i.cg = ptrtoint ptr %.1114.i.sink to i64
  %i.ch = ptrtoint ptr %4 to i64
  %i.ci = sub i64 %i.cg, %i.ch                    ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread30, label %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread

_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread: ; preds = %bb.o, %.critedge.i, %_ZN11duckdb_zstdL34ZSTD_literalsCompressionIsDisabledEPKNS_18ZSTD_CCtx_params_sE.exit.i, %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit
  %.4.i29 = phi i64 [ %i.ci, %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit ], [ %i.cb, %bb.o ], [ %i.ak, %_ZN11duckdb_zstdL34ZSTD_literalsCompressionIsDisabledEPKNS_18ZSTD_CCtx_params_sE.exit.i ], [ %i.bh, %.critedge.i ] ; 5 uses
  %i.ck = icmp eq i64 %.4.i29, -70
  %i.cl = icmp ule i64 %6, %5
  %i.cm = and i1 %i.cl, %i.ck
  br i1 %i.cm, label %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread30, label %bb.r

_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread.thread: ; preds = %bb.f
  %.not = icmp ugt i64 %6, %5
  %spec.select44 = select i1 %.not, i64 -70, i64 0
  br label %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread30

bb.r:                                             ; preds = %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread
  %i.cn = icmp ult i64 %.4.i29, -119
  br i1 %i.cn, label %bb.s, label %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread30

bb.s:                                             ; preds = %bb.r
  %i.co = load i32, ptr %i.a, align 4, !tbaa !111
  %i.cp = tail call i32 @llvm.smax.i32(i32 %i.co, i32 7)
  %i.cq = add nsw i32 %i.cp, -1
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = lshr i64 %6, %i.cr
  %.neg32 = add i64 %6, -2
  %i.ct = sub i64 %.neg32, %i.cs
  %.not27 = icmp ult i64 %.4.i29, %i.ct
  %spec.select = select i1 %.not27, i64 %.4.i29, i64 0
  br label %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread30

_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread30: ; preds = %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread.thread, %bb.p, %bb.s, %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread, %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit, %bb.r
  %.2 = phi i64 [ %.4.i29, %bb.r ], [ 0, %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit ], [ 0, %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread ], [ %spec.select, %bb.s ], [ 0, %bb.p ], [ %spec.select44, %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread.thread ]
  ret i64 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i64 -70, 1) i64 @_ZN11duckdb_zstdL23ZSTD_copyBlockSequencesEPNS_12SeqCollectorEPKNS_10seqStore_tEPKj(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #11 {
bb.a:
  %3 = alloca %"struct.duckdb_zstd::repcodes_s", align 4 ; 10 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !210    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !214  ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !225
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !224
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !494  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !495
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.o ; 2 uses
  %i.s = add nsw i64 %i.g, 1                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !496
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
  %i.y = load i32, ptr %i.x, align 4, !tbaa !223
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.promoted86 = load i32, ptr %i.ab, align 4
  %.promoted87 = load i32, ptr %i.ac, align 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit
  %i.ad = phi i32 [ %.promoted87, %.lr.ph ], [ %i.bs, %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit ] ; 2 uses
  %i.ae = phi i32 [ %.promoted86, %.lr.ph ], [ %i.bt, %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit ] ; 3 uses
  %.07285 = phi i64 [ 0, %.lr.ph ], [ %i.bw, %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit ]
  %.07484 = phi i64 [ 0, %.lr.ph ], [ %i.bx, %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit ] ; 4 uses
  %i.af = phi i32 [ %.promoted, %.lr.ph ], [ %i.bu, %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit ] ; 5 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.07484 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i16, ptr %i.ah, align 4, !tbaa !215 ; 2 uses
  %i.aj = zext i16 %i.ai to i32                   ; 5 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.07484 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  store i32 %i.aj, ptr %i.al, align 4, !tbaa !239
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 6
  %i.an = load i16, ptr %i.am, align 2, !tbaa !219
  %i.ao = zext i16 %i.an to i32                   ; 2 uses
  %i.ap = add nuw nsw i32 %i.ao, 3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !238
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 12 ; 2 uses
  store i32 0, ptr %i.ar, align 4, !tbaa !497
  %i.as = icmp eq i64 %.07484, %i.z
  br i1 %i.as, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.at = load i32, ptr %i.aa, align 8, !tbaa !222
  switch i32 %i.at, label %bb.g [
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.au = or disjoint i32 %i.aj, 65536            ; 2 uses
  store i32 %i.au, ptr %i.al, align 4, !tbaa !239
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.av = add nuw nsw i32 %i.ao, 65539
  store i32 %i.av, ptr %i.aq, align 4, !tbaa !238
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.c
  %i.aw = phi i32 [ %i.aj, %bb.d ], [ %i.au, %bb.e ], [ %i.aj, %bb.f ], [ %i.aj, %bb.c ] ; 2 uses
  %i.ax = load i32, ptr %i.ag, align 4, !tbaa !218 ; 8 uses
  %i.ay = add i32 %i.ax, -1
  %or.cond = icmp ult i32 %i.ay, 3
  br i1 %or.cond, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  store i32 %i.ax, ptr %i.ar, align 4, !tbaa !497
  %.not80 = icmp eq i32 %i.aw, 0
  br i1 %.not80, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = zext nneg i32 %i.ax to i64
  %i.ba = getelementptr [4 x i8], ptr %3, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3
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
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.l, %bb.k
  %.1.ph = phi i32 [ %i.bh, %bb.l ], [ %i.be, %bb.k ], [ %i.bc, %bb.i ]
  store i32 %.1.ph, ptr %i.ak, align 4, !tbaa !236
  br label %bb.n

bb.m:                                             ; preds = %bb.g
  %i.bi = add i32 %i.ax, -3                       ; 2 uses
  store i32 %i.bi, ptr %i.ak, align 4, !tbaa !236
  %i.bj = icmp ugt i32 %i.ax, 3
  br i1 %i.bj, label %.sink.split.i, label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m
  %.in = icmp ne i16 %i.ai, 0
  %i.bk = sext i1 %.in to i32
  %i.bl = add nsw i32 %i.ax, %i.bk                ; 3 uses
  switch i32 %i.bl, label %bb.p [
    i32 0, label %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit
    i32 3, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.bm = add i32 %i.af, -1
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bn = zext i32 %i.bl to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bq = phi i32 [ %i.bm, %bb.o ], [ %i.bp, %bb.p ]
  %.not22.i = icmp eq i32 %i.bl, 1
  %i.br = select i1 %.not22.i, i32 %i.ad, i32 %i.ae
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.m, %bb.q
  %storemerge = phi i32 [ %i.br, %bb.q ], [ %i.ae, %bb.m ] ; 2 uses
  %.sink.i = phi i32 [ %i.bq, %bb.q ], [ %i.bi, %bb.m ] ; 2 uses
  store i32 %storemerge, ptr %i.ac, align 4, !tbaa !3
  store i32 %i.af, ptr %i.ab, align 4, !tbaa !3
  store i32 %.sink.i, ptr %3, align 4, !tbaa !3
  br label %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit

_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit:      ; preds = %bb.n, %.sink.split.i
  %i.bs = phi i32 [ %i.ad, %bb.n ], [ %storemerge, %.sink.split.i ]
  %i.bt = phi i32 [ %i.ae, %bb.n ], [ %i.af, %.sink.split.i ]
  %i.bu = phi i32 [ %i.af, %bb.n ], [ %.sink.i, %.sink.split.i ]
  %i.bv = zext nneg i32 %i.aw to i64
  %i.bw = add i64 %.07285, %i.bv                  ; 2 uses
  %i.bx = add nuw i64 %.07484, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bx, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !498

._crit_edge:                                      ; preds = %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit, %bb.b
  %.072.lcssa = phi i64 [ 0, %bb.b ], [ %i.bw, %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit ]
  %i.by = add i64 %.072.lcssa, %i.m
  %i.bz = sub i64 %i.l, %i.by
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.g ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i32 %i.ca, ptr %i.cc, align 4, !tbaa !239
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 0, ptr %i.cd, align 4, !tbaa !238
  store i32 0, ptr %i.cb, align 4, !tbaa !236
  %i.ce = add i64 %i.s, %i.o
  store i64 %i.ce, ptr %i.n, align 8, !tbaa !494
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %._crit_edge
  %.0 = phi i64 [ 0, %._crit_edge ], [ -70, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret i64 %.0
}

declare noundef i64 @_ZN11duckdb_zstd21ZSTD_compressLiteralsEPvmPKvmS0_mPKNS_17ZSTD_hufCTables_tEPS3_NS_13ZSTD_strategyEiii(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

declare noundef i64 @_ZN11duckdb_zstd20ZSTD_encodeSequencesEPvmPKjPKhS2_S4_S2_S4_PKNS_8seqDef_sEmii(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

declare extern_weak noundef i64 @_ZN11duckdb_zstd25ZSTD_trace_compress_beginEPKNS_11ZSTD_CCtx_sE(ptr noundef) #12

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i64 -119, 4294967296) i64 @_ZN11duckdb_zstdL30ZSTD_compress_insertDictionaryEPNS_27ZSTD_compressedBlockState_tEPNS_17ZSTD_matchState_tEPNS_10ldmState_tEPNS_10ZSTD_cwkspEPKNS_18ZSTD_CCtx_params_sEPKvmNS_22ZSTD_dictContentType_eENS_26ZSTD_dictTableLoadMethod_eENS_23ZSTD_tableFillPurpose_eEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef range(i32 0, 2) %9, ptr noundef %10) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %5, null
  %i.b = icmp ult i64 %6, 8
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %7, 2
  %. = select i1 %i.c, i64 -32, i64 0
  br label %_ZN11duckdb_zstdL23ZSTD_loadZstdDictionaryEPNS_27ZSTD_compressedBlockState_tEPNS_17ZSTD_matchState_tEPNS_10ZSTD_cwkspEPKNS_18ZSTD_CCtx_params_sEPKvmNS_26ZSTD_dictTableLoadMethod_eENS_23ZSTD_tableFillPurpose_eEPv.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 4 dereferenceable(12) @_ZN11duckdb_zstdL13repStartValueE, i64 12, i1 false), !tbaa !3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2056
  store i32 0, ptr %i.e, align 8, !tbaa !191
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5604
  store i32 0, ptr %i.f, align 4, !tbaa !192
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5608
  store i32 0, ptr %i.g, align 8, !tbaa !193
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5612
  store i32 0, ptr %i.h, align 4, !tbaa !194
  %i.i = icmp eq i32 %7, 1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN11duckdb_zstdL26ZSTD_loadDictionaryContentEPNS_17ZSTD_matchState_tEPNS_10ldmState_tEPNS_10ZSTD_cwkspEPKNS_18ZSTD_CCtx_params_sEPKvmNS_26ZSTD_dictTableLoadMethod_eENS_23ZSTD_tableFillPurpose_eE(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %8, i32 noundef %9)
  br label %_ZN11duckdb_zstdL23ZSTD_loadZstdDictionaryEPNS_27ZSTD_compressedBlockState_tEPNS_17ZSTD_matchState_tEPNS_10ZSTD_cwkspEPKNS_18ZSTD_CCtx_params_sEPKvmNS_26ZSTD_dictTableLoadMethod_eENS_23ZSTD_tableFillPurpose_eEPv.exit

bb.e:                                             ; preds = %bb.c
  %.val = load i32, ptr %5, align 1, !tbaa !3
  %.not = icmp eq i32 %.val, -332356553
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  switch i32 %7, label %bb.h [
    i32 0, label %bb.g
    i32 2, label %_ZN11duckdb_zstdL23ZSTD_loadZstdDictionaryEPNS_27ZSTD_compressedBlockState_tEPNS_17ZSTD_matchState_tEPNS_10ZSTD_cwkspEPKNS_18ZSTD_CCtx_params_sEPKvmNS_26ZSTD_dictTableLoadMethod_eENS_23ZSTD_tableFillPurpose_eEPv.exit
  ]

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @_ZN11duckdb_zstdL26ZSTD_loadDictionaryContentEPNS_17ZSTD_matchState_tEPNS_10ldmState_tEPNS_10ZSTD_cwkspEPKNS_18ZSTD_CCtx_params_sEPKvmNS_26ZSTD_dictTableLoadMethod_eENS_23ZSTD_tableFillPurpose_eE(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %8, i32 noundef %9)
  br label %_ZN11duckdb_zstdL23ZSTD_loadZstdDictionaryEPNS_27ZSTD_compressedBlockState_tEPNS_17ZSTD_matchState_tEPNS_10ZSTD_cwkspEPKNS_18ZSTD_CCtx_params_sEPKvmNS_26ZSTD_dictTableLoadMethod_eENS_23ZSTD_tableFillPurpose_eEPv.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !113
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.val.i = load i32, ptr %i.l, align 1, !tbaa !3
  %i.m = zext i32 %.val.i to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.n = phi i64 [ %i.m, %bb.i ], [ 0, %bb.h ]
  %i.o = tail call noundef i64 @_ZN11duckdb_zstd17ZSTD_loadCEntropyEPNS_27ZSTD_compressedBlockState_tEPvPKvm(ptr noundef nonnull %0, ptr noundef %10, ptr noundef nonnull %5, i64 noundef range(i64 8, 0) %6) ; 4 uses
  %i.p = icmp ult i64 %i.o, -119
  br i1 %i.p, label %bb.k, label %_ZN11duckdb_zstdL23ZSTD_loadZstdDictionaryEPNS_27ZSTD_compressedBlockState_tEPNS_17ZSTD_matchState_tEPNS_10ZSTD_cwkspEPKNS_18ZSTD_CCtx_params_sEPKvmNS_26ZSTD_dictTableLoadMethod_eENS_23ZSTD_tableFillPurpose_eEPv.exit

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 %i.o
  %gepdiff.i = sub nsw i64 %6, %i.o
  tail call fastcc void @_ZN11duckdb_zstdL26ZSTD_loadDictionaryContentEPNS_17ZSTD_matchState_tEPNS_10ldmState_tEPNS_10ZSTD_cwkspEPKNS_18ZSTD_CCtx_params_sEPKvmNS_26ZSTD_dictTableLoadMethod_eENS_23ZSTD_tableFillPurpose_eE(ptr noundef %1, ptr noundef null, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %i.q, i64 noundef %gepdiff.i, i32 noundef %8, i32 noundef range(i32 0, 2) %9)
  br label %_ZN11duckdb_zstdL23ZSTD_loadZstdDictionaryEPNS_27ZSTD_compressedBlockState_tEPNS_17ZSTD_matchState_tEPNS_10ZSTD_cwkspEPKNS_18ZSTD_CCtx_params_sEPKvmNS_26ZSTD_dictTableLoadMethod_eENS_23ZSTD_tableFillPurpose_eEPv.exit

_ZN11duckdb_zstdL23ZSTD_loadZstdDictionaryEPNS_27ZSTD_compressedBlockState_tEPNS_17ZSTD_matchState_tEPNS_10ZSTD_cwkspEPKNS_18ZSTD_CCtx_params_sEPKvmNS_26ZSTD_dictTableLoadMethod_eENS_23ZSTD_tableFillPurpose_eEPv.exit: ; preds = %bb.k, %bb.j, %bb.f, %bb.b, %bb.g, %bb.d
  %.0 = phi i64 [ %., %bb.b ], [ -32, %bb.f ], [ 0, %bb.d ], [ 0, %bb.g ], [ %i.o, %bb.j ], [ %i.n, %bb.k ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11duckdb_zstdL26ZSTD_loadDictionaryContentEPNS_17ZSTD_matchState_tEPNS_10ldmState_tEPNS_10ZSTD_cwkspEPKNS_18ZSTD_CCtx_params_sEPKvmNS_26ZSTD_dictTableLoadMethod_eENS_23ZSTD_tableFillPurpose_eE(ptr noundef initializes((40, 48), (136, 140)) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 2) %7) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 %5 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !93
  %i.d = icmp eq i32 %i.c, 1
  %i.e = icmp ne ptr %1, null
  %i.f = and i1 %i.e, %i.d                        ; 2 uses
  %i.g = getelementptr i8, ptr %3, i64 28         ; 3 uses
  %.val = load i32, ptr %i.g, align 4, !tbaa !101 ; 3 uses
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
  br i1 %i.l, label %_ZN11duckdb_zstdL18ZSTD_window_updateEPNS_13ZSTD_window_tEPKvmi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %0, align 8, !tbaa !261    ; 2 uses
  %.not119 = icmp eq ptr %.092, %i.m
  br i1 %.not119, label %._crit_edge.i, label %bb.c

._crit_edge.i:                                    ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !262
  %.phi.trans.insert45.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.pre46.i = load i32, ptr %.phi.trans.insert45.i, align 4, !tbaa !263
  %.phi.trans.insert47.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre48.i = load i32, ptr %.phi.trans.insert47.i, align 8, !tbaa !264
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !265  ; 4 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !264  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store i32 %i.t, ptr %i.u, align 4, !tbaa !263
  %i.v = trunc i64 %i.r to i32                    ; 6 uses
  store i32 %i.v, ptr %i.s, align 8, !tbaa !264
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %i.w, align 8, !tbaa !262
  %i.x = sub i64 0, %i.r
  %i.y = getelementptr inbounds i8, ptr %.092, i64 %i.x
  store ptr %i.y, ptr %i.n, align 8, !tbaa !265
  %i.z = sub i32 %i.v, %i.t
  %i.aa = icmp ult i32 %i.z, 8
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.v, ptr %i.u, align 4, !tbaa !263
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i
  %i.ab = phi i32 [ %.pre48.i, %._crit_edge.i ], [ %i.v, %bb.d ], [ %i.v, %bb.c ]
  %i.ac = phi i32 [ %.pre46.i, %._crit_edge.i ], [ %i.v, %bb.d ], [ %i.t, %bb.c ]
  %i.ad = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.o, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.092, i64 %.093 ; 6 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !261
  %i.af = zext i32 %i.ac to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af
  %i.ah = icmp ugt ptr %i.ae, %i.ag
  %i.ai = zext i32 %i.ab to i64                   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai
  %i.ak = icmp ult ptr %.092, %i.aj
  %i.al = and i1 %i.ah, %i.ak
  br i1 %i.al, label %bb.f, label %_ZN11duckdb_zstdL18ZSTD_window_updateEPNS_13ZSTD_window_tEPKvmi.exit

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.an = ptrtoint ptr %i.ae to i64
  %i.ao = ptrtoint ptr %i.ad to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = tail call i64 @llvm.smin.i64(i64 %i.ap, i64 %i.ai)
  %i.ar = trunc i64 %i.aq to i32
  store i32 %i.ar, ptr %i.am, align 4, !tbaa !263
  br label %_ZN11duckdb_zstdL18ZSTD_window_updateEPNS_13ZSTD_window_tEPKvmi.exit

_ZN11duckdb_zstdL18ZSTD_window_updateEPNS_13ZSTD_window_tEPKvmi.exit: ; preds = %bb.e, %bb.f
  br i1 %i.f, label %bb.g, label %bb.n

_ZN11duckdb_zstdL18ZSTD_window_updateEPNS_13ZSTD_window_tEPKvmi.exit.thread: ; preds = %bb.a
  br i1 %i.f, label %_ZN11duckdb_zstdL18ZSTD_window_updateEPNS_13ZSTD_window_tEPKvmi.exit117, label %bb.n

bb.g:                                             ; preds = %_ZN11duckdb_zstdL18ZSTD_window_updateEPNS_13ZSTD_window_tEPKvmi.exit
  %i.as = load ptr, ptr %1, align 8, !tbaa !261   ; 2 uses
  %.not120 = icmp eq ptr %.092, %i.as
  br i1 %.not120, label %._crit_edge.i108, label %bb.h

._crit_edge.i108:                                 ; preds = %bb.g
  %.phi.trans.insert.i109 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre.i110 = load ptr, ptr %.phi.trans.insert.i109, align 8, !tbaa !262
  %.phi.trans.insert45.i111 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.pre46.i112 = load i32, ptr %.phi.trans.insert45.i111, align 4, !tbaa !263
  %.phi.trans.insert47.i113 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre48.i114 = load i32, ptr %.phi.trans.insert47.i113, align 8, !tbaa !264
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !265 ; 4 uses
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !264 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !263
  %i.bb = trunc i64 %i.ax to i32                  ; 6 uses
  store i32 %i.bb, ptr %i.ay, align 8, !tbaa !264
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.au, ptr %i.bc, align 8, !tbaa !262
  %i.bd = sub i64 0, %i.ax
  %i.be = getelementptr inbounds i8, ptr %.092, i64 %i.bd
  store ptr %i.be, ptr %i.at, align 8, !tbaa !265
  %i.bf = sub i32 %i.bb, %i.az
  %i.bg = icmp ult i32 %i.bf, 8
  br i1 %i.bg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !263
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i108
  %i.bh = phi i32 [ %.pre48.i114, %._crit_edge.i108 ], [ %i.bb, %bb.i ], [ %i.bb, %bb.h ]
  %i.bi = phi i32 [ %.pre46.i112, %._crit_edge.i108 ], [ %i.bb, %bb.i ], [ %i.az, %bb.h ]
  %i.bj = phi ptr [ %.pre.i110, %._crit_edge.i108 ], [ %i.au, %bb.i ], [ %i.au, %bb.h ] ; 3 uses
  store ptr %i.ae, ptr %1, align 8, !tbaa !261
  %i.bk = zext i32 %i.bi to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bk
  %i.bm = icmp ugt ptr %i.ae, %i.bl
  %i.bn = zext i32 %i.bh to i64                   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bn
  %i.bp = icmp ult ptr %.092, %i.bo
  %i.bq = and i1 %i.bm, %i.bp
  br i1 %i.bq, label %bb.k, label %_ZN11duckdb_zstdL18ZSTD_window_updateEPNS_13ZSTD_window_tEPKvmi.exit117

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bs = ptrtoint ptr %i.ae to i64
  %i.bt = ptrtoint ptr %i.bj to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = tail call i64 @llvm.smin.i64(i64 %i.bu, i64 %i.bn)
  %i.bw = trunc i64 %i.bv to i32
  store i32 %i.bw, ptr %i.br, align 4, !tbaa !263
  br label %_ZN11duckdb_zstdL18ZSTD_window_updateEPNS_13ZSTD_window_tEPKvmi.exit117

_ZN11duckdb_zstdL18ZSTD_window_updateEPNS_13ZSTD_window_tEPKvmi.exit117: ; preds = %_ZN11duckdb_zstdL18ZSTD_window_updateEPNS_13ZSTD_window_tEPKvmi.exit.thread, %bb.j, %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !114
  %.not = icmp eq i32 %i.by, 0
  br i1 %.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN11duckdb_zstdL18ZSTD_window_updateEPNS_13ZSTD_window_tEPKvmi.exit117
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !499
  %i.cb = ptrtoint ptr %i.a to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = trunc i64 %i.cd to i32
  br label %bb.m

bb.m:                                             ; preds = %_ZN11duckdb_zstdL18ZSTD_window_updateEPNS_13ZSTD_window_tEPKvmi.exit117, %bb.l
  %i.cf = phi i32 [ %i.ce, %bb.l ], [ 0, %_ZN11duckdb_zstdL18ZSTD_window_updateEPNS_13ZSTD_window_tEPKvmi.exit117 ]
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 %i.cf, ptr %i.cg, align 8, !tbaa !500
  tail call void @_ZN11duckdb_zstd22ZSTD_ldm_fillHashTableEPNS_10ldmState_tEPKhS3_PKNS_11ldmParams_tE(ptr noundef nonnull %1, ptr noundef nonnull %.092, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %.pre = load i32, ptr %i.g, align 4, !tbaa !111
  br label %bb.n

bb.n:                                             ; preds = %_ZN11duckdb_zstdL18ZSTD_window_updateEPNS_13ZSTD_window_tEPKvmi.exit.thread, %bb.m, %_ZN11duckdb_zstdL18ZSTD_window_updateEPNS_13ZSTD_window_tEPKvmi.exit
  %i.ch = phi i32 [ %.val, %_ZN11duckdb_zstdL18ZSTD_window_updateEPNS_13ZSTD_window_tEPKvmi.exit.thread ], [ %.pre, %bb.m ], [ %.val, %_ZN11duckdb_zstdL18ZSTD_window_updateEPNS_13ZSTD_window_tEPKvmi.exit ]
  %i.ci = icmp slt i32 %i.ch, 8
  br i1 %i.ci, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !106
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !107
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
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !475
  %i.cu = ptrtoint ptr %.296 to i64
  %i.cv = ptrtoint ptr %i.ct to i64               ; 2 uses
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !266
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !114
  %.not105 = icmp eq i32 %i.da, 0
  %i.db = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.dc = sub i64 %i.db, %i.cv
  %i.dd = trunc i64 %i.dc to i32
  %i.de = select i1 %.not105, i32 %i.dd, i32 0
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.de, ptr %i.df, align 8, !tbaa !444
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 148
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !128
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.dh, ptr %i.di, align 8, !tbaa !260
  %i.dj = icmp samesign ult i64 %.2, 9
  br i1 %i.dj, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @_ZN11duckdb_zstdL28ZSTD_overflowCorrectIfNeededEPNS_17ZSTD_matchState_tEPNS_10ZSTD_cwkspEPKNS_18ZSTD_CCtx_params_sEPKvS8_(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %.296, ptr noundef nonnull %i.a)
  %i.dk = load i32, ptr %i.g, align 4, !tbaa !111
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
  tail call void @_ZN11duckdb_zstd18ZSTD_fillHashTableEPNS_17ZSTD_matchState_tEPKvNS_26ZSTD_dictTableLoadMethod_eENS_23ZSTD_tableFillPurpose_eE(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef %6, i32 noundef %7)
  br label %bb.z

bb.s:                                             ; preds = %bb.q
  tail call void @_ZN11duckdb_zstd24ZSTD_fillDoubleHashTableEPNS_17ZSTD_matchState_tEPKvNS_26ZSTD_dictTableLoadMethod_eENS_23ZSTD_tableFillPurpose_eE(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef %6, i32 noundef %7)
  br label %bb.z

bb.t:                                             ; preds = %bb.q, %bb.q, %bb.q
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !441
  %.not106 = icmp eq i32 %i.dm, 0
  br i1 %.not106, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dn = getelementptr inbounds i8, ptr %i.a, i64 -8
  tail call void @_ZN11duckdb_zstd44ZSTD_dedicatedDictSearch_lazy_loadDictionaryEPNS_17ZSTD_matchState_tEPKh(ptr noundef nonnull %0, ptr noundef nonnull %i.dn)
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !91
  %i.dq = icmp eq i32 %i.dp, 1
  br i1 %i.dq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !106
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = shl nuw i64 1, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !450
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dw, i8 0, i64 %i.du, i1 false)
  %i.dx = getelementptr inbounds i8, ptr %i.a, i64 -8
  tail call void @_ZN11duckdb_zstd15ZSTD_row_updateEPNS_17ZSTD_matchState_tEPKh(ptr noundef nonnull %0, ptr noundef nonnull %i.dx)
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.dy = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.dz = tail call noundef i32 @_ZN11duckdb_zstd28ZSTD_insertAndFindFirstIndexEPNS_17ZSTD_matchState_tEPKh(ptr noundef nonnull %0, ptr noundef nonnull %i.dy) ; 0 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.q, %bb.q, %bb.q, %bb.q
  %i.ea = getelementptr inbounds i8, ptr %i.a, i64 -8
  tail call void @_ZN11duckdb_zstd15ZSTD_updateTreeEPNS_17ZSTD_matchState_tEPKhS3_(ptr noundef nonnull %0, ptr noundef nonnull %i.ea, ptr noundef nonnull %i.a)
  br label %bb.z

bb.z:                                             ; preds = %bb.q, %bb.u, %bb.x, %bb.w, %bb.y, %bb.s, %bb.r
  %i.eb = load ptr, ptr %i.cs, align 8, !tbaa !475
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = sub i64 %i.db, %i.ec
  %i.ee = trunc i64 %i.ed to i32
  store i32 %i.ee, ptr %i.cy, align 4, !tbaa !266
  br label %bb.aa

bb.aa:                                            ; preds = %bb.p, %bb.z
  ret void
}

declare void @_ZN11duckdb_zstd22ZSTD_ldm_fillHashTableEPNS_10ldmState_tEPKhS3_PKNS_11ldmParams_tE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #12

declare void @_ZN11duckdb_zstd18ZSTD_fillHashTableEPNS_17ZSTD_matchState_tEPKvNS_26ZSTD_dictTableLoadMethod_eENS_23ZSTD_tableFillPurpose_eE(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

declare void @_ZN11duckdb_zstd24ZSTD_fillDoubleHashTableEPNS_17ZSTD_matchState_tEPKvNS_26ZSTD_dictTableLoadMethod_eENS_23ZSTD_tableFillPurpose_eE(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

declare void @_ZN11duckdb_zstd44ZSTD_dedicatedDictSearch_lazy_loadDictionaryEPNS_17ZSTD_matchState_tEPKh(ptr noundef, ptr noundef) local_unnamed_addr #12

declare void @_ZN11duckdb_zstd15ZSTD_row_updateEPNS_17ZSTD_matchState_tEPKh(ptr noundef, ptr noundef) local_unnamed_addr #12

declare noundef i32 @_ZN11duckdb_zstd28ZSTD_insertAndFindFirstIndexEPNS_17ZSTD_matchState_tEPKh(ptr noundef, ptr noundef) local_unnamed_addr #12

declare void @_ZN11duckdb_zstd15ZSTD_updateTreeEPNS_17ZSTD_matchState_tEPKhS3_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #22

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nounwind memory(none) }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind }
attributes #28 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i64 1939784}
!8 = !{i64 1939882}
!9 = !{i64 1939996}
!10 = !{!11, !4, i64 8}
!11 = !{!"_ZTSN11duckdb_zstd11ZSTD_CCtx_sE", !12, i64 0, !4, i64 4, !4, i64 8, !13, i64 16, !13, i64 232, !13, i64 448, !4, i64 664, !18, i64 672, !26, i64 680, !18, i64 752, !29, i64 760, !29, i64 768, !29, i64 776, !30, i64 784, !24, i64 872, !31, i64 896, !18, i64 904, !32, i64 912, !4, i64 944, !4, i64 948, !33, i64 952, !37, i64 1032, !25, i64 3144, !18, i64 3152, !39, i64 3160, !40, i64 3200, !42, i64 3520, !46, i64 3528, !35, i64 3536, !18, i64 3544, !18, i64 3552, !18, i64 3560, !18, i64 3568, !35, i64 3576, !18, i64 3584, !18, i64 3592, !18, i64 3600, !47, i64 3608, !4, i64 3612, !48, i64 3616, !18, i64 3640, !18, i64 3648, !49, i64 3656, !51, i64 3696, !52, i64 3704, !29, i64 3728, !53, i64 3736, !25, i64 5232, !18, i64 5240}
!12 = !{!"_ZTSN11duckdb_zstd23ZSTD_compressionStage_eE", !5, i64 0}
!13 = !{!"_ZTSN11duckdb_zstd18ZSTD_CCtx_params_sE", !14, i64 0, !15, i64 4, !17, i64 32, !4, i64 44, !4, i64 48, !18, i64 56, !4, i64 64, !19, i64 68, !20, i64 72, !4, i64 76, !18, i64 80, !4, i64 88, !4, i64 92, !21, i64 96, !4, i64 120, !22, i64 124, !22, i64 128, !23, i64 132, !4, i64 136, !20, i64 140, !20, i64 144, !4, i64 148, !24, i64 152, !20, i64 176, !4, i64 180, !25, i64 184, !25, i64 192, !18, i64 200, !20, i64 208}
!14 = !{!"_ZTSN11duckdb_zstd13ZSTD_format_eE", !5, i64 0}
!15 = !{!"_ZTSN11duckdb_zstd26ZSTD_compressionParametersE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !16, i64 24}
!16 = !{!"_ZTSN11duckdb_zstd13ZSTD_strategyE", !5, i64 0}
!17 = !{!"_ZTSN11duckdb_zstd20ZSTD_frameParametersE", !4, i64 0, !4, i64 4, !4, i64 8}
!18 = !{!"long", !5, i64 0}
!19 = !{!"_ZTSN11duckdb_zstd21ZSTD_dictAttachPref_eE", !5, i64 0}
!20 = !{!"_ZTSN11duckdb_zstd18ZSTD_paramSwitch_eE", !5, i64 0}
!21 = !{!"_ZTSN11duckdb_zstd11ldmParams_tE", !20, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20}
!22 = !{!"_ZTSN11duckdb_zstd17ZSTD_bufferMode_eE", !5, i64 0}
!23 = !{!"_ZTSN11duckdb_zstd21ZSTD_sequenceFormat_eE", !5, i64 0}
!24 = !{!"_ZTSN11duckdb_zstd14ZSTD_customMemE", !25, i64 0, !25, i64 8, !25, i64 16}
!25 = !{!"any pointer", !5, i64 0}
!26 = !{!"_ZTSN11duckdb_zstd10ZSTD_cwkspE", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !25, i64 40, !25, i64 48, !5, i64 56, !4, i64 60, !27, i64 64, !28, i64 68}
!27 = !{!"_ZTSN11duckdb_zstd24ZSTD_cwksp_alloc_phase_eE", !5, i64 0}
!28 = !{!"_ZTSN11duckdb_zstd25ZSTD_cwksp_static_alloc_eE", !5, i64 0}
!29 = !{!"long long", !5, i64 0}
!30 = !{!"_ZTSN11duckdb_zstd13XXH64_state_sE", !29, i64 0, !29, i64 8, !29, i64 16, !29, i64 24, !29, i64 32, !5, i64 40, !4, i64 72, !5, i64 76}
!31 = !{!"p1 _ZTSN11duckdb_zstd10POOL_ctx_sE", !25, i64 0}
!32 = !{!"_ZTSN11duckdb_zstd12SeqCollectorE", !4, i64 0, !25, i64 8, !18, i64 16, !18, i64 24}
!33 = !{!"_ZTSN11duckdb_zstd10seqStore_tE", !34, i64 0, !34, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !18, i64 56, !18, i64 64, !36, i64 72, !4, i64 76}
!34 = !{!"p1 _ZTSN11duckdb_zstd8seqDef_sE", !25, i64 0}
!35 = !{!"p1 omnipotent char", !25, i64 0}
!36 = !{!"_ZTSN11duckdb_zstd21ZSTD_longLengthType_eE", !5, i64 0}
!37 = !{!"_ZTSN11duckdb_zstd10ldmState_tE", !38, i64 0, !25, i64 40, !4, i64 48, !35, i64 56, !5, i64 64, !5, i64 576}
!38 = !{!"_ZTSN11duckdb_zstd13ZSTD_window_tE", !35, i64 0, !35, i64 8, !35, i64 16, !4, i64 24, !4, i64 28, !4, i64 32}
!39 = !{!"_ZTSN11duckdb_zstd13rawSeqStore_tE", !25, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32}
!40 = !{!"_ZTSN11duckdb_zstd17ZSTD_blockState_tE", !25, i64 0, !25, i64 8, !41, i64 16}
!41 = !{!"_ZTSN11duckdb_zstd17ZSTD_matchState_tE", !38, i64 0, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !35, i64 56, !5, i64 64, !18, i64 96, !4, i64 104, !42, i64 112, !42, i64 120, !42, i64 128, !4, i64 136, !4, i64 140, !43, i64 144, !45, i64 248, !15, i64 256, !25, i64 288, !4, i64 296, !4, i64 300}
!42 = !{!"p1 int", !25, i64 0}
!43 = !{!"_ZTSN11duckdb_zstd10optState_tE", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !25, i64 32, !25, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !44, i64 80, !25, i64 88, !20, i64 96}
!44 = !{!"_ZTSN11duckdb_zstd15ZSTD_OptPrice_eE", !5, i64 0}
!45 = !{!"p1 _ZTSN11duckdb_zstd17ZSTD_matchState_tE", !25, i64 0}
!46 = !{!"_ZTSN11duckdb_zstd22ZSTD_buffered_policy_eE", !5, i64 0}
!47 = !{!"_ZTSN11duckdb_zstd17ZSTD_cStreamStageE", !5, i64 0}
!48 = !{!"_ZTSN11duckdb_zstd15ZSTD_inBuffer_sE", !25, i64 0, !18, i64 8, !18, i64 16}
!49 = !{!"_ZTSN11duckdb_zstd14ZSTD_localDictE", !25, i64 0, !25, i64 8, !18, i64 16, !50, i64 24, !51, i64 32}
!50 = !{!"_ZTSN11duckdb_zstd22ZSTD_dictContentType_eE", !5, i64 0}
!51 = !{!"p1 _ZTSN11duckdb_zstd12ZSTD_CDict_sE", !25, i64 0}
!52 = !{!"_ZTSN11duckdb_zstd17ZSTD_prefixDict_sE", !25, i64 0, !18, i64 8, !50, i64 16}
!53 = !{!"_ZTSN11duckdb_zstd18ZSTD_blockSplitCtxE", !33, i64 0, !33, i64 80, !33, i64 160, !33, i64 240, !33, i64 320, !5, i64 400, !54, i64 1184}
!54 = !{!"_ZTSN11duckdb_zstd29ZSTD_entropyCTablesMetadata_tE", !55, i64 0, !57, i64 144}
!55 = !{!"_ZTSN11duckdb_zstd25ZSTD_hufCTablesMetadata_tE", !56, i64 0, !5, i64 4, !18, i64 136}
!56 = !{!"_ZTSN11duckdb_zstd20symbolEncodingType_eE", !5, i64 0}
!57 = !{!"_ZTSN11duckdb_zstd25ZSTD_fseCTablesMetadata_tE", !56, i64 0, !56, i64 4, !56, i64 8, !5, i64 12, !18, i64 152, !18, i64 160}
!58 = !{!13, !4, i64 44}
!59 = !{!13, !4, i64 32}
!60 = !{!24, !25, i64 0}
!61 = !{!24, !25, i64 8}
!62 = !{!25, !25, i64 0}
!63 = distinct !{null}
!64 = !{!28, !28, i64 0}
!65 = !{!11, !18, i64 904}
!66 = !{!26, !5, i64 56}
!67 = !{!26, !25, i64 16}
!68 = !{!26, !25, i64 24}
!69 = !{!26, !25, i64 32}
!70 = !{!11, !25, i64 3200}
!71 = !{!11, !25, i64 3208}
!72 = !{!11, !42, i64 3520}
!73 = !{!26, !25, i64 0}
!74 = !{!26, !25, i64 8}
!75 = distinct !{null, null, null}
!76 = distinct !{null}
!77 = !{!11, !25, i64 680}
!78 = !{!18, !18, i64 0}
!79 = !{!51, !51, i64 0}
!80 = !{!81, !25, i64 32}
!81 = !{!"_ZTSN11duckdb_zstd12ZSTD_CDict_sE", !25, i64 0, !18, i64 8, !50, i64 16, !42, i64 24, !26, i64 32, !41, i64 104, !82, i64 408, !24, i64 6040, !4, i64 6064, !4, i64 6068, !20, i64 6072}
!82 = !{!"_ZTSN11duckdb_zstd27ZSTD_compressedBlockState_tE", !83, i64 0, !5, i64 5616}
!83 = !{!"_ZTSN11duckdb_zstd21ZSTD_entropyCTables_tE", !84, i64 0, !86, i64 2064}
!84 = !{!"_ZTSN11duckdb_zstd17ZSTD_hufCTables_tE", !5, i64 0, !85, i64 2056}
!85 = !{!"_ZTSN11duckdb_zstd10HUF_repeatE", !5, i64 0}
!86 = !{!"_ZTSN11duckdb_zstd17ZSTD_fseCTables_tE", !5, i64 0, !5, i64 772, !5, i64 2224, !87, i64 3540, !87, i64 3544, !87, i64 3548}
!87 = !{!"_ZTSN11duckdb_zstd10FSE_repeatE", !5, i64 0}
!88 = !{!16, !16, i64 0}
!89 = !{i64 0, i64 4, !3, i64 4, i64 4, !3, i64 8, i64 4, !3, i64 12, i64 4, !3, i64 16, i64 4, !3, i64 20, i64 4, !3, i64 24, i64 4, !88}
!90 = !{i64 0, i64 4, !3, i64 4, i64 4, !3, i64 8, i64 4, !3}
!91 = !{!13, !20, i64 144}
!92 = !{!13, !20, i64 140}
!93 = !{!13, !20, i64 96}
!94 = !{!13, !18, i64 200}
!95 = !{!13, !20, i64 208}
!96 = !{!15, !4, i64 0}
!97 = !{!15, !4, i64 4}
!98 = !{!15, !4, i64 8}
!99 = !{!15, !4, i64 12}
!100 = !{!15, !4, i64 16}
!101 = !{!15, !16, i64 24}
!102 = !{!11, !47, i64 3608}
end_hunk_1
begin_hunk_2_@llvm.umin.v2i32
!268 = !{!11, !18, i64 752}
!269 = !{!11, !4, i64 236}
!270 = !{!11, !4, i64 268}
!271 = !{!45, !45, i64 0}
!272 = !{!11, !4, i64 944}
!273 = !{!11, !4, i64 912}
!274 = !{!11, !34, i64 960}
!275 = !{!11, !34, i64 952}
!276 = !{!277, !42, i64 0}
!277 = !{!"_ZTSN11duckdb_zstd14seqStoreSplitsE", !42, i64 0, !18, i64 8}
!278 = !{!277, !18, i64 8}
!279 = !{i64 0, i64 8, !280, i64 8, i64 8, !280, i64 16, i64 8, !207, i64 24, i64 8, !207, i64 32, i64 8, !207, i64 40, i64 8, !207, i64 48, i64 8, !207, i64 56, i64 8, !78, i64 64, i64 8, !78, i64 72, i64 4, !281, i64 76, i64 4, !3}
!280 = !{!34, !34, i64 0}
!281 = !{!36, !36, i64 0}
!282 = distinct !{!282, !171}
!283 = distinct !{!283, !171}
!284 = distinct !{!284, !171}
!285 = distinct !{!285, !171}
!286 = distinct !{!286, !171, !287, !288}
!287 = !{!"llvm.loop.unroll.runtime.disable"}
!288 = !{!"llvm.loop.isvectorized", i32 1}
!289 = !{!81, !18, i64 8}
!290 = !{!11, !29, i64 3728}
!291 = !{!81, !4, i64 6068}
!292 = !{!81, !4, i64 244}
!293 = !{!81, !20, i64 6072}
!294 = !{!81, !35, i64 104}
!295 = !{!81, !35, i64 112}
!296 = !{!81, !4, i64 128}
!297 = !{!11, !45, i64 3464}
!298 = !{!11, !4, i64 3240}
!299 = !{!11, !35, i64 3224}
!300 = !{!11, !35, i64 3216}
!301 = !{!11, !4, i64 3256}
!302 = !{!81, !4, i64 6064}
!303 = !{!81, !42, i64 216}
!304 = distinct !{!304, !171, !288, !287}
!305 = distinct !{!305, !171, !288}
!306 = distinct !{!306, !307}
!307 = !{!"llvm.loop.unroll.disable"}
!308 = !{!81, !42, i64 232}
!309 = distinct !{!309, !171, !288, !287}
!310 = distinct !{!310, !307}
!311 = distinct !{!311, !171, !288}
!312 = !{!11, !35, i64 3272}
!313 = !{!81, !35, i64 160}
!314 = !{!81, !18, i64 200}
!315 = !{!11, !18, i64 3312}
!316 = !{!81, !25, i64 0}
!317 = !{!81, !50, i64 16}
!318 = !{!319, !321}
!319 = distinct !{!319, !320, !"_ZN11duckdb_zstdL24ZSTD_getCParams_internalEiymNS_17ZSTD_cParamMode_eE: argument 0"}
!320 = distinct !{!320, !"_ZN11duckdb_zstdL24ZSTD_getCParams_internalEiymNS_17ZSTD_cParamMode_eE"}
!321 = distinct !{!321, !322, !"_ZN11duckdb_zstdL23ZSTD_getParams_internalEiymNS_17ZSTD_cParamMode_eE: argument 0"}
!322 = distinct !{!322, !"_ZN11duckdb_zstdL23ZSTD_getParams_internalEiymNS_17ZSTD_cParamMode_eE"}
!323 = !{!11, !18, i64 3544}
!324 = !{!11, !18, i64 3584}
!325 = !{!11, !4, i64 308}
!326 = !{!327, !4, i64 0}
!327 = !{!"_ZTSN11duckdb_zstd10ZSTD_TraceE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !18, i64 16, !18, i64 24, !18, i64 32, !328, i64 40, !329, i64 48, !330, i64 56}
!328 = !{!"p1 _ZTSN11duckdb_zstd18ZSTD_CCtx_params_sE", !25, i64 0}
!329 = !{!"p1 _ZTSN11duckdb_zstd11ZSTD_CCtx_sE", !25, i64 0}
!330 = !{!"p1 _ZTSN11duckdb_zstd11ZSTD_DCtx_sE", !25, i64 0}
!331 = !{!327, !4, i64 4}
!332 = !{!327, !4, i64 8}
!333 = !{!327, !18, i64 16}
!334 = !{!327, !18, i64 24}
!335 = !{!327, !18, i64 32}
!336 = !{!327, !328, i64 40}
!337 = !{!327, !329, i64 48}
!338 = !{!339}
!339 = distinct !{!339, !340, !"_ZN11duckdb_zstdL23ZSTD_getParams_internalEiymNS_17ZSTD_cParamMode_eE: argument 0"}
!340 = distinct !{!340, !"_ZN11duckdb_zstdL23ZSTD_getParams_internalEiymNS_17ZSTD_cParamMode_eE"}
!341 = !{!342}
!342 = distinct !{!342, !343, !"_ZN11duckdb_zstdL23ZSTD_getParams_internalEiymNS_17ZSTD_cParamMode_eE: argument 0"}
!343 = distinct !{!343, !"_ZN11duckdb_zstdL23ZSTD_getParams_internalEiymNS_17ZSTD_cParamMode_eE"}
!344 = distinct !{ptr @_ZN11duckdb_zstdL18ZSTD_clearAllDictsEPNS_11ZSTD_CCtx_sE, null}
!345 = distinct !{ptr @_ZN11duckdb_zstdL18ZSTD_clearAllDictsEPNS_11ZSTD_CCtx_sE, ptr @_ZN11duckdb_zstd14ZSTD_freeCDictEPNS_12ZSTD_CDict_sE, null, null}
!346 = distinct !{ptr @_ZN11duckdb_zstdL18ZSTD_clearAllDictsEPNS_11ZSTD_CCtx_sE, ptr @_ZN11duckdb_zstd14ZSTD_freeCDictEPNS_12ZSTD_CDict_sE, null}
!347 = !{i64 0, i64 8, !62, i64 8, i64 8, !62, i64 16, i64 8, !62}
!348 = !{!349}
!349 = distinct !{!349, !350, !"_ZN11duckdb_zstdL35ZSTD_dedicatedDictSearch_getCParamsEim: argument 0"}
!350 = distinct !{!350, !"_ZN11duckdb_zstdL35ZSTD_dedicatedDictSearch_getCParamsEim"}
!351 = distinct !{null, null}
!352 = !{!27, !27, i64 0}
!353 = !{!26, !27, i64 64}
!354 = !{!81, !42, i64 24}
!355 = distinct !{null, null}
!356 = !{!357}
!357 = distinct !{!357, !358, !"_ZN11duckdb_zstd15ZSTD_getCParamsEiym: argument 0"}
!358 = distinct !{!358, !"_ZN11duckdb_zstd15ZSTD_getCParamsEiym"}
!359 = distinct !{ptr @_ZN11duckdb_zstd24ZSTD_createCCtx_advancedENS_14ZSTD_customMemE, null}
!360 = distinct !{ptr @_ZN11duckdb_zstd13ZSTD_freeCCtxEPNS_11ZSTD_CCtx_sE, null, null, null}
!361 = distinct !{ptr @_ZN11duckdb_zstd13ZSTD_freeCCtxEPNS_11ZSTD_CCtx_sE, null}
!362 = distinct !{ptr @_ZN11duckdb_zstd24ZSTD_CCtx_loadDictionaryEPNS_11ZSTD_CCtx_sEPKvm, ptr @_ZN11duckdb_zstd33ZSTD_CCtx_loadDictionary_advancedEPNS_11ZSTD_CCtx_sEPKvmNS_21ZSTD_dictLoadMethod_eENS_22ZSTD_dictContentType_eE, null}
!363 = !{!11, !22, i64 356}
!364 = !{!11, !18, i64 3640}
!365 = !{!11, !18, i64 3568}
!366 = !{!11, !25, i64 3616}
!367 = !{!11, !18, i64 3624}
!368 = !{i64 0, i64 8, !62, i64 8, i64 8, !78, i64 16, i64 8, !78}
!369 = !{!11, !14, i64 16}
!370 = !{!11, !22, i64 360}
!371 = !{!11, !18, i64 3648}
!372 = distinct !{!372, !171}
!373 = !{!11, !18, i64 3592}
!374 = !{!11, !18, i64 3600}
!375 = !{!11, !4, i64 3612}
!376 = !{!11, !35, i64 3576}
!377 = !{!50, !50, i64 0}
!378 = !{!49, !25, i64 8}
!379 = !{!49, !51, i64 32}
!380 = !{!49, !18, i64 16}
!381 = !{!49, !50, i64 24}
!382 = !{!81, !16, i64 384}
!383 = !{!384, !4, i64 0}
!384 = !{!"_ZTSN11duckdb_zstd21ZSTD_sequencePositionE", !4, i64 0, !4, i64 4, !18, i64 8}
!385 = !{!11, !4, i64 368}
!386 = !{!384, !18, i64 8}
!387 = !{!11, !4, i64 252}
!388 = !{!11, !18, i64 1008}
!389 = distinct !{!389, !171}
!390 = distinct !{!390, !171, !288, !287}
!391 = !{!"branch_weights", i32 4, i32 28}
!392 = distinct !{!392, !171, !288, !287}
!393 = distinct !{!393, !307}
!394 = distinct !{!394, !171, !288}
!395 = distinct !{!395, !171}
!396 = !{!384, !4, i64 4}
!397 = distinct !{!397, !171, !288, !287}
!398 = distinct !{!398, !171, !288, !287}
!399 = distinct !{!399, !307}
!400 = distinct !{!400, !171, !288}
!401 = !{!11, !23, i64 364}
!402 = distinct !{!402, !171}
!403 = !{!11, !20, i64 440}
!404 = !{ptr @_ZN11duckdb_zstd40ZSTD_copySequencesToSeqStoreNoBlockDelimEPNS_11ZSTD_CCtx_sEPNS_21ZSTD_sequencePositionEPKNS_13ZSTD_SequenceEmPKvmNS_18ZSTD_paramSwitch_eE, ptr @_ZN11duckdb_zstd46ZSTD_copySequencesToSeqStoreExplicitBlockDelimEPNS_11ZSTD_CCtx_sEPNS_21ZSTD_sequencePositionEPKNS_13ZSTD_SequenceEmPKvmNS_18ZSTD_paramSwitch_eE}
!405 = distinct !{null}
!406 = distinct !{!406, !171}
!407 = !{!40, !25, i64 0}
!408 = !{!40, !25, i64 8}
!409 = !{!410}
!410 = distinct !{!410, !411, !"_ZN11duckdb_zstdL20inBuffer_forEndFlushEPKNS_11ZSTD_CCtx_sE: argument 0"}
!411 = distinct !{!411, !"_ZN11duckdb_zstdL20inBuffer_forEndFlushEPKNS_11ZSTD_CCtx_sE"}
!412 = !{!413}
!413 = distinct !{!413, !414, !"_ZN11duckdb_zstdL20inBuffer_forEndFlushEPKNS_11ZSTD_CCtx_sE: argument 0"}
!414 = distinct !{!414, !"_ZN11duckdb_zstdL20inBuffer_forEndFlushEPKNS_11ZSTD_CCtx_sE"}
!415 = !{!416}
!416 = distinct !{!416, !417, !"_ZN11duckdb_zstdL23ZSTD_getParams_internalEiymNS_17ZSTD_cParamMode_eE: argument 0"}
!417 = distinct !{!417, !"_ZN11duckdb_zstdL23ZSTD_getParams_internalEiymNS_17ZSTD_cParamMode_eE"}
!418 = !{!419, !4, i64 28}
!419 = !{!"_ZTSN11duckdb_zstd15ZSTD_parametersE", !15, i64 0, !17, i64 28}
!420 = !{!13, !25, i64 184}
!421 = !{!11, !4, i64 948}
!422 = !{!26, !4, i64 60}
!423 = !{!26, !25, i64 40}
!424 = distinct !{null, null}
!425 = !{!26, !25, i64 48}
!426 = !{!26, !28, i64 68}
!427 = !{!11, !4, i64 3512}
!428 = !{!11, !4, i64 264}
!429 = !{!11, !25, i64 1072}
!430 = !{!11, !25, i64 3144}
!431 = !{!11, !18, i64 3152}
!432 = !{!11, !4, i64 1080}
!433 = !{!11, !18, i64 5240}
!434 = !{!11, !25, i64 5232}
!435 = !{!11, !35, i64 968}
!436 = !{!11, !18, i64 1016}
!437 = !{!11, !35, i64 1088}
!438 = !{!11, !35, i64 984}
!439 = !{!11, !35, i64 992}
!440 = !{!11, !35, i64 1000}
!441 = !{!41, !4, i64 140}
!442 = !{!41, !4, i64 48}
!443 = !{!41, !4, i64 300}
!444 = !{!41, !4, i64 40}
!445 = !{!41, !4, i64 196}
!446 = !{!41, !45, i64 248}
!447 = !{!41, !42, i64 112}
!448 = !{!41, !42, i64 128}
!449 = !{!41, !42, i64 120}
!450 = !{!41, !35, i64 56}
!451 = !{!41, !18, i64 96}
!452 = !{!41, !4, i64 104}
!453 = !{!41, !4, i64 52}
!454 = !{!41, !42, i64 144}
!455 = !{!41, !42, i64 152}
!456 = !{!41, !42, i64 160}
!457 = !{!41, !42, i64 168}
!458 = !{!41, !25, i64 176}
!459 = !{!41, !25, i64 184}
!460 = !{!461, !18, i64 24}
!461 = !{!"_ZTSN11duckdb_zstd30ZSTD_symbolEncodingTypeStats_tE", !4, i64 0, !4, i64 4, !4, i64 8, !18, i64 16, !18, i64 24, !4, i64 32}
!462 = !{!461, !4, i64 32}
!463 = !{!461, !4, i64 0}
!464 = !{!461, !18, i64 16}
!465 = !{!461, !4, i64 4}
!466 = !{!461, !4, i64 8}
!467 = !{!38, !4, i64 32}
!468 = distinct !{!468, !171, !288, !287}
!469 = distinct !{!469, !171, !288, !287}
!470 = distinct !{!470, !171, !288, !287}
!471 = distinct !{!471, !171, !288, !287}
!472 = !{!41, !25, i64 232}
!473 = !{!11, !20, i64 304}
!474 = !{!41, !20, i64 240}
!475 = !{!41, !35, i64 8}
!476 = !{!11, !18, i64 3168}
!477 = !{!39, !25, i64 0}
!478 = !{!39, !18, i64 32}
!479 = !{!11, !25, i64 416}
!480 = !{!11, !4, i64 276}
!481 = distinct !{!481, !171}
!482 = distinct !{!482, !307}
!483 = !{!41, !25, i64 288}
!484 = !{!11, !4, i64 412}
!485 = distinct !{!485, !171}
!486 = !{i64 0, i64 12, !220}
!487 = distinct !{!487, !171}
!488 = !{!54, !56, i64 0}
!489 = !{!55, !18, i64 136}
!490 = !{!57, !56, i64 4}
!491 = distinct !{!491, !171}
!492 = !{!57, !56, i64 0}
!493 = !{!57, !18, i64 152}
!494 = !{!32, !18, i64 16}
!495 = !{!32, !25, i64 8}
!496 = !{!32, !18, i64 24}
!497 = !{!237, !4, i64 12}
!498 = distinct !{!498, !171}
!499 = !{!37, !35, i64 8}
!500 = !{!37, !4, i64 48}
end_hunk_2
