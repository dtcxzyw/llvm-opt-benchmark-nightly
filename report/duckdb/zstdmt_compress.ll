Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/zstdmt_compress?download=true
inline.NumInlined: 125
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN11duckdb_zstd27ZSTDMT_initCStream_internalEPNS_13ZSTDMT_CCtx_sEPKvmNS_22ZSTD_dictContentType_eEPKNS_12ZSTD_CDict_sENS_18ZSTD_CCtx_params_sEy:bb.a
  %or.cond.i = and i1 %i.ku, %i.kv
  br i1 %or.cond.i, label %bb.cm, label %bb.ct

bb.cm:                                            ; preds = %.thread93.i
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 5 uses
  %i.kx = load ptr, ptr %i.jw, align 8, !tbaa !141 ; 2 uses
  %.not.i69.i = icmp eq ptr %1, %i.kx
  br i1 %.not.i69.i, label %._crit_edge.i.i, label %bb.cn

._crit_edge.i.i:                                  ; preds = %bb.cm
  %.pre.i.i = load ptr, ptr %i.jz, align 8, !tbaa !138
  %.pre46.i.i = load i32, ptr %i.kb, align 4, !tbaa !140
  %.pre48.i.i = load i32, ptr %i.ka, align 8, !tbaa !139
  br label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  %i.ky = load ptr, ptr %i.jy, align 8, !tbaa !137 ; 4 uses
  %i.kz = ptrtoint ptr %i.kx to i64
  %i.la = ptrtoint ptr %i.ky to i64
  %i.lb = sub i64 %i.kz, %i.la                    ; 2 uses
  %i.lc = load i32, ptr %i.ka, align 8, !tbaa !139 ; 3 uses
  store i32 %i.lc, ptr %i.kb, align 4, !tbaa !140
  %i.ld = trunc i64 %i.lb to i32                  ; 6 uses
  store i32 %i.ld, ptr %i.ka, align 8, !tbaa !139
  store ptr %i.ky, ptr %i.jz, align 8, !tbaa !138
  %i.le = sub i64 0, %i.lb
  %i.lf = getelementptr inbounds i8, ptr %1, i64 %i.le
  store ptr %i.lf, ptr %i.jy, align 8, !tbaa !137
  %i.lg = sub i32 %i.ld, %i.lc
  %i.lh = icmp ult i32 %i.lg, 8
  br i1 %i.lh, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  store i32 %i.ld, ptr %i.kb, align 4, !tbaa !140
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %._crit_edge.i.i
  %i.li = phi i32 [ %.pre48.i.i, %._crit_edge.i.i ], [ %i.ld, %bb.co ], [ %i.ld, %bb.cn ]
  %i.lj = phi i32 [ %.pre46.i.i, %._crit_edge.i.i ], [ %i.ld, %bb.co ], [ %i.lc, %bb.cn ]
  %i.lk = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ky, %bb.co ], [ %i.ky, %bb.cn ] ; 3 uses
  store ptr %i.kw, ptr %i.jw, align 8, !tbaa !141
  %i.ll = zext i32 %i.lj to i64
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.ll
  %i.ln = icmp ugt ptr %i.kw, %i.lm
  %i.lo = zext i32 %i.li to i64                   ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.lo
  %i.lq = icmp ult ptr %1, %i.lp
  %i.lr = and i1 %i.ln, %i.lq
  br i1 %i.lr, label %bb.cq, label %_ZN11duckdb_zstdL18ZSTD_window_updateEPNS_13ZSTD_window_tEPKvmi.exit.i

bb.cq:                                            ; preds = %bb.cp
  %i.ls = ptrtoint ptr %i.kw to i64
  %i.lt = ptrtoint ptr %i.lk to i64
  %i.lu = sub i64 %i.ls, %i.lt
  %i.lv = call i64 @llvm.smin.i64(i64 %i.lu, i64 %i.lo)
  %i.lw = trunc i64 %i.lv to i32
  store i32 %i.lw, ptr %i.kb, align 4, !tbaa !140
  br label %_ZN11duckdb_zstdL18ZSTD_window_updateEPNS_13ZSTD_window_tEPKvmi.exit.i

_ZN11duckdb_zstdL18ZSTD_window_updateEPNS_13ZSTD_window_tEPKvmi.exit.i: ; preds = %bb.cq, %bb.cp
  call void @_ZN11duckdb_zstd22ZSTD_ldm_fillHashTableEPNS_10ldmState_tEPKhS3_PKNS_11ldmParams_tE(ptr noundef nonnull %i.jw, ptr noundef %1, ptr noundef nonnull %i.kw, ptr noundef nonnull %i.it)
  %i.lx = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ly = load i32, ptr %i.lx, align 8, !tbaa !145
  %.not53.i = icmp eq i32 %i.ly, 0
  br i1 %.not53.i, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %_ZN11duckdb_zstdL18ZSTD_window_updateEPNS_13ZSTD_window_tEPKvmi.exit.i
  %i.lz = load ptr, ptr %i.jy, align 8, !tbaa !146
  %i.ma = ptrtoint ptr %i.kw to i64
  %i.mb = ptrtoint ptr %i.lz to i64
  %i.mc = sub i64 %i.ma, %i.mb
  %i.md = trunc i64 %i.mc to i32
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %_ZN11duckdb_zstdL18ZSTD_window_updateEPNS_13ZSTD_window_tEPKvmi.exit.i
  %i.me = phi i32 [ %i.md, %bb.cr ], [ 0, %_ZN11duckdb_zstdL18ZSTD_window_updateEPNS_13ZSTD_window_tEPKvmi.exit.i ]
  store i32 %i.me, ptr %i.kt, align 8, !tbaa !144
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %.thread93.i
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 2784
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.mf, ptr noundef nonnull align 8 dereferenceable(40) %i.jw, i64 40, i1 false), !tbaa.struct !147
  br label %bb.cu

