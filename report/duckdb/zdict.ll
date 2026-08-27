Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/zdict?download=true
inline.NumInlined: 73
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN11duckdb_zstd28ZDICT_trainFromBuffer_legacyEPvmPKvPKmjNS_21ZDICT_legacy_params_tE:bb.a
  br i1 %.not.53.i.i.i, label %.preheader311.54.i.i.i, label %bb.ah

.preheader311.54.i.i.i:                           ; preds = %.preheader311.53.i.i.i
  %i.pm = load i32, ptr %i.fr, align 4, !tbaa !3
  %.not.54.i.i.i = icmp ult i32 %i.pm, %spec.store.select.i.i
  br i1 %.not.54.i.i.i, label %.preheader311.55.i.i.i, label %bb.ah

.preheader311.55.i.i.i:                           ; preds = %.preheader311.54.i.i.i
  %i.pn = load i32, ptr %i.fs, align 16, !tbaa !3
  %.not.55.i.i.i = icmp ult i32 %i.pn, %spec.store.select.i.i
  br i1 %.not.55.i.i.i, label %.preheader311.56.i.i.i, label %bb.ah

.preheader311.56.i.i.i:                           ; preds = %.preheader311.55.i.i.i
  %i.po = load i32, ptr %i.ft, align 4, !tbaa !3
  %.not.56.i.i.i = icmp ult i32 %i.po, %spec.store.select.i.i
  %spec.select.i.i.i = select i1 %.not.56.i.i.i, i32 6, i32 7
  br label %bb.ah

bb.ah:                                            ; preds = %.preheader311.56.i.i.i, %.preheader311.55.i.i.i, %.preheader311.54.i.i.i, %.preheader311.53.i.i.i, %.preheader311.52.i.i.i, %.preheader311.51.i.i.i, %.preheader311.50.i.i.i, %.preheader311.49.i.i.i, %.preheader311.48.i.i.i, %.preheader311.47.i.i.i, %.preheader311.46.i.i.i, %.preheader311.45.i.i.i, %.preheader311.44.i.i.i, %.preheader311.43.i.i.i, %.preheader311.42.i.i.i, %.preheader311.41.i.i.i, %.preheader311.40.i.i.i, %.preheader311.39.i.i.i, %.preheader311.38.i.i.i, %.preheader311.37.i.i.i, %.preheader311.36.i.i.i, %.preheader311.35.i.i.i, %.preheader311.34.i.i.i, %.preheader311.33.i.i.i, %.preheader311.32.i.i.i, %.preheader311.31.i.i.i, %.preheader311.30.i.i.i, %.preheader311.29.i.i.i, %.preheader311.28.i.i.i, %.preheader311.27.i.i.i, %.preheader311.26.i.i.i, %.preheader311.25.i.i.i, %.preheader311.24.i.i.i, %.preheader311.23.i.i.i, %.preheader311.22.i.i.i, %.preheader311.21.i.i.i, %.preheader311.20.i.i.i, %.preheader311.19.i.i.i, %.preheader311.18.i.i.i, %.preheader311.17.i.i.i, %.preheader311.16.i.i.i, %.preheader311.15.i.i.i, %.preheader311.14.i.i.i, %.preheader311.13.i.i.i, %.preheader311.12.i.i.i, %.preheader311.11.i.i.i, %.preheader311.10.i.i.i, %.preheader311.9.i.i.i, %.preheader311.8.i.i.i, %.preheader311.7.i.i.i, %.preheader311.6.i.i.i, %.preheader311.5.i.i.i, %.preheader311.4.i.i.i, %.preheader311.3.i.i.i, %.preheader311.2.i.i.i, %.preheader311.1.i.i.i, %.preheader311.preheader.i.i.i
  %.1221.lcssa.i.i.i = phi i32 [ 63, %.preheader311.preheader.i.i.i ], [ 24, %.preheader311.39.i.i.i ], [ 62, %.preheader311.1.i.i.i ], [ %spec.select.i.i.i, %.preheader311.56.i.i.i ], [ 61, %.preheader311.2.i.i.i ], [ 34, %.preheader311.29.i.i.i ], [ 60, %.preheader311.3.i.i.i ], [ 8, %.preheader311.55.i.i.i ], [ 59, %.preheader311.4.i.i.i ], [ 21, %.preheader311.42.i.i.i ], [ 58, %.preheader311.5.i.i.i ], [ 9, %.preheader311.54.i.i.i ], [ 57, %.preheader311.6.i.i.i ], [ 33, %.preheader311.30.i.i.i ], [ 56, %.preheader311.7.i.i.i ], [ 10, %.preheader311.53.i.i.i ], [ 55, %.preheader311.8.i.i.i ], [ 27, %.preheader311.36.i.i.i ], [ 54, %.preheader311.9.i.i.i ], [ 11, %.preheader311.52.i.i.i ], [ 53, %.preheader311.10.i.i.i ], [ 32, %.preheader311.31.i.i.i ], [ 52, %.preheader311.11.i.i.i ], [ 12, %.preheader311.51.i.i.i ], [ 51, %.preheader311.12.i.i.i ], [ 22, %.preheader311.41.i.i.i ], [ 50, %.preheader311.13.i.i.i ], [ 13, %.preheader311.50.i.i.i ], [ 49, %.preheader311.14.i.i.i ], [ 31, %.preheader311.32.i.i.i ], [ 48, %.preheader311.15.i.i.i ], [ 14, %.preheader311.49.i.i.i ], [ 47, %.preheader311.16.i.i.i ], [ 25, %.preheader311.38.i.i.i ], [ 46, %.preheader311.17.i.i.i ], [ 15, %.preheader311.48.i.i.i ], [ 45, %.preheader311.18.i.i.i ], [ 30, %.preheader311.33.i.i.i ], [ 44, %.preheader311.19.i.i.i ], [ 16, %.preheader311.47.i.i.i ], [ 43, %.preheader311.20.i.i.i ], [ 23, %.preheader311.40.i.i.i ], [ 42, %.preheader311.21.i.i.i ], [ 17, %.preheader311.46.i.i.i ], [ 41, %.preheader311.22.i.i.i ], [ 29, %.preheader311.34.i.i.i ], [ 40, %.preheader311.23.i.i.i ], [ 18, %.preheader311.45.i.i.i ], [ 39, %.preheader311.24.i.i.i ], [ 26, %.preheader311.37.i.i.i ], [ 38, %.preheader311.25.i.i.i ], [ 19, %.preheader311.44.i.i.i ], [ 37, %.preheader311.26.i.i.i ], [ 28, %.preheader311.35.i.i.i ], [ 36, %.preheader311.27.i.i.i ], [ 20, %.preheader311.43.i.i.i ], [ 35, %.preheader311.28.i.i.i ] ; 3 uses
  %i.pp = zext nneg i32 %.1221.lcssa.i.i.i to i64
  %i.pq = getelementptr i8, ptr %i.lk, i64 %i.pp
  %i.pr = getelementptr i8, ptr %i.pq, i64 -1
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !33
  %i.pt = add nuw nsw i32 %.1221.lcssa.i.i.i, 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %bb.ah
  %indvars.iv379.i.i.i = phi i32 [ %indvars.iv.next380.i.i.i, %bb.ai ], [ %i.pt, %bb.ah ] ; 3 uses
  %.0201.i.i.i = phi i32 [ %i.pz, %bb.ai ], [ %.1221.lcssa.i.i.i, %bb.ah ] ; 9 uses
  %i.pu = zext i32 %.0201.i.i.i to i64            ; 4 uses
  %i.pv = getelementptr i8, ptr %i.lk, i64 %i.pu
  %i.pw = getelementptr i8, ptr %i.pv, i64 -2
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !33
  %i.py = icmp eq i8 %i.px, %i.ps
  %i.pz = add i32 %.0201.i.i.i, -1
  %indvars.iv.next380.i.i.i = add i32 %indvars.iv379.i.i.i, -1
  br i1 %i.py, label %bb.ai, label %bb.aj, !llvm.loop !78

