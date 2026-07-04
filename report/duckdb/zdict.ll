inline.NumInlined: 73
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN11duckdb_zstd28ZDICT_trainFromBuffer_legacyEPvmPKvPKmjNS_21ZDICT_legacy_params_tE:bb.a
  %i.yp = icmp ult i64 %.lcssa130, %i.yo
  br i1 %i.yp, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.yq = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.yr = lshr i64 %.lcssa130, 20
  %i.ys = trunc i64 %i.yr to i32
  %i.yt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yq, ptr noundef nonnull @.str.23, i32 noundef %i.ys) #17 ; 0 uses
  %i.yu = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.yv = tail call i32 @fflush(ptr noundef %i.yu) ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.yw = icmp ugt i32 %i.al, 4
  br i1 %i.yw, label %bb.bb, label %.critedge181.i

bb.bb:                                            ; preds = %bb.ba
  %i.yx = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.yy = add i32 %i.ai, 1
  %i.yz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yx, ptr noundef nonnull @.str.24, i32 noundef %i.yy) #17 ; 0 uses
  %i.za = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.zb = tail call i32 @fflush(ptr noundef %i.za) ; 0 uses
  %i.zc = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.zd = tail call i64 @fwrite(ptr nonnull @.str.25, i64 90, i64 1, ptr %i.zc) #18 ; 0 uses
  %i.ze = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.zf = tail call i32 @fflush(ptr noundef %i.ze) ; 0 uses
  br label %.critedge181.i

.critedge181.i:                                   ; preds = %bb.bb, %bb.ba, %bb.ax
  %i.zg = mul i64 %1, 3
  %i.zh = icmp ult i64 %i.zg, %i.yg
  %i.zi = icmp ugt i32 %4, 8
  %or.cond.i = and i1 %i.zi, %i.zh
  %i.zj = icmp ugt i32 %i.ai, 1
  %or.cond7.i = select i1 %or.cond.i, i1 %i.zj, i1 false
  br i1 %or.cond7.i, label %.preheader.i, label %.lr.ph261.i.preheader

.preheader.i:                                     ; preds = %.critedge181.i, %.preheader.i
  %.0150.in.i = phi i32 [ %.0150.i, %.preheader.i ], [ %i.ai, %.critedge181.i ]
  %.0150.i = add i32 %.0150.in.i, -1              ; 3 uses
  %i.zk = lshr i32 %4, %.0150.i
  %i.zl = icmp ult i32 %i.zk, 5
  br i1 %i.zl, label %.preheader.i, label %bb.bc, !llvm.loop !90

bb.bc:                                            ; preds = %.preheader.i
  br i1 %i.ax, label %.critedge183.i, label %.lr.ph261.i.preheader

.critedge183.i:                                   ; preds = %bb.bc
  %i.zm = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.zn = trunc i64 %1 to i32
  %i.zo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zm, ptr noundef nonnull @.str.26, i32 noundef %.lcssa, i32 noundef %i.zn) #17 ; 0 uses
  %i.zp = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.zq = tail call i32 @fflush(ptr noundef %i.zp) ; 0 uses
  %i.zr = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.zs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zr, ptr noundef nonnull @.str.27, i32 noundef %.0150.i) #17 ; 0 uses
  %i.zt = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.zu = tail call i32 @fflush(ptr noundef %i.zt) ; 0 uses
  %i.zv = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.zw = tail call i64 @fwrite(ptr nonnull @.str.28, i64 54, i64 1, ptr %i.zv) #18 ; 0 uses
  %i.zx = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.zy = tail call i32 @fflush(ptr noundef %i.zx) ; 0 uses
  br label %.lr.ph261.i.preheader

.lr.ph261.i.preheader:                            ; preds = %.critedge183.i, %bb.bc, %.critedge181.i
  br label %.lr.ph261.i

.lr.ph261.i:                                      ; preds = %.lr.ph261.i.preheader, %bb.bd
  %indvars.iv289.i = phi i64 [ %indvars.iv.next290.i, %bb.bd ], [ 1, %.lr.ph261.i.preheader ] ; 4 uses
  %.0147259.i = phi i32 [ %i.aac, %bb.bd ], [ 0, %.lr.ph261.i.preheader ] ; 3 uses
  %i.zz = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv289.i
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 4
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !61
  %i.aac = add i32 %i.aab, %.0147259.i            ; 3 uses
  %i.aad = zext i32 %i.aac to i64
  %i.aae = icmp ult i64 %1, %i.aad
  br i1 %i.aae, label %._crit_edge.i, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph261.i
  %indvars.iv.next290.i = add nuw nsw i64 %indvars.iv289.i, 1 ; 2 uses
  %exitcond293.not.i = icmp eq i64 %indvars.iv.next290.i, %wide.trip.count.i218.i
  br i1 %exitcond293.not.i, label %.lr.ph270.preheader.i, label %.lr.ph261.i, !llvm.loop !91

