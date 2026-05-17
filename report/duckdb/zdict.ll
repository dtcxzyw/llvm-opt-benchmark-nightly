inline.NumInlined: 73
inline.NumDeleted: 33
begin_hunk_0_@_ZN11duckdb_zstdL20ZDICT_analyzeEntropyEPvmiPKvPKmjS2_mj:bb.a
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.067.i = phi i64 [ %i.w, %.lr.ph.i ], [ %.067.i.ph, %.lr.ph.i.preheader ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  %i.v = load i64, ptr %i.u, align 8, !tbaa !14
  %i.w = add i64 %i.v, %.067.i                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit, label %.lr.ph.i, !llvm.loop !20

_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  %.06.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.t, %middle.block ], [ %i.w, %.lr.ph.i ]
  %i.x = tail call i32 @llvm.umax.i32(i32 %5, i32 1)
  %i.y = zext i32 %i.x to i64
  %i.z = udiv i64 %.06.lcssa.i, %i.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  %i.aa = icmp eq i32 %i.m, 0
  br i1 %i.aa, label %.thread, label %vector.body363

vector.body363:                                   ; preds = %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <4 x i32> splat (i32 1), ptr %i.a, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.ab, align 16, !tbaa !3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <4 x i32> splat (i32 1), ptr %i.ac, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.ad, align 16, !tbaa !3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <4 x i32> splat (i32 1), ptr %i.ae, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.af, align 16, !tbaa !3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <4 x i32> splat (i32 1), ptr %i.ag, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.ah, align 16, !tbaa !3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <4 x i32> splat (i32 1), ptr %i.ai, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.aj, align 16, !tbaa !3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <4 x i32> splat (i32 1), ptr %i.ak, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.al, align 16, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <4 x i32> splat (i32 1), ptr %i.am, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.an, align 16, !tbaa !3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store <4 x i32> splat (i32 1), ptr %i.ao, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.ap, align 16, !tbaa !3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store <4 x i32> splat (i32 1), ptr %i.aq, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.ar, align 16, !tbaa !3
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store <4 x i32> splat (i32 1), ptr %i.as, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.at, align 16, !tbaa !3
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store <4 x i32> splat (i32 1), ptr %i.au, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.av, align 16, !tbaa !3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store <4 x i32> splat (i32 1), ptr %i.aw, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.ax, align 16, !tbaa !3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  store <4 x i32> splat (i32 1), ptr %i.ay, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.az, align 16, !tbaa !3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  store <4 x i32> splat (i32 1), ptr %i.ba, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.bb, align 16, !tbaa !3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store <4 x i32> splat (i32 1), ptr %i.bc, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.bd, align 16, !tbaa !3
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  store <4 x i32> splat (i32 1), ptr %i.be, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.bf, align 16, !tbaa !3
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  store <4 x i32> splat (i32 1), ptr %i.bg, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.bh, align 16, !tbaa !3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 544
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  store <4 x i32> splat (i32 1), ptr %i.bi, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.bj, align 16, !tbaa !3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  store <4 x i32> splat (i32 1), ptr %i.bk, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.bl, align 16, !tbaa !3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  store <4 x i32> splat (i32 1), ptr %i.bm, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.bn, align 16, !tbaa !3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  store <4 x i32> splat (i32 1), ptr %i.bo, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.bp, align 16, !tbaa !3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 672
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 688
  store <4 x i32> splat (i32 1), ptr %i.bq, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.br, align 16, !tbaa !3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 720
  store <4 x i32> splat (i32 1), ptr %i.bs, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.bt, align 16, !tbaa !3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 736
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 752
  store <4 x i32> splat (i32 1), ptr %i.bu, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.bv, align 16, !tbaa !3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 784
  store <4 x i32> splat (i32 1), ptr %i.bw, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.bx, align 16, !tbaa !3
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 800
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 816
  store <4 x i32> splat (i32 1), ptr %i.by, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.bz, align 16, !tbaa !3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 832
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 848
  store <4 x i32> splat (i32 1), ptr %i.ca, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.cb, align 16, !tbaa !3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 864
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 880
  store <4 x i32> splat (i32 1), ptr %i.cc, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.cd, align 16, !tbaa !3
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 896
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 912
  store <4 x i32> splat (i32 1), ptr %i.ce, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.cf, align 16, !tbaa !3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 928
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 944
  store <4 x i32> splat (i32 1), ptr %i.cg, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.ch, align 16, !tbaa !3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 960
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 976
  store <4 x i32> splat (i32 1), ptr %i.ci, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.cj, align 16, !tbaa !3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 992
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 1008
  store <4 x i32> splat (i32 1), ptr %i.ck, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.cl, align 16, !tbaa !3
  %i.cm = sub nuw nsw i32 32, %i.m
  %wide.trip.count = zext nneg i32 %i.cm to i64   ; 7 uses
  %min.iters.check368 = icmp ult i32 %i.l, 128
  br i1 %min.iters.check368, label %.preheader274.preheader407, label %vector.ph369

vector.ph369:                                     ; preds = %vector.body363
  %n.vec371 = and i64 %wide.trip.count, 56        ; 3 uses
  br label %vector.body372

