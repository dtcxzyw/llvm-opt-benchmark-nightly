Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/zstd_compress?download=true
inline.NumInlined: 798
inline.NumDeleted: 175
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN11duckdb_zstdL29ZSTD_buildSequencesStatisticsEPKNS_10seqStore_tEmPKNS_17ZSTD_fseCTables_tEPS3_PhPKhNS_13ZSTD_strategyEPjPvm:bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !192 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !193
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bd
  store i8 35, ptr %i.be, align 1, !tbaa !191
  %.pr.i = load i32, ptr %i.ay, align 8, !tbaa !192
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.bf = phi i32 [ %.pr.i, %bb.f ], [ %i.az, %._crit_edge.i ]
  %i.bg = icmp eq i32 %i.bf, 2
  br i1 %i.bg, label %bb.h, label %_ZN11duckdb_zstd15ZSTD_seqToCodesEPKNS_10seqStore_tE.exit

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !193
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bj
  store i8 52, ptr %i.bk, align 1, !tbaa !191
  br label %_ZN11duckdb_zstd15ZSTD_seqToCodesEPKNS_10seqStore_tE.exit

_ZN11duckdb_zstd15ZSTD_seqToCodesEPKNS_10seqStore_tE.exit: ; preds = %bb.g, %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.bl, align 8, !tbaa !296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 35, ptr %i.a, align 4, !tbaa !17
  %i.bm = call noundef i64 @_ZN11duckdb_zstd19HIST_countFast_wkspEPjS0_PKvmPvm(ptr noundef %8, ptr noundef nonnull %i.a, ptr noundef %i.i, i64 noundef %2, ptr noundef %9, i64 noundef %10)
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 3548
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !209
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 3548 ; 2 uses
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !209
  %i.bq = load i32, ptr %i.a, align 4, !tbaa !17
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 2224 ; 2 uses
  %i.bs = call noundef i32 @_ZN11duckdb_zstd23ZSTD_selectEncodingTypeEPNS_10FSE_repeatEPKjjmmjS3_PKsjNS_20ZSTD_defaultPolicy_eENS_13ZSTD_strategyE(ptr noundef nonnull %i.bp, ptr noundef %8, i32 noundef %i.bq, i64 noundef %i.bm, i64 noundef %2, i32 noundef 9, ptr noundef nonnull %i.br, ptr noundef nonnull @_ZN11duckdb_zstdL14LL_defaultNormE, i32 noundef 6, i32 noundef 1, i32 noundef %7) ; 3 uses
  store i32 %i.bs, ptr %0, align 8, !tbaa !297
  %i.bt = ptrtoint ptr %6 to i64                  ; 3 uses
  %i.bu = ptrtoint ptr %5 to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = load i32, ptr %i.a, align 4, !tbaa !17
  %i.bx = call noundef i64 @_ZN11duckdb_zstd16ZSTD_buildCTableEPvmPjjNS_20symbolEncodingType_eES1_jPKhmPKsjjPKjmS0_m(ptr noundef %5, i64 noundef %i.bv, ptr noundef nonnull %i.d, i32 noundef 9, i32 noundef %i.bs, ptr noundef %8, i32 noundef %i.bw, ptr noundef %i.i, i64 noundef %2, ptr noundef nonnull @_ZN11duckdb_zstdL14LL_defaultNormE, i32 noundef 6, i32 noundef 35, ptr noundef nonnull %i.br, i64 noundef 1316, ptr noundef %9, i64 noundef %10) ; 5 uses
  %i.by = icmp ult i64 %i.bx, -119
  br i1 %i.by, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZN11duckdb_zstd15ZSTD_seqToCodesEPKNS_10seqStore_tE.exit
  %i.bz = icmp eq i32 %i.bs, 2
  br i1 %i.bz, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  store i64 %i.bx, ptr %i.l, align 8, !tbaa !295
  br label %bb.l

bb.k:                                             ; preds = %_ZN11duckdb_zstd15ZSTD_seqToCodesEPKNS_10seqStore_tE.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bx, ptr %i.ca, align 8, !tbaa !298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.u