._crit_edge.i:                                    ; preds = %.lr.ph261.i
  %.not170266.i = icmp samesign ugt i64 %indvars.iv289.i, 1
  br i1 %.not170266.i, label %._crit_edge.i..lr.ph270.preheader.i_crit_edge, label %._crit_edge271.i

._crit_edge.i..lr.ph270.preheader.i_crit_edge:    ; preds = %._crit_edge.i
  %.pre = and i64 %indvars.iv289.i, 4294967295
  br label %.lr.ph270.preheader.i

.lr.ph270.preheader.i:                            ; preds = %bb.bd, %._crit_edge.i..lr.ph270.preheader.i_crit_edge
  %wide.trip.count297.i.pre-phi = phi i64 [ %.pre, %._crit_edge.i..lr.ph270.preheader.i_crit_edge ], [ %wide.trip.count.i218.i, %bb.bd ]
  %.0147.lcssa.ph324.i = phi i32 [ %.0147259.i, %._crit_edge.i..lr.ph270.preheader.i_crit_edge ], [ %i.aac, %bb.bd ]
  %i.aaf = getelementptr inbounds nuw i8, ptr %0, i64 %1
  br label %.lr.ph270.i

.lr.ph270.i:                                      ; preds = %bb.be, %.lr.ph270.preheader.i
  %indvars.iv294.i = phi i64 [ 1, %.lr.ph270.preheader.i ], [ %indvars.iv.next295.i, %bb.be ] ; 2 uses
  %.0144268.i = phi ptr [ %i.aaf, %.lr.ph270.preheader.i ], [ %i.aal, %bb.be ]
  %i.aag = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv294.i ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 4
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !61
  %i.aaj = zext i32 %i.aai to i64                 ; 2 uses
  %i.aak = sub nsw i64 0, %i.aaj
  %i.aal = getelementptr inbounds i8, ptr %.0144268.i, i64 %i.aak ; 3 uses
  %.not169.i = icmp ult ptr %i.aal, %0
  br i1 %.not169.i, label %.thread233.sink.split.i, label %bb.be

bb.be:                                            ; preds = %.lr.ph270.i
  %i.aam = load i32, ptr %i.aag, align 4, !tbaa !59
  %i.aan = zext i32 %i.aam to i64
  %i.aao = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.aan
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aal, ptr nonnull align 1 %i.aao, i64 %i.aaj, i1 false)
  %indvars.iv.next295.i = add nuw nsw i64 %indvars.iv294.i, 1 ; 2 uses
  %exitcond298.not.i = icmp eq i64 %indvars.iv.next295.i, %wide.trip.count297.i.pre-phi
  br i1 %exitcond298.not.i, label %._crit_edge271.i, label %.lr.ph270.i, !llvm.loop !92

._crit_edge271.i:                                 ; preds = %bb.be, %._crit_edge.i
  %.0147.lcssa.ph323.i = phi i32 [ %.0147259.i, %._crit_edge.i ], [ %.0147.lcssa.ph324.i, %bb.be ]
  %i.aap = zext i32 %.0147.lcssa.ph323.i to i64
  store <2 x i32> %i.r, ptr %6, align 8, !tbaa !3
  %.sroa.6.4..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.427.0.copyload, ptr %.sroa.6.4..sroa_idx, align 8, !tbaa !3
  %i.aaq = tail call fastcc noundef i64 @_ZN11duckdb_zstdL41ZDICT_addEntropyTablesFromBuffer_advancedEPvmmPKvPKmjNS_14ZDICT_params_tE(ptr noundef %0, i64 noundef %i.aap, i64 noundef %1, ptr noundef nonnull %i.o, ptr noundef readonly %3, i32 noundef %4, ptr noundef nonnull byval(%"struct.duckdb_zstd::ZDICT_params_t") align 8 %6)
  br label %.thread233.sink.split.i