vector.body372:                                   ; preds = %vector.body372, %vector.ph369
  %index373 = phi i64 [ 0, %vector.ph369 ], [ %index.next374, %vector.body372 ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index373 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store <4 x i32> splat (i32 1), ptr %i.cn, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.co, align 16, !tbaa !3
  %index.next374 = add nuw i64 %index373, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next374, %n.vec371
  br i1 %i.cp, label %middle.block375, label %vector.body372, !llvm.loop !21

middle.block375:                                  ; preds = %vector.body372
  %cmp.n376 = icmp eq i64 %n.vec371, %wide.trip.count
  br i1 %cmp.n376, label %.preheader273.preheader, label %.preheader274.preheader407

.preheader274.preheader407:                       ; preds = %vector.body363, %middle.block375
  %indvars.iv297.ph = phi i64 [ 0, %vector.body363 ], [ %n.vec371, %middle.block375 ]
  br label %.preheader274

.preheader274:                                    ; preds = %.preheader274.preheader407, %.preheader274
  %indvars.iv297 = phi i64 [ %indvars.iv.next298, %.preheader274 ], [ %indvars.iv297.ph, %.preheader274.preheader407 ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv297
  store i32 1, ptr %i.cq, align 4, !tbaa !3
  %indvars.iv.next298 = add nuw nsw i64 %indvars.iv297, 1 ; 2 uses
  %exitcond300.not = icmp eq i64 %indvars.iv.next298, %wide.trip.count
  br i1 %exitcond300.not, label %.preheader273.preheader, label %.preheader274, !llvm.loop !22

.preheader273.preheader:                          ; preds = %.preheader274, %middle.block375
  store <4 x i32> splat (i32 1), ptr %i.e, align 16, !tbaa !3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store <4 x i32> splat (i32 1), ptr %i.cr, align 16, !tbaa !3
  %i.cs = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store <4 x i32> splat (i32 1), ptr %i.cs, align 16, !tbaa !3
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store <4 x i32> splat (i32 1), ptr %i.ct, align 16, !tbaa !3
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store <4 x i32> splat (i32 1), ptr %i.cu, align 16, !tbaa !3
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store <4 x i32> splat (i32 1), ptr %i.cv, align 16, !tbaa !3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store <4 x i32> splat (i32 1), ptr %i.cw, align 16, !tbaa !3
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store <4 x i32> splat (i32 1), ptr %i.cx, align 16, !tbaa !3
  %i.cy = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store <4 x i32> splat (i32 1), ptr %i.cy, align 16, !tbaa !3
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  store <4 x i32> splat (i32 1), ptr %i.cz, align 16, !tbaa !3
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  store <4 x i32> splat (i32 1), ptr %i.da, align 16, !tbaa !3
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  store <4 x i32> splat (i32 1), ptr %i.db, align 16, !tbaa !3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  store <4 x i32> splat (i32 1), ptr %i.dc, align 16, !tbaa !3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  store i32 1, ptr %i.dd, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.g, align 16, !tbaa !3
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store <4 x i32> splat (i32 1), ptr %i.de, align 16, !tbaa !3
  %i.df = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store <4 x i32> splat (i32 1), ptr %i.df, align 16, !tbaa !3
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store <4 x i32> splat (i32 1), ptr %i.dg, align 16, !tbaa !3
  %i.dh = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store <4 x i32> splat (i32 1), ptr %i.dh, align 16, !tbaa !3
  %i.di = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store <4 x i32> splat (i32 1), ptr %i.di, align 16, !tbaa !3
  %i.dj = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store <4 x i32> splat (i32 1), ptr %i.dj, align 16, !tbaa !3
  %i.dk = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store <4 x i32> splat (i32 1), ptr %i.dk, align 16, !tbaa !3
  %i.dl = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  store <4 x i32> splat (i32 1), ptr %i.dl, align 16, !tbaa !3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.i, i8 0, i64 4096, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i32 1, ptr %i.dm, align 16, !tbaa !3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 1, ptr %i.dn, align 16, !tbaa !3
  %i.do = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 1, ptr %i.do, align 4, !tbaa !3
  %i.dp = icmp eq i32 %2, 0
  %spec.store.select = select i1 %i.dp, i32 3, i32 %2
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @_ZN11duckdb_zstd14ZSTD_getParamsEiym(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb_zstd::ZSTD_parameters") align 4 %9, i32 noundef %spec.store.select, i64 noundef %i.z, i64 noundef %7)
  %.sroa.0229.0.copyload = load i32, ptr %9, align 4, !tbaa !3 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.5, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.5.0..sroa_idx, i64 36, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  store i32 %.sroa.0229.0.copyload, ptr %10, align 8, !tbaa !3
  %.sroa.5.0..sroa_idx231 = getelementptr inbounds nuw i8, ptr %10, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.5.0..sroa_idx231, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.5, i64 24, i1 false), !tbaa.struct !26
  %i.dq = call noundef ptr @_ZN11duckdb_zstd25ZSTD_createCDict_advancedEPKvmNS_21ZSTD_dictLoadMethod_eENS_22ZSTD_dictContentType_eENS_26ZSTD_compressionParametersENS_14ZSTD_customMemE(ptr noundef %6, i64 noundef %7, i32 noundef 1, i32 noundef 1, ptr noundef nonnull byval(%"struct.duckdb_zstd::ZSTD_compressionParameters") align 8 %10, ptr noundef nonnull byval(%"struct.duckdb_zstd::ZSTD_customMem") align 8 @_ZN11duckdb_zstdL16ZSTD_defaultCMemE) ; 23 uses
  %i.dr = call noundef ptr @_ZN11duckdb_zstd15ZSTD_createCCtxEv() ; 25 uses
  %i.ds = call noalias dereferenceable_or_null(131072) ptr @malloc(i64 noundef 131072) #15 ; 23 uses
  %i.dt = icmp ne ptr %i.dq, null
  %i.du = icmp ne ptr %i.dr, null
  %or.cond = and i1 %i.dt, %i.du
  %i.dv = icmp ne ptr %i.ds, null
  %or.cond5 = and i1 %or.cond, %i.dv
  br i1 %or.cond5, label %.preheader271, label %bb.b

.preheader271:                                    ; preds = %.preheader273.preheader
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader271
  %i.dw = shl nuw i32 1, %.sroa.0229.0.copyload
  %narrow.i = call i32 @llvm.smin.i32(i32 %i.dw, i32 131072)
  %spec.select.i = sext i32 %narrow.i to i64
  %.not63.i = icmp eq i32 %8, 0
  %i.dx = icmp ugt i32 %8, 2
  %wide.trip.count312 = zext i32 %5 to i64
  br label %bb.d

bb.b:                                             ; preds = %.preheader273.preheader
  %.not191 = icmp eq i32 %8, 0
  br i1 %.not191, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.dy = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.dz = call i64 @fwrite(ptr nonnull @.str.3, i64 19, i64 1, ptr %i.dy) #18 ; 0 uses
  %i.ea = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.eb = call i32 @fflush(ptr noundef %i.ea)     ; 0 uses
  br label %.thread

bb.d:                                             ; preds = %.lr.ph, %_ZN11duckdb_zstdL17ZDICT_countEStatsENS_13EStats_ress_tEPKNS_15ZSTD_parametersEPjS4_S4_S4_S4_PKvmj.exit
  %indvars.iv309 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next310, %_ZN11duckdb_zstdL17ZDICT_countEStatsENS_13EStats_ress_tEPKNS_15ZSTD_parametersEPjS4_S4_S4_S4_PKvmj.exit ] ; 2 uses
  %.0175281 = phi i64 [ 0, %.lr.ph ], [ %i.lm, %_ZN11duckdb_zstdL17ZDICT_countEStatsENS_13EStats_ress_tEPKNS_15ZSTD_parametersEPjS4_S4_S4_S4_PKvmj.exit ] ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv309 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !14
  %.0.i = call i64 @llvm.umin.i64(i64 %i.ed, i64 %spec.select.i) ; 2 uses
  %i.ee = call noundef i64 @_ZN11duckdb_zstd40ZSTD_compressBegin_usingCDict_deprecatedEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sE(ptr noundef %i.dr, ptr noundef %i.dq)
  %i.ef = icmp ult i64 %i.ee, -119
  br i1 %i.ef, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not63.i, label %_ZN11duckdb_zstdL17ZDICT_countEStatsENS_13EStats_ress_tEPKNS_15ZSTD_parametersEPjS4_S4_S4_S4_PKvmj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.eg = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.eh = call i64 @fwrite(ptr nonnull @.str.16, i64 48, i64 1, ptr %i.eg) #18 ; 0 uses
  %i.ei = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ej = call i32 @fflush(ptr noundef %i.ei)     ; 0 uses
  br label %_ZN11duckdb_zstdL17ZDICT_countEStatsENS_13EStats_ress_tEPKNS_15ZSTD_parametersEPjS4_S4_S4_S4_PKvmj.exit

.critedge.i:                                      ; preds = %bb.d
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 %.0175281
  %i.el = call noundef i64 @_ZN11duckdb_zstd29ZSTD_compressBlock_deprecatedEPNS_11ZSTD_CCtx_sEPvmPKvm(ptr noundef %i.dr, ptr noundef %i.ds, i64 noundef 131072, ptr noundef %i.ek, i64 noundef %.0.i) ; 2 uses
  %i.em = icmp ult i64 %i.el, -119
  br i1 %i.em, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i
  br i1 %i.dx, label %bb.h, label %_ZN11duckdb_zstdL17ZDICT_countEStatsENS_13EStats_ress_tEPKNS_15ZSTD_parametersEPjS4_S4_S4_S4_PKvmj.exit

bb.h:                                             ; preds = %bb.g
  %i.en = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.eo = trunc i64 %.0.i to i32
  %i.ep = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.en, ptr noundef nonnull @.str.17, i32 noundef %i.eo) #17 ; 0 uses
  %i.eq = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.er = call i32 @fflush(ptr noundef %i.eq)     ; 0 uses
  br label %_ZN11duckdb_zstdL17ZDICT_countEStatsENS_13EStats_ress_tEPKNS_15ZSTD_parametersEPjS4_S4_S4_S4_PKvmj.exit