bb.aj:                                            ; preds = %bb.ai
  %i.qa = icmp ult i32 %.0201.i.i.i, 7
  br i1 %i.qa, label %_ZN11duckdb_zstdL16ZDICT_analyzePosEPhPKijPKvjj.exit.thread.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.fu, align 4, !tbaa !3
  %.not241343.i.i.i = icmp slt i32 %.0201.i.i.i, 7
  br i1 %.not241343.i.i.i, label %._crit_edge347.i.i.i, label %.lr.ph346.preheader.i.i.i

.lr.ph346.preheader.i.i.i:                        ; preds = %bb.ak
  %wide.trip.count381.i.i.i = zext i32 %indvars.iv379.i.i.i to i64
  %load_initial149 = load i32, ptr %scevgep148, align 8 ; 2 uses
  %i.qb = add nsw i64 %wide.trip.count381.i.i.i, -7 ; 3 uses
  %xtraiter185 = and i64 %i.qb, 1
  %i.qc = icmp eq i32 %indvars.iv379.i.i.i, 8
  br i1 %i.qc, label %.lr.ph346.i.i.i.epil.preheader, label %.lr.ph346.preheader.i.i.i.new

.lr.ph346.preheader.i.i.i.new:                    ; preds = %.lr.ph346.preheader.i.i.i
  %unroll_iter189 = and i64 %i.qb, -2
  br label %.lr.ph346.i.i.i