.thread233.sink.split.i:                          ; preds = %.lr.ph.i22, %.lr.ph270.i, %._crit_edge271.i, %_ZN11duckdb_zstdL14ZDICT_dictSizeEPKNS_8dictItemE.exit224.thread.critedge.i, %_ZN11duckdb_zstdL14ZDICT_dictSizeEPKNS_8dictItemE.exit224.i, %.critedge179.i, %bb.d, %bb.c
  %.8.ph.i = phi i64 [ -1, %.lr.ph270.i ], [ -34, %_ZN11duckdb_zstdL14ZDICT_dictSizeEPKNS_8dictItemE.exit224.i ], [ -34, %bb.d ], [ %i.aaq, %._crit_edge271.i ], [ -70, %bb.c ], [ -34, %_ZN11duckdb_zstdL14ZDICT_dictSizeEPKNS_8dictItemE.exit224.thread.critedge.i ], [ -34, %.critedge179.i ], [ -1, %.lr.ph.i22 ]
  tail call void @free(ptr noundef nonnull %i.x) #16
  br label %_ZN11duckdb_zstdL35ZDICT_trainFromBuffer_unsafe_legacyEPvmPKvPKmjNS_21ZDICT_legacy_params_tE.exit

_ZN11duckdb_zstdL35ZDICT_trainFromBuffer_unsafe_legacyEPvmPKvPKmjNS_21ZDICT_legacy_params_tE.exit: ; preds = %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit.i, %.thread233.sink.split.i
  %.8.i = phi i64 [ -64, %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit.i ], [ %.8.ph.i, %.thread233.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  tail call void @free(ptr noundef %i.o) #16
  br label %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit.thread

_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit.thread: ; preds = %bb.a, %bb.b, %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit, %_ZN11duckdb_zstdL35ZDICT_trainFromBuffer_unsafe_legacyEPvmPKvPKmjNS_21ZDICT_legacy_params_tE.exit
  %.0 = phi i64 [ 0, %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit ], [ %.8.i, %_ZN11duckdb_zstdL35ZDICT_trainFromBuffer_unsafe_legacyEPvmPKvPKmjNS_21ZDICT_legacy_params_tE.exit ], [ -64, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd21ZDICT_trainFromBufferEPvmPKvPKmj(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %5 = alloca %"struct.duckdb_zstd::ZDICT_fastCover_params_t", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 8, ptr %i.a, align 4, !tbaa !93
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 4, ptr %i.b, align 4, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 3, ptr %i.c, align 4, !tbaa !97
  %i.d = call noundef i64 @_ZN11duckdb_zstd39ZDICT_optimizeTrainFromBuffer_fastCoverEPvmPKvPKmjPNS_24ZDICT_fastCover_params_tE(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret i64 %i.d
}

declare noundef i64 @_ZN11duckdb_zstd39ZDICT_optimizeTrainFromBuffer_fastCoverEPvmPKvPKmjPNS_24ZDICT_fastCover_params_tE(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd32ZDICT_addEntropyTablesFromBufferEPvmmPKvPKmj(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %6 = alloca %"struct.duckdb_zstd::ZDICT_params_t", align 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  %i.a = tail call fastcc noundef i64 @_ZN11duckdb_zstdL41ZDICT_addEntropyTablesFromBuffer_advancedEPvmmPKvPKmjNS_14ZDICT_params_tE(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull byval(%"struct.duckdb_zstd::ZDICT_params_t") align 8 %6)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL41ZDICT_addEntropyTablesFromBuffer_advancedEPvmmPKvPKmjNS_14ZDICT_params_tE(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef readonly byval(%"struct.duckdb_zstd::ZDICT_params_t") align 8 captures(none) %6) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %6, align 8, !tbaa !7      ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  %i.c = select i1 %i.b, i32 3, i32 %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9    ; 2 uses
  %i.f = icmp ugt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #17 ; 0 uses
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.j = tail call i32 @fflush(ptr noundef %i.i)  ; 0 uses
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.l = tail call i64 @fwrite(ptr nonnull @.str.2, i64 16, i64 1, ptr %i.k) #18 ; 0 uses
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.n = tail call i32 @fflush(ptr noundef %i.m)  ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = add i64 %2, -8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %i.r = sub i64 0, %1
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r ; 3 uses
  %i.t = tail call fastcc noundef i64 @_ZN11duckdb_zstdL20ZDICT_analyzeEntropyEPvmiPKvPKmjS2_mj(ptr noundef nonnull %i.o, i64 noundef %i.p, i32 noundef %i.c, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %i.s, i64 noundef %1, i32 noundef %i.e) ; 3 uses
  %i.u = icmp ult i64 %i.t, -119
  %i.v = add i64 %i.t, 8                          ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.critedge
  store i32 -332356553, ptr %0, align 1, !tbaa !3
  %i.w = tail call noundef i64 @_ZN11duckdb_zstd5XXH64EPKvmy(ptr noundef nonnull %i.s, i64 noundef %1, i64 noundef 0)
  %i.x = urem i64 %i.w, 2147450880
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = add nuw nsw i32 %i.y, 32768
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !10 ; 2 uses
  %.not46 = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not46, i32 %i.z, i32 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ac, ptr %i.ad, align 1, !tbaa !3
  %i.ae = add i64 %i.v, %1                        ; 2 uses
  %i.af = icmp ult i64 %i.ae, %2
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.v
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull align 1 %i.s, i64 %1, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ah = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.ae)
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.e
  %.1 = phi i64 [ %i.ah, %bb.e ], [ %i.t, %.critedge ]
  ret i64 %.1
}

declare noundef ptr @_ZN11duckdb_zstd18ERR_getErrorStringENS_14ZSTD_ErrorCodeE(i32 noundef) local_unnamed_addr #5

declare void @_ZN11duckdb_zstd14ZSTD_getParamsEiym(ptr dead_on_unwind writable sret(%"struct.duckdb_zstd::ZSTD_parameters") align 4, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare noundef ptr @_ZN11duckdb_zstd25ZSTD_createCDict_advancedEPKvmNS_21ZSTD_dictLoadMethod_eENS_22ZSTD_dictContentType_eENS_26ZSTD_compressionParametersENS_14ZSTD_customMemE(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef byval(%"struct.duckdb_zstd::ZSTD_compressionParameters") align 8, ptr noundef byval(%"struct.duckdb_zstd::ZSTD_customMem") align 8) local_unnamed_addr #5

declare noundef ptr @_ZN11duckdb_zstd15ZSTD_createCCtxEv() local_unnamed_addr #5

declare noundef i64 @_ZN11duckdb_zstd20HUF_buildCTable_wkspEPmPKjjjPvm(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef i64 @_ZN11duckdb_zstd18FSE_normalizeCountEPsjPKjmjj(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef i64 @_ZN11duckdb_zstd20HUF_writeCTable_wkspEPvmPKmjjS0_m(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef i64 @_ZN11duckdb_zstd15FSE_writeNCountEPvmPKsjj(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef i64 @_ZN11duckdb_zstd14ZSTD_freeCDictEPNS_12ZSTD_CDict_sE(ptr noundef) local_unnamed_addr #5

declare noundef i64 @_ZN11duckdb_zstd13ZSTD_freeCCtxEPNS_11ZSTD_CCtx_sE(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

declare noundef i64 @_ZN11duckdb_zstd40ZSTD_compressBegin_usingCDict_deprecatedEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sE(ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef i64 @_ZN11duckdb_zstd29ZSTD_compressBlock_deprecatedEPNS_11ZSTD_CCtx_sEPvmPKvm(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef ptr @_ZN11duckdb_zstd16ZSTD_getSeqStoreEPKNS_11ZSTD_CCtx_sE(ptr noundef) local_unnamed_addr #5

declare noundef i32 @_ZN11duckdb_zstd15ZSTD_seqToCodesEPKNS_10seqStore_tE(ptr noundef) local_unnamed_addr #5

declare noundef i32 @_ZN11duckdb_zstd10divsufsortEPKhPiii(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @_ZN11duckdb_zstdL14ZDICT_tryMergeEPNS_8dictItemES0_jPKv(ptr nofree noundef nonnull captures(none) %0, i64 %1, i32 %2, i32 noundef %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #11 {
bb.a:
  %.sroa.0102.sroa.0.0.extract.trunc = trunc i64 %1 to i32 ; 7 uses
  %.sroa.0102.sroa.14.0.extract.shift = lshr i64 %1, 32 ; 2 uses
  %.sroa.0102.sroa.14.0.extract.trunc = trunc nuw i64 %.sroa.0102.sroa.14.0.extract.shift to i32 ; 7 uses
  %i.a = load i32, ptr %0, align 4, !tbaa !59     ; 3 uses
  %i.b = add i32 %.sroa.0102.sroa.14.0.extract.trunc, %.sroa.0102.sroa.0.0.extract.trunc ; 2 uses
  %i.c = icmp ugt i32 %i.a, 1
  br i1 %i.c, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = zext i32 %3 to i64
  %wide.trip.count = zext i32 %i.a to i64
  br label %.lr.ph

.lr.ph198:                                        ; preds = %bb.e
  %i.e = and i64 %1, 4294967295
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.h = zext i32 %3 to i64
  %wide.trip.count233 = zext i32 %i.a to i64
  br label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %i.i = icmp eq i64 %indvars.iv, %i.d
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv ; 5 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !59   ; 3 uses
  %i.l = icmp ule i32 %i.k, %.sroa.0102.sroa.0.0.extract.trunc
  %.not164 = icmp ugt i32 %i.k, %i.b
  %or.cond = select i1 %i.l, i1 true, i1 %.not164
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub nuw i32 %i.k, %.sroa.0102.sroa.0.0.extract.trunc ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !61
  %i.p = add i32 %i.o, %i.m
  store i32 %i.p, ptr %i.n, align 4, !tbaa !61
  store i32 %.sroa.0102.sroa.0.0.extract.trunc, ptr %i.j, align 4, !tbaa !59
  %i.q = mul i32 %i.m, %2
  %i.r = udiv i32 %i.q, %.sroa.0102.sroa.14.0.extract.trunc
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !62
  %i.u = lshr i32 %.sroa.0102.sroa.14.0.extract.trunc, 3
  %i.v = add i32 %i.r, %i.u
  %i.w = add i32 %i.v, %i.t                       ; 3 uses
  store i32 %i.w, ptr %i.s, align 4, !tbaa !62
  %.sroa.0102.0.copyload = load i64, ptr %i.j, align 4
  %i.x = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.x, label %.lr.ph204, label %.critedge

.lr.ph204:                                        ; preds = %bb.c, %bb.d
  %indvars.iv226 = phi i64 [ %indvars.iv.next227, %bb.d ], [ %indvars.iv, %bb.c ] ; 3 uses
  %indvars.iv.next227 = add nsw i64 %indvars.iv226, -1 ; 3 uses
  %i.y = and i64 %indvars.iv.next227, 4294967295
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !62
  %i.ac = icmp ult i32 %i.ab, %i.w
  br i1 %i.ac, label %bb.d, label %.critedge.loopexit.split.loop.exit274

bb.d:                                             ; preds = %.lr.ph204
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv226
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ad, ptr noundef nonnull align 4 dereferenceable(12) %i.z, i64 12, i1 false), !tbaa.struct !81
  %i.ae = and i64 %indvars.iv.next227, 4294967294
  %.not251 = icmp eq i64 %i.ae, 0
  br i1 %.not251, label %.critedge, label %.lr.ph204, !llvm.loop !98

.critedge.loopexit.split.loop.exit274:            ; preds = %.lr.ph204
  %i.af = trunc nuw i64 %indvars.iv226 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.critedge.loopexit.split.loop.exit274, %bb.c
  %.1.lcssa = phi i32 [ 1, %bb.c ], [ %i.af, %.critedge.loopexit.split.loop.exit274 ], [ 1, %bb.d ] ; 2 uses
  %i.ag = zext i32 %.1.lcssa to i64
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.ag ; 2 uses
  store i64 %.sroa.0102.0.copyload, ptr %i.ah, align 4
  %.sroa.24.0..sroa_idx132 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 %i.w, ptr %.sroa.24.0..sroa_idx132, align 4, !tbaa !3
  br label %.loopexit

bb.e:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph198, label %.lr.ph, !llvm.loop !99

bb.f:                                             ; preds = %.lr.ph198, %bb.o
  %indvars.iv229 = phi i64 [ 1, %.lr.ph198 ], [ %indvars.iv.next230, %bb.o ] ; 6 uses
  %i.ai = icmp eq i64 %indvars.iv229, %i.h
  br i1 %i.ai, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv229 ; 8 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !59 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !61 ; 6 uses
  %i.an = add i32 %i.am, %i.ak                    ; 2 uses
  %.not = icmp uge i32 %i.an, %.sroa.0102.sroa.0.0.extract.trunc
  %i.ao = icmp ult i32 %i.ak, %.sroa.0102.sroa.0.0.extract.trunc
  %or.cond165 = and i1 %i.ao, %.not
  br i1 %or.cond165, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ap = sub nsw i32 %i.b, %i.an                 ; 3 uses
  %i.aq = lshr i32 %.sroa.0102.sroa.14.0.extract.trunc, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.at = add i32 %i.as, %i.aq                    ; 3 uses
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !62
  %i.au = icmp sgt i32 %i.ap, 0
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.aw = add i32 %i.ap, %i.am
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !61
  %i.ax = mul i32 %i.ap, %2
  %i.ay = udiv i32 %i.ax, %.sroa.0102.sroa.14.0.extract.trunc
  %i.az = add i32 %i.ay, %i.at                    ; 2 uses
  store i32 %i.az, ptr %i.ar, align 4, !tbaa !62
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.24.0.copyload135 = phi i32 [ %i.az, %bb.i ], [ %i.at, %bb.h ] ; 2 uses
end_hunk_0