bb.i:                                             ; preds = %.critedge.i
  %.not65.i = icmp eq i64 %i.el, 0
  br i1 %.not65.i, label %_ZN11duckdb_zstdL17ZDICT_countEStatsENS_13EStats_ress_tEPKNS_15ZSTD_parametersEPjS4_S4_S4_S4_PKvmj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.es = call noundef ptr @_ZN11duckdb_zstd16ZSTD_getSeqStoreEPKNS_11ZSTD_CCtx_sE(ptr noundef %i.dr) ; 9 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !27 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !32 ; 3 uses
  %i.ex = icmp ult ptr %i.eu, %i.ew
  br i1 %i.ex, label %.lr.ph.i224.preheader, label %._crit_edge.i

.lr.ph.i224.preheader:                            ; preds = %bb.j
  %i.ey = ptrtoint ptr %i.ew to i64               ; 2 uses
  %i.ez = ptrtoint ptr %i.eu to i64               ; 2 uses
  %i.fa = sub i64 %i.ey, %i.ez
  %xtraiter = and i64 %i.fa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i224.prol.loopexit, label %.lr.ph.i224.prol

.lr.ph.i224.prol:                                 ; preds = %.lr.ph.i224.preheader, %.lr.ph.i224.prol
  %.0551.i.prol = phi ptr [ %i.fg, %.lr.ph.i224.prol ], [ %i.eu, %.lr.ph.i224.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i224.prol ], [ 0, %.lr.ph.i224.preheader ]
  %i.fb = load i8, ptr %.0551.i.prol, align 1, !tbaa !33
  %i.fc = zext i8 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fc ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !3
  %i.ff = add i32 %i.fe, 1
  store i32 %i.ff, ptr %i.fd, align 4, !tbaa !3
  %i.fg = getelementptr inbounds nuw i8, ptr %.0551.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i224.prol.loopexit, label %.lr.ph.i224.prol, !llvm.loop !34

.lr.ph.i224.prol.loopexit:                        ; preds = %.lr.ph.i224.prol, %.lr.ph.i224.preheader
  %.0551.i.unr = phi ptr [ %i.eu, %.lr.ph.i224.preheader ], [ %i.fg, %.lr.ph.i224.prol ]
  %i.fh = sub i64 %i.ez, %i.ey
  %i.fi = icmp ugt i64 %i.fh, -4
  br i1 %i.fi, label %._crit_edge.i, label %.lr.ph.i224

.lr.ph.i224:                                      ; preds = %.lr.ph.i224.prol.loopexit, %.lr.ph.i224
  %.0551.i = phi ptr [ %i.gg, %.lr.ph.i224 ], [ %.0551.i.unr, %.lr.ph.i224.prol.loopexit ] ; 5 uses
  %i.fj = load i8, ptr %.0551.i, align 1, !tbaa !33
  %i.fk = zext i8 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fk ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !3
  %i.fn = add i32 %i.fm, 1
  store i32 %i.fn, ptr %i.fl, align 4, !tbaa !3
  %i.fo = getelementptr inbounds nuw i8, ptr %.0551.i, i64 1
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !33
  %i.fq = zext i8 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fq ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !3
  %i.ft = add i32 %i.fs, 1
  store i32 %i.ft, ptr %i.fr, align 4, !tbaa !3
  %i.fu = getelementptr inbounds nuw i8, ptr %.0551.i, i64 2
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !33
  %i.fw = zext i8 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fw ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !3
  %i.fz = add i32 %i.fy, 1
  store i32 %i.fz, ptr %i.fx, align 4, !tbaa !3
  %i.ga = getelementptr inbounds nuw i8, ptr %.0551.i, i64 3
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !33
  %i.gc = zext i8 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gc ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !3
  %i.gf = add i32 %i.ge, 1
  store i32 %i.gf, ptr %i.gd, align 4, !tbaa !3
  %i.gg = getelementptr inbounds nuw i8, ptr %.0551.i, i64 4 ; 2 uses
  %exitcond.not.i225.3 = icmp eq ptr %i.gg, %i.ew
  br i1 %exitcond.not.i225.3, label %._crit_edge.i, label %.lr.ph.i224, !llvm.loop !36

._crit_edge.i:                                    ; preds = %.lr.ph.i224.prol.loopexit, %.lr.ph.i224, %bb.j
  %i.gh = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !37
  %i.gj = load ptr, ptr %i.es, align 8, !tbaa !38
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = lshr i64 %i.gm, 3                       ; 8 uses
  %i.go = trunc i64 %i.gn to i32                  ; 2 uses
  %i.gp = call noundef i32 @_ZN11duckdb_zstd15ZSTD_seqToCodesEPKNS_10seqStore_tE(ptr noundef nonnull %i.es) ; 0 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !39 ; 5 uses
  %.not.i220 = icmp eq i32 %i.go, 0
  br i1 %.not.i220, label %_ZN11duckdb_zstdL17ZDICT_countEStatsENS_13EStats_ress_tEPKNS_15ZSTD_parametersEPjS4_S4_S4_S4_PKvmj.exit, label %.lr.ph4.preheader.i

.lr.ph4.preheader.i:                              ; preds = %._crit_edge.i
  %wide.trip.count.i221 = and i64 %i.gn, 4294967295
  %i.gs = add nsw i64 %wide.trip.count.i221, -1   ; 3 uses
  %xtraiter411 = and i64 %i.gn, 3                 ; 3 uses
  %i.gt = icmp ult i64 %i.gs, 3
  br i1 %i.gt, label %.lr.ph4.i.epil.preheader, label %.lr.ph4.preheader.i.new

.lr.ph4.preheader.i.new:                          ; preds = %.lr.ph4.preheader.i
  %unroll_iter = and i64 %i.gn, 4294967292
  br label %.lr.ph4.i