_ZN11duckdb_zstdL24ZSTDMT_serialState_resetEPNS_13serialState_tEPNS_19ZSTDMT_bufferPool_sENS_18ZSTD_CCtx_params_sEmPKvmNS_22ZSTD_dictContentType_eE.exit.thread: ; preds = %.thread.i, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZN11duckdb_zstdL13ZSTDMT_resizeEPNS_13ZSTDMT_CCtx_sEj.exit.thread

bb.cu:                                            ; preds = %bb.ct, %bb.bw
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.mg, ptr noundef nonnull align 8 dereferenceable(216) %7, i64 216, i1 false), !tbaa.struct !108
  %i.mh = and i64 %i.im, 4294967295
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i64 %i.mh, ptr %i.mi, align 8, !tbaa !149
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZN11duckdb_zstdL13ZSTDMT_resizeEPNS_13ZSTDMT_CCtx_sEj.exit.thread

_ZN11duckdb_zstdL13ZSTDMT_resizeEPNS_13ZSTDMT_CCtx_sEj.exit.thread: ; preds = %bb.ae, %_ZN11duckdb_zstdL21ZSTDMT_expandCCtxPoolEPNS_15ZSTDMT_CCtxPoolEi.exit.thread.i, %bb.j, %bb.b, %_ZN11duckdb_zstdL22ZSTDMT_expandJobsTableEPNS_13ZSTDMT_CCtx_sEj.exit.i, %bb.cu, %_ZN11duckdb_zstdL24ZSTDMT_serialState_resetEPNS_13serialState_tEPNS_19ZSTDMT_bufferPool_sENS_18ZSTD_CCtx_params_sEmPKvmNS_22ZSTD_dictContentType_eE.exit.thread, %bb.bq, %bb.aq
  %.3 = phi i64 [ -64, %_ZN11duckdb_zstdL24ZSTDMT_serialState_resetEPNS_13serialState_tEPNS_19ZSTDMT_bufferPool_sENS_18ZSTD_CCtx_params_sEmPKvmNS_22ZSTD_dictContentType_eE.exit.thread ], [ -64, %bb.bq ], [ -64, %bb.aq ], [ 0, %bb.cu ], [ -64, %_ZN11duckdb_zstdL22ZSTDMT_expandJobsTableEPNS_13ZSTDMT_CCtx_sEj.exit.i ], [ -64, %bb.b ], [ -64, %bb.j ], [ -64, %_ZN11duckdb_zstdL21ZSTDMT_expandCCtxPoolEPNS_15ZSTDMT_CCtxPoolEi.exit.thread.i ], [ -64, %bb.ae ]
  ret i64 %.3
}

declare noundef ptr @_ZN11duckdb_zstd25ZSTD_createCDict_advancedEPKvmNS_21ZSTD_dictLoadMethod_eENS_22ZSTD_dictContentType_eENS_26ZSTD_compressionParametersENS_14ZSTD_customMemE(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef byval(%"struct.duckdb_zstd::ZSTD_compressionParameters") align 8, ptr noundef byval(%"struct.duckdb_zstd::ZSTD_customMem") align 8) local_unnamed_addr #2