bb.l:                                             ; preds = %bb.i, %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 %i.bx ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 31, ptr %i.b, align 4, !tbaa !17
  %i.cc = call noundef i64 @_ZN11duckdb_zstd19HIST_countFast_wkspEPjS0_PKvmPvm(ptr noundef %8, ptr noundef nonnull %i.b, ptr noundef %i.g, i64 noundef %2, ptr noundef %9, i64 noundef %10)
  %i.cd = load i32, ptr %i.b, align 4, !tbaa !17  ; 2 uses
  %i.ce = icmp ult i32 %i.cd, 29
  %i.cf = zext i1 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 3540
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !210
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 3540 ; 2 uses
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !210
  %i.cj = call noundef i32 @_ZN11duckdb_zstd23ZSTD_selectEncodingTypeEPNS_10FSE_repeatEPKjjmmjS3_PKsjNS_20ZSTD_defaultPolicy_eENS_13ZSTD_strategyE(ptr noundef nonnull %i.ci, ptr noundef %8, i32 noundef %i.cd, i64 noundef %i.cc, i64 noundef %2, i32 noundef 8, ptr noundef nonnull %3, ptr noundef nonnull @_ZN11duckdb_zstdL14OF_defaultNormE, i32 noundef 5, i32 noundef %i.cf, i32 noundef %7) ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !299
  %i.cl = ptrtoint ptr %i.cb to i64
  %i.cm = sub i64 %i.bt, %i.cl
  %i.cn = load i32, ptr %i.b, align 4, !tbaa !17
  %i.co = call noundef i64 @_ZN11duckdb_zstd16ZSTD_buildCTableEPvmPjjNS_20symbolEncodingType_eES1_jPKhmPKsjjPKjmS0_m(ptr noundef %i.cb, i64 noundef %i.cm, ptr noundef nonnull %4, i32 noundef 8, i32 noundef %i.cj, ptr noundef %8, i32 noundef %i.cn, ptr noundef %i.g, i64 noundef %2, ptr noundef nonnull @_ZN11duckdb_zstdL14OF_defaultNormE, i32 noundef 5, i32 noundef 28, ptr noundef nonnull %3, i64 noundef 772, ptr noundef %9, i64 noundef %10) ; 5 uses
  %i.cp = icmp ult i64 %i.co, -119
  br i1 %i.cp, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cq = icmp eq i32 %i.cj, 2
  br i1 %i.cq, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  store i64 %i.co, ptr %i.l, align 8, !tbaa !295
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.co, ptr %i.cr, align 8, !tbaa !298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.u

bb.p:                                             ; preds = %bb.m, %bb.n
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.co ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 52, ptr %i.c, align 4, !tbaa !17
  %i.ct = call noundef i64 @_ZN11duckdb_zstd19HIST_countFast_wkspEPjS0_PKvmPvm(ptr noundef %8, ptr noundef nonnull %i.c, ptr noundef %i.k, i64 noundef %2, ptr noundef %9, i64 noundef %10)
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 3544
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !211
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 3544 ; 2 uses
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !211
  %i.cx = load i32, ptr %i.c, align 4, !tbaa !17
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 772 ; 2 uses
  %i.cz = call noundef i32 @_ZN11duckdb_zstd23ZSTD_selectEncodingTypeEPNS_10FSE_repeatEPKjjmmjS3_PKsjNS_20ZSTD_defaultPolicy_eENS_13ZSTD_strategyE(ptr noundef nonnull %i.cw, ptr noundef %8, i32 noundef %i.cx, i64 noundef %i.ct, i64 noundef %2, i32 noundef 9, ptr noundef nonnull %i.cy, ptr noundef nonnull @_ZN11duckdb_zstdL14ML_defaultNormE, i32 noundef 6, i32 noundef 1, i32 noundef %7) ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.cz, ptr %i.da, align 8, !tbaa !300
  %i.db = ptrtoint ptr %i.cs to i64
  %i.dc = sub i64 %i.bt, %i.db
  %i.dd = load i32, ptr %i.c, align 4, !tbaa !17
  %i.de = call noundef i64 @_ZN11duckdb_zstd16ZSTD_buildCTableEPvmPjjNS_20symbolEncodingType_eES1_jPKhmPKsjjPKjmS0_m(ptr noundef %i.cs, i64 noundef %i.dc, ptr noundef nonnull %i.e, i32 noundef 9, i32 noundef %i.cz, ptr noundef %8, i32 noundef %i.dd, ptr noundef %i.k, i64 noundef %2, ptr noundef nonnull @_ZN11duckdb_zstdL14ML_defaultNormE, i32 noundef 6, i32 noundef 52, ptr noundef nonnull %i.cy, i64 noundef 1452, ptr noundef %9, i64 noundef %10) ; 4 uses
  %i.df = icmp ult i64 %i.de, -119
  br i1 %i.df, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.dg = icmp eq i32 %i.cz, 2
  br i1 %i.dg, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  store i64 %i.de, ptr %i.l, align 8, !tbaa !295
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.de, ptr %i.dh, align 8, !tbaa !298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.u