.lr.ph4.i:                                        ; preds = %.lr.ph4.i, %.lr.ph4.preheader.i.new
  %indvars.iv.i222 = phi i64 [ 0, %.lr.ph4.preheader.i.new ], [ %indvars.iv.next.i223.3, %.lr.ph4.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph4.preheader.i.new ], [ %niter.next.3, %.lr.ph4.i ]
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 %indvars.iv.i222
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !33
  %i.gw = zext i8 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gw ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !3
  %i.gz = add i32 %i.gy, 1
  store i32 %i.gz, ptr %i.gx, align 4, !tbaa !3
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gr, i64 %indvars.iv.i222
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstdL20ZDICT_analyzeEntropyEPvmiPKvPKmjS2_mj:bb.a
  store <4 x i32> splat (i32 2), ptr %i.mp, align 4, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.mq, align 4, !tbaa !3
  %i.mr = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.ms = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  store <4 x i32> splat (i32 2), ptr %i.mr, align 4, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.ms, align 4, !tbaa !3
  %i.mt = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  %i.mu = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  store <4 x i32> splat (i32 2), ptr %i.mt, align 4, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.mu, align 4, !tbaa !3
  %i.mv = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %i.mw = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  store <4 x i32> splat (i32 2), ptr %i.mv, align 4, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.mw, align 4, !tbaa !3
  %i.mx = getelementptr inbounds nuw i8, ptr %i.a, i64 196
  %i.my = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  store <4 x i32> splat (i32 2), ptr %i.mx, align 4, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.my, align 4, !tbaa !3
  %i.mz = getelementptr inbounds nuw i8, ptr %i.a, i64 228
  %i.na = getelementptr inbounds nuw i8, ptr %i.a, i64 244
  store <4 x i32> splat (i32 2), ptr %i.mz, align 4, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.na, align 4, !tbaa !3
  %i.nb = getelementptr inbounds nuw i8, ptr %i.a, i64 260
  %i.nc = getelementptr inbounds nuw i8, ptr %i.a, i64 276
  store <4 x i32> splat (i32 2), ptr %i.nb, align 4, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.nc, align 4, !tbaa !3
  %i.nd = getelementptr inbounds nuw i8, ptr %i.a, i64 292
  %i.ne = getelementptr inbounds nuw i8, ptr %i.a, i64 308
  store <4 x i32> splat (i32 2), ptr %i.nd, align 4, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.ne, align 4, !tbaa !3
  %i.nf = getelementptr inbounds nuw i8, ptr %i.a, i64 324
  %i.ng = getelementptr inbounds nuw i8, ptr %i.a, i64 340
  store <4 x i32> splat (i32 2), ptr %i.nf, align 4, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.ng, align 4, !tbaa !3
  %i.nh = getelementptr inbounds nuw i8, ptr %i.a, i64 356
  %i.ni = getelementptr inbounds nuw i8, ptr %i.a, i64 372
  store <4 x i32> splat (i32 2), ptr %i.nh, align 4, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.ni, align 4, !tbaa !3
  %i.nj = getelementptr inbounds nuw i8, ptr %i.a, i64 388
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 404
  store <4 x i32> splat (i32 2), ptr %i.nj, align 4, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.nk, align 4, !tbaa !3
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 420
  %i.nm = getelementptr inbounds nuw i8, ptr %i.a, i64 436
  store <4 x i32> splat (i32 2), ptr %i.nl, align 4, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.nm, align 4, !tbaa !3
  %i.nn = getelementptr inbounds nuw i8, ptr %i.a, i64 452
  %i.no = getelementptr inbounds nuw i8, ptr %i.a, i64 468
  store <4 x i32> splat (i32 2), ptr %i.nn, align 4, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.no, align 4, !tbaa !3
  %i.np = getelementptr inbounds nuw i8, ptr %i.a, i64 484
  %i.nq = getelementptr inbounds nuw i8, ptr %i.a, i64 500
  store <4 x i32> splat (i32 2), ptr %i.np, align 4, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.nq, align 4, !tbaa !3
  %i.nr = getelementptr inbounds nuw i8, ptr %i.a, i64 516
  %i.ns = getelementptr inbounds nuw i8, ptr %i.a, i64 532
  store <4 x i32> splat (i32 2), ptr %i.nr, align 4, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.ns, align 4, !tbaa !3
  %i.nt = getelementptr inbounds nuw i8, ptr %i.a, i64 548
  %i.nu = getelementptr inbounds nuw i8, ptr %i.a, i64 564
  store <4 x i32> splat (i32 2), ptr %i.nt, align 4, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.nu, align 4, !tbaa !3
  %i.nv = getelementptr inbounds nuw i8, ptr %i.a, i64 580
  %i.nw = getelementptr inbounds nuw i8, ptr %i.a, i64 596
  store <4 x i32> splat (i32 2), ptr %i.nv, align 4, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.nw, align 4, !tbaa !3
  %i.nx = getelementptr inbounds nuw i8, ptr %i.a, i64 612
  %i.ny = getelementptr inbounds nuw i8, ptr %i.a, i64 628
  store <4 x i32> splat (i32 2), ptr %i.nx, align 4, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.ny, align 4, !tbaa !3
  %i.nz = getelementptr inbounds nuw i8, ptr %i.a, i64 644
  %i.oa = getelementptr inbounds nuw i8, ptr %i.a, i64 660
  store <4 x i32> splat (i32 2), ptr %i.nz, align 4, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.oa, align 4, !tbaa !3
  %i.ob = getelementptr inbounds nuw i8, ptr %i.a, i64 676
  %i.oc = getelementptr inbounds nuw i8, ptr %i.a, i64 692
  store <4 x i32> splat (i32 2), ptr %i.ob, align 4, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.oc, align 4, !tbaa !3
  %i.od = getelementptr inbounds nuw i8, ptr %i.a, i64 708
  %i.oe = getelementptr inbounds nuw i8, ptr %i.a, i64 724
  store <4 x i32> splat (i32 2), ptr %i.od, align 4, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.oe, align 4, !tbaa !3
  %i.of = getelementptr inbounds nuw i8, ptr %i.a, i64 740
  %i.og = getelementptr inbounds nuw i8, ptr %i.a, i64 756
  store <4 x i32> splat (i32 2), ptr %i.of, align 4, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.og, align 4, !tbaa !3
  %i.oh = getelementptr inbounds nuw i8, ptr %i.a, i64 772
  %i.oi = getelementptr inbounds nuw i8, ptr %i.a, i64 788
  store <4 x i32> splat (i32 2), ptr %i.oh, align 4, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.oi, align 4, !tbaa !3
  %i.oj = getelementptr inbounds nuw i8, ptr %i.a, i64 804
  %i.ok = getelementptr inbounds nuw i8, ptr %i.a, i64 820
  store <4 x i32> splat (i32 2), ptr %i.oj, align 4, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.ok, align 4, !tbaa !3
  %i.ol = getelementptr inbounds nuw i8, ptr %i.a, i64 836
  %i.om = getelementptr inbounds nuw i8, ptr %i.a, i64 852
  store <4 x i32> splat (i32 2), ptr %i.ol, align 4, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.om, align 4, !tbaa !3
  %i.on = getelementptr inbounds nuw i8, ptr %i.a, i64 868
  %i.oo = getelementptr inbounds nuw i8, ptr %i.a, i64 884
  store <4 x i32> splat (i32 2), ptr %i.on, align 4, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.oo, align 4, !tbaa !3
  %i.op = getelementptr inbounds nuw i8, ptr %i.a, i64 900
  %i.oq = getelementptr inbounds nuw i8, ptr %i.a, i64 916
  store <4 x i32> splat (i32 2), ptr %i.op, align 4, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.oq, align 4, !tbaa !3
  %i.or = getelementptr inbounds nuw i8, ptr %i.a, i64 932
  %i.os = getelementptr inbounds nuw i8, ptr %i.a, i64 948
  store <4 x i32> splat (i32 2), ptr %i.or, align 4, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.os, align 4, !tbaa !3
  %i.ot = getelementptr inbounds nuw i8, ptr %i.a, i64 964
  %i.ou = getelementptr inbounds nuw i8, ptr %i.a, i64 980
  store <4 x i32> splat (i32 2), ptr %i.ot, align 4, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.ou, align 4, !tbaa !3
  %i.ov = getelementptr inbounds nuw i8, ptr %i.a, i64 996
  store i32 2, ptr %i.ov, align 4, !tbaa !3
  %i.ow = getelementptr inbounds nuw i8, ptr %i.a, i64 1000
  store i32 2, ptr %i.ow, align 8, !tbaa !3
  %i.ox = getelementptr inbounds nuw i8, ptr %i.a, i64 1004
  store i32 2, ptr %i.ox, align 4, !tbaa !3
  %i.oy = getelementptr inbounds nuw i8, ptr %i.a, i64 1008
  store i32 2, ptr %i.oy, align 16, !tbaa !3
  %i.oz = getelementptr inbounds nuw i8, ptr %i.a, i64 1012
  store i32 2, ptr %i.oz, align 4, !tbaa !3
  %i.pa = getelementptr inbounds nuw i8, ptr %i.a, i64 1016
  store i32 2, ptr %i.pa, align 8, !tbaa !3
  %i.pb = getelementptr inbounds nuw i8, ptr %i.a, i64 1020
  store i32 2, ptr %i.pb, align 4, !tbaa !3
  store i32 4, ptr %i.a, align 16, !tbaa !3
  %i.pc = getelementptr inbounds nuw i8, ptr %i.a, i64 1012
  store i32 1, ptr %i.pc, align 4, !tbaa !3
  %i.pd = getelementptr inbounds nuw i8, ptr %i.a, i64 1016
  store i32 1, ptr %i.pd, align 8, !tbaa !3
  %i.pe = call noundef i64 @_ZN11duckdb_zstd20HUF_buildCTable_wkspEPmPKjjjPvm(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef 255, i32 noundef 11, ptr noundef nonnull %i.j, i64 noundef 4864)
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.p, %vector.body380
  %.0165 = phi i64 [ %i.pe, %vector.body380 ], [ %i.lz, %bb.p ]
  %min.iters.check385 = icmp ult i32 %i.l, 128
  br i1 %min.iters.check385, label %.preheader.preheader403, label %vector.ph386