.lr.ph346.i.i.i:                                  ; preds = %.lr.ph346.i.i.i, %.lr.ph346.preheader.i.i.i.new
  %store_forwarded150 = phi i32 [ %load_initial149, %.lr.ph346.preheader.i.i.i.new ], [ %i.qq, %.lr.ph346.i.i.i ]
  %indvars.iv376.i.i.i = phi i64 [ 7, %.lr.ph346.preheader.i.i.i.new ], [ %indvars.iv.next377.i.i.i.1, %.lr.ph346.i.i.i ] ; 5 uses
  %niter190 = phi i64 [ 0, %.lr.ph346.preheader.i.i.i.new ], [ %niter190.next.1, %.lr.ph346.i.i.i ]
  %i.qd = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv376.i.i.i
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv376.i.i.i
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !3
  %i.qg = trunc i64 %indvars.iv376.i.i.i to i32
  %i.qh = add i32 %i.qg, -3
  %i.qi = mul i32 %i.qf, %i.qh
  %i.qj = add i32 %i.qi, %store_forwarded150      ; 2 uses
  store i32 %i.qj, ptr %i.qd, align 4, !tbaa !3
  %indvars.iv.next377.i.i.i = add nuw nsw i64 %indvars.iv376.i.i.i, 1 ; 3 uses
  %i.qk = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next377.i.i.i
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next377.i.i.i
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !3
  %i.qn = trunc i64 %indvars.iv.next377.i.i.i to i32
  %i.qo = add i32 %i.qn, -3
  %i.qp = mul i32 %i.qm, %i.qo
  %i.qq = add i32 %i.qp, %i.qj                    ; 3 uses
  store i32 %i.qq, ptr %i.qk, align 4, !tbaa !3
  %indvars.iv.next377.i.i.i.1 = add nuw nsw i64 %indvars.iv376.i.i.i, 2 ; 2 uses
  %niter190.next.1 = add i64 %niter190, 2         ; 2 uses
  %niter190.ncmp.1 = icmp eq i64 %niter190.next.1, %unroll_iter189
  br i1 %niter190.ncmp.1, label %._crit_edge347.i.i.i.loopexit.unr-lcssa, label %.lr.ph346.i.i.i, !llvm.loop !79

._crit_edge347.i.i.i.loopexit.unr-lcssa:          ; preds = %.lr.ph346.i.i.i
  %lcmp.mod187.not = icmp eq i64 %xtraiter185, 0
  br i1 %lcmp.mod187.not, label %._crit_edge347.i.i.i, label %.lr.ph346.i.i.i.epil.preheader

.lr.ph346.i.i.i.epil.preheader:                   ; preds = %._crit_edge347.i.i.i.loopexit.unr-lcssa, %.lr.ph346.preheader.i.i.i
  %store_forwarded150.epil.init = phi i32 [ %load_initial149, %.lr.ph346.preheader.i.i.i ], [ %i.qq, %._crit_edge347.i.i.i.loopexit.unr-lcssa ]
  %indvars.iv376.i.i.i.epil.init = phi i64 [ 7, %.lr.ph346.preheader.i.i.i ], [ %indvars.iv.next377.i.i.i.1, %._crit_edge347.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod188 = trunc i64 %i.qb to i1
  tail call void @llvm.assume(i1 %lcmp.mod188)
  %i.qr = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv376.i.i.i.epil.init
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv376.i.i.i.epil.init
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !3
  %i.qu = trunc i64 %indvars.iv376.i.i.i.epil.init to i32
  %i.qv = add i32 %i.qu, -3
  %i.qw = mul i32 %i.qt, %i.qv
  %i.qx = add i32 %i.qw, %store_forwarded150.epil.init
  store i32 %i.qx, ptr %i.qr, align 4, !tbaa !3
  br label %._crit_edge347.i.i.i

._crit_edge347.i.i.i:                             ; preds = %.lr.ph346.i.i.i.epil.preheader, %._crit_edge347.i.i.i.loopexit.unr-lcssa, %bb.ak
  br i1 %i.dn, label %bb.al, label %._crit_edge347._crit_edge.i.i.i

._crit_edge347._crit_edge.i.i.i:                  ; preds = %._crit_edge347.i.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pu
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !3
  br label %bb.am

bb.al:                                            ; preds = %._crit_edge347.i.i.i
  %i.qy = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pu
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !3  ; 3 uses
  %i.rb = uitofp i32 %i.ra to double
  %i.rc = uitofp i32 %.0201.i.i.i to double
  %i.rd = fdiv double %i.rb, %i.rc
  %i.re = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qy, ptr noundef nonnull @.str.36, i32 noundef %i.li, i32 noundef %.0201.i.i.i, i32 noundef %i.ra, double noundef %i.rd) #17 ; 0 uses
  %i.rf = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.rg = tail call i32 @fflush(ptr noundef %i.rf) ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge347._crit_edge.i.i.i
  %i.rh = phi i32 [ %.pre.i.i.i, %._crit_edge347._crit_edge.i.i.i ], [ %i.ra, %bb.al ] ; 4 uses
  %i.ri = icmp ult i32 %.2233.lcssa.i.i.i, %indvars.iv390.i.i.i
  br i1 %i.ri, label %.lr.ph354.preheader.i.i.i, label %_ZN11duckdb_zstdL16ZDICT_analyzePosEPhPKijPKvjj.exit.i.i