bb.t:                                             ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.di = add nuw nsw i64 %i.co, %i.bx
  %i.dj = add nuw nsw i64 %i.di, %i.de
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !298
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
  %.sroa.1.0.copyload = load ptr, ptr %.sroa.1.0..sroa_idx, align 8, !tbaa !177 ; 2 uses
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
  %i.i = load i32, ptr %i.h, align 4, !tbaa !113
  %i.j = shl nuw i32 1, %i.i
  %i.k = load i32, ptr %i.a, align 4, !tbaa !115
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !119
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
  %i.ab = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !217
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !218 ; 2 uses
  %i.ae = sub i32 %i.t, %i.aa                     ; 9 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.1.0.copyload, i64 %i.af
  store ptr %i.ag, ptr %.sroa.1.0..sroa_idx, align 8, !tbaa !220
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.af
  store ptr %i.ah, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !217
  %i.ai = add i32 %i.ae, 2                        ; 2 uses
  %5 = insertelement <2 x i32> poison, i32 %i.ae, i64 0 ; 5 uses
  %i.aj = icmp ult i32 %i.ad, %i.ai
  %i.ak = sub i32 %i.ad, %i.ae
  %storemerge.i = select i1 %i.aj, i32 2, i32 %i.ak
  store i32 %storemerge.i, ptr %i.ac, align 4, !tbaa !218
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !219 ; 2 uses
  %i.an = icmp ult i32 %i.am, %i.ai
  %i.ao = sub i32 %i.am, %i.ae
  %storemerge33.i = select i1 %i.an, i32 2, i32 %i.ao
  store i32 %storemerge33.i, ptr %i.al, align 8, !tbaa !219
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !470
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !470
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !77
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  store ptr %i.at, ptr %i.au, align 8, !tbaa !79
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !114
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !290
  tail call fastcc void @_ZN11duckdb_zstdL16ZSTD_reduceTableEPjjj(ptr noundef %i.az, i32 noundef %i.ax, i32 noundef %i.ae)
  %i.ba = load i32, ptr %i.l, align 4, !tbaa !119 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !99
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !286
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
  %i.bi = load i32, ptr %i.a, align 8, !tbaa !115
  %i.bj = shl nuw i32 1, %i.bi                    ; 3 uses
  %i.bk = icmp eq i32 %i.ba, 6
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !291 ; 2 uses
  br i1 %i.bk, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread21.i
  %i.bn = lshr i32 %i.bj, 4
  %i.bo = icmp sgt i32 %i.bj, 15
  br i1 %i.bo, label %.preheader.i.i.preheader, label %_ZN11duckdb_zstdL24ZSTD_reduceTable_btlazy2EPjjj.exit.i