vector.ph386:                                     ; preds = %.preheader.preheader
  %n.vec388 = and i64 %wide.trip.count, 56        ; 3 uses
  br label %vector.body389

vector.body389:                                   ; preds = %vector.body389, %vector.ph386
  %index390 = phi i64 [ 0, %vector.ph386 ], [ %index.next395, %vector.body389 ] ; 2 uses
  %vec.phi391 = phi <4 x i32> [ zeroinitializer, %vector.ph386 ], [ %i.ph, %vector.body389 ]
  %vec.phi392 = phi <4 x i32> [ zeroinitializer, %vector.ph386 ], [ %i.pi, %vector.body389 ]
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index390 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  %wide.load393 = load <4 x i32>, ptr %i.pf, align 16, !tbaa !3
  %wide.load394 = load <4 x i32>, ptr %i.pg, align 16, !tbaa !3
  %i.ph = add <4 x i32> %wide.load393, %vec.phi391 ; 2 uses
  %i.pi = add <4 x i32> %wide.load394, %vec.phi392 ; 2 uses
  %index.next395 = add nuw i64 %index390, 8       ; 2 uses
  %i.pj = icmp eq i64 %index.next395, %n.vec388
  br i1 %i.pj, label %middle.block396, label %vector.body389, !llvm.loop !53

middle.block396:                                  ; preds = %vector.body389
  %bin.rdx397 = add <4 x i32> %i.pi, %i.ph
  %i.pk = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx397) ; 2 uses
  %cmp.n398 = icmp eq i64 %n.vec388, %wide.trip.count
  br i1 %cmp.n398, label %.loopexit401, label %.preheader.preheader403