.lr.ph354.preheader.i.i.i:                        ; preds = %bb.am
  %i.rj = zext i32 %.2233.lcssa.i.i.i to i64
  br label %.lr.ph354.i.i.i

.lr.ph354.i.i.i:                                  ; preds = %._crit_edge351.i.i.i, %.lr.ph354.preheader.i.i.i
  %indvars.iv386.i.i.i = phi i64 [ %i.rj, %.lr.ph354.preheader.i.i.i ], [ %indvars.iv.next387.i.i.i, %._crit_edge351.i.i.i ] ; 2 uses
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv386.i.i.i
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !3  ; 3 uses
  %i.rm = zext i32 %i.rl to i64                   ; 3 uses
  %i.rn = icmp eq i64 %i.rm, %i.lj
  br i1 %i.rn, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.lr.ph354.i.i.i
  %i.ro = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.rm ; 2 uses
  %.011.val21.i297.i.i.i = load i64, ptr %i.ro, align 1, !tbaa !14 ; 2 uses
  %.012.val22.i298.i.i.i = load i64, ptr %i.lk, align 1, !tbaa !14 ; 2 uses
  %.not23.i299.i.i.i = icmp eq i64 %.011.val21.i297.i.i.i, %.012.val22.i298.i.i.i
  br i1 %.not23.i299.i.i.i, label %.lr.ph.i303.i.i.i, label %_ZN11duckdb_zstdL11ZDICT_countEPKvS1_.exit309.i.i.i

.lr.ph.i303.i.i.i:                                ; preds = %bb.an, %.lr.ph.i303.i.i.i
  %.01125.i304.i.i.i = phi ptr [ %i.rq, %.lr.ph.i303.i.i.i ], [ %i.ro, %bb.an ]
  %.01224.i305.i.i.i = phi ptr [ %i.rp, %.lr.ph.i303.i.i.i ], [ %i.lk, %bb.an ]
  %i.rp = getelementptr inbounds nuw i8, ptr %.01224.i305.i.i.i, i64 8 ; 3 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.01125.i304.i.i.i, i64 8 ; 2 uses
  %.011.val.i306.i.i.i = load i64, ptr %i.rq, align 1, !tbaa !14 ; 2 uses
  %.012.val.i307.i.i.i = load i64, ptr %i.rp, align 1, !tbaa !14 ; 2 uses
  %.not.i308.i.i.i = icmp eq i64 %.011.val.i306.i.i.i, %.012.val.i307.i.i.i
  br i1 %.not.i308.i.i.i, label %.lr.ph.i303.i.i.i, label %_ZN11duckdb_zstdL11ZDICT_countEPKvS1_.exit309.i.i.i

_ZN11duckdb_zstdL11ZDICT_countEPKvS1_.exit309.i.i.i: ; preds = %.lr.ph.i303.i.i.i, %bb.an
  %.012.lcssa.i300.i.i.i = phi ptr [ %i.lk, %bb.an ], [ %i.rp, %.lr.ph.i303.i.i.i ]
  %.011.val.lcssa.i301.i.i.i = phi i64 [ %.011.val21.i297.i.i.i, %bb.an ], [ %.011.val.i306.i.i.i, %.lr.ph.i303.i.i.i ]
  %.012.val.lcssa.i302.i.i.i = phi i64 [ %.012.val22.i298.i.i.i, %bb.an ], [ %.012.val.i307.i.i.i, %.lr.ph.i303.i.i.i ]
  %i.rr = xor i64 %.012.val.lcssa.i302.i.i.i, %.011.val.lcssa.i301.i.i.i
  %i.rs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.rr, i1 true)
  %i.rt = lshr i64 %i.rs, 3
  %i.ru = getelementptr inbounds nuw i8, ptr %.012.lcssa.i300.i.i.i, i64 %i.rt
  %i.rv = ptrtoint ptr %i.ru to i64
  %i.rw = sub i64 %i.rv, %i.ll
  %i.rx = trunc i64 %i.rw to i32
  %spec.select250.i.i.i = tail call i32 @llvm.umin.i32(i32 %.0201.i.i.i, i32 %i.rx)
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN11duckdb_zstdL11ZDICT_countEPKvS1_.exit309.i.i.i, %.lr.ph354.i.i.i
  %.0.i.i.i = phi i32 [ %spec.select250.i.i.i, %_ZN11duckdb_zstdL11ZDICT_countEPKvS1_.exit309.i.i.i ], [ %.0201.i.i.i, %.lr.ph354.i.i.i ] ; 2 uses
  %i.ry = add i32 %.0.i.i.i, %i.rl
  %i.rz = icmp ult i32 %i.rl, %i.ry
  br i1 %i.rz, label %.lr.ph350.preheader.i.i.i, label %._crit_edge351.i.i.i