.preheader.i.i.preheader:                         ; preds = %bb.d
  %6 = shufflevector <2 x i32> %5, <2 x i32> poison, <4 x i32> zeroinitializer
  %7 = add <4 x i32> %6, splat (i32 2)
  %8 = shufflevector <2 x i32> %5, <2 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %9 = shufflevector <2 x i32> %5, <2 x i32> poison, <4 x i32> zeroinitializer
  %10 = add <4 x i32> %9, splat (i32 2)
  %i.bp = shufflevector <2 x i32> %5, <2 x i32> poison, <4 x i32> zeroinitializer
  %11 = add <4 x i32> %i.bp, splat (i32 2)
  %i.bq = shufflevector <2 x i32> %5, <2 x i32> poison, <4 x i32> zeroinitializer
  %12 = add <4 x i32> %i.bq, splat (i32 2)
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next7.i.i, %.preheader.i.i ], [ 0, %.preheader.i.i.preheader ] ; 2 uses
  %.020.i5.i.i = phi i32 [ %i.ct, %.preheader.i.i ], [ 0, %.preheader.i.i.preheader ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.i.i ; 5 uses
  %i.bs = load <4 x i32>, ptr %i.br, align 4, !tbaa !17 ; 3 uses
  %i.bt = icmp eq <4 x i32> %i.bs, splat (i32 1)
  %i.bu = icmp ult <4 x i32> %i.bs, %7
  %i.bv = sub <4 x i32> %i.bs, %8
  %i.bw = select <4 x i1> %i.bu, <4 x i32> zeroinitializer, <4 x i32> %i.bv
  %i.bx = select <4 x i1> %i.bt, <4 x i32> splat (i32 1), <4 x i32> %i.bw
  store <4 x i32> %i.bx, ptr %i.br, align 4, !tbaa !17
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %i.bz = load <4 x i32>, ptr %i.by, align 4, !tbaa !17 ; 3 uses
  %i.ca = icmp eq <4 x i32> %i.bz, splat (i32 1)
  %i.cb = icmp ult <4 x i32> %i.bz, %10
  %i.cc = sub <4 x i32> %i.bz, %8
  %i.cd = select <4 x i1> %i.cb, <4 x i32> zeroinitializer, <4 x i32> %i.cc
  %i.ce = select <4 x i1> %i.ca, <4 x i32> splat (i32 1), <4 x i32> %i.cd
  store <4 x i32> %i.ce, ptr %i.by, align 4, !tbaa !17
  %i.cf = getelementptr inbounds nuw i8, ptr %i.br, i64 32 ; 2 uses
  %i.cg = load <4 x i32>, ptr %i.cf, align 4, !tbaa !17 ; 3 uses
  %i.ch = icmp eq <4 x i32> %i.cg, splat (i32 1)
  %i.ci = icmp ult <4 x i32> %i.cg, %11
  %i.cj = sub <4 x i32> %i.cg, %8
  %i.ck = select <4 x i1> %i.ci, <4 x i32> zeroinitializer, <4 x i32> %i.cj
  %i.cl = select <4 x i1> %i.ch, <4 x i32> splat (i32 1), <4 x i32> %i.ck
  store <4 x i32> %i.cl, ptr %i.cf, align 4, !tbaa !17
  %i.cm = getelementptr inbounds nuw i8, ptr %i.br, i64 48 ; 2 uses
  %i.cn = load <4 x i32>, ptr %i.cm, align 4, !tbaa !17 ; 3 uses
  %i.co = icmp eq <4 x i32> %i.cn, splat (i32 1)
  %i.cp = icmp ult <4 x i32> %i.cn, %12
  %i.cq = sub <4 x i32> %i.cn, %8
  %i.cr = select <4 x i1> %i.cp, <4 x i32> zeroinitializer, <4 x i32> %i.cq
  %i.cs = select <4 x i1> %i.co, <4 x i32> splat (i32 1), <4 x i32> %i.cr
  store <4 x i32> %i.cs, ptr %i.cm, align 4, !tbaa !17
  %indvars.iv.next7.i.i = add nuw nsw i64 %indvars.iv.i.i, 16
  %i.ct = add nuw nsw i32 %.020.i5.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.ct, %i.bn
  br i1 %exitcond.not.i.i, label %_ZN11duckdb_zstdL24ZSTD_reduceTable_btlazy2EPjjj.exit.i, label %.preheader.i.i, !llvm.loop !10

bb.e:                                             ; preds = %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread21.i
  tail call fastcc void @_ZN11duckdb_zstdL16ZSTD_reduceTableEPjjj(ptr noundef %i.bm, i32 noundef %i.bj, i32 noundef %i.ae)
  br label %_ZN11duckdb_zstdL24ZSTD_reduceTable_btlazy2EPjjj.exit.i

_ZN11duckdb_zstdL24ZSTD_reduceTable_btlazy2EPjjj.exit.i: ; preds = %.preheader.i.i, %bb.e, %bb.d, %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.i, %bb.c
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !287 ; 2 uses
  %.not19.i = icmp eq i32 %i.cv, 0
  br i1 %.not19.i, label %_ZN11duckdb_zstdL16ZSTD_reduceIndexEPNS_17ZSTD_matchState_tEPKNS_18ZSTD_CCtx_params_sEj.exit, label %bb.f

bb.f:                                             ; preds = %_ZN11duckdb_zstdL24ZSTD_reduceTable_btlazy2EPjjj.exit.i
  %i.cw = shl nuw i32 1, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !292
  tail call fastcc void @_ZN11duckdb_zstdL16ZSTD_reduceTableEPjjj(ptr noundef %i.cy, i32 noundef %i.cw, i32 noundef %i.ae)
  br label %_ZN11duckdb_zstdL16ZSTD_reduceIndexEPNS_17ZSTD_matchState_tEPKNS_18ZSTD_CCtx_params_sEj.exit

_ZN11duckdb_zstdL16ZSTD_reduceIndexEPNS_17ZSTD_matchState_tEPKNS_18ZSTD_CCtx_params_sEj.exit: ; preds = %_ZN11duckdb_zstdL24ZSTD_reduceTable_btlazy2EPjjj.exit.i, %bb.f
  %i.cz = load ptr, ptr %i.au, align 8, !tbaa !79
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !78 ; 2 uses
  %i.dc = icmp ult ptr %i.cz, %i.db
  br i1 %i.dc, label %bb.g, label %_ZN11duckdb_zstdL28ZSTD_cwksp_mark_tables_cleanEPNS_10ZSTD_cwkspE.exit

bb.g:                                             ; preds = %_ZN11duckdb_zstdL16ZSTD_reduceIndexEPNS_17ZSTD_matchState_tEPKNS_18ZSTD_CCtx_params_sEj.exit
  store ptr %i.db, ptr %i.au, align 8, !tbaa !79
  br label %_ZN11duckdb_zstdL28ZSTD_cwksp_mark_tables_cleanEPNS_10ZSTD_cwkspE.exit

_ZN11duckdb_zstdL28ZSTD_cwksp_mark_tables_cleanEPNS_10ZSTD_cwkspE.exit: ; preds = %_ZN11duckdb_zstdL16ZSTD_reduceIndexEPNS_17ZSTD_matchState_tEPKNS_18ZSTD_CCtx_params_sEj.exit, %bb.g
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !221
  %storemerge = tail call i32 @llvm.usub.sat.i32(i32 %i.de, i32 %i.ae)
  store i32 %storemerge, ptr %i.dd, align 4, !tbaa !221
  store i32 0, ptr %i.b, align 8, !tbaa !288
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr null, ptr %i.df, align 8, !tbaa !289
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
  %i.e = load i32, ptr %i.d, align 8, !tbaa !227
  %.not54 = icmp eq i32 %i.e, 0                   ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not54, label %.thread67, label %.thread

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3200 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !80   ; 2 uses
  br i1 %.not54, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 5616
  %i.j = tail call fastcc noundef i64 @_ZN11duckdb_zstdL23ZSTD_copyBlockSequencesEPNS_12SeqCollectorEPKNS_10seqStore_tEPKj(ptr noundef nonnull %i.d, ptr noundef nonnull %i.f, ptr noundef nonnull %i.i) ; 2 uses
  %i.k = icmp ult i64 %i.j, -119
  br i1 %i.k, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.l = load <2 x ptr>, ptr %i.g, align 8, !tbaa !73
  %i.m = shufflevector <2 x ptr> %i.l, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.m, ptr %i.g, align 8, !tbaa !73
  br label %.thread

bb.g:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3208
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !81
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3520
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !82
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !68
  %i.u = tail call fastcc noundef i64 @_ZN11duckdb_zstdL28ZSTD_entropyCompressSeqStoreEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmmSA_mi(ptr noundef nonnull %i.f, ptr noundef %i.h, ptr noundef %i.o, ptr noundef nonnull %i.p, ptr noundef %1, i64 noundef %2, i64 noundef %4, ptr noundef %i.r, i32 noundef %i.t) ; 4 uses
  %.not56 = icmp eq i32 %5, 0
  br i1 %.not56, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.w = load i32, ptr %i.v, align 8, !tbaa !226
  %i.x = icmp eq i32 %i.w, 0
  %i.y = icmp ult i64 %i.u, 25
  %or.cond = and i1 %i.y, %i.x
  br i1 %or.cond, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.z = tail call fastcc noundef i32 @_ZN11duckdb_zstdL10ZSTD_isRLEEPKhm(ptr noundef %3, i64 noundef %4)
  %.not57 = icmp eq i32 %i.z, 0
  br i1 %.not57, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load i8, ptr %3, align 1, !tbaa !191
  store i8 %i.aa, ptr %1, align 1, !tbaa !191
  br label %.thread67

bb.k:                                             ; preds = %bb.g, %bb.h, %bb.i
  %i.ab = add i64 %i.u, -2
  %or.cond4 = icmp ult i64 %i.ab, -121
  br i1 %or.cond4, label %bb.l, label %.thread67

bb.l:                                             ; preds = %bb.k
  %i.ac = load <2 x ptr>, ptr %i.g, align 8, !tbaa !73
  %i.ad = shufflevector <2 x ptr> %i.ac, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.ad, ptr %i.g, align 8, !tbaa !73
  br label %.thread67

.thread67:                                        ; preds = %bb.c, %bb.j, %bb.l, %bb.k
  %.14770 = phi i64 [ %i.u, %bb.k ], [ %i.u, %bb.l ], [ 0, %bb.c ], [ 1, %bb.j ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 3200
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !80
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 5604 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !165
  %i.ai = icmp eq i32 %i.ah, 2
  br i1 %i.ai, label %bb.m, label %.thread

bb.m:                                             ; preds = %.thread67
  store i32 1, ptr %i.ag, align 4, !tbaa !165
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
  %i.i = load <4 x i32>, ptr %i.h, align 4, !tbaa !17 ; 2 uses
  %i.j = icmp ult <4 x i32> %i.i, %i.e
  %i.k = sub <4 x i32> %i.i, %i.g
  %i.l = select <4 x i1> %i.j, <4 x i32> zeroinitializer, <4 x i32> %i.k
  store <4 x i32> %i.l, ptr %i.h, align 4, !tbaa !17
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.o = load <4 x i32>, ptr %i.n, align 4, !tbaa !17 ; 2 uses
  %i.p = icmp ult <4 x i32> %i.o, %i.e
  %i.q = sub <4 x i32> %i.o, %i.g
  %i.r = select <4 x i1> %i.p, <4 x i32> zeroinitializer, <4 x i32> %i.q
  store <4 x i32> %i.r, ptr %i.n, align 4, !tbaa !17
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.u = load <4 x i32>, ptr %i.t, align 4, !tbaa !17 ; 2 uses
  %i.v = icmp ult <4 x i32> %i.u, %i.e
  %i.w = sub <4 x i32> %i.u, %i.g
  %i.x = select <4 x i1> %i.v, <4 x i32> zeroinitializer, <4 x i32> %i.w
  store <4 x i32> %i.x, ptr %i.t, align 4, !tbaa !17
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 2 uses
  %i.aa = load <4 x i32>, ptr %i.z, align 4, !tbaa !17 ; 2 uses
  %i.ab = icmp ult <4 x i32> %i.aa, %i.e
  %i.ac = sub <4 x i32> %i.aa, %i.g
  %i.ad = select <4 x i1> %i.ab, <4 x i32> zeroinitializer, <4 x i32> %i.ac
  store <4 x i32> %i.ad, ptr %i.z, align 4, !tbaa !17
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv, 16
  %i.ae = add nuw nsw i32 %.020.i5, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ae, %i.a
  br i1 %exitcond.not, label %_ZN11duckdb_zstdL25ZSTD_reduceTable_internalEPjjji.exit, label %.preheader, !llvm.loop !10

_ZN11duckdb_zstdL25ZSTD_reduceTable_internalEPjjji.exit: ; preds = %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i64 -119, 2) i64 @_ZN11duckdb_zstdL18ZSTD_buildSeqStoreEPNS_11ZSTD_CCtx_sEPKvm(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #2 {
end_hunk_0
