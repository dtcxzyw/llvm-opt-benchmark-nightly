inline.NumInlined: 73
inline.NumDeleted: 33
begin_hunk_0_@_ZN11duckdb_zstd28ZDICT_trainFromBuffer_legacyEPvmPKvPKmjNS_21ZDICT_legacy_params_tE:bb.a
  %spec.store.select.i203.i = select i1 %or.cond.i202.i, i8 46, i8 %i.wm
  %i.wo = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.wp = zext i8 %spec.store.select.i203.i to i32
  %fputc.i.i = tail call i32 @fputc(i32 %i.wp, ptr %i.wo) ; 0 uses
  %i.wq = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.wr = tail call i32 @fflush(ptr noundef %i.wq) ; 0 uses
  %i.ws = add nuw nsw i64 %.010.i.i, 1            ; 2 uses
  %exitcond.not.i204.i = icmp eq i64 %i.ws, %i.wk
  br i1 %exitcond.not.i204.i, label %.loopexit.i, label %.lr.ph.i201.i, !llvm.loop !87

.loopexit.i:                                      ; preds = %.lr.ph.i201.i, %bb.aw
  %i.wt = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.wu = tail call i64 @fwrite(ptr nonnull @.str.21, i64 3, i64 1, ptr %i.wt) #18 ; 0 uses
  %i.wv = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ww = tail call i32 @fflush(ptr noundef %i.wv) ; 0 uses
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i23, 1 ; 2 uses
  %exitcond.not.i25 = icmp eq i64 %indvars.iv.next.i24, %wide.trip.count.i21
  br i1 %exitcond.not.i25, label %.critedge179.i, label %.lr.ph.i22, !llvm.loop !88

.critedge179.i:                                   ; preds = %.loopexit.i, %_ZN11duckdb_zstdL24ZDICT_trainBuffer_legacyEPNS_8dictItemEjPKvmPKmjjj.exit.i
  %i.wx = icmp ugt i32 %.pre.i, 1
  br i1 %i.wx, label %.lr.ph.preheader.i217.i, label %.thread233.sink.split.i

.lr.ph.preheader.i217.i:                          ; preds = %.critedge179.i
  %wide.trip.count.i218.i = zext i32 %.pre.i to i64 ; 3 uses
  %i.wy = add nsw i64 %wide.trip.count.i218.i, -1 ; 2 uses
  %xtraiter205 = and i64 %i.wy, 3                 ; 3 uses
  %i.wz = add i32 %.pre.i, -2
  %i.xa = icmp ult i32 %i.wz, 3
  br i1 %i.xa, label %.lr.ph.i219.i.epil.preheader, label %.lr.ph.preheader.i217.i.new

.lr.ph.preheader.i217.i.new:                      ; preds = %.lr.ph.preheader.i217.i
  %unroll_iter210 = and i64 %i.wy, -4
  br label %.lr.ph.i219.i

.lr.ph.i219.i:                                    ; preds = %.lr.ph.i219.i, %.lr.ph.preheader.i217.i.new
  %indvars.iv.i220.i = phi i64 [ 1, %.lr.ph.preheader.i217.i.new ], [ %indvars.iv.next.i222.i.3, %.lr.ph.i219.i ] ; 5 uses
  %.08.i221.i = phi i32 [ 0, %.lr.ph.preheader.i217.i.new ], [ %i.xq, %.lr.ph.i219.i ]
  %niter211 = phi i64 [ 0, %.lr.ph.preheader.i217.i.new ], [ %niter211.next.3, %.lr.ph.i219.i ]
  %i.xb = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i220.i
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 4
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !61
  %i.xe = add i32 %i.xd, %.08.i221.i
  %i.xf = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i220.i
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 16
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !61
  %i.xi = add i32 %i.xh, %i.xe
  %i.xj = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i220.i
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 28
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !61
  %i.xm = add i32 %i.xl, %i.xi
  %i.xn = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i220.i
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 40
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !61
  %i.xq = add i32 %i.xp, %i.xm                    ; 3 uses
  %indvars.iv.next.i222.i.3 = add nuw nsw i64 %indvars.iv.i220.i, 4 ; 2 uses
  %niter211.next.3 = add nuw i64 %niter211, 4     ; 2 uses
  %niter211.ncmp.3 = icmp eq i64 %niter211.next.3, %unroll_iter210
  br i1 %niter211.ncmp.3, label %_ZN11duckdb_zstdL14ZDICT_dictSizeEPKNS_8dictItemE.exit224.i.unr-lcssa, label %.lr.ph.i219.i, !llvm.loop !85

_ZN11duckdb_zstdL14ZDICT_dictSizeEPKNS_8dictItemE.exit224.i.unr-lcssa: ; preds = %.lr.ph.i219.i
  %lcmp.mod207.not = icmp eq i64 %xtraiter205, 0
  br i1 %lcmp.mod207.not, label %_ZN11duckdb_zstdL14ZDICT_dictSizeEPKNS_8dictItemE.exit224.i, label %.lr.ph.i219.i.epil.preheader

