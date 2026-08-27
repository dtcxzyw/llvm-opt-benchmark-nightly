Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/zstd_compress?download=true
inline.NumInlined: 798
inline.NumDeleted: 175
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN11duckdb_zstd17ZSTD_loadCEntropyEPNS_27ZSTD_compressedBlockState_tEPvPKvm:bb.a
bb.m:                                             ; preds = %.preheader.i119
  %indvars.iv.next.i121 = add nuw nsw i64 %indvars.iv.i120, 1 ; 2 uses
  %exitcond.not.i122 = icmp eq i64 %indvars.iv.next.i121, %wide.trip.count.i
  br i1 %exitcond.not.i122, label %_ZN11duckdb_zstdL21ZSTD_dictNCountRepeatEPsjj.exit124, label %.preheader.i119, !llvm.loop !286

.preheader.i119:                                  ; preds = %.preheader.i119.preheader, %bb.m
  %indvars.iv.i120 = phi i64 [ %indvars.iv.next.i121, %bb.m ], [ %indvars.iv.i120.ph, %.preheader.i119.preheader ] ; 2 uses
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i120
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !256
  %i.dk = icmp eq i16 %i.dj, 0
  br i1 %i.dk, label %_ZN11duckdb_zstdL21ZSTD_dictNCountRepeatEPsjj.exit124, label %bb.m

_ZN11duckdb_zstdL21ZSTD_dictNCountRepeatEPsjj.exit124: ; preds = %vector.ph, %vector.body.1, %vector.body.2, %vector.body.3, %bb.m, %.preheader.i119, %middle.block, %bb.l
  %.07.i123 = phi i32 [ 1, %bb.l ], [ 2, %middle.block ], [ 1, %.preheader.i119 ], [ 2, %bb.m ], [ 1, %vector.body.3 ], [ 1, %vector.body.2 ], [ 1, %vector.body.1 ], [ 1, %vector.ph ]
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 5604
  store i32 %.07.i123, ptr %i.dl, align 4, !tbaa !192
  %i.dm = icmp eq i32 %.val110, 0
  %i.dn = zext i32 %.val110 to i64
  %i.do = icmp ult i64 %i.cl, %i.dn
  %or.cond108 = or i1 %i.dm, %i.do
  br i1 %or.cond108, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %_ZN11duckdb_zstdL21ZSTD_dictNCountRepeatEPsjj.exit124
  %i.dp = icmp eq i32 %.val109, 0
  %i.dq = zext i32 %.val109 to i64
  %i.dr = icmp ult i64 %i.cl, %i.dq
  %or.cond108.1 = or i1 %i.dp, %i.dr
  br i1 %or.cond108.1, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ds = icmp eq i32 %.val, 0
  %i.dt = zext i32 %.val to i64
  %i.du = icmp ult i64 %i.cl, %i.dt
  %or.cond108.2 = or i1 %i.ds, %i.du
  br i1 %or.cond108.2, label %.loopexit, label %.critedge106

.critedge106:                                     ; preds = %bb.o
  %i.dv = ptrtoint ptr %2 to i64
  %i.dw = sub i64 %i.ck, %i.dv
  br label %.loopexit

.critedge:                                        ; preds = %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  br label %.loopexit

.critedge102:                                     ; preds = %bb.i, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  br label %.loopexit

.critedge104:                                     ; preds = %bb.k, %bb.j, %_ZN11duckdb_zstdL21ZSTD_dictNCountRepeatEPsjj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN11duckdb_zstdL21ZSTD_dictNCountRepeatEPsjj.exit124, %bb.n, %bb.o, %_ZN11duckdb_zstdL21ZSTD_dictNCountRepeatEPsjj.exit117, %.critedge104, %.critedge102, %.critedge, %bb.c, %.critedge106
  %.5 = phi i64 [ -30, %bb.c ], [ %i.dw, %.critedge106 ], [ -30, %_ZN11duckdb_zstdL21ZSTD_dictNCountRepeatEPsjj.exit117 ], [ -30, %.critedge104 ], [ -30, %.critedge102 ], [ -30, %.critedge ], [ -30, %bb.o ], [ -30, %bb.n ], [ -30, %_ZN11duckdb_zstdL21ZSTD_dictNCountRepeatEPsjj.exit124 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %.5
}