.lr.ph350.preheader.i.i.i:                        ; preds = %bb.ao
  %scevgep.i.i.i = getelementptr i8, ptr %i.aw, i64 %i.rm
  %i.sa = add i32 %.0.i.i.i, -1
  %i.sb = zext i32 %i.sa to i64
  %i.sc = add nuw nsw i64 %i.sb, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i.i.i, i8 1, i64 %i.sc, i1 false), !tbaa !33
  br label %._crit_edge351.i.i.i

._crit_edge351.i.i.i:                             ; preds = %.lr.ph350.preheader.i.i.i, %bb.ao
  %indvars.iv.next387.i.i.i = add nuw nsw i64 %indvars.iv386.i.i.i, 1 ; 2 uses
  %exitcond393.not.i.i.i = icmp eq i64 %indvars.iv.next387.i.i.i, %i.lm
  br i1 %exitcond393.not.i.i.i, label %_ZN11duckdb_zstdL16ZDICT_analyzePosEPhPKijPKvjj.exit.i.i, label %.lr.ph354.i.i.i, !llvm.loop !80

_ZN11duckdb_zstdL16ZDICT_analyzePosEPhPKijPKvjj.exit.thread.i.i: ; preds = %.lr.ph357.i.i.i.prol.loopexit, %.lr.ph357.i.i.i, %bb.aj, %.preheader.i.i.i, %.lr.ph360.preheader.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.sd = add i32 %.097152.i.i, 1
  br label %bb.au, !llvm.loop !66

_ZN11duckdb_zstdL16ZDICT_analyzePosEPhPKijPKvjj.exit.i.i: ; preds = %._crit_edge351.i.i.i, %bb.am
  %i.se = shl nuw i64 %i.pu, 32
  %i.sf = zext i32 %i.li to i64
  %i.sg = or disjoint i64 %i.se, %i.sf            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.sh = tail call fastcc noundef i32 @_ZN11duckdb_zstdL14ZDICT_tryMergeEPNS_8dictItemES0_jPKv(ptr noundef nonnull %i.x, i64 %i.sg, i32 %i.rh, i32 noundef 0, ptr noundef nonnull readonly %i.o) ; 4 uses
  %.not.i113.i.i = icmp eq i32 %i.sh, 0
  br i1 %.not.i113.i.i, label %bb.ap, label %.preheader.i114.preheader.i.i

.preheader.i114.preheader.i.i:                    ; preds = %_ZN11duckdb_zstdL16ZDICT_analyzePosEPhPKijPKvjj.exit.i.i
  %i.si = zext i32 %i.sh to i64                   ; 2 uses
  %i.sj = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.si ; 2 uses
  %.sroa.08.0.copyload.i144.i.i = load i64, ptr %i.sj, align 4
  %.sroa.29.0..sroa_idx.i145.i.i = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %.sroa.29.0.copyload.i146.i.i = load i32, ptr %.sroa.29.0..sroa_idx.i145.i.i, align 4, !tbaa !3
  %i.sk = tail call fastcc noundef i32 @_ZN11duckdb_zstdL14ZDICT_tryMergeEPNS_8dictItemES0_jPKv(ptr noundef nonnull %i.x, i64 %.sroa.08.0.copyload.i144.i.i, i32 %.sroa.29.0.copyload.i146.i.i, i32 noundef %i.sh, ptr noundef nonnull readonly %i.o) ; 2 uses
  %.not47.i147.i.i = icmp eq i32 %i.sk, 0
  br i1 %.not47.i147.i.i, label %_ZN11duckdb_zstdL20ZDICT_insertDictItemEPNS_8dictItemEjS0_PKv.exit.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i114.preheader.i.i, %_ZN11duckdb_zstdL20ZDICT_removeDictItemEPNS_8dictItemEj.exit.i.i.i
  %i.sl = phi i32 [ %i.sx, %_ZN11duckdb_zstdL20ZDICT_removeDictItemEPNS_8dictItemEj.exit.i.i.i ], [ %i.sk, %.preheader.i114.preheader.i.i ] ; 3 uses
  %i.sm = phi i64 [ %i.sv, %_ZN11duckdb_zstdL20ZDICT_removeDictItemEPNS_8dictItemEj.exit.i.i.i ], [ %i.si, %.preheader.i114.preheader.i.i ]
  %.03948.i148.i.i = phi i32 [ %i.sl, %_ZN11duckdb_zstdL20ZDICT_removeDictItemEPNS_8dictItemEj.exit.i.i.i ], [ %i.sh, %.preheader.i114.preheader.i.i ] ; 2 uses
  %i.sn = load i32, ptr %i.x, align 4, !tbaa !59  ; 2 uses
  %i.so = add i32 %i.sn, -1                       ; 2 uses
  %i.sp = icmp ult i32 %.03948.i148.i.i, %i.so
  br i1 %i.sp, label %.lr.ph.preheader.i.i.i.i, label %_ZN11duckdb_zstdL20ZDICT_removeDictItemEPNS_8dictItemEj.exit.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader.i.i.i.i
  %i.sq = mul nuw nsw i64 %i.sm, 12
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.x, i64 %i.sq ; 2 uses
  %scevgep12.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 12
  %reass.sub = sub i32 %i.sn, %.03948.i148.i.i
  %i.sr = add i32 %reass.sub, -2
  %i.ss = zext i32 %i.sr to i64
  %i.st = mul nuw nsw i64 %i.ss, 12
  %i.su = add nuw nsw i64 %i.st, 12
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(1) %scevgep12.i.i.i.i, i64 %i.su, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.x, align 4, !tbaa !59
  %.pre14.i.i.i.i = add i32 %.pre.i.i.i.i, -1
  br label %_ZN11duckdb_zstdL20ZDICT_removeDictItemEPNS_8dictItemEj.exit.i.i.i