declare noundef i64 @_ZN11duckdb_zstd18ZSTD_compressBoundEm(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN11duckdb_zstd24ZSTDMT_nextInputSizeHintEPKNS_13ZSTDMT_CCtx_sE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load i64, ptr %i.a, align 8, !tbaa !122  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.d = load i64, ptr %i.c, align 8, !tbaa !86   ; 2 uses
  %i.e = icmp eq i64 %i.b, %i.d
  %i.f = select i1 %i.e, i64 0, i64 %i.d
  %spec.select = sub i64 %i.b, %i.f
  ret i64 %spec.select
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd29ZSTDMT_compressStream_genericEPNS_13ZSTDMT_CCtx_sEPNS_16ZSTD_outBuffer_sEPNS_15ZSTD_inBuffer_sENS_17ZSTD_EndDirectiveE(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2860 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !150
  %i.c = icmp ne i32 %i.b, 0
  %i.d = icmp eq i32 %3, 0                        ; 3 uses
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.bl, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !91
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %_ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit.thread132

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !151  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !153  ; 2 uses
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %_ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit.thread132

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !154  ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %_ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2852
  %i.p = load i32, ptr %i.o, align 4, !tbaa !92   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2856
  %i.r = load i32, ptr %i.q, align 8, !tbaa !88   ; 2 uses
  %i.s = icmp ult i32 %i.p, %i.r
  br i1 %i.s, label %.lr.ph.i.i, label %_ZN11duckdb_zstdL24ZSTDMT_getInputDataInUseEPNS_13ZSTDMT_CCtx_sE.exit.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2848
  %i.u = load i32, ptr %i.t, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !36
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.x = add nuw i32 %.02329.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.x, %i.r
  br i1 %exitcond.not.i.i, label %_ZN11duckdb_zstdL24ZSTDMT_getInputDataInUseEPNS_13ZSTDMT_CCtx_sE.exit.i, label %bb.g, !llvm.loop !155

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i
  %.02329.i.i = phi i32 [ %i.p, %.lr.ph.i.i ], [ %i.x, %bb.f ] ; 2 uses
  %i.y = and i32 %.02329.i.i, %i.u
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [368 x i8], ptr %i.w, i64 %i.z ; 4 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !97
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !96 ; 2 uses
  %.not.i.i = icmp ult i64 %i.ab, %i.ad
  br i1 %.not.i.i, label %.thread.i.i, label %bb.f

.thread.i.i:                                      ; preds = %bb.g
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !39 ; 2 uses
  %i.ae = icmp eq i64 %.sroa.4.0.copyload.i.i, 0  ; 2 uses
  %spec.select.v.i.i = select i1 %i.ae, i64 88, i64 72
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 %spec.select.v.i.i
  %spec.select25.i.i = select i1 %i.ae, i64 %i.ad, i64 %.sroa.4.0.copyload.i.i
  %.sroa.0.1.i.i = load ptr, ptr %spec.select.i.i, align 8, !tbaa !38
  br label %_ZN11duckdb_zstdL24ZSTDMT_getInputDataInUseEPNS_13ZSTDMT_CCtx_sE.exit.i

_ZN11duckdb_zstdL24ZSTDMT_getInputDataInUseEPNS_13ZSTDMT_CCtx_sE.exit.i: ; preds = %bb.f, %.thread.i.i, %bb.e
  %.sroa.0.3.i.i = phi ptr [ %.sroa.0.1.i.i, %.thread.i.i ], [ null, %bb.e ], [ null, %bb.f ] ; 6 uses
  %.sroa.4.3.i.i = phi i64 [ %spec.select25.i.i, %.thread.i.i ], [ 0, %bb.e ], [ 0, %bb.f ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !78
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !130 ; 2 uses
  %i.ak = sub i64 %i.ah, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.am = load i64, ptr %i.al, align 8, !tbaa !122 ; 6 uses
  %i.an = icmp ult i64 %i.ak, %i.am
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN11duckdb_zstdL24ZSTDMT_getInputDataInUseEPNS_13ZSTDMT_CCtx_sE.exit.i
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !66 ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !156 ; 7 uses
  %i.ar = icmp eq ptr %.sroa.0.3.i.i, null
  %i.as = icmp eq ptr %i.ao, null                 ; 3 uses
  %or.cond.i.i = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond.i.i, label %_ZN11duckdb_zstdL19ZSTDMT_isOverlappedENS_8buffer_sENS_7range_tE.exit.thread.i, label %_ZN11duckdb_zstdL19ZSTDMT_isOverlappedENS_8buffer_sENS_7range_tE.exit.i

_ZN11duckdb_zstdL19ZSTDMT_isOverlappedENS_8buffer_sENS_7range_tE.exit.i: ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aq
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i.i, i64 %.sroa.4.3.i.i
  %i.av = icmp samesign eq i64 %i.aq, 0
  %i.aw = icmp samesign eq i64 %.sroa.4.3.i.i, 0
  %or.cond19.not.i.not79.i = select i1 %i.av, i1 true, i1 %i.aw
  %i.ax = icmp uge ptr %i.ao, %i.au
  %i.ay = icmp uge ptr %.sroa.0.3.i.i, %i.at
  %.not76.i = select i1 %or.cond19.not.i.not79.i, i1 true, i1 %i.ax
  %narrow.i.not.i = select i1 %.not76.i, i1 true, i1 %i.ay
  br i1 %narrow.i.not.i, label %_ZN11duckdb_zstdL19ZSTDMT_isOverlappedENS_8buffer_sENS_7range_tE.exit.thread.i, label %_ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit.thread132

_ZN11duckdb_zstdL19ZSTDMT_isOverlappedENS_8buffer_sENS_7range_tE.exit.thread.i: ; preds = %_ZN11duckdb_zstdL19ZSTDMT_isOverlappedENS_8buffer_sENS_7range_tE.exit.i, %bb.h
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %6 = load i32, ptr %5, align 8, !tbaa !128
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %.critedge.preheader.i.i, label %_ZN11duckdb_zstdL25ZSTDMT_waitForLdmCompleteEPNS_13ZSTDMT_CCtx_sENS_8buffer_sE.exit.i

.critedge.preheader.i.i:                          ; preds = %_ZN11duckdb_zstdL19ZSTDMT_isOverlappedENS_8buffer_sENS_7range_tE.exit.thread.i
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 2784
  %.sroa.0.0.copyload.i.i = load ptr, ptr %8, align 8, !tbaa !148 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2792
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !148 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2800
  %.sroa.3.0.copyload.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !148 ; 2 uses
  %.sroa.4.0..sroa_idx.i43.i = getelementptr inbounds nuw i8, ptr %0, i64 2808
  %.sroa.4.0.copyload.i44.i = load i32, ptr %.sroa.4.0..sroa_idx.i43.i, align 8, !tbaa !3 ; 3 uses
  %9 = icmp eq ptr %.sroa.3.0.copyload.i.i, null
  %or.cond.i.i.i.i = select i1 %9, i1 true, i1 %i.as
  %10 = icmp eq ptr %.sroa.2.0.copyload.i.i, null
  %or.cond.i12.i.i.i = select i1 %10, i1 true, i1 %i.as
  %11 = zext i32 %.sroa.4.0.copyload.i44.i to i64
  %12 = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %11 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aq ; 2 uses
  %14 = icmp samesign eq i64 %i.aq, 0             ; 2 uses
  %15 = icmp eq ptr %.sroa.0.0.copyload.i.i, %12
  %16 = icmp uge ptr %i.ao, %.sroa.0.0.copyload.i.i
  %17 = icmp uge ptr %12, %13
  br i1 %or.cond.i.i.i.i, label %_ZN11duckdb_zstdL24ZSTDMT_doesOverlapWindowENS_8buffer_sENS_13ZSTD_window_tE.exit.thread.sink.split.i.i, label %_ZN11duckdb_zstdL19ZSTDMT_isOverlappedENS_8buffer_sENS_7range_tE.exit.thread.i.a

_ZN11duckdb_zstdL19ZSTDMT_isOverlappedENS_8buffer_sENS_7range_tE.exit.thread.i.a: ; preds = %.critedge.preheader.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %.sroa.5.0.copyload.i.i = load i32, ptr %i.az, align 4, !tbaa !3 ; 3 uses
  %18 = zext i32 %.sroa.5.0.copyload.i.i to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i.i, i64 %18 ; 2 uses
  %19 = sub i32 %.sroa.4.0.copyload.i44.i, %.sroa.5.0.copyload.i.i
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds nuw i8, ptr %i.ba, i64 %20
  %i.bb = icmp eq i32 %.sroa.4.0.copyload.i44.i, %.sroa.5.0.copyload.i.i
  %or.cond19.not.i.not25.i.i.i = select i1 %14, i1 true, i1 %i.bb
  %22 = icmp uge ptr %i.ao, %21
  %23 = icmp uge ptr %i.ba, %13
  %.not22.i.i.i = select i1 %or.cond19.not.i.not25.i.i.i, i1 true, i1 %22
  %narrow.i.not.i.i.i = select i1 %.not22.i.i.i, i1 true, i1 %23
  tail call void @llvm.assume(i1 %narrow.i.not.i.i.i)
  br label %_ZN11duckdb_zstdL24ZSTDMT_doesOverlapWindowENS_8buffer_sENS_13ZSTD_window_tE.exit.thread.sink.split.i.i

_ZN11duckdb_zstdL24ZSTDMT_doesOverlapWindowENS_8buffer_sENS_13ZSTD_window_tE.exit.thread.sink.split.i.i: ; preds = %_ZN11duckdb_zstdL19ZSTDMT_isOverlappedENS_8buffer_sENS_7range_tE.exit.thread.i.a, %.critedge.preheader.i.i
  %24 = select i1 %or.cond.i12.i.i.i, i1 true, i1 %14
  %25 = select i1 %24, i1 true, i1 %15
  %26 = select i1 %25, i1 true, i1 %16
  %brmerge18.i.i = select i1 %26, i1 true, i1 %17
  tail call void @llvm.assume(i1 %brmerge18.i.i)
  br label %_ZN11duckdb_zstdL25ZSTDMT_waitForLdmCompleteEPNS_13ZSTDMT_CCtx_sENS_8buffer_sE.exit.i

_ZN11duckdb_zstdL25ZSTDMT_waitForLdmCompleteEPNS_13ZSTDMT_CCtx_sENS_8buffer_sE.exit.i: ; preds = %_ZN11duckdb_zstdL24ZSTDMT_doesOverlapWindowENS_8buffer_sENS_13ZSTD_window_tE.exit.thread.sink.split.i.i, %_ZN11duckdb_zstdL19ZSTDMT_isOverlappedENS_8buffer_sENS_7range_tE.exit.thread.i
  %27 = load ptr, ptr %4, align 8, !tbaa !157
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %27, i64 %i.aq, i1 false)
  store ptr %i.ao, ptr %4, align 8, !tbaa !157
  store i64 %i.aq, ptr %i.ai, align 8, !tbaa !130
  br label %bb.i

bb.i:                                             ; preds = %_ZN11duckdb_zstdL25ZSTDMT_waitForLdmCompleteEPNS_13ZSTDMT_CCtx_sENS_8buffer_sE.exit.i, %_ZN11duckdb_zstdL24ZSTDMT_getInputDataInUseEPNS_13ZSTDMT_CCtx_sE.exit.i
  %i.bc = phi i64 [ %i.aq, %_ZN11duckdb_zstdL25ZSTDMT_waitForLdmCompleteEPNS_13ZSTDMT_CCtx_sENS_8buffer_sE.exit.i ], [ %i.aj, %_ZN11duckdb_zstdL24ZSTDMT_getInputDataInUseEPNS_13ZSTDMT_CCtx_sE.exit.i ]
  %i.bd = load ptr, ptr %i.af, align 8, !tbaa !66 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc ; 7 uses
  %i.bf = icmp eq ptr %.sroa.0.3.i.i, null
  %i.bg = icmp eq ptr %i.bd, null                 ; 3 uses
  %or.cond.i45.i = select i1 %i.bf, i1 true, i1 %i.bg
  br i1 %or.cond.i45.i, label %_ZN11duckdb_zstdL19ZSTDMT_isOverlappedENS_8buffer_sENS_7range_tE.exit50.thread.i, label %_ZN11duckdb_zstdL19ZSTDMT_isOverlappedENS_8buffer_sENS_7range_tE.exit50.i

_ZN11duckdb_zstdL19ZSTDMT_isOverlappedENS_8buffer_sENS_7range_tE.exit50.i: ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.am
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i.i, i64 %.sroa.4.3.i.i
  %i.bj = icmp samesign eq i64 %i.am, 0
  %i.bk = icmp samesign eq i64 %.sroa.4.3.i.i, 0
  %or.cond19.not.i46.not84.i = select i1 %i.bj, i1 true, i1 %i.bk
  %i.bl = icmp uge ptr %i.be, %i.bi
  %i.bm = icmp uge ptr %.sroa.0.3.i.i, %i.bh
  %.not82.i = select i1 %or.cond19.not.i46.not84.i, i1 true, i1 %i.bl
  %narrow.i47.not.i = select i1 %.not82.i, i1 true, i1 %i.bm
  br i1 %narrow.i47.not.i, label %_ZN11duckdb_zstdL19ZSTDMT_isOverlappedENS_8buffer_sENS_7range_tE.exit50.thread.i, label %_ZN11duckdb_zstdL19ZSTDMT_isOverlappedENS_8buffer_sENS_7range_tE.exit50.i._ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exitthread-pre-split_crit_edge

_ZN11duckdb_zstdL19ZSTDMT_isOverlappedENS_8buffer_sENS_7range_tE.exit50.i._ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exitthread-pre-split_crit_edge: ; preds = %_ZN11duckdb_zstdL19ZSTDMT_isOverlappedENS_8buffer_sENS_7range_tE.exit50.i
  %.pr.pre = load ptr, ptr %i.l, align 8, !tbaa !154
  br label %_ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit

_ZN11duckdb_zstdL19ZSTDMT_isOverlappedENS_8buffer_sENS_7range_tE.exit50.thread.i: ; preds = %_ZN11duckdb_zstdL19ZSTDMT_isOverlappedENS_8buffer_sENS_7range_tE.exit50.i, %bb.i
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %29 = load i32, ptr %28, align 8, !tbaa !128
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %.critedge.preheader.i51.i, label %_ZN11duckdb_zstdL25ZSTDMT_waitForLdmCompleteEPNS_13ZSTDMT_CCtx_sENS_8buffer_sE.exit69.i

.critedge.preheader.i51.i:                        ; preds = %_ZN11duckdb_zstdL19ZSTDMT_isOverlappedENS_8buffer_sENS_7range_tE.exit50.thread.i
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 2784
  %.sroa.0.0.copyload.i52.i = load ptr, ptr %31, align 8, !tbaa !148 ; 2 uses
  %.sroa.2.0..sroa_idx.i53.i = getelementptr inbounds nuw i8, ptr %0, i64 2792
  %.sroa.2.0.copyload.i54.i = load ptr, ptr %.sroa.2.0..sroa_idx.i53.i, align 8, !tbaa !148 ; 2 uses
  %.sroa.3.0..sroa_idx.i55.i = getelementptr inbounds nuw i8, ptr %0, i64 2800
  %.sroa.3.0.copyload.i56.i = load ptr, ptr %.sroa.3.0..sroa_idx.i55.i, align 8, !tbaa !148 ; 2 uses
  %.sroa.4.0..sroa_idx.i57.i = getelementptr inbounds nuw i8, ptr %0, i64 2808
  %.sroa.4.0.copyload.i58.i = load i32, ptr %.sroa.4.0..sroa_idx.i57.i, align 8, !tbaa !3 ; 3 uses
  %32 = icmp eq ptr %.sroa.3.0.copyload.i56.i, null
  %or.cond.i.i.i59.i = select i1 %32, i1 true, i1 %i.bg
  %33 = icmp eq ptr %.sroa.2.0.copyload.i54.i, null
  %or.cond.i12.i.i60.i = select i1 %33, i1 true, i1 %i.bg
  %34 = zext i32 %.sroa.4.0.copyload.i58.i to i64
  %35 = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i54.i, i64 %34 ; 2 uses
  %36 = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.am ; 2 uses
  %37 = icmp samesign eq i64 %i.am, 0             ; 2 uses
  %38 = icmp eq ptr %.sroa.0.0.copyload.i52.i, %35
  %39 = icmp uge ptr %i.be, %.sroa.0.0.copyload.i52.i
  %40 = icmp uge ptr %35, %36
  br i1 %or.cond.i.i.i59.i, label %_ZN11duckdb_zstdL24ZSTDMT_doesOverlapWindowENS_8buffer_sENS_13ZSTD_window_tE.exit.thread.sink.split.i67.i, label %_ZN11duckdb_zstdL19ZSTDMT_isOverlappedENS_8buffer_sENS_7range_tE.exit50.thread.i.a

_ZN11duckdb_zstdL19ZSTDMT_isOverlappedENS_8buffer_sENS_7range_tE.exit50.thread.i.a: ; preds = %.critedge.preheader.i51.i
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3  ; 3 uses
  %41 = zext i32 %i.bo to i64
  %42 = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i56.i, i64 %41 ; 2 uses
  %43 = sub i32 %.sroa.4.0.copyload.i58.i, %i.bo
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds nuw i8, ptr %42, i64 %44
  %i.bp = icmp eq i32 %.sroa.4.0.copyload.i58.i, %i.bo
  %or.cond19.not.i.not25.i.i64.i = select i1 %37, i1 true, i1 %i.bp
  %46 = icmp uge ptr %i.be, %45
  %47 = icmp uge ptr %42, %36
  %.not22.i.i65.i = select i1 %or.cond19.not.i.not25.i.i64.i, i1 true, i1 %46
  %narrow.i.not.i.i66.i = select i1 %.not22.i.i65.i, i1 true, i1 %47
  tail call void @llvm.assume(i1 %narrow.i.not.i.i66.i)
  br label %_ZN11duckdb_zstdL24ZSTDMT_doesOverlapWindowENS_8buffer_sENS_13ZSTD_window_tE.exit.thread.sink.split.i67.i

_ZN11duckdb_zstdL24ZSTDMT_doesOverlapWindowENS_8buffer_sENS_13ZSTD_window_tE.exit.thread.sink.split.i67.i: ; preds = %_ZN11duckdb_zstdL19ZSTDMT_isOverlappedENS_8buffer_sENS_7range_tE.exit50.thread.i.a, %.critedge.preheader.i51.i
  %48 = select i1 %or.cond.i12.i.i60.i, i1 true, i1 %37
  %49 = select i1 %48, i1 true, i1 %38
  %50 = select i1 %49, i1 true, i1 %39
  %brmerge18.i68.i = select i1 %50, i1 true, i1 %40
  tail call void @llvm.assume(i1 %brmerge18.i68.i)
  br label %_ZN11duckdb_zstdL25ZSTDMT_waitForLdmCompleteEPNS_13ZSTDMT_CCtx_sENS_8buffer_sE.exit69.i

_ZN11duckdb_zstdL25ZSTDMT_waitForLdmCompleteEPNS_13ZSTDMT_CCtx_sENS_8buffer_sE.exit69.i: ; preds = %_ZN11duckdb_zstdL24ZSTDMT_doesOverlapWindowENS_8buffer_sENS_13ZSTD_window_tE.exit.thread.sink.split.i67.i, %_ZN11duckdb_zstdL19ZSTDMT_isOverlappedENS_8buffer_sENS_7range_tE.exit50.thread.i
  store ptr %i.be, ptr %i.l, align 8, !tbaa !38
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 %i.am, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !39
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 0, ptr %51, align 8, !tbaa !86
  br label %_ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit

_ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit: ; preds = %_ZN11duckdb_zstdL19ZSTDMT_isOverlappedENS_8buffer_sENS_7range_tE.exit50.i._ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exitthread-pre-split_crit_edge, %_ZN11duckdb_zstdL25ZSTDMT_waitForLdmCompleteEPNS_13ZSTDMT_CCtx_sENS_8buffer_sE.exit69.i
  %i.bq = phi ptr [ %i.be, %_ZN11duckdb_zstdL25ZSTDMT_waitForLdmCompleteEPNS_13ZSTDMT_CCtx_sENS_8buffer_sE.exit69.i ], [ %.pr.pre, %_ZN11duckdb_zstdL19ZSTDMT_isOverlappedENS_8buffer_sENS_7range_tE.exit50.i._ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exitthread-pre-split_crit_edge ] ; 2 uses
  %.not58 = icmp eq ptr %i.bq, null
  br i1 %.not58, label %_ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit.thread132, label %_ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit._ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit.thread_crit_edge

_ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit._ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit.thread_crit_edge: ; preds = %_ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit
  %.sroa.2.0.copyload.pre = load i64, ptr %i.g, align 8, !tbaa !39
  %.sroa.3.0.copyload.pre = load i64, ptr %i.i, align 8, !tbaa !39
  br label %_ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit.thread

_ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit.thread: ; preds = %_ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit._ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit.thread_crit_edge, %bb.d
  %.sroa.3.0.copyload = phi i64 [ %.sroa.3.0.copyload.pre, %_ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit._ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit.thread_crit_edge ], [ %i.j, %bb.d ] ; 2 uses
  %.sroa.2.0.copyload = phi i64 [ %.sroa.2.0.copyload.pre, %_ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit._ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit.thread_crit_edge ], [ %i.h, %bb.d ]
  %i.br = phi ptr [ %i.bq, %_ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit._ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit.thread_crit_edge ], [ %i.m, %bb.d ] ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !38
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sroa.3.0.copyload ; 8 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 2840
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !126
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 2832
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !125 ; 4 uses
  %i.bx = sub i64 %.sroa.2.0.copyload, %.sroa.3.0.copyload ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !122
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !86 ; 13 uses
  %i.cc = sub i64 %i.bz, %i.cb
  %..i = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 %i.cc) ; 7 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !158
  %.not.i = icmp eq i32 %i.ce, 0
  br i1 %.not.i, label %_ZN11duckdb_zstdL24findSynchronizationPointEPKNS_13ZSTDMT_CCtx_sENS_15ZSTD_inBuffer_sE.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit.thread
  %i.cf = add i64 %i.cb, %i.bx
  %i.cg = icmp ult i64 %i.cf, 131072
  %i.ch = add i64 %..i, %i.cb
  %i.ci = icmp ult i64 %i.ch, 32
  %or.cond.i = select i1 %i.cg, i1 true, i1 %i.ci
  br i1 %or.cond.i, label %_ZN11duckdb_zstdL24findSynchronizationPointEPKNS_13ZSTDMT_CCtx_sENS_15ZSTD_inBuffer_sE.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cj = icmp ult i64 %i.cb, 131072
  br i1 %i.cj, label %bb.l, label %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit66.i

bb.l:                                             ; preds = %bb.k
  %i.ck = sub nuw nsw i64 131072, %i.cb           ; 7 uses
  %i.cl = icmp samesign ult i64 %i.cb, 131041
  br i1 %i.cl, label %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit.loopexit.i, label %bb.m

_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit.loopexit.i: ; preds = %bb.l
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.ck ; 32 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -32 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !159
  %i.cp = zext i8 %i.co to i64
  %i.cq = mul i64 %i.cp, -3523014627327384477
  %i.cr = getelementptr inbounds i8, ptr %i.cm, i64 -31
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !159
  %i.ct = zext i8 %i.cs to i64
  %i.cu = add i64 %i.cq, 1663341874145258472
  %i.cv = add i64 %i.cu, %i.ct
  %i.cw = mul i64 %i.cv, -3523014627327384477
  %i.cx = getelementptr inbounds i8, ptr %i.cm, i64 -30
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !159
  %i.cz = zext i8 %i.cy to i64
  %i.da = add nuw nsw i64 %i.cz, 10
  %i.db = add i64 %i.da, %i.cw
  %i.dc = mul i64 %i.db, -3523014627327384477
  %i.dd = getelementptr inbounds i8, ptr %i.cm, i64 -29
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !159
  %i.df = zext i8 %i.de to i64
  %i.dg = add nuw nsw i64 %i.df, 10
  %i.dh = add i64 %i.dg, %i.dc
  %i.di = mul i64 %i.dh, -3523014627327384477
  %i.dj = getelementptr inbounds i8, ptr %i.cm, i64 -28
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !159
  %i.dl = zext i8 %i.dk to i64
  %i.dm = add nuw nsw i64 %i.dl, 10
  %i.dn = add i64 %i.dm, %i.di
  %i.do = mul i64 %i.dn, -3523014627327384477
  %i.dp = getelementptr inbounds i8, ptr %i.cm, i64 -27
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !159
  %i.dr = zext i8 %i.dq to i64
  %i.ds = add nuw nsw i64 %i.dr, 10
  %i.dt = add i64 %i.ds, %i.do
  %i.du = mul i64 %i.dt, -3523014627327384477
  %i.dv = getelementptr inbounds i8, ptr %i.cm, i64 -26
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !159
  %i.dx = zext i8 %i.dw to i64
  %i.dy = add nuw nsw i64 %i.dx, 10
  %i.dz = add i64 %i.dy, %i.du
  %i.ea = mul i64 %i.dz, -3523014627327384477
  %i.eb = getelementptr inbounds i8, ptr %i.cm, i64 -25
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !159
  %i.ed = zext i8 %i.ec to i64
  %i.ee = add nuw nsw i64 %i.ed, 10
  %i.ef = add i64 %i.ee, %i.ea
  %i.eg = mul i64 %i.ef, -3523014627327384477
  %i.eh = getelementptr inbounds i8, ptr %i.cm, i64 -24
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !159
  %i.ej = zext i8 %i.ei to i64
  %i.ek = add nuw nsw i64 %i.ej, 10
  %i.el = add i64 %i.ek, %i.eg
  %i.em = mul i64 %i.el, -3523014627327384477
  %i.en = getelementptr inbounds i8, ptr %i.cm, i64 -23
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !159
  %i.ep = zext i8 %i.eo to i64
  %i.eq = add nuw nsw i64 %i.ep, 10
  %i.er = add i64 %i.eq, %i.em
  %i.es = mul i64 %i.er, -3523014627327384477
  %i.et = getelementptr inbounds i8, ptr %i.cm, i64 -22
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !159
  %i.ev = zext i8 %i.eu to i64
  %i.ew = add nuw nsw i64 %i.ev, 10
  %i.ex = add i64 %i.ew, %i.es
  %i.ey = mul i64 %i.ex, -3523014627327384477
  %i.ez = getelementptr inbounds i8, ptr %i.cm, i64 -21
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !159
  %i.fb = zext i8 %i.fa to i64
  %i.fc = add nuw nsw i64 %i.fb, 10
  %i.fd = add i64 %i.fc, %i.ey
  %i.fe = mul i64 %i.fd, -3523014627327384477
  %i.ff = getelementptr inbounds i8, ptr %i.cm, i64 -20
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !159
  %i.fh = zext i8 %i.fg to i64
  %i.fi = add nuw nsw i64 %i.fh, 10
  %i.fj = add i64 %i.fi, %i.fe
  %i.fk = mul i64 %i.fj, -3523014627327384477
  %i.fl = getelementptr inbounds i8, ptr %i.cm, i64 -19
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !159
  %i.fn = zext i8 %i.fm to i64
  %i.fo = add nuw nsw i64 %i.fn, 10
  %i.fp = add i64 %i.fo, %i.fk
  %i.fq = mul i64 %i.fp, -3523014627327384477
  %i.fr = getelementptr inbounds i8, ptr %i.cm, i64 -18
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !159
  %i.ft = zext i8 %i.fs to i64
  %i.fu = add nuw nsw i64 %i.ft, 10
  %i.fv = add i64 %i.fu, %i.fq
  %i.fw = mul i64 %i.fv, -3523014627327384477
  %i.fx = getelementptr inbounds i8, ptr %i.cm, i64 -17
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !159
  %i.fz = zext i8 %i.fy to i64
  %i.ga = add nuw nsw i64 %i.fz, 10
  %i.gb = add i64 %i.ga, %i.fw
  %i.gc = mul i64 %i.gb, -3523014627327384477
  %i.gd = getelementptr inbounds i8, ptr %i.cm, i64 -16
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !159
  %i.gf = zext i8 %i.ge to i64
  %i.gg = add nuw nsw i64 %i.gf, 10
  %i.gh = add i64 %i.gg, %i.gc
  %i.gi = mul i64 %i.gh, -3523014627327384477
  %i.gj = getelementptr inbounds i8, ptr %i.cm, i64 -15
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !159
  %i.gl = zext i8 %i.gk to i64
  %i.gm = add nuw nsw i64 %i.gl, 10
  %i.gn = add i64 %i.gm, %i.gi
  %i.go = mul i64 %i.gn, -3523014627327384477
  %i.gp = getelementptr inbounds i8, ptr %i.cm, i64 -14
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !159
  %i.gr = zext i8 %i.gq to i64
  %i.gs = add nuw nsw i64 %i.gr, 10
  %i.gt = add i64 %i.gs, %i.go
  %i.gu = mul i64 %i.gt, -3523014627327384477
  %i.gv = getelementptr inbounds i8, ptr %i.cm, i64 -13
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !159
  %i.gx = zext i8 %i.gw to i64
  %i.gy = add nuw nsw i64 %i.gx, 10
  %i.gz = add i64 %i.gy, %i.gu
  %i.ha = mul i64 %i.gz, -3523014627327384477
  %i.hb = getelementptr inbounds i8, ptr %i.cm, i64 -12
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !159
  %i.hd = zext i8 %i.hc to i64
  %i.he = add nuw nsw i64 %i.hd, 10
  %i.hf = add i64 %i.he, %i.ha
  %i.hg = mul i64 %i.hf, -3523014627327384477
  %i.hh = getelementptr inbounds i8, ptr %i.cm, i64 -11
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !159
  %i.hj = zext i8 %i.hi to i64
  %i.hk = add nuw nsw i64 %i.hj, 10
  %i.hl = add i64 %i.hk, %i.hg
  %i.hm = mul i64 %i.hl, -3523014627327384477
  %i.hn = getelementptr inbounds i8, ptr %i.cm, i64 -10
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !159
  %i.hp = zext i8 %i.ho to i64
  %i.hq = add nuw nsw i64 %i.hp, 10
  %i.hr = add i64 %i.hq, %i.hm
  %i.hs = mul i64 %i.hr, -3523014627327384477
  %i.ht = getelementptr inbounds i8, ptr %i.cm, i64 -9
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !159
  %i.hv = zext i8 %i.hu to i64
  %i.hw = add nuw nsw i64 %i.hv, 10
  %i.hx = add i64 %i.hw, %i.hs
  %i.hy = mul i64 %i.hx, -3523014627327384477
  %i.hz = getelementptr inbounds i8, ptr %i.cm, i64 -8
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !159
  %i.ib = zext i8 %i.ia to i64
  %i.ic = add nuw nsw i64 %i.ib, 10
  %i.id = add i64 %i.ic, %i.hy
  %i.ie = mul i64 %i.id, -3523014627327384477
  %i.if = getelementptr inbounds i8, ptr %i.cm, i64 -7
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !159
  %i.ih = zext i8 %i.ig to i64
end_hunk_0