.lr.ph.i219.i.epil.preheader:                     ; preds = %_ZN11duckdb_zstdL14ZDICT_dictSizeEPKNS_8dictItemE.exit224.i.unr-lcssa, %.lr.ph.preheader.i217.i
  %indvars.iv.i220.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i217.i ], [ %indvars.iv.next.i222.i.3, %_ZN11duckdb_zstdL14ZDICT_dictSizeEPKNS_8dictItemE.exit224.i.unr-lcssa ]
  %.08.i221.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i217.i ], [ %i.xq, %_ZN11duckdb_zstdL14ZDICT_dictSizeEPKNS_8dictItemE.exit224.i.unr-lcssa ]
  %lcmp.mod209 = icmp ne i64 %xtraiter205, 0
  tail call void @llvm.assume(i1 %lcmp.mod209)
  br label %.lr.ph.i219.i.epil

.lr.ph.i219.i.epil:                               ; preds = %.lr.ph.i219.i.epil, %.lr.ph.i219.i.epil.preheader
  %indvars.iv.i220.i.epil = phi i64 [ %indvars.iv.i220.i.epil.init, %.lr.ph.i219.i.epil.preheader ], [ %indvars.iv.next.i222.i.epil, %.lr.ph.i219.i.epil ] ; 2 uses
  %.08.i221.i.epil = phi i32 [ %.08.i221.i.epil.init, %.lr.ph.i219.i.epil.preheader ], [ %i.xu, %.lr.ph.i219.i.epil ]
  %epil.iter206 = phi i64 [ 0, %.lr.ph.i219.i.epil.preheader ], [ %epil.iter206.next, %.lr.ph.i219.i.epil ]
  %i.xr = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i220.i.epil
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 4
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !61
  %i.xu = add i32 %i.xt, %.08.i221.i.epil         ; 2 uses
  %indvars.iv.next.i222.i.epil = add nuw nsw i64 %indvars.iv.i220.i.epil, 1
  %epil.iter206.next = add i64 %epil.iter206, 1   ; 2 uses
  %epil.iter206.cmp.not = icmp eq i64 %epil.iter206.next, %xtraiter205
  br i1 %epil.iter206.cmp.not, label %_ZN11duckdb_zstdL14ZDICT_dictSizeEPKNS_8dictItemE.exit224.i, label %.lr.ph.i219.i.epil, !llvm.loop !89

_ZN11duckdb_zstdL14ZDICT_dictSizeEPKNS_8dictItemE.exit224.i: ; preds = %.lr.ph.i219.i.epil, %_ZN11duckdb_zstdL14ZDICT_dictSizeEPKNS_8dictItemE.exit224.i.unr-lcssa
  %.lcssa = phi i32 [ %i.xq, %_ZN11duckdb_zstdL14ZDICT_dictSizeEPKNS_8dictItemE.exit224.i.unr-lcssa ], [ %i.xu, %.lr.ph.i219.i.epil ] ; 4 uses
  %i.xv = icmp ult i32 %.lcssa, 128
  br i1 %i.xv, label %.thread233.sink.split.i, label %bb.ax

_ZN11duckdb_zstdL14ZDICT_dictSizeEPKNS_8dictItemE.exit224.thread.critedge.i: ; preds = %bb.av
  %i.xw = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.xx = add nsw i32 %.pre.i, -1
  %i.xy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.xw, ptr noundef nonnull @.str.18, i32 noundef %i.xx, i32 noundef 0) #17 ; 0 uses
  %i.xz = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ya = tail call i32 @fflush(ptr noundef %i.xz) ; 0 uses
  %i.yb = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.yc = add nsw i32 %spec.select.i, -1
  %i.yd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yb, ptr noundef nonnull @.str.19, i32 noundef %i.yc) #17 ; 0 uses
  %i.ye = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.yf = tail call i32 @fflush(ptr noundef %i.ye) ; 0 uses
  br label %.thread233.sink.split.i

bb.ax:                                            ; preds = %_ZN11duckdb_zstdL14ZDICT_dictSizeEPKNS_8dictItemE.exit224.i
  %i.yg = zext i32 %.lcssa to i64                 ; 2 uses
  %i.yh = lshr i64 %1, 2
  %i.yi = icmp samesign ugt i64 %i.yh, %i.yg
  %brmerge239.not.i = and i1 %i.ax, %i.yi
  br i1 %brmerge239.not.i, label %bb.ay, label %.critedge181.i

bb.ay:                                            ; preds = %bb.ax
  %i.yj = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.yk = trunc i64 %1 to i32
  %i.yl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yj, ptr noundef nonnull @.str.22, i32 noundef %.lcssa, i32 noundef %i.yk) #17 ; 0 uses
  %i.ym = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.yn = tail call i32 @fflush(ptr noundef %i.ym) ; 0 uses
  %i.yo = mul i64 %1, 10
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
  br i1 %.not170266.i, label %.lr.ph270.preheader.i, label %._crit_edge271.i

.lr.ph270.preheader.i:                            ; preds = %bb.bd, %._crit_edge.i
  %wide.trip.count297.i.pre-phi = phi i64 [ %indvars.iv289.i, %._crit_edge.i ], [ %wide.trip.count.i218.i, %bb.bd ]
  %.0147.lcssa.ph324.i = phi i32 [ %.0147259.i, %._crit_edge.i ], [ %i.aac, %bb.bd ]
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
end_hunk_0