_ZN11duckdb_zstdL20ZDICT_removeDictItemEPNS_8dictItemEj.exit.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i, %.preheader.i.i.i.i
  %.pre-phi.i.i.i.i = phi i32 [ %.pre14.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.so, %.preheader.i.i.i.i ]
  store i32 %.pre-phi.i.i.i.i, ptr %i.x, align 4, !tbaa !59
  %i.sv = zext i32 %i.sl to i64                   ; 2 uses
  %i.sw = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.sv ; 2 uses
  %.sroa.08.0.copyload.i.i.i = load i64, ptr %i.sw, align 4
  %.sroa.29.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %.sroa.29.0.copyload.i.i.i = load i32, ptr %.sroa.29.0..sroa_idx.i.i.i, align 4, !tbaa !3
  %i.sx = tail call fastcc noundef i32 @_ZN11duckdb_zstdL14ZDICT_tryMergeEPNS_8dictItemES0_jPKv(ptr noundef nonnull %i.x, i64 %.sroa.08.0.copyload.i.i.i, i32 %.sroa.29.0.copyload.i.i.i, i32 noundef %i.sl, ptr noundef nonnull readonly %i.o) ; 2 uses
  %.not47.i.i.i = icmp eq i32 %i.sx, 0
  br i1 %.not47.i.i.i, label %_ZN11duckdb_zstdL20ZDICT_insertDictItemEPNS_8dictItemEjS0_PKv.exit.i.i, label %.preheader.i.i.i.i, !llvm.loop !81

bb.ap:                                            ; preds = %_ZN11duckdb_zstdL16ZDICT_analyzePosEPhPKijPKvjj.exit.i.i
  %i.sy = load i32, ptr %i.x, align 4, !tbaa !59
  %spec.select.i115.i.i = tail call i32 @llvm.umin.i32(i32 %i.sy, i32 %i.fv) ; 4 uses
  %.03849.i.i.i = add i32 %spec.select.i115.i.i, -1 ; 2 uses
  %i.sz = zext i32 %.03849.i.i.i to i64
  %i.ta = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.sz ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !62
  %i.td = icmp ult i32 %i.tc, %i.rh
  br i1 %i.td, label %.lr.ph.i117.i.i, label %._crit_edge.i116.i.i

.lr.ph.i117.i.i:                                  ; preds = %bb.ap, %.lr.ph.i117.i.i
  %i.te = phi ptr [ %i.ti, %.lr.ph.i117.i.i ], [ %i.ta, %bb.ap ]
  %.03851.i.i.i = phi i32 [ %.038.i.i.i, %.lr.ph.i117.i.i ], [ %.03849.i.i.i, %bb.ap ] ; 3 uses
  %.038.in50.i.i.i = phi i32 [ %.03851.i.i.i, %.lr.ph.i117.i.i ], [ %spec.select.i115.i.i, %bb.ap ]
  %i.tf = zext i32 %.038.in50.i.i.i to i64
  %i.tg = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.tf
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.tg, ptr noundef nonnull align 4 dereferenceable(12) %i.te, i64 12, i1 false), !tbaa.struct !82
  %.038.i.i.i = add i32 %.03851.i.i.i, -1         ; 2 uses
  %i.th = zext i32 %.038.i.i.i to i64
  %i.ti = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.th ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 8
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !62
  %i.tl = icmp ult i32 %i.tk, %i.rh
  br i1 %i.tl, label %.lr.ph.i117.i.i, label %._crit_edge.i116.i.i, !llvm.loop !83