.preheader.preheader403:                          ; preds = %.preheader.preheader, %middle.block396
  %indvars.iv322.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec388, %middle.block396 ]
  %.0176288.ph = phi i32 [ 0, %.preheader.preheader ], [ %i.pk, %middle.block396 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader403, %.preheader
  %indvars.iv322 = phi i64 [ %indvars.iv.next323, %.preheader ], [ %indvars.iv322.ph, %.preheader.preheader403 ] ; 2 uses
  %.0176288 = phi i32 [ %i.pn, %.preheader ], [ %.0176288.ph, %.preheader.preheader403 ]
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv322
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !3
  %i.pn = add i32 %i.pm, %.0176288                ; 2 uses
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 2 uses
  %exitcond326.not = icmp eq i64 %indvars.iv.next323, %wide.trip.count
  br i1 %exitcond326.not, label %.loopexit401, label %.preheader, !llvm.loop !54

.loopexit401:                                     ; preds = %.preheader, %middle.block396
  %.lcssa = phi i32 [ %i.pk, %middle.block396 ], [ %i.pn, %.preheader ]
  %i.po = trunc i64 %.0165 to i32
  %i.pp = zext i32 %.lcssa to i64
  %i.pq = call noundef i64 @_ZN11duckdb_zstd18FSE_normalizeCountEPsjPKjmjj(ptr noundef nonnull %i.d, i32 noundef 8, ptr noundef nonnull %i.c, i64 noundef %i.pp, i32 noundef %i.n, i32 noundef 1) ; 4 uses
  %i.pr = icmp ult i64 %i.pq, -119
  br i1 %i.pr, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.loopexit401
  %.not210 = icmp eq i32 %8, 0
  br i1 %.not210, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ps = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.pt = call i64 @fwrite(ptr nonnull @.str.8, i64 44, i64 1, ptr %i.ps) #18 ; 0 uses
  %i.pu = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.pv = call i32 @fflush(ptr noundef %i.pu)     ; 0 uses
  br label %.thread

bb.u:                                             ; preds = %.loopexit401
  %11 = load <53 x i32>, ptr %i.e, align 16, !tbaa !3
  %i.pw = call i32 @llvm.vector.reduce.add.v53i32(<53 x i32> %11)
  %i.px = trunc i64 %i.pq to i32
  %i.py = zext i32 %i.pw to i64
  %i.pz = call noundef i64 @_ZN11duckdb_zstd18FSE_normalizeCountEPsjPKjmjj(ptr noundef nonnull %i.f, i32 noundef 9, ptr noundef nonnull %i.e, i64 noundef %i.py, i32 noundef 52, i32 noundef 1) ; 4 uses
  %i.qa = icmp ult i64 %i.pz, -119
  br i1 %i.qa, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not209 = icmp eq i32 %8, 0
  br i1 %.not209, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.qb = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.qc = call i64 @fwrite(ptr nonnull @.str.9, i64 48, i64 1, ptr %i.qb) #18 ; 0 uses
  %i.qd = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.qe = call i32 @fflush(ptr noundef %i.qd)     ; 0 uses
  br label %.thread

bb.x:                                             ; preds = %bb.u
  %12 = load <36 x i32>, ptr %i.g, align 16, !tbaa !3
  %i.qf = call i32 @llvm.vector.reduce.add.v36i32(<36 x i32> %12)
  %i.qg = trunc i64 %i.pz to i32
  %i.qh = zext i32 %i.qf to i64
  %i.qi = call noundef i64 @_ZN11duckdb_zstd18FSE_normalizeCountEPsjPKjmjj(ptr noundef nonnull %i.h, i32 noundef 9, ptr noundef nonnull %i.g, i64 noundef %i.qh, i32 noundef 35, i32 noundef 1) ; 4 uses
  %i.qj = icmp ult i64 %i.qi, -119
  br i1 %i.qj, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not208 = icmp eq i32 %8, 0
  br i1 %.not208, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.qk = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ql = call i64 @fwrite(ptr nonnull @.str.10, i64 46, i64 1, ptr %i.qk) #18 ; 0 uses
  %i.qm = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.qn = call i32 @fflush(ptr noundef %i.qm)     ; 0 uses
  br label %.thread

bb.aa:                                            ; preds = %bb.x
  %i.qo = trunc i64 %i.qi to i32
  %i.qp = call noundef i64 @_ZN11duckdb_zstd20HUF_writeCTable_wkspEPvmPKmjjS0_m(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.b, i32 noundef 255, i32 noundef %i.po, ptr noundef nonnull %i.j, i64 noundef 4864) ; 6 uses
  %i.qq = icmp ult i64 %i.qp, -119
  br i1 %i.qq, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not200 = icmp eq i32 %8, 0
  br i1 %.not200, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.qr = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.qs = call i64 @fwrite(ptr nonnull @.str.11, i64 23, i64 1, ptr %i.qr) #18 ; 0 uses
  %i.qt = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.qu = call i32 @fflush(ptr noundef %i.qt)     ; 0 uses
  br label %.thread

bb.ad:                                            ; preds = %bb.aa
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 %i.qp ; 2 uses
  %i.qw = sub i64 %1, %i.qp                       ; 2 uses
  %i.qx = call noundef i64 @_ZN11duckdb_zstd15FSE_writeNCountEPvmPKsjj(ptr noundef %i.qv, i64 noundef %i.qw, ptr noundef nonnull %i.d, i32 noundef 30, i32 noundef %i.px) ; 6 uses
  %i.qy = icmp ult i64 %i.qx, -119
  br i1 %i.qy, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not202 = icmp eq i32 %8, 0
  br i1 %.not202, label %.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.qz = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ra = call i64 @fwrite(ptr nonnull @.str.12, i64 42, i64 1, ptr %i.qz) #18 ; 0 uses
  %i.rb = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.rc = call i32 @fflush(ptr noundef %i.rb)     ; 0 uses
  br label %.thread

bb.ag:                                            ; preds = %bb.ad
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qv, i64 %i.qx ; 2 uses
  %i.re = sub i64 %i.qw, %i.qx                    ; 2 uses
  %i.rf = call noundef i64 @_ZN11duckdb_zstd15FSE_writeNCountEPvmPKsjj(ptr noundef %i.rd, i64 noundef %i.re, ptr noundef nonnull %i.f, i32 noundef 52, i32 noundef %i.qg) ; 6 uses
  %i.rg = icmp ult i64 %i.rf, -119
  br i1 %i.rg, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not204 = icmp eq i32 %8, 0
  br i1 %.not204, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.rh = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ri = call i64 @fwrite(ptr nonnull @.str.13, i64 46, i64 1, ptr %i.rh) #18 ; 0 uses
  %i.rj = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.rk = call i32 @fflush(ptr noundef %i.rj)     ; 0 uses
  br label %.thread

bb.aj:                                            ; preds = %bb.ag
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rd, i64 %i.rf ; 2 uses
  %i.rm = sub i64 %i.re, %i.rf                    ; 2 uses
  %i.rn = call noundef i64 @_ZN11duckdb_zstd15FSE_writeNCountEPvmPKsjj(ptr noundef %i.rl, i64 noundef %i.rm, ptr noundef nonnull %i.h, i32 noundef 35, i32 noundef %i.qo) ; 6 uses
  %i.ro = icmp ult i64 %i.rn, -119
  br i1 %i.ro, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not206 = icmp eq i32 %8, 0
  br i1 %.not206, label %.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.rp = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.rq = call i64 @fwrite(ptr nonnull @.str.14, i64 44, i64 1, ptr %i.rp) #18 ; 0 uses
  %i.rr = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.rs = call i32 @fflush(ptr noundef %i.rr)     ; 0 uses
  br label %.thread

bb.am:                                            ; preds = %bb.aj
  %i.rt = sub i64 %i.rm, %i.rn
  %i.ru = icmp ult i64 %i.rt, 12
  br i1 %i.ru, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %.not207 = icmp eq i32 %8, 0
  br i1 %.not207, label %.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.rv = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.rw = call i64 @fwrite(ptr nonnull @.str.15, i64 38, i64 1, ptr %i.rv) #18 ; 0 uses
  %i.rx = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ry = call i32 @fflush(ptr noundef %i.rx)     ; 0 uses
  br label %.thread

bb.ap:                                            ; preds = %bb.am
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.rn ; 3 uses
  store i32 1, ptr %i.rz, align 1, !tbaa !3
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 4
  store i32 4, ptr %i.sa, align 1, !tbaa !3
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  store i32 8, ptr %i.sb, align 1, !tbaa !3
  %i.sc = add nuw i64 %i.qp, 12
  %i.sd = add i64 %i.sc, %i.qx
  %i.se = add i64 %i.sd, %i.rf
  %i.sf = add i64 %i.se, %i.rn
  br label %.thread

.thread:                                          ; preds = %bb.ak, %bb.al, %bb.ah, %bb.ai, %bb.ae, %bb.af, %bb.ab, %bb.ac, %bb.n, %bb.o, %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit, %bb.an, %bb.ao, %bb.y, %bb.z, %bb.v, %bb.w, %bb.s, %bb.t, %bb.b, %bb.c, %bb.ap
  %.5 = phi i64 [ -64, %bb.b ], [ %i.pq, %bb.t ], [ %i.pq, %bb.s ], [ %i.pz, %bb.w ], [ %i.pz, %bb.v ], [ %i.qi, %bb.z ], [ %i.qi, %bb.y ], [ -70, %bb.ao ], [ -70, %bb.an ], [ %i.sf, %bb.ap ], [ %i.rf, %bb.ah ], [ %i.qx, %bb.ae ], [ %i.qp, %bb.ab ], [ %i.lz, %bb.n ], [ -34, %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit ], [ -64, %bb.c ], [ %i.lz, %bb.o ], [ %i.qp, %bb.ac ], [ %i.qx, %bb.af ], [ %i.rf, %bb.ai ], [ %i.rn, %bb.al ], [ %i.rn, %bb.ak ]
  %.sroa.10.0 = phi ptr [ %i.ds, %bb.b ], [ %i.ds, %bb.t ], [ %i.ds, %bb.s ], [ %i.ds, %bb.w ], [ %i.ds, %bb.v ], [ %i.ds, %bb.z ], [ %i.ds, %bb.y ], [ %i.ds, %bb.ao ], [ %i.ds, %bb.an ], [ %i.ds, %bb.ap ], [ %i.ds, %bb.ah ], [ %i.ds, %bb.ae ], [ %i.ds, %bb.ab ], [ %i.ds, %bb.n ], [ null, %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit ], [ %i.ds, %bb.c ], [ %i.ds, %bb.o ], [ %i.ds, %bb.ac ], [ %i.ds, %bb.af ], [ %i.ds, %bb.ai ], [ %i.ds, %bb.al ], [ %i.ds, %bb.ak ]
  %.sroa.7.0 = phi ptr [ %i.dr, %bb.b ], [ %i.dr, %bb.t ], [ %i.dr, %bb.s ], [ %i.dr, %bb.w ], [ %i.dr, %bb.v ], [ %i.dr, %bb.z ], [ %i.dr, %bb.y ], [ %i.dr, %bb.ao ], [ %i.dr, %bb.an ], [ %i.dr, %bb.ap ], [ %i.dr, %bb.ah ], [ %i.dr, %bb.ae ], [ %i.dr, %bb.ab ], [ %i.dr, %bb.n ], [ null, %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit ], [ %i.dr, %bb.c ], [ %i.dr, %bb.o ], [ %i.dr, %bb.ac ], [ %i.dr, %bb.af ], [ %i.dr, %bb.ai ], [ %i.dr, %bb.al ], [ %i.dr, %bb.ak ]
  %.sroa.0.0 = phi ptr [ %i.dq, %bb.b ], [ %i.dq, %bb.t ], [ %i.dq, %bb.s ], [ %i.dq, %bb.w ], [ %i.dq, %bb.v ], [ %i.dq, %bb.z ], [ %i.dq, %bb.y ], [ %i.dq, %bb.ao ], [ %i.dq, %bb.an ], [ %i.dq, %bb.ap ], [ %i.dq, %bb.ah ], [ %i.dq, %bb.ae ], [ %i.dq, %bb.ab ], [ %i.dq, %bb.n ], [ null, %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit ], [ %i.dq, %bb.c ], [ %i.dq, %bb.o ], [ %i.dq, %bb.ac ], [ %i.dq, %bb.af ], [ %i.dq, %bb.ai ], [ %i.dq, %bb.al ], [ %i.dq, %bb.ak ]
  %i.sg = call noundef i64 @_ZN11duckdb_zstd14ZSTD_freeCDictEPNS_12ZSTD_CDict_sE(ptr noundef %.sroa.0.0) ; 0 uses
  %i.sh = call noundef i64 @_ZN11duckdb_zstd13ZSTD_freeCCtxEPNS_11ZSTD_CCtx_sE(ptr noundef %.sroa.7.0) ; 0 uses
  call void @free(ptr noundef %.sroa.10.0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i64 %.5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd28ZDICT_trainFromBuffer_legacyEPvmPKvPKmjNS_21ZDICT_legacy_params_tE(ptr noundef %0, i64 noundef %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3, i32 noundef %4, ptr noundef readonly byval(%"struct.duckdb_zstd::ZDICT_legacy_params_t") align 8 captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 13 uses
  %i.b = alloca [64 x i32], align 16              ; 64 uses
  %i.c = alloca [64 x i32], align 16              ; 11 uses
  %6 = alloca %"struct.duckdb_zstd::ZDICT_params_t", align 8 ; 5 uses
  %.not.i = icmp eq i32 %4, 0
  br i1 %.not.i, label %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %4 to i64         ; 6 uses
  %min.iters.check = icmp ult i32 %4, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.f, %vector.body ]
  %vec.phi132 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.g, %vector.body ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <2 x i64>, ptr %i.d, align 8, !tbaa !14
  %wide.load133 = load <2 x i64>, ptr %i.e, align 8, !tbaa !14
  %i.f = add <2 x i64> %wide.load, %vec.phi       ; 2 uses
  %i.g = add <2 x i64> %wide.load133, %vec.phi132 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.g, %i.f
  %i.i = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.067.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.i, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.067.i = phi i64 [ %i.l, %.lr.ph.i ], [ %.067.i.ph, %.lr.ph.i.preheader ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !14
  %i.l = add i64 %i.k, %.067.i                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstdL14ZDICT_tryMergeEPNS_8dictItemES0_jPKv:bb.a
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
  br i1 %.not251, label %.critedge, label %.lr.ph204, !llvm.loop !99

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
  br i1 %exitcond.not, label %.lr.ph198, label %.lr.ph, !llvm.loop !100

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
  %.sroa.0102.0.copyload112 = load i64, ptr %i.aj, align 4
  %i.ba = icmp samesign ugt i64 %indvars.iv229, 1
  br i1 %i.ba, label %.lr.ph200, label %.critedge2

.lr.ph200:                                        ; preds = %bb.j, %bb.k
  %indvars.iv238 = phi i64 [ %indvars.iv.next239, %bb.k ], [ %indvars.iv229, %bb.j ] ; 3 uses
  %indvars.iv.next239 = add nsw i64 %indvars.iv238, -1 ; 3 uses
  %i.bb = and i64 %indvars.iv.next239, 4294967295
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !62
  %i.bf = icmp ult i32 %i.be, %.sroa.24.0.copyload135
  br i1 %i.bf, label %bb.k, label %.critedge2.loopexit.split.loop.exit281

bb.k:                                             ; preds = %.lr.ph200
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv238
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bg, ptr noundef nonnull align 4 dereferenceable(12) %i.bc, i64 12, i1 false), !tbaa.struct !81
  %i.bh = and i64 %indvars.iv.next239, 4294967294
  %.not252 = icmp eq i64 %i.bh, 0
  br i1 %.not252, label %.critedge2, label %.lr.ph200, !llvm.loop !101

.critedge2.loopexit.split.loop.exit281:           ; preds = %.lr.ph200
  %i.bi = trunc nuw i64 %indvars.iv238 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.k, %.critedge2.loopexit.split.loop.exit281, %bb.j
  %.3.lcssa = phi i32 [ 1, %bb.j ], [ %i.bi, %.critedge2.loopexit.split.loop.exit281 ], [ 1, %bb.k ] ; 2 uses
  %i.bj = zext i32 %.3.lcssa to i64
  %i.bk = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.bj ; 2 uses
  store i64 %.sroa.0102.0.copyload112, ptr %i.bk, align 4
  %.sroa.24.0..sroa_idx136 = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i32 %.sroa.24.0.copyload135, ptr %.sroa.24.0..sroa_idx136, align 4, !tbaa !3
  br label %.loopexit

bb.l:                                             ; preds = %bb.g
  %i.bl = zext i32 %i.ak to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 %i.bl ; 2 uses
  %.val166 = load i64, ptr %i.bm, align 1, !tbaa !14
  %.val = load i64, ptr %i.g, align 1, !tbaa !14
  %i.bn = icmp eq i64 %.val166, %.val
  br i1 %i.bn, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bo = zext i32 %i.am to i64                   ; 2 uses
  %.not13.i = icmp eq i32 %i.am, 0
  br i1 %.not13.i, label %_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %bb.n
  %.010.i = phi i64 [ %i.bt, %bb.n ], [ 0, %bb.m ] ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.010.i
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !33
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 %.010.i
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !33
  %.not.i = icmp eq i8 %i.bq, %i.bs
  br i1 %.not.i, label %bb.n, label %_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit

bb.n:                                             ; preds = %.lr.ph.i
  %i.bt = add nuw nsw i64 %.010.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bt, %i.bo
  br i1 %exitcond.not.i, label %_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit.thread, label %.lr.ph.i, !llvm.loop !102

_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit:       ; preds = %.lr.ph.i
  %.not172 = icmp eq i64 %.010.i, %i.bo
  br i1 %.not172, label %_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit.thread, label %bb.o

_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit.thread: ; preds = %bb.m, %_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit, %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.bv = trunc nuw i64 %indvars.iv229 to i32
  %i.bw = sub nsw i32 %.sroa.0102.sroa.14.0.extract.trunc, %i.am
  %narrow = tail call i32 @llvm.smax.i32(i32 %i.bw, i32 1)
  %spec.select = zext nneg i32 %narrow to i64
  store i32 %.sroa.0102.sroa.0.0.extract.trunc, ptr %i.aj, align 4, !tbaa !59
  %i.bx = zext i32 %2 to i64
  %i.by = mul nuw nsw i64 %spec.select, %i.bx
  %i.bz = udiv i64 %i.by, %.sroa.0102.sroa.14.0.extract.shift
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !62
  %i.cd = add i32 %i.cc, %i.ca
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !62
  %i.ce = add i32 %i.am, 1
  %i.cf = tail call i32 @llvm.umin.i32(i32 %i.ce, i32 %.sroa.0102.sroa.14.0.extract.trunc)
  store i32 %i.cf, ptr %i.bu, align 4, !tbaa !61
  br label %.loopexit

bb.o:                                             ; preds = %bb.l, %_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit, %bb.f
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1 ; 2 uses
  %exitcond234.not = icmp eq i64 %indvars.iv.next230, %wide.trip.count233
  br i1 %exitcond234.not, label %.loopexit, label %bb.f, !llvm.loop !103

.loopexit:                                        ; preds = %bb.o, %bb.a, %_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit.thread, %.critedge2, %.critedge
  %.0 = phi i32 [ %.1.lcssa, %.critedge ], [ %.3.lcssa, %.critedge2 ], [ %i.bv, %_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit.thread ], [ 0, %bb.a ], [ 0, %bb.o ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v36i32(<36 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v53i32(<53 x i32>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { cold }

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
!7 = !{!8, !4, i64 0}
!8 = !{!"_ZTSN11duckdb_zstd14ZDICT_params_tE", !4, i64 0, !4, i64 4, !4, i64 8}
!9 = !{!8, !4, i64 4}
!10 = !{!8, !4, i64 8}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = distinct !{!16, !17, !18, !19}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = distinct !{!20, !17, !19, !18}
!21 = distinct !{!21, !17, !18, !19}
!22 = distinct !{!22, !17, !19, !18}
!23 = !{i64 0, i64 4, !3, i64 4, i64 4, !3, i64 8, i64 4, !3, i64 12, i64 4, !3, i64 16, i64 4, !3, i64 20, i64 4, !24, i64 24, i64 4, !3, i64 28, i64 4, !3, i64 32, i64 4, !3}
!24 = !{!25, !25, i64 0}
!25 = !{!"_ZTSN11duckdb_zstd13ZSTD_strategyE", !5, i64 0}
!26 = !{i64 0, i64 4, !3, i64 4, i64 4, !3, i64 8, i64 4, !3, i64 12, i64 4, !3, i64 16, i64 4, !3, i64 20, i64 4, !24}
!27 = !{!28, !30, i64 16}
!28 = !{!"_ZTSN11duckdb_zstd10seqStore_tE", !29, i64 0, !29, i64 8, !30, i64 16, !30, i64 24, !30, i64 32, !30, i64 40, !30, i64 48, !15, i64 56, !15, i64 64, !31, i64 72, !4, i64 76}
!29 = !{!"p1 _ZTSN11duckdb_zstd8seqDef_sE", !13, i64 0}
!30 = !{!"p1 omnipotent char", !13, i64 0}
!31 = !{!"_ZTSN11duckdb_zstd21ZSTD_longLengthType_eE", !5, i64 0}
!32 = !{!28, !30, i64 24}
!33 = !{!5, !5, i64 0}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = distinct !{!36, !17}
!37 = !{!28, !29, i64 8}
!38 = !{!28, !29, i64 0}
!39 = !{!28, !30, i64 48}
!40 = distinct !{!40, !17}
!41 = distinct !{!41, !35}
!42 = !{!28, !30, i64 40}
!43 = distinct !{!43, !17}
!44 = distinct !{!44, !35}
!45 = !{!28, !30, i64 32}
!46 = distinct !{!46, !17}
!47 = distinct !{!47, !35}
!48 = !{!49, !4, i64 0}
!49 = !{!"_ZTSN11duckdb_zstd8seqDef_sE", !4, i64 0, !50, i64 4, !50, i64 6}
!50 = !{!"short", !5, i64 0}
!51 = distinct !{!51, !17}
!52 = distinct !{!52, !17}
!53 = distinct !{!53, !17, !18, !19}
!54 = distinct !{!54, !17, !19, !18}
!55 = distinct !{!55, !17, !18, !19}
!56 = distinct !{!56, !17, !19, !18}
!57 = distinct !{!57, !17, !18, !19}
!58 = distinct !{!58, !17, !19, !18}
!59 = !{!60, !4, i64 0}
!60 = !{!"_ZTSN11duckdb_zstd8dictItemE", !4, i64 0, !4, i64 4, !4, i64 8}
!61 = !{!60, !4, i64 4}
!62 = !{!60, !4, i64 8}
!63 = distinct !{!63, !17}
!64 = distinct !{!64, !17}
!65 = distinct !{!65, !35}
!66 = distinct !{!66, !17}
!67 = !{!50, !50, i64 0}
!68 = distinct !{!68, !17}
!69 = distinct !{!69, !17}
!70 = distinct !{!70, !17}
!71 = distinct !{!71, !35}
!72 = distinct !{!72, !17}
!73 = distinct !{!73, !17}
!74 = distinct !{!74, !17}
!75 = distinct !{!75, !17}
!76 = distinct !{!76, !17}
!77 = distinct !{!77, !17}
!78 = distinct !{!78, !17}
!79 = distinct !{!79, !17}
!80 = distinct !{!80, !17}
!81 = !{i64 0, i64 4, !3, i64 4, i64 4, !3, i64 8, i64 4, !3}
!82 = distinct !{!82, !17}
!83 = distinct !{!83, !17}
!84 = distinct !{!84, !17}
!85 = distinct !{!85, !17, !18, !19}
!86 = distinct !{!86, !17, !19, !18}
!87 = distinct !{!87, !17}
!88 = distinct !{!88, !17}
!89 = distinct !{!89, !17, !18, !19}
!90 = distinct !{!90, !17, !19, !18}
!91 = distinct !{!91, !17}
!92 = distinct !{!92, !17}
!93 = distinct !{!93, !17}
!94 = !{!95, !4, i64 4}
!95 = !{!"_ZTSN11duckdb_zstd24ZDICT_fastCover_params_tE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !96, i64 24, !4, i64 32, !4, i64 36, !4, i64 40, !8, i64 44}
!96 = !{!"double", !5, i64 0}
!97 = !{!95, !4, i64 12}
!98 = !{!95, !4, i64 44}
!99 = distinct !{!99, !17}
!100 = distinct !{!100, !17}
!101 = distinct !{!101, !17}
!102 = distinct !{!102, !17}
!103 = distinct !{!103, !17}
end_hunk_2