declare noundef i64 @_ZN11duckdb_zstd14HUF_readCTableEPmPjPKvmS1_(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #12

declare noundef i64 @_ZN11duckdb_zstd14FSE_readNCountEPsPjS1_PKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #12

declare noundef i64 @_ZN11duckdb_zstd20FSE_buildCTable_wkspEPjPKsjjPvm(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define noundef range(i64 -119, 1) i64 @_ZN11duckdb_zstd36ZSTD_compressBegin_advanced_internalEPNS_11ZSTD_CCtx_sEPKvmNS_22ZSTD_dictContentType_eENS_26ZSTD_dictTableLoadMethod_eEPKNS_12ZSTD_CDict_sEPKNS_18ZSTD_CCtx_params_sEy(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.b = load <4 x i32>, ptr %i.a, align 4, !tbaa !3
  %.fr18 = freeze <4 x i32> %i.b
  %i.c = add <4 x i32> %.fr18, <i32 -32, i32 -31, i32 -31, i32 -31>
  %i.d = icmp ult <4 x i32> %i.c, <i32 -22, i32 -25, i32 -25, i32 -30>
  %i.e = bitcast <4 x i1> %i.d to i4
  %.not = icmp eq i4 %i.e, 0
  br i1 %.not, label %bb.b, label %_ZN11duckdb_zstd17ZSTD_checkCParamsENS_26ZSTD_compressionParametersE.exit.thread

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 28
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !88
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 20
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !3
  %i.f = add i32 %.sroa.5.0.copyload, -3
  %narrow.i29.i = icmp ult i32 %i.f, 5
  %narrow.i35.i = icmp ult i32 %.sroa.6.0.copyload, 131073
  %or.cond.i.not17 = select i1 %narrow.i29.i, i1 %narrow.i35.i, i1 false
  %i.g = add i32 %.sroa.7.0.copyload, -1
  %narrow.i41.i = icmp ult i32 %i.g, 9
  %or.cond16 = select i1 %or.cond.i.not17, i1 %narrow.i41.i, i1 false
  br i1 %or.cond16, label %bb.c, label %_ZN11duckdb_zstd17ZSTD_checkCParamsENS_26ZSTD_compressionParametersE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = tail call fastcc noundef i64 @_ZN11duckdb_zstdL27ZSTD_compressBegin_internalEPNS_11ZSTD_CCtx_sEPKvmNS_22ZSTD_dictContentType_eENS_26ZSTD_dictTableLoadMethod_eEPKNS_12ZSTD_CDict_sEPKNS_18ZSTD_CCtx_params_sEmNS_22ZSTD_buffered_policy_eE(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7, i32 noundef 0)
  br label %_ZN11duckdb_zstd17ZSTD_checkCParamsENS_26ZSTD_compressionParametersE.exit.thread

_ZN11duckdb_zstd17ZSTD_checkCParamsENS_26ZSTD_compressionParametersE.exit.thread: ; preds = %bb.b, %bb.a, %bb.c
  %.1 = phi i64 [ %i.h, %bb.c ], [ -42, %bb.b ], [ -42, %bb.a ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i64 -119, 1) i64 @_ZN11duckdb_zstdL27ZSTD_compressBegin_internalEPNS_11ZSTD_CCtx_sEPKvmNS_22ZSTD_dictContentType_eENS_26ZSTD_dictTableLoadMethod_eEPKNS_12ZSTD_CDict_sEPKNS_18ZSTD_CCtx_params_sEmNS_22ZSTD_buffered_policy_eE(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7, i32 noundef range(i32 0, 2) %8) unnamed_addr #2 {
bb.a:
  %9 = alloca %"struct.duckdb_zstd::ZSTD_CCtx_params_s", align 8 ; 6 uses
  %10 = alloca %"struct.duckdb_zstd::ZSTD_CCtx_params_s", align 8 ; 10 uses
  %.not = icmp eq ptr %5, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !289
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %i.b, %bb.b ], [ %2, %bb.a ]   ; 3 uses
  %.not67 = icmp eq ptr @_ZN11duckdb_zstd25ZSTD_trace_compress_beginEPKNS_11ZSTD_CCtx_sE, null
  br i1 %.not67, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noundef i64 @_ZN11duckdb_zstd25ZSTD_trace_compress_beginEPKNS_11ZSTD_CCtx_sE(ptr noundef %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.e = phi i64 [ %i.d, %bb.d ], [ 0, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3728
  store i64 %i.e, ptr %i.f, align 8, !tbaa !290
  br i1 %.not, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !289  ; 2 uses
  %.not68 = icmp eq i64 %i.h, 0
  br i1 %.not68, label %bb.ae, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = icmp ult i64 %7, 131072
  br i1 %i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = mul i64 %i.h, 6
  %i.k = icmp ult i64 %7, %i.j
  %i.l = icmp eq i64 %7, -1
  %or.cond = or i1 %i.l, %i.k
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 6068
  %i.n = load i32, ptr %i.m, align 4, !tbaa !291
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.j, label %bb.ae

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 68
  %i.q = load i32, ptr %i.p, align 4, !tbaa !115  ; 3 uses
  %.not69 = icmp eq i32 %i.q, 3
  br i1 %.not69, label %bb.ae, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 244
  %i.s = load i32, ptr %i.r, align 4, !tbaa !292  ; 2 uses
  %.not.i.i = icmp eq i32 %i.s, 0
  %i.t = getelementptr i8, ptr %5, i64 384        ; 4 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !88   ; 5 uses
  br i1 %.not.i.i, label %bb.l, label %_ZN11duckdb_zstdL21ZSTD_shouldAttachDictEPKNS_12ZSTD_CDict_sEPKNS_18ZSTD_CCtx_params_sEm.exit.thread17.i

bb.l:                                             ; preds = %bb.k
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @_ZN11duckdb_zstdL21attachDictSizeCutoffsE, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !78
  %i.y = icmp ule i64 %7, %i.x
  %i.z = icmp eq i64 %7, -1
  %or.cond.i.i = or i1 %i.z, %i.y
  br i1 %or.cond.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = icmp eq i32 %i.q, 1
  br i1 %i.aa, label %_ZN11duckdb_zstdL21ZSTD_shouldAttachDictEPKNS_12ZSTD_CDict_sEPKNS_18ZSTD_CCtx_params_sEm.exit.i, label %_ZN11duckdb_zstdL21ZSTD_shouldAttachDictEPKNS_12ZSTD_CDict_sEPKNS_18ZSTD_CCtx_params_sEm.exit.thread.i

bb.n:                                             ; preds = %bb.l
  %i.ab = icmp eq i32 %i.q, 2
  br i1 %i.ab, label %_ZN11duckdb_zstdL21ZSTD_shouldAttachDictEPKNS_12ZSTD_CDict_sEPKNS_18ZSTD_CCtx_params_sEm.exit.thread.i, label %_ZN11duckdb_zstdL21ZSTD_shouldAttachDictEPKNS_12ZSTD_CDict_sEPKNS_18ZSTD_CCtx_params_sEm.exit.i

_ZN11duckdb_zstdL21ZSTD_shouldAttachDictEPKNS_12ZSTD_CDict_sEPKNS_18ZSTD_CCtx_params_sEm.exit.i: ; preds = %bb.n, %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !114
  %.not10.i.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not10.i.not.i, label %_ZN11duckdb_zstdL21ZSTD_shouldAttachDictEPKNS_12ZSTD_CDict_sEPKNS_18ZSTD_CCtx_params_sEm.exit.thread17.i, label %_ZN11duckdb_zstdL21ZSTD_shouldAttachDictEPKNS_12ZSTD_CDict_sEPKNS_18ZSTD_CCtx_params_sEm.exit.thread.i

_ZN11duckdb_zstdL21ZSTD_shouldAttachDictEPKNS_12ZSTD_CDict_sEPKNS_18ZSTD_CCtx_params_sEm.exit.thread17.i: ; preds = %_ZN11duckdb_zstdL21ZSTD_shouldAttachDictEPKNS_12ZSTD_CDict_sEPKNS_18ZSTD_CCtx_params_sEm.exit.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %10, ptr noundef nonnull readonly align 8 dereferenceable(216) %6, i64 216, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 360
  %.sroa.0.sroa.0.0.copyload.i.i = load i32, ptr %i.af, align 8, !tbaa !3 ; 2 uses
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 364
  %.sroa.0.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !3 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 368
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !3 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 372
  %.sroa.6.sroa.0.0.copyload.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !tbaa !3 ; 2 uses
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 376
  %11 = load i64, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8
  %.not.i13.i = icmp ne i32 %i.s, 0
  %.off.i.i.i = add i32 %i.u, -3
  %switch.i.i.i = icmp ult i32 %.off.i.i.i, 3
  %or.cond.i14.i = select i1 %.not.i13.i, i1 %switch.i.i.i, i1 false
  %i.ag = add i32 %.sroa.4.0.copyload.i.i, -2
  %spec.store.select.i.i.i = tail call i32 @llvm.umax.i32(i32 %i.ag, i32 6)
  %.sroa.4.0.i.i = select i1 %or.cond.i14.i, i32 %spec.store.select.i.i.i, i32 %.sroa.4.0.copyload.i.i ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 144 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !91
  %i.aj = icmp ult i64 %7, 1073741825
  br i1 %i.aj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN11duckdb_zstdL21ZSTD_shouldAttachDictEPKNS_12ZSTD_CDict_sEPKNS_18ZSTD_CCtx_params_sEm.exit.thread17.i
  %i.ak = icmp samesign ult i64 %7, 64
  %i.al = trunc nuw nsw i64 %7 to i32
  %i.am = add nsw i32 %i.al, -1
  %i.an = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.am, i1 true)
  %i.ao = sub nuw nsw i32 32, %i.an
  %i.ap = select i1 %i.ak, i32 6, i32 %i.ao
  %spec.store.select40.i.i.i = tail call i32 @llvm.umin.i32(i32 %.sroa.0.sroa.0.0.copyload.i.i, i32 %i.ap)
  br label %.thread.i.i.i

bb.p:                                             ; preds = %_ZN11duckdb_zstdL21ZSTD_shouldAttachDictEPKNS_12ZSTD_CDict_sEPKNS_18ZSTD_CCtx_params_sEm.exit.thread17.i
  %.not.i.i.i = icmp eq i64 %7, -1
  br i1 %.not.i.i.i, label %bb.q, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.p, %bb.o
  %i.aq = phi i32 [ %spec.store.select40.i.i.i, %bb.o ], [ %.sroa.0.sroa.0.0.copyload.i.i, %bb.p ] ; 3 uses
  %i.ar = icmp ugt i32 %i.u, 5
  %.neg.i.i.i.i = sext i1 %i.ar to i32            ; 2 uses
  %i.as = add i32 %.sroa.0.sroa.4.0.copyload.i.i, %.neg.i.i.i.i
  %i.at = add i32 %i.aq, 1
  %spec.store.select41.i.i.i = tail call i32 @llvm.umin.i32(i32 %.sroa.4.0.i.i, i32 %i.at)
  %i.au = icmp ugt i32 %i.as, %i.aq
  %i.av = sub i32 %i.aq, %.neg.i.i.i.i
  %spec.select.i.i = select i1 %i.au, i32 %i.av, i32 %.sroa.0.sroa.4.0.copyload.i.i
  br label %bb.q

bb.q:                                             ; preds = %.thread.i.i.i, %bb.p
  %.sroa.9.0.i.i = phi i32 [ %.sroa.4.0.i.i, %bb.p ], [ %spec.store.select41.i.i.i, %.thread.i.i.i ] ; 2 uses
  %.sroa.7.0.i.i = phi i32 [ %.sroa.0.sroa.4.0.copyload.i.i, %bb.p ], [ %spec.select.i.i, %.thread.i.i.i ]
  %i.aw = add i32 %i.u, -6
  %i.ax = icmp ult i32 %i.aw, -3
  %i.ay = icmp ugt i32 %i.ai, 1
  %.not48.i.i.i = or i1 %i.ax, %i.ay
  br i1 %.not48.i.i.i, label %_ZN11duckdb_zstdL27ZSTD_adjustCParams_internalENS_26ZSTD_compressionParametersEymNS_17ZSTD_cParamMode_eENS_18ZSTD_paramSwitch_eE.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = tail call i32 @llvm.umax.i32(i32 %.sroa.6.sroa.0.0.copyload.i.i, i32 4)
  %i.ba = tail call i32 @llvm.umin.i32(i32 %i.az, i32 6)
  %i.bb = or disjoint i32 %i.ba, 24
  %spec.store.select44.i.i.i = tail call i32 @llvm.umin.i32(i32 %.sroa.9.0.i.i, i32 %i.bb)
  br label %_ZN11duckdb_zstdL27ZSTD_adjustCParams_internalENS_26ZSTD_compressionParametersEymNS_17ZSTD_cParamMode_eENS_18ZSTD_paramSwitch_eE.exit.i.i

_ZN11duckdb_zstdL27ZSTD_adjustCParams_internalENS_26ZSTD_compressionParametersEymNS_17ZSTD_cParamMode_eENS_18ZSTD_paramSwitch_eE.exit.i.i: ; preds = %bb.r, %bb.q
  %.sroa.9.1.i.i = phi i32 [ %.sroa.9.0.i.i, %bb.q ], [ %spec.store.select44.i.i.i, %bb.r ]
  %.sroa.451.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.sroa.7.0.i.i, ptr %.sroa.451.0..sroa_idx.i.i, align 8, !tbaa !3
  %.sroa.5.0..sroa_idx.i.i.a = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 %.sroa.9.1.i.i, ptr %.sroa.5.0..sroa_idx.i.i.a, align 4, !tbaa !3
  %.sroa.6.0..sroa_idx52.i.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %.sroa.6.sroa.0.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx52.i.i, align 8, !tbaa !3
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i64 %11, ptr %.sroa.753.0..sroa_idx.i.i, align 4
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %10, i64 28
  store i32 %i.u, ptr %.sroa.8.0..sroa_idx.i.i, align 4, !tbaa !88
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 6072
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !293
  store i32 %i.bd, ptr %i.ah, align 8, !tbaa !91
  %i.be = call fastcc noundef i64 @_ZN11duckdb_zstdL23ZSTD_resetCCtx_internalEPNS_11ZSTD_CCtx_sEPKNS_18ZSTD_CCtx_params_sEmmNS_22ZSTD_compResetPolicy_eENS_22ZSTD_buffered_policy_eE(ptr noundef nonnull %0, ptr noundef nonnull align 8 %10, i64 noundef %7, i64 noundef 0, i32 noundef 0, i32 noundef range(i32 0, 2) %8) ; 2 uses
  %i.bf = icmp ult i64 %i.be, -119
  br i1 %i.bf, label %bb.s, label %_ZN11duckdb_zstdL31ZSTD_resetCCtx_byAttachingCDictEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sENS_18ZSTD_CCtx_params_sEmNS_22ZSTD_buffered_policy_eE.exit.i

bb.s:                                             ; preds = %_ZN11duckdb_zstdL27ZSTD_adjustCParams_internalENS_26ZSTD_compressionParametersEymNS_17ZSTD_cParamMode_eENS_18ZSTD_paramSwitch_eE.exit.i.i
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !294
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !295
  %i.bj = ptrtoint ptr %i.bg to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 2 uses
  %i.bm = trunc i64 %i.bl to i32                  ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !296
  %i.bp = icmp eq i32 %i.bo, %i.bm
  br i1 %i.bp, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 3464
  store ptr %i.ae, ptr %i.bq, align 8, !tbaa !297
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 3240 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !298 ; 2 uses
  %i.bt = icmp ult i32 %i.bs, %i.bm
  br i1 %i.bt, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 3216
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !299
  %i.bx = and i64 %i.bl, 4294967295
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bx
  store ptr %i.by, ptr %i.bu, align 8, !tbaa !300
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 3244
  store i32 %i.bm, ptr %i.bz, align 4, !tbaa !263
  store i32 %i.bm, ptr %i.br, align 8, !tbaa !264
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ca = phi i32 [ %i.bm, %bb.u ], [ %i.bs, %bb.t ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 3256
  store i32 %i.ca, ptr %i.cb, align 8, !tbaa !301
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 6064
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !302
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 664
  store i32 %i.cd, ptr %i.ce, align 8, !tbaa !208
  %i.cf = load i64, ptr %i.g, align 8, !tbaa !289
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 672
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !209
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 3200
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !70
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 408
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5632) %i.ci, ptr noundef nonnull align 8 dereferenceable(5632) %i.cj, i64 5632, i1 false)
  br label %_ZN11duckdb_zstdL31ZSTD_resetCCtx_byAttachingCDictEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sENS_18ZSTD_CCtx_params_sEmNS_22ZSTD_buffered_policy_eE.exit.i

_ZN11duckdb_zstdL31ZSTD_resetCCtx_byAttachingCDictEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sENS_18ZSTD_CCtx_params_sEmNS_22ZSTD_buffered_policy_eE.exit.i: ; preds = %bb.w, %_ZN11duckdb_zstdL27ZSTD_adjustCParams_internalENS_26ZSTD_compressionParametersEymNS_17ZSTD_cParamMode_eENS_18ZSTD_paramSwitch_eE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %_ZN11duckdb_zstdL25ZSTD_resetCCtx_usingCDictEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sEPKNS_18ZSTD_CCtx_params_sEmNS_22ZSTD_buffered_policy_eE.exit

_ZN11duckdb_zstdL21ZSTD_shouldAttachDictEPKNS_12ZSTD_CDict_sEPKNS_18ZSTD_CCtx_params_sEm.exit.thread.i: ; preds = %_ZN11duckdb_zstdL21ZSTD_shouldAttachDictEPKNS_12ZSTD_CDict_sEPKNS_18ZSTD_CCtx_params_sEm.exit.i, %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %9, ptr noundef nonnull readonly align 8 dereferenceable(216) %6, i64 216, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 360
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 3 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.cm, ptr noundef nonnull readonly align 8 dereferenceable(28) %i.cl, i64 28, i1 false), !tbaa.struct !89
  store i32 %i.cn, ptr %i.cm, align 4, !tbaa !105
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 6072 ; 3 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !293
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 144
  store i32 %i.cp, ptr %i.cq, align 8, !tbaa !91
  %i.cr = call fastcc noundef i64 @_ZN11duckdb_zstdL23ZSTD_resetCCtx_internalEPNS_11ZSTD_CCtx_sEPKNS_18ZSTD_CCtx_params_sEmmNS_22ZSTD_compResetPolicy_eENS_22ZSTD_buffered_policy_eE(ptr noundef nonnull %0, ptr noundef nonnull align 8 %9, i64 noundef %7, i64 noundef 0, i32 noundef 1, i32 noundef range(i32 0, 2) %8) ; 2 uses
  %i.cs = icmp ult i64 %i.cr, -119
  br i1 %i.cs, label %bb.x, label %_ZN11duckdb_zstdL29ZSTD_resetCCtx_byCopyingCDictEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sENS_18ZSTD_CCtx_params_sEmNS_22ZSTD_buffered_policy_eE.exit.i

bb.x:                                             ; preds = %_ZN11duckdb_zstdL21ZSTD_shouldAttachDictEPKNS_12ZSTD_CDict_sEPKNS_18ZSTD_CCtx_params_sEm.exit.thread.i
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !67
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 3 uses
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !69
  %i.cw = load i32, ptr %i.t, align 8, !tbaa !101 ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.cw, 1
  br i1 %.not4.i.i.i, label %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread.thread83.i.i, label %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.i.i

_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread.thread83.i.i: ; preds = %bb.x
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 368
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !98
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = shl nuw i64 1, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 3200
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 3216
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 3328
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !203
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 216
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !303
  br label %.lr.ph.i.preheader.i.i

_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.i.i: ; preds = %bb.x
  %i.dh = load i32, ptr %i.co, align 8, !tbaa !293
  %i.di = add i32 %i.cw, -3                       ; 2 uses
  %i.dj = icmp ult i32 %i.di, 3
  %i.dk = icmp eq i32 %i.dh, 1
  %.not8.i.not.i.i = and i1 %i.dj, %i.dk
  br i1 %.not8.i.not.i.i, label %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread.thread.i.i, label %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread.i.i

_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread.thread.i.i: ; preds = %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 368
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !98
  %i.dn = zext nneg i32 %i.dm to i64              ; 2 uses
  %i.do = shl nuw i64 1, %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 3200
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 3216
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 3328
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !203
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 216
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !303
  br label %bb.y

_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread.i.i: ; preds = %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 364
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !97
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = shl nuw i64 1, %i.dx                    ; 2 uses
  %i.dz = icmp ult i32 %i.di, -2
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 368
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !98
  %i.ec = zext nneg i32 %i.eb to i64              ; 2 uses
  %i.ed = shl nuw i64 1, %i.ec                    ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 3200 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 3216 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 3328
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !203 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 216
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !303 ; 2 uses
  br i1 %i.dz, label %bb.y, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread.i.i, %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread.thread83.i.i
  %i.ek = phi ptr [ %i.dg, %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread.thread83.i.i ], [ %i.ej, %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread.i.i ] ; 7 uses
  %i.el = phi ptr [ %i.de, %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread.thread83.i.i ], [ %i.eh, %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread.i.i ] ; 7 uses
  %i.em = phi ptr [ %i.dc, %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread.thread83.i.i ], [ %i.ef, %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread.i.i ] ; 3 uses
  %i.en = phi ptr [ %i.db, %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread.thread83.i.i ], [ %i.ee, %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread.i.i ] ; 3 uses
  %i.eo = phi i64 [ %i.da, %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread.thread83.i.i ], [ %i.ed, %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread.i.i ] ; 8 uses
  %i.ep = phi i64 [ 0, %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread.thread83.i.i ], [ %i.dy, %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread.i.i ] ; 3 uses
  %min.iters.check = icmp ult i64 %i.eo, 8
  %i.eq = ptrtoaddr ptr %i.ek to i64
  %i.er = ptrtoaddr ptr %i.el to i64
  %i.es = sub i64 %i.eq, %i.er
  %diff.check = icmp ugt i64 %i.es, -32
  %or.cond105 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond105, label %.lr.ph.i.i.i.preheader, label %vector.ph

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.preheader.i.i
  %xtraiter = and i64 %i.eo, 3                    ; 3 uses
  %i.et = icmp ult i64 %i.eo, 4
  br i1 %i.et, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.eo, -4
  br label %.lr.ph.i.i.i

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i.i
  %n.vec = and i64 %i.eo, -8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %index ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %wide.load = load <4 x i32>, ptr %i.eu, align 4, !tbaa !3
  %wide.load88 = load <4 x i32>, ptr %i.ev, align 4, !tbaa !3
  %i.ew = lshr <4 x i32> %wide.load, splat (i32 8)
  %i.ex = lshr <4 x i32> %wide.load88, splat (i32 8)
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %index ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store <4 x i32> %i.ew, ptr %i.ey, align 4, !tbaa !3
  store <4 x i32> %i.ex, ptr %i.ez, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %_ZN11duckdb_zstdL27ZSTD_copyCDictTableIntoCCtxEPjPKjmPKNS_26ZSTD_compressionParametersE.exit.i.i, label %vector.body, !llvm.loop !304

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.01.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.fu, %.lr.ph.i.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.01.i.i.i
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !3
  %i.fd = lshr i32 %i.fc, 8
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.01.i.i.i
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !3
  %i.ff = or disjoint i64 %.01.i.i.i, 1           ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !3
  %i.fi = lshr i32 %i.fh, 8
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.ff
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !3
end_hunk_0