._crit_edge.i116.i.i:                             ; preds = %.lr.ph.i117.i.i, %bb.ap
  %.038.in.lcssa.i.i.i = phi i32 [ %spec.select.i115.i.i, %bb.ap ], [ %.03851.i.i.i, %.lr.ph.i117.i.i ]
  %i.tm = zext i32 %.038.in.lcssa.i.i.i to i64
  %i.tn = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.tm ; 2 uses
  store i64 %i.sg, ptr %i.tn, align 4
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  store i32 %i.rh, ptr %.sroa.3.0..sroa_idx.i.i.i, align 4, !tbaa !3
  %i.to = add nuw i32 %spec.select.i115.i.i, 1
  store i32 %i.to, ptr %i.x, align 4, !tbaa !59
  br label %_ZN11duckdb_zstdL20ZDICT_insertDictItemEPNS_8dictItemEjS0_PKv.exit.i.i

_ZN11duckdb_zstdL20ZDICT_insertDictItemEPNS_8dictItemEjS0_PKv.exit.i.i: ; preds = %_ZN11duckdb_zstdL20ZDICT_removeDictItemEPNS_8dictItemEj.exit.i.i.i, %._crit_edge.i116.i.i, %.preheader.i114.preheader.i.i
  %i.tp = add i32 %.0201.i.i.i, %.097152.i.i      ; 4 uses
  br i1 %i.ax, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %_ZN11duckdb_zstdL20ZDICT_insertDictItemEPNS_8dictItemEjS0_PKv.exit.i.i
  %i.tq = tail call i64 @clock() #16
  %i.tr = sub nsw i64 %i.tq, %.0101150.i.i
  %i.ts = icmp sgt i64 %i.tr, 300000
  br i1 %i.ts, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.tt = tail call i64 @clock() #16
  %i.tu = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.tv = uitofp i32 %i.tp to double
  %i.tw = fdiv double %i.tv, %i.fw
  %i.tx = fmul double %i.tw, 1.000000e+02
  %i.ty = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tu, ptr noundef nonnull @.str.33, double noundef %i.tx) #17 ; 0 uses
  %i.tz = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ua = tail call i32 @fflush(ptr noundef %i.tz) ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.1102.i.i = phi i64 [ %i.tt, %bb.ar ], [ %.0101150.i.i, %bb.aq ] ; 2 uses
  br i1 %i.dn, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ub = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.uc = tail call i32 @fflush(ptr noundef %i.ub) ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %_ZN11duckdb_zstdL20ZDICT_insertDictItemEPNS_8dictItemEjS0_PKv.exit.i.i, %_ZN11duckdb_zstdL16ZDICT_analyzePosEPhPKijPKvjj.exit.thread.i.i, %bb.p
  %.3.i.i = phi i64 [ %.0101150.i.i, %bb.p ], [ %.0101150.i.i, %_ZN11duckdb_zstdL16ZDICT_analyzePosEPhPKijPKvjj.exit.thread.i.i ], [ %.1102.i.i, %bb.at ], [ %.1102.i.i, %bb.as ], [ %.0101150.i.i, %_ZN11duckdb_zstdL20ZDICT_insertDictItemEPNS_8dictItemEjS0_PKv.exit.i.i ]
  %.1.i.i = phi i32 [ %i.ga, %bb.p ], [ %i.sd, %_ZN11duckdb_zstdL16ZDICT_analyzePosEPhPKijPKvjj.exit.thread.i.i ], [ %i.tp, %bb.at ], [ %i.tp, %bb.as ], [ %i.tp, %_ZN11duckdb_zstdL20ZDICT_insertDictItemEPNS_8dictItemEjS0_PKv.exit.i.i ] ; 2 uses
  %i.ud = zext i32 %.1.i.i to i64                 ; 2 uses
  %i.ue = icmp samesign ugt i64 %.095.lcssa.i.i, %i.ud
  br i1 %i.ue, label %bb.o, label %_ZN11duckdb_zstdL24ZDICT_trainBuffer_legacyEPNS_8dictItemEjPKvmPKmjjj.exit.loopexit.i

_ZN11duckdb_zstdL24ZDICT_trainBuffer_legacyEPNS_8dictItemEjPKvmPKmjjj.exit.loopexit.i: ; preds = %bb.au
  %.pre.pre.i = load i32, ptr %i.x, align 4, !tbaa !59
  br label %_ZN11duckdb_zstdL24ZDICT_trainBuffer_legacyEPNS_8dictItemEjPKvmPKmjjj.exit.i

_ZN11duckdb_zstdL24ZDICT_trainBuffer_legacyEPNS_8dictItemEjPKvmPKmjjj.exit.i: ; preds = %_ZN11duckdb_zstdL24ZDICT_trainBuffer_legacyEPNS_8dictItemEjPKvmPKmjjj.exit.loopexit.i, %.thread.i.i, %bb.k, %bb.g
  %.pre.i = phi i32 [ %.pre.pre.i, %_ZN11duckdb_zstdL24ZDICT_trainBuffer_legacyEPNS_8dictItemEjPKvmPKmjjj.exit.loopexit.i ], [ 1, %bb.g ], [ 1, %bb.k ], [ 1, %.thread.i.i ] ; 9 uses
  tail call void @free(ptr noundef %i.as) #16
  tail call void @free(ptr noundef %i.au) #16
  tail call void @free(ptr noundef %i.aw) #16
  %i.uf = icmp ugt i32 %.sroa.3.0.copyload, 2
  br i1 %i.uf, label %bb.av, label %.critedge179.i

bb.av:                                            ; preds = %_ZN11duckdb_zstdL24ZDICT_trainBuffer_legacyEPNS_8dictItemEjPKvmPKmjjj.exit.i
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %.pre.i, i32 25) ; 3 uses
  %i.ug = icmp ugt i32 %.pre.i, 1
  br i1 %i.ug, label %.lr.ph.preheader.i194.i, label %_ZN11duckdb_zstdL14ZDICT_dictSizeEPKNS_8dictItemE.exit224.thread.critedge.i

.lr.ph.preheader.i194.i:                          ; preds = %bb.av
  %wide.trip.count.i195.i = zext i32 %.pre.i to i64
  %i.uh = add nsw i64 %wide.trip.count.i195.i, -1 ; 2 uses
  %xtraiter193 = and i64 %i.uh, 3                 ; 3 uses
  %i.ui = add i32 %.pre.i, -2
  %i.uj = icmp ult i32 %i.ui, 3
  br i1 %i.uj, label %.lr.ph.i196.i.epil.preheader, label %.lr.ph.preheader.i194.i.new

.lr.ph.preheader.i194.i.new:                      ; preds = %.lr.ph.preheader.i194.i
  %unroll_iter198 = and i64 %i.uh, -4
  br label %.lr.ph.i196.i

.lr.ph.i196.i:                                    ; preds = %.lr.ph.i196.i, %.lr.ph.preheader.i194.i.new
  %indvars.iv.i197.i = phi i64 [ 1, %.lr.ph.preheader.i194.i.new ], [ %indvars.iv.next.i198.i.3, %.lr.ph.i196.i ] ; 5 uses
  %.08.i.i = phi i32 [ 0, %.lr.ph.preheader.i194.i.new ], [ %i.uz, %.lr.ph.i196.i ]
  %niter199 = phi i64 [ 0, %.lr.ph.preheader.i194.i.new ], [ %niter199.next.3, %.lr.ph.i196.i ]
  %i.uk = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i197.i
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 4
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !61
  %i.un = add i32 %i.um, %.08.i.i
  %i.uo = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i197.i
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !61
  %i.ur = add i32 %i.uq, %i.un
  %i.us = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i197.i
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 28
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !61
  %i.uv = add i32 %i.uu, %i.ur
  %i.uw = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i197.i
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 40
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !61
  %i.uz = add i32 %i.uy, %i.uv                    ; 3 uses
  %indvars.iv.next.i198.i.3 = add nuw nsw i64 %indvars.iv.i197.i, 4 ; 2 uses
  %niter199.next.3 = add nuw i64 %niter199, 4     ; 2 uses
  %niter199.ncmp.3 = icmp eq i64 %niter199.next.3, %unroll_iter198
  br i1 %niter199.ncmp.3, label %.critedge.i.unr-lcssa, label %.lr.ph.i196.i, !llvm.loop !84

.critedge.i.unr-lcssa:                            ; preds = %.lr.ph.i196.i
  %lcmp.mod195.not = icmp eq i64 %xtraiter193, 0
  br i1 %lcmp.mod195.not, label %.critedge.i, label %.lr.ph.i196.i.epil.preheader

.lr.ph.i196.i.epil.preheader:                     ; preds = %.critedge.i.unr-lcssa, %.lr.ph.preheader.i194.i
  %indvars.iv.i197.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i194.i ], [ %indvars.iv.next.i198.i.3, %.critedge.i.unr-lcssa ]
  %.08.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i194.i ], [ %i.uz, %.critedge.i.unr-lcssa ]
  %lcmp.mod197 = icmp ne i64 %xtraiter193, 0
  tail call void @llvm.assume(i1 %lcmp.mod197)
  br label %.lr.ph.i196.i.epil

.lr.ph.i196.i.epil:                               ; preds = %.lr.ph.i196.i.epil, %.lr.ph.i196.i.epil.preheader
  %indvars.iv.i197.i.epil = phi i64 [ %indvars.iv.i197.i.epil.init, %.lr.ph.i196.i.epil.preheader ], [ %indvars.iv.next.i198.i.epil, %.lr.ph.i196.i.epil ] ; 2 uses
  %.08.i.i.epil = phi i32 [ %.08.i.i.epil.init, %.lr.ph.i196.i.epil.preheader ], [ %i.vd, %.lr.ph.i196.i.epil ]
  %epil.iter194 = phi i64 [ 0, %.lr.ph.i196.i.epil.preheader ], [ %epil.iter194.next, %.lr.ph.i196.i.epil ]
  %i.va = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i197.i.epil
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 4
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !61
end_hunk_0
