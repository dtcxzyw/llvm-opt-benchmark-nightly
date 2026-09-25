Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/zdict?download=true
inline.NumInlined: 73
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN11duckdb_zstdL20ZDICT_analyzeEntropyEPvmiPKvPKmjS2_mj:bb.a
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.067.i = phi i64 [ %i.w, %.lr.ph.i ], [ %.067.i.ph, %.lr.ph.i.preheader ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  %i.v = load i64, ptr %i.u, align 8, !tbaa !15
  %i.w = add i64 %i.v, %.067.i                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit, label %.lr.ph.i, !llvm.loop !28

_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  %.06.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.t, %middle.block ], [ %i.w, %.lr.ph.i ]
  %i.x = tail call i32 @llvm.umax.i32(i32 %5, i32 1)
  %i.y = zext i32 %i.x to i64
  %i.z = udiv i64 %.06.lcssa.i, %i.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  %i.aa = icmp eq i32 %i.m, 0
  br i1 %i.aa, label %.thread, label %vector.body369

vector.body369:                                   ; preds = %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <4 x i32> splat (i32 1), ptr %i.a, align 16, !tbaa !6
  store <4 x i32> splat (i32 1), ptr %i.ab, align 16, !tbaa !6
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <4 x i32> splat (i32 1), ptr %i.ac, align 16, !tbaa !6
  store <4 x i32> splat (i32 1), ptr %i.ad, align 16, !tbaa !6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <4 x i32> splat (i32 1), ptr %i.ae, align 16, !tbaa !6
  store <4 x i32> splat (i32 1), ptr %i.af, align 16, !tbaa !6
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <4 x i32> splat (i32 1), ptr %i.ag, align 16, !tbaa !6
  store <4 x i32> splat (i32 1), ptr %i.ah, align 16, !tbaa !6
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <4 x i32> splat (i32 1), ptr %i.ai, align 16, !tbaa !6
  store <4 x i32> splat (i32 1), ptr %i.aj, align 16, !tbaa !6
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <4 x i32> splat (i32 1), ptr %i.ak, align 16, !tbaa !6
  store <4 x i32> splat (i32 1), ptr %i.al, align 16, !tbaa !6
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <4 x i32> splat (i32 1), ptr %i.am, align 16, !tbaa !6
  store <4 x i32> splat (i32 1), ptr %i.an, align 16, !tbaa !6
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store <4 x i32> splat (i32 1), ptr %i.ao, align 16, !tbaa !6
  store <4 x i32> splat (i32 1), ptr %i.ap, align 16, !tbaa !6
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store <4 x i32> splat (i32 1), ptr %i.aq, align 16, !tbaa !6
  store <4 x i32> splat (i32 1), ptr %i.ar, align 16, !tbaa !6
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store <4 x i32> splat (i32 1), ptr %i.as, align 16, !tbaa !6
  store <4 x i32> splat (i32 1), ptr %i.at, align 16, !tbaa !6
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store <4 x i32> splat (i32 1), ptr %i.au, align 16, !tbaa !6
  store <4 x i32> splat (i32 1), ptr %i.av, align 16, !tbaa !6
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store <4 x i32> splat (i32 1), ptr %i.aw, align 16, !tbaa !6
  store <4 x i32> splat (i32 1), ptr %i.ax, align 16, !tbaa !6
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  store <4 x i32> splat (i32 1), ptr %i.ay, align 16, !tbaa !6
  store <4 x i32> splat (i32 1), ptr %i.az, align 16, !tbaa !6
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  store <4 x i32> splat (i32 1), ptr %i.ba, align 16, !tbaa !6
  store <4 x i32> splat (i32 1), ptr %i.bb, align 16, !tbaa !6
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store <4 x i32> splat (i32 1), ptr %i.bc, align 16, !tbaa !6
  store <4 x i32> splat (i32 1), ptr %i.bd, align 16, !tbaa !6
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  store <4 x i32> splat (i32 1), ptr %i.be, align 16, !tbaa !6
  store <4 x i32> splat (i32 1), ptr %i.bf, align 16, !tbaa !6
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  store <4 x i32> splat (i32 1), ptr %i.bg, align 16, !tbaa !6
  store <4 x i32> splat (i32 1), ptr %i.bh, align 16, !tbaa !6
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 544
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  store <4 x i32> splat (i32 1), ptr %i.bi, align 16, !tbaa !6
  store <4 x i32> splat (i32 1), ptr %i.bj, align 16, !tbaa !6
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  store <4 x i32> splat (i32 1), ptr %i.bk, align 16, !tbaa !6
  store <4 x i32> splat (i32 1), ptr %i.bl, align 16, !tbaa !6
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  store <4 x i32> splat (i32 1), ptr %i.bm, align 16, !tbaa !6
  store <4 x i32> splat (i32 1), ptr %i.bn, align 16, !tbaa !6
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  store <4 x i32> splat (i32 1), ptr %i.bo, align 16, !tbaa !6
  store <4 x i32> splat (i32 1), ptr %i.bp, align 16, !tbaa !6
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 672
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 688
  store <4 x i32> splat (i32 1), ptr %i.bq, align 16, !tbaa !6
  store <4 x i32> splat (i32 1), ptr %i.br, align 16, !tbaa !6
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 720
  store <4 x i32> splat (i32 1), ptr %i.bs, align 16, !tbaa !6
  store <4 x i32> splat (i32 1), ptr %i.bt, align 16, !tbaa !6
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 736
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 752
  store <4 x i32> splat (i32 1), ptr %i.bu, align 16, !tbaa !6
  store <4 x i32> splat (i32 1), ptr %i.bv, align 16, !tbaa !6
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 784
  store <4 x i32> splat (i32 1), ptr %i.bw, align 16, !tbaa !6
  store <4 x i32> splat (i32 1), ptr %i.bx, align 16, !tbaa !6
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 800
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 816
  store <4 x i32> splat (i32 1), ptr %i.by, align 16, !tbaa !6
  store <4 x i32> splat (i32 1), ptr %i.bz, align 16, !tbaa !6
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 832
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 848
  store <4 x i32> splat (i32 1), ptr %i.ca, align 16, !tbaa !6
  store <4 x i32> splat (i32 1), ptr %i.cb, align 16, !tbaa !6
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 864
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 880
  store <4 x i32> splat (i32 1), ptr %i.cc, align 16, !tbaa !6
  store <4 x i32> splat (i32 1), ptr %i.cd, align 16, !tbaa !6
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 896
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 912
  store <4 x i32> splat (i32 1), ptr %i.ce, align 16, !tbaa !6
  store <4 x i32> splat (i32 1), ptr %i.cf, align 16, !tbaa !6
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 928
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 944
  store <4 x i32> splat (i32 1), ptr %i.cg, align 16, !tbaa !6
  store <4 x i32> splat (i32 1), ptr %i.ch, align 16, !tbaa !6
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 960
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 976
  store <4 x i32> splat (i32 1), ptr %i.ci, align 16, !tbaa !6
  store <4 x i32> splat (i32 1), ptr %i.cj, align 16, !tbaa !6
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 992
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 1008
  store <4 x i32> splat (i32 1), ptr %i.ck, align 16, !tbaa !6
  store <4 x i32> splat (i32 1), ptr %i.cl, align 16, !tbaa !6
  %i.cm = sub nuw nsw i32 32, %i.m
  %wide.trip.count = zext nneg i32 %i.cm to i64   ; 7 uses
  %min.iters.check374 = icmp ult i32 %i.l, 128
  br i1 %min.iters.check374, label %.preheader280.preheader411, label %vector.ph375

vector.ph375:                                     ; preds = %vector.body369
  %n.vec376 = and i64 %wide.trip.count, 56        ; 3 uses
  br label %vector.body377

vector.body377:                                   ; preds = %vector.body377, %vector.ph375
  %index378 = phi i64 [ 0, %vector.ph375 ], [ %index.next379, %vector.body377 ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index378 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store <4 x i32> splat (i32 1), ptr %i.cn, align 16, !tbaa !6
  store <4 x i32> splat (i32 1), ptr %i.co, align 16, !tbaa !6
  %index.next379 = add nuw i64 %index378, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next379, %n.vec376
  br i1 %i.cp, label %middle.block380, label %vector.body377, !llvm.loop !29

middle.block380:                                  ; preds = %vector.body377
  %cmp.n381 = icmp eq i64 %n.vec376, %wide.trip.count
  br i1 %cmp.n381, label %.preheader279.preheader, label %.preheader280.preheader411

.preheader280.preheader411:                       ; preds = %vector.body369, %middle.block380
  %indvars.iv303.ph = phi i64 [ 0, %vector.body369 ], [ %n.vec376, %middle.block380 ]
  br label %.preheader280

.preheader280:                                    ; preds = %.preheader280.preheader411, %.preheader280
  %indvars.iv303 = phi i64 [ %indvars.iv.next304, %.preheader280 ], [ %indvars.iv303.ph, %.preheader280.preheader411 ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv303
  store i32 1, ptr %i.cq, align 4, !tbaa !6
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1 ; 2 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next304, %wide.trip.count
  br i1 %exitcond306.not, label %.preheader279.preheader, label %.preheader280, !llvm.loop !30

.preheader279.preheader:                          ; preds = %.preheader280, %middle.block380
  store <4 x i32> splat (i32 1), ptr %i.e, align 16, !tbaa !6
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store <4 x i32> splat (i32 1), ptr %i.cr, align 16, !tbaa !6
  %i.cs = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store <4 x i32> splat (i32 1), ptr %i.cs, align 16, !tbaa !6
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store <4 x i32> splat (i32 1), ptr %i.ct, align 16, !tbaa !6
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store <4 x i32> splat (i32 1), ptr %i.cu, align 16, !tbaa !6
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store <4 x i32> splat (i32 1), ptr %i.cv, align 16, !tbaa !6
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store <4 x i32> splat (i32 1), ptr %i.cw, align 16, !tbaa !6
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store <4 x i32> splat (i32 1), ptr %i.cx, align 16, !tbaa !6
  %i.cy = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store <4 x i32> splat (i32 1), ptr %i.cy, align 16, !tbaa !6
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  store <4 x i32> splat (i32 1), ptr %i.cz, align 16, !tbaa !6
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  store <4 x i32> splat (i32 1), ptr %i.da, align 16, !tbaa !6
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  store <4 x i32> splat (i32 1), ptr %i.db, align 16, !tbaa !6
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  store <4 x i32> splat (i32 1), ptr %i.dc, align 16, !tbaa !6
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 208 ; 2 uses
  store i32 1, ptr %i.dd, align 16, !tbaa !6
  store <4 x i32> splat (i32 1), ptr %i.g, align 16, !tbaa !6
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store <4 x i32> splat (i32 1), ptr %i.de, align 16, !tbaa !6
  %i.df = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store <4 x i32> splat (i32 1), ptr %i.df, align 16, !tbaa !6
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store <4 x i32> splat (i32 1), ptr %i.dg, align 16, !tbaa !6
  %i.dh = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store <4 x i32> splat (i32 1), ptr %i.dh, align 16, !tbaa !6
  %i.di = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store <4 x i32> splat (i32 1), ptr %i.di, align 16, !tbaa !6
  %i.dj = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store <4 x i32> splat (i32 1), ptr %i.dj, align 16, !tbaa !6
  %i.dk = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store <4 x i32> splat (i32 1), ptr %i.dk, align 16, !tbaa !6
  %i.dl = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  store <4 x i32> splat (i32 1), ptr %i.dl, align 16, !tbaa !6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.i, i8 0, i64 4096, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i32 1, ptr %i.dm, align 16, !tbaa !6
  %i.dn = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 1, ptr %i.dn, align 16, !tbaa !6
  %i.do = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 1, ptr %i.do, align 4, !tbaa !6
  %i.dp = icmp eq i32 %2, 0
  %spec.store.select = select i1 %i.dp, i32 3, i32 %2
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @_ZN11duckdb_zstd14ZSTD_getParamsEiym(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb_zstd::ZSTD_parameters") align 4 %9, i32 noundef %spec.store.select, i64 noundef %i.z, i64 noundef %7)
  %.sroa.0235.0.copyload = load i32, ptr %9, align 4, !tbaa !6 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.5, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.5.0..sroa_idx, i64 36, i1 false), !tbaa.struct !45
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  store i32 %.sroa.0235.0.copyload, ptr %10, align 8, !tbaa !6
  %.sroa.5.0..sroa_idx237 = getelementptr inbounds nuw i8, ptr %10, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.5.0..sroa_idx237, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.5, i64 24, i1 false), !tbaa.struct !46
  %i.dq = call noundef ptr @_ZN11duckdb_zstd25ZSTD_createCDict_advancedEPKvmNS_21ZSTD_dictLoadMethod_eENS_22ZSTD_dictContentType_eENS_26ZSTD_compressionParametersENS_14ZSTD_customMemE(ptr noundef %6, i64 noundef %7, i32 noundef 1, i32 noundef 1, ptr noundef nonnull byval(%"struct.duckdb_zstd::ZSTD_compressionParameters") align 8 %10, ptr noundef nonnull byval(%"struct.duckdb_zstd::ZSTD_customMem") align 8 @_ZN11duckdb_zstdL16ZSTD_defaultCMemE) ; 23 uses
  %i.dr = call noundef ptr @_ZN11duckdb_zstd15ZSTD_createCCtxEv() ; 25 uses
  %i.ds = call noalias dereferenceable_or_null(131072) ptr @malloc(i64 noundef 131072) #15 ; 23 uses
  %i.dt = icmp ne ptr %i.dq, null
  %i.du = icmp ne ptr %i.dr, null
  %or.cond = and i1 %i.dt, %i.du
  %i.dv = icmp ne ptr %i.ds, null
  %or.cond5 = and i1 %or.cond, %i.dv
  br i1 %or.cond5, label %.preheader277, label %bb.b

.preheader277:                                    ; preds = %.preheader279.preheader
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader277
  %i.dw = shl nuw i32 1, %.sroa.0235.0.copyload
  %narrow.i = call i32 @llvm.smin.i32(i32 %i.dw, i32 131072)
  %spec.select.i = sext i32 %narrow.i to i64
  %.not63.i = icmp eq i32 %8, 0
  %i.dx = icmp ugt i32 %8, 2
  %wide.trip.count318 = zext i32 %5 to i64
  br label %bb.d

bb.b:                                             ; preds = %.preheader279.preheader
  %.not191 = icmp eq i32 %8, 0
  br i1 %.not191, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.dy = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite = call i64 @fwrite(ptr nonnull @.str.3, i64 19, i64 1, ptr %i.dy) #18 ; 0 uses
  %i.dz = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ea = call i32 @fflush(ptr noundef %i.dz)     ; 0 uses
  br label %.thread

bb.d:                                             ; preds = %.lr.ph, %_ZN11duckdb_zstdL17ZDICT_countEStatsENS_13EStats_ress_tEPKNS_15ZSTD_parametersEPjS4_S4_S4_S4_PKvmj.exit
  %indvars.iv315 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next316, %_ZN11duckdb_zstdL17ZDICT_countEStatsENS_13EStats_ress_tEPKNS_15ZSTD_parametersEPjS4_S4_S4_S4_PKvmj.exit ] ; 2 uses
  %.0170287 = phi i64 [ 0, %.lr.ph ], [ %i.lk, %_ZN11duckdb_zstdL17ZDICT_countEStatsENS_13EStats_ress_tEPKNS_15ZSTD_parametersEPjS4_S4_S4_S4_PKvmj.exit ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv315 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !15
  %.0.i = call i64 @llvm.umin.i64(i64 %i.ec, i64 %spec.select.i) ; 2 uses
  %i.ed = call noundef i64 @_ZN11duckdb_zstd40ZSTD_compressBegin_usingCDict_deprecatedEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sE(ptr noundef %i.dr, ptr noundef %i.dq)
  %i.ee = icmp ult i64 %i.ed, -119
  br i1 %i.ee, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not63.i, label %_ZN11duckdb_zstdL17ZDICT_countEStatsENS_13EStats_ress_tEPKNS_15ZSTD_parametersEPjS4_S4_S4_S4_PKvmj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ef = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.16, i64 48, i64 1, ptr %i.ef) #18 ; 0 uses
  %i.eg = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.eh = call i32 @fflush(ptr noundef %i.eg)     ; 0 uses
  br label %_ZN11duckdb_zstdL17ZDICT_countEStatsENS_13EStats_ress_tEPKNS_15ZSTD_parametersEPjS4_S4_S4_S4_PKvmj.exit

.critedge.i:                                      ; preds = %bb.d
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 %.0170287
  %i.ej = call noundef i64 @_ZN11duckdb_zstd29ZSTD_compressBlock_deprecatedEPNS_11ZSTD_CCtx_sEPvmPKvm(ptr noundef %i.dr, ptr noundef %i.ds, i64 noundef 131072, ptr noundef %i.ei, i64 noundef %.0.i) ; 2 uses
  %i.ek = icmp ult i64 %i.ej, -119
  br i1 %i.ek, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i
  br i1 %i.dx, label %bb.h, label %_ZN11duckdb_zstdL17ZDICT_countEStatsENS_13EStats_ress_tEPKNS_15ZSTD_parametersEPjS4_S4_S4_S4_PKvmj.exit

bb.h:                                             ; preds = %bb.g
  %i.el = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.em = trunc i64 %.0.i to i32
  %i.en = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.el, ptr noundef nonnull @.str.17, i32 noundef %i.em) #17 ; 0 uses
  %i.eo = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ep = call i32 @fflush(ptr noundef %i.eo)     ; 0 uses
  br label %_ZN11duckdb_zstdL17ZDICT_countEStatsENS_13EStats_ress_tEPKNS_15ZSTD_parametersEPjS4_S4_S4_S4_PKvmj.exit

bb.i:                                             ; preds = %.critedge.i
  %.not65.i = icmp eq i64 %i.ej, 0
  br i1 %.not65.i, label %_ZN11duckdb_zstdL17ZDICT_countEStatsENS_13EStats_ress_tEPKNS_15ZSTD_parametersEPjS4_S4_S4_S4_PKvmj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.eq = call noundef ptr @_ZN11duckdb_zstd16ZSTD_getSeqStoreEPKNS_11ZSTD_CCtx_sE(ptr noundef %i.dr) ; 9 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !51 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !52 ; 3 uses
  %i.ev = icmp ult ptr %i.es, %i.eu
  br i1 %i.ev, label %.lr.ph.i230.preheader, label %._crit_edge.i

.lr.ph.i230.preheader:                            ; preds = %bb.j
  %i.ew = ptrtoaddr ptr %i.eu to i64              ; 2 uses
  %i.ex = ptrtoaddr ptr %i.es to i64              ; 2 uses
  %i.ey = sub i64 %i.ew, %i.ex
  %xtraiter = and i64 %i.ey, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i230.prol.loopexit, label %.lr.ph.i230.prol

.lr.ph.i230.prol:                                 ; preds = %.lr.ph.i230.preheader, %.lr.ph.i230.prol
  %.0571.i.prol = phi ptr [ %i.fe, %.lr.ph.i230.prol ], [ %i.es, %.lr.ph.i230.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i230.prol ], [ 0, %.lr.ph.i230.preheader ]
  %i.ez = load i8, ptr %.0571.i.prol, align 1, !tbaa !19
  %i.fa = zext i8 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fa ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !6
  %i.fd = add i32 %i.fc, 1
  store i32 %i.fd, ptr %i.fb, align 4, !tbaa !6
  %i.fe = getelementptr inbounds nuw i8, ptr %.0571.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i230.prol.loopexit, label %.lr.ph.i230.prol, !llvm.loop !31

.lr.ph.i230.prol.loopexit:                        ; preds = %.lr.ph.i230.prol, %.lr.ph.i230.preheader
  %.0571.i.unr = phi ptr [ %i.es, %.lr.ph.i230.preheader ], [ %i.fe, %.lr.ph.i230.prol ]
  %i.ff = sub i64 %i.ex, %i.ew
  %i.fg = icmp ugt i64 %i.ff, -4
  br i1 %i.fg, label %._crit_edge.i, label %.lr.ph.i230

.lr.ph.i230:                                      ; preds = %.lr.ph.i230.prol.loopexit, %.lr.ph.i230
  %.0571.i = phi ptr [ %i.ge, %.lr.ph.i230 ], [ %.0571.i.unr, %.lr.ph.i230.prol.loopexit ] ; 5 uses
  %i.fh = load i8, ptr %.0571.i, align 1, !tbaa !19
  %i.fi = zext i8 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fi ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !6
  %i.fl = add i32 %i.fk, 1
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !6
  %i.fm = getelementptr inbounds nuw i8, ptr %.0571.i, i64 1
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !19
  %i.fo = zext i8 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fo ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !6
  %i.fr = add i32 %i.fq, 1
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !6
  %i.fs = getelementptr inbounds nuw i8, ptr %.0571.i, i64 2
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !19
  %i.fu = zext i8 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fu ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !6
  %i.fx = add i32 %i.fw, 1
  store i32 %i.fx, ptr %i.fv, align 4, !tbaa !6
  %i.fy = getelementptr inbounds nuw i8, ptr %.0571.i, i64 3
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !19
  %i.ga = zext i8 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ga ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !6
  %i.gd = add i32 %i.gc, 1
  store i32 %i.gd, ptr %i.gb, align 4, !tbaa !6
  %i.ge = getelementptr inbounds nuw i8, ptr %.0571.i, i64 4 ; 2 uses
  %exitcond.not.i231.3 = icmp eq ptr %i.ge, %i.eu
  br i1 %exitcond.not.i231.3, label %._crit_edge.i, label %.lr.ph.i230, !llvm.loop !32

._crit_edge.i:                                    ; preds = %.lr.ph.i230.prol.loopexit, %.lr.ph.i230, %bb.j
  %i.gf = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !53
  %i.gh = load ptr, ptr %i.eq, align 8, !tbaa !54
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = lshr i64 %i.gk, 3                       ; 8 uses
  %i.gm = trunc i64 %i.gl to i32                  ; 2 uses
  %i.gn = call noundef i32 @_ZN11duckdb_zstd15ZSTD_seqToCodesEPKNS_10seqStore_tE(ptr noundef nonnull %i.eq) ; 0 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.eq, i64 48
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !55 ; 5 uses
  %.not.i226 = icmp eq i32 %i.gm, 0
  br i1 %.not.i226, label %_ZN11duckdb_zstdL17ZDICT_countEStatsENS_13EStats_ress_tEPKNS_15ZSTD_parametersEPjS4_S4_S4_S4_PKvmj.exit, label %.lr.ph4.preheader.i

.lr.ph4.preheader.i:                              ; preds = %._crit_edge.i
  %wide.trip.count.i227 = and i64 %i.gl, 4294967295
  %i.gq = add nsw i64 %wide.trip.count.i227, -1   ; 3 uses
  %xtraiter415 = and i64 %i.gl, 3                 ; 3 uses
  %i.gr = icmp ult i64 %i.gq, 3
  br i1 %i.gr, label %.lr.ph4.i.epil.preheader, label %.lr.ph4.preheader.i.new

.lr.ph4.preheader.i.new:                          ; preds = %.lr.ph4.preheader.i
  %unroll_iter = and i64 %i.gl, 4294967292
  br label %.lr.ph4.i

.lr.ph4.i:                                        ; preds = %.lr.ph4.i, %.lr.ph4.preheader.i.new
  %indvars.iv.i228 = phi i64 [ 0, %.lr.ph4.preheader.i.new ], [ %indvars.iv.next.i229.3, %.lr.ph4.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph4.preheader.i.new ], [ %niter.next.3, %.lr.ph4.i ]
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 %indvars.iv.i228
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !19
  %i.gu = zext i8 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gu ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !6
  %i.gx = add i32 %i.gw, 1
  store i32 %i.gx, ptr %i.gv, align 4, !tbaa !6
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gp, i64 %indvars.iv.i228
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstdL20ZDICT_analyzeEntropyEPvmiPKvPKmjS2_mj:bb.a
  store <4 x i32> splat (i32 2), ptr %i.mk, align 4, !tbaa !6
  store <4 x i32> splat (i32 2), ptr %i.ml, align 4, !tbaa !6
  %i.mm = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.mn = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  store <4 x i32> splat (i32 2), ptr %i.mm, align 4, !tbaa !6
  store <4 x i32> splat (i32 2), ptr %i.mn, align 4, !tbaa !6
  %i.mo = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  %i.mp = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  store <4 x i32> splat (i32 2), ptr %i.mo, align 4, !tbaa !6
  store <4 x i32> splat (i32 2), ptr %i.mp, align 4, !tbaa !6
  %i.mq = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %i.mr = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  store <4 x i32> splat (i32 2), ptr %i.mq, align 4, !tbaa !6
  store <4 x i32> splat (i32 2), ptr %i.mr, align 4, !tbaa !6
  %i.ms = getelementptr inbounds nuw i8, ptr %i.a, i64 196
  %i.mt = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  store <4 x i32> splat (i32 2), ptr %i.ms, align 4, !tbaa !6
  store <4 x i32> splat (i32 2), ptr %i.mt, align 4, !tbaa !6
  %i.mu = getelementptr inbounds nuw i8, ptr %i.a, i64 228
  %i.mv = getelementptr inbounds nuw i8, ptr %i.a, i64 244
  store <4 x i32> splat (i32 2), ptr %i.mu, align 4, !tbaa !6
  store <4 x i32> splat (i32 2), ptr %i.mv, align 4, !tbaa !6
  %i.mw = getelementptr inbounds nuw i8, ptr %i.a, i64 260
  %i.mx = getelementptr inbounds nuw i8, ptr %i.a, i64 276
  store <4 x i32> splat (i32 2), ptr %i.mw, align 4, !tbaa !6
  store <4 x i32> splat (i32 2), ptr %i.mx, align 4, !tbaa !6
  %i.my = getelementptr inbounds nuw i8, ptr %i.a, i64 292
  %i.mz = getelementptr inbounds nuw i8, ptr %i.a, i64 308
  store <4 x i32> splat (i32 2), ptr %i.my, align 4, !tbaa !6
  store <4 x i32> splat (i32 2), ptr %i.mz, align 4, !tbaa !6
  %i.na = getelementptr inbounds nuw i8, ptr %i.a, i64 324
  %i.nb = getelementptr inbounds nuw i8, ptr %i.a, i64 340
  store <4 x i32> splat (i32 2), ptr %i.na, align 4, !tbaa !6
  store <4 x i32> splat (i32 2), ptr %i.nb, align 4, !tbaa !6
  %i.nc = getelementptr inbounds nuw i8, ptr %i.a, i64 356
  %i.nd = getelementptr inbounds nuw i8, ptr %i.a, i64 372
  store <4 x i32> splat (i32 2), ptr %i.nc, align 4, !tbaa !6
  store <4 x i32> splat (i32 2), ptr %i.nd, align 4, !tbaa !6
  %i.ne = getelementptr inbounds nuw i8, ptr %i.a, i64 388
  %i.nf = getelementptr inbounds nuw i8, ptr %i.a, i64 404
  store <4 x i32> splat (i32 2), ptr %i.ne, align 4, !tbaa !6
  store <4 x i32> splat (i32 2), ptr %i.nf, align 4, !tbaa !6
  %i.ng = getelementptr inbounds nuw i8, ptr %i.a, i64 420
  %i.nh = getelementptr inbounds nuw i8, ptr %i.a, i64 436
  store <4 x i32> splat (i32 2), ptr %i.ng, align 4, !tbaa !6
  store <4 x i32> splat (i32 2), ptr %i.nh, align 4, !tbaa !6
  %i.ni = getelementptr inbounds nuw i8, ptr %i.a, i64 452
  %i.nj = getelementptr inbounds nuw i8, ptr %i.a, i64 468
  store <4 x i32> splat (i32 2), ptr %i.ni, align 4, !tbaa !6
  store <4 x i32> splat (i32 2), ptr %i.nj, align 4, !tbaa !6
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 484
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 500
  store <4 x i32> splat (i32 2), ptr %i.nk, align 4, !tbaa !6
  store <4 x i32> splat (i32 2), ptr %i.nl, align 4, !tbaa !6
  %i.nm = getelementptr inbounds nuw i8, ptr %i.a, i64 516
  %i.nn = getelementptr inbounds nuw i8, ptr %i.a, i64 532
  store <4 x i32> splat (i32 2), ptr %i.nm, align 4, !tbaa !6
  store <4 x i32> splat (i32 2), ptr %i.nn, align 4, !tbaa !6
  %i.no = getelementptr inbounds nuw i8, ptr %i.a, i64 548
  %i.np = getelementptr inbounds nuw i8, ptr %i.a, i64 564
  store <4 x i32> splat (i32 2), ptr %i.no, align 4, !tbaa !6
  store <4 x i32> splat (i32 2), ptr %i.np, align 4, !tbaa !6
  %i.nq = getelementptr inbounds nuw i8, ptr %i.a, i64 580
  %i.nr = getelementptr inbounds nuw i8, ptr %i.a, i64 596
  store <4 x i32> splat (i32 2), ptr %i.nq, align 4, !tbaa !6
  store <4 x i32> splat (i32 2), ptr %i.nr, align 4, !tbaa !6
  %i.ns = getelementptr inbounds nuw i8, ptr %i.a, i64 612
  %i.nt = getelementptr inbounds nuw i8, ptr %i.a, i64 628
  store <4 x i32> splat (i32 2), ptr %i.ns, align 4, !tbaa !6
  store <4 x i32> splat (i32 2), ptr %i.nt, align 4, !tbaa !6
  %i.nu = getelementptr inbounds nuw i8, ptr %i.a, i64 644
  %i.nv = getelementptr inbounds nuw i8, ptr %i.a, i64 660
  store <4 x i32> splat (i32 2), ptr %i.nu, align 4, !tbaa !6
  store <4 x i32> splat (i32 2), ptr %i.nv, align 4, !tbaa !6
  %i.nw = getelementptr inbounds nuw i8, ptr %i.a, i64 676
  %i.nx = getelementptr inbounds nuw i8, ptr %i.a, i64 692
  store <4 x i32> splat (i32 2), ptr %i.nw, align 4, !tbaa !6
  store <4 x i32> splat (i32 2), ptr %i.nx, align 4, !tbaa !6
  %i.ny = getelementptr inbounds nuw i8, ptr %i.a, i64 708
  %i.nz = getelementptr inbounds nuw i8, ptr %i.a, i64 724
  store <4 x i32> splat (i32 2), ptr %i.ny, align 4, !tbaa !6
  store <4 x i32> splat (i32 2), ptr %i.nz, align 4, !tbaa !6
  %i.oa = getelementptr inbounds nuw i8, ptr %i.a, i64 740
  %i.ob = getelementptr inbounds nuw i8, ptr %i.a, i64 756
  store <4 x i32> splat (i32 2), ptr %i.oa, align 4, !tbaa !6
  store <4 x i32> splat (i32 2), ptr %i.ob, align 4, !tbaa !6
  %i.oc = getelementptr inbounds nuw i8, ptr %i.a, i64 772
  %i.od = getelementptr inbounds nuw i8, ptr %i.a, i64 788
  store <4 x i32> splat (i32 2), ptr %i.oc, align 4, !tbaa !6
  store <4 x i32> splat (i32 2), ptr %i.od, align 4, !tbaa !6
  %i.oe = getelementptr inbounds nuw i8, ptr %i.a, i64 804
  %i.of = getelementptr inbounds nuw i8, ptr %i.a, i64 820
  store <4 x i32> splat (i32 2), ptr %i.oe, align 4, !tbaa !6
  store <4 x i32> splat (i32 2), ptr %i.of, align 4, !tbaa !6
  %i.og = getelementptr inbounds nuw i8, ptr %i.a, i64 836
  %i.oh = getelementptr inbounds nuw i8, ptr %i.a, i64 852
  store <4 x i32> splat (i32 2), ptr %i.og, align 4, !tbaa !6
  store <4 x i32> splat (i32 2), ptr %i.oh, align 4, !tbaa !6
  %i.oi = getelementptr inbounds nuw i8, ptr %i.a, i64 868
  %i.oj = getelementptr inbounds nuw i8, ptr %i.a, i64 884
  store <4 x i32> splat (i32 2), ptr %i.oi, align 4, !tbaa !6
  store <4 x i32> splat (i32 2), ptr %i.oj, align 4, !tbaa !6
  %i.ok = getelementptr inbounds nuw i8, ptr %i.a, i64 900
  %i.ol = getelementptr inbounds nuw i8, ptr %i.a, i64 916
  store <4 x i32> splat (i32 2), ptr %i.ok, align 4, !tbaa !6
  store <4 x i32> splat (i32 2), ptr %i.ol, align 4, !tbaa !6
  %i.om = getelementptr inbounds nuw i8, ptr %i.a, i64 932
  %i.on = getelementptr inbounds nuw i8, ptr %i.a, i64 948
  store <4 x i32> splat (i32 2), ptr %i.om, align 4, !tbaa !6
  store <4 x i32> splat (i32 2), ptr %i.on, align 4, !tbaa !6
  %i.oo = getelementptr inbounds nuw i8, ptr %i.a, i64 964
  %i.op = getelementptr inbounds nuw i8, ptr %i.a, i64 980
  store <4 x i32> splat (i32 2), ptr %i.oo, align 4, !tbaa !6
  store <4 x i32> splat (i32 2), ptr %i.op, align 4, !tbaa !6
  %i.oq = getelementptr inbounds nuw i8, ptr %i.a, i64 996
  store i32 2, ptr %i.oq, align 4, !tbaa !6
  %i.or = getelementptr inbounds nuw i8, ptr %i.a, i64 1000
  store i32 2, ptr %i.or, align 8, !tbaa !6
  %i.os = getelementptr inbounds nuw i8, ptr %i.a, i64 1004
  store i32 2, ptr %i.os, align 4, !tbaa !6
  %i.ot = getelementptr inbounds nuw i8, ptr %i.a, i64 1008
  store i32 2, ptr %i.ot, align 16, !tbaa !6
  %i.ou = getelementptr inbounds nuw i8, ptr %i.a, i64 1012
  store i32 2, ptr %i.ou, align 4, !tbaa !6
  %i.ov = getelementptr inbounds nuw i8, ptr %i.a, i64 1016
  store i32 2, ptr %i.ov, align 8, !tbaa !6
  %i.ow = getelementptr inbounds nuw i8, ptr %i.a, i64 1020
  store i32 2, ptr %i.ow, align 4, !tbaa !6
  store i32 4, ptr %i.a, align 16, !tbaa !6
  %i.ox = getelementptr inbounds nuw i8, ptr %i.a, i64 1012
  store i32 1, ptr %i.ox, align 4, !tbaa !6
  %i.oy = getelementptr inbounds nuw i8, ptr %i.a, i64 1016
  store i32 1, ptr %i.oy, align 8, !tbaa !6
  %i.oz = call noundef i64 @_ZN11duckdb_zstd20HUF_buildCTable_wkspEPmPKjjjPvm(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef 255, i32 noundef 11, ptr noundef nonnull %i.j, i64 noundef 4864)
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.p, %vector.body385
  %.0160 = phi i64 [ %i.oz, %vector.body385 ], [ %i.lw, %bb.p ]
  %min.iters.check390 = icmp ult i32 %i.l, 128
  br i1 %min.iters.check390, label %.preheader.preheader407, label %vector.ph391

vector.ph391:                                     ; preds = %.preheader.preheader
  %n.vec392 = and i64 %wide.trip.count, 56        ; 3 uses
  br label %vector.body393

vector.body393:                                   ; preds = %vector.body393, %vector.ph391
  %index394 = phi i64 [ 0, %vector.ph391 ], [ %index.next399, %vector.body393 ] ; 2 uses
  %vec.phi395 = phi <4 x i32> [ zeroinitializer, %vector.ph391 ], [ %i.pc, %vector.body393 ]
  %vec.phi396 = phi <4 x i32> [ zeroinitializer, %vector.ph391 ], [ %i.pd, %vector.body393 ]
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index394 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  %wide.load397 = load <4 x i32>, ptr %i.pa, align 16, !tbaa !6
  %wide.load398 = load <4 x i32>, ptr %i.pb, align 16, !tbaa !6
  %i.pc = add <4 x i32> %wide.load397, %vec.phi395 ; 2 uses
  %i.pd = add <4 x i32> %wide.load398, %vec.phi396 ; 2 uses
  %index.next399 = add nuw i64 %index394, 8       ; 2 uses
  %i.pe = icmp eq i64 %index.next399, %n.vec392
  br i1 %i.pe, label %middle.block400, label %vector.body393, !llvm.loop !41

middle.block400:                                  ; preds = %vector.body393
  %bin.rdx401 = add <4 x i32> %i.pd, %i.pc
  %i.pf = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx401) ; 2 uses
  %cmp.n402 = icmp eq i64 %n.vec392, %wide.trip.count
  br i1 %cmp.n402, label %.loopexit405, label %.preheader.preheader407

.preheader.preheader407:                          ; preds = %.preheader.preheader, %middle.block400
  %indvars.iv328.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec392, %middle.block400 ]
  %.0171294.ph = phi i32 [ 0, %.preheader.preheader ], [ %i.pf, %middle.block400 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader407, %.preheader
  %indvars.iv328 = phi i64 [ %indvars.iv.next329, %.preheader ], [ %indvars.iv328.ph, %.preheader.preheader407 ] ; 2 uses
  %.0171294 = phi i32 [ %i.pi, %.preheader ], [ %.0171294.ph, %.preheader.preheader407 ]
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv328
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !6
  %i.pi = add i32 %i.ph, %.0171294                ; 2 uses
  %indvars.iv.next329 = add nuw nsw i64 %indvars.iv328, 1 ; 2 uses
  %exitcond332.not = icmp eq i64 %indvars.iv.next329, %wide.trip.count
  br i1 %exitcond332.not, label %.loopexit405, label %.preheader, !llvm.loop !42

.loopexit405:                                     ; preds = %.preheader, %middle.block400
  %.lcssa = phi i32 [ %i.pf, %middle.block400 ], [ %i.pi, %.preheader ]
  %i.pj = trunc i64 %.0160 to i32
  %i.pk = zext i32 %.lcssa to i64
  %i.pl = call noundef i64 @_ZN11duckdb_zstd18FSE_normalizeCountEPsjPKjmjj(ptr noundef nonnull %i.d, i32 noundef 8, ptr noundef nonnull %i.c, i64 noundef %i.pk, i32 noundef %i.n, i32 noundef 1) ; 4 uses
  %i.pm = icmp ult i64 %i.pl, -119
  br i1 %i.pm, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.loopexit405
  %.not220 = icmp eq i32 %8, 0
  br i1 %.not220, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.pn = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite221 = call i64 @fwrite(ptr nonnull @.str.8, i64 44, i64 1, ptr %i.pn) #18 ; 0 uses
  %i.po = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.pp = call i32 @fflush(ptr noundef %i.po)     ; 0 uses
  br label %.thread

bb.u:                                             ; preds = %.loopexit405
  %11 = load <52 x i32>, ptr %i.e, align 16, !tbaa !6
  %i.pq = load i32, ptr %i.dd, align 16, !tbaa !6
  %i.pr = call i32 @llvm.vector.reduce.add.v52i32(<52 x i32> %11)
  %op.rdx = add i32 %i.pr, %i.pq
  %i.ps = trunc i64 %i.pl to i32
  %i.pt = zext i32 %op.rdx to i64
  %i.pu = call noundef i64 @_ZN11duckdb_zstd18FSE_normalizeCountEPsjPKjmjj(ptr noundef nonnull %i.f, i32 noundef 9, ptr noundef nonnull %i.e, i64 noundef %i.pt, i32 noundef 52, i32 noundef 1) ; 4 uses
  %i.pv = icmp ult i64 %i.pu, -119
  br i1 %i.pv, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not218 = icmp eq i32 %8, 0
  br i1 %.not218, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.pw = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite219 = call i64 @fwrite(ptr nonnull @.str.9, i64 48, i64 1, ptr %i.pw) #18 ; 0 uses
  %i.px = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.py = call i32 @fflush(ptr noundef %i.px)     ; 0 uses
  br label %.thread

bb.x:                                             ; preds = %bb.u
  %12 = load <36 x i32>, ptr %i.g, align 16, !tbaa !6
  %i.pz = call i32 @llvm.vector.reduce.add.v36i32(<36 x i32> %12)
  %i.qa = trunc i64 %i.pu to i32
  %i.qb = zext i32 %i.pz to i64
  %i.qc = call noundef i64 @_ZN11duckdb_zstd18FSE_normalizeCountEPsjPKjmjj(ptr noundef nonnull %i.h, i32 noundef 9, ptr noundef nonnull %i.g, i64 noundef %i.qb, i32 noundef 35, i32 noundef 1) ; 4 uses
  %i.qd = icmp ult i64 %i.qc, -119
  br i1 %i.qd, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not216 = icmp eq i32 %8, 0
  br i1 %.not216, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.qe = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite217 = call i64 @fwrite(ptr nonnull @.str.10, i64 46, i64 1, ptr %i.qe) #18 ; 0 uses
  %i.qf = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.qg = call i32 @fflush(ptr noundef %i.qf)     ; 0 uses
  br label %.thread

bb.aa:                                            ; preds = %bb.x
  %i.qh = trunc i64 %i.qc to i32
  %i.qi = call noundef i64 @_ZN11duckdb_zstd20HUF_writeCTable_wkspEPvmPKmjjS0_m(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.b, i32 noundef 255, i32 noundef %i.pj, ptr noundef nonnull %i.j, i64 noundef 4864) ; 6 uses
  %i.qj = icmp ult i64 %i.qi, -119
  br i1 %i.qj, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not203 = icmp eq i32 %8, 0
  br i1 %.not203, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.qk = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite204 = call i64 @fwrite(ptr nonnull @.str.11, i64 23, i64 1, ptr %i.qk) #18 ; 0 uses
  %i.ql = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.qm = call i32 @fflush(ptr noundef %i.ql)     ; 0 uses
  br label %.thread

bb.ad:                                            ; preds = %bb.aa
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 %i.qi ; 2 uses
  %i.qo = sub i64 %1, %i.qi                       ; 2 uses
  %i.qp = call noundef i64 @_ZN11duckdb_zstd15FSE_writeNCountEPvmPKsjj(ptr noundef %i.qn, i64 noundef %i.qo, ptr noundef nonnull %i.d, i32 noundef 30, i32 noundef %i.ps) ; 6 uses
  %i.qq = icmp ult i64 %i.qp, -119
  br i1 %i.qq, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not206 = icmp eq i32 %8, 0
  br i1 %.not206, label %.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.qr = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite207 = call i64 @fwrite(ptr nonnull @.str.12, i64 42, i64 1, ptr %i.qr) #18 ; 0 uses
  %i.qs = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.qt = call i32 @fflush(ptr noundef %i.qs)     ; 0 uses
  br label %.thread

bb.ag:                                            ; preds = %bb.ad
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.qp ; 2 uses
  %i.qv = sub i64 %i.qo, %i.qp                    ; 2 uses
  %i.qw = call noundef i64 @_ZN11duckdb_zstd15FSE_writeNCountEPvmPKsjj(ptr noundef %i.qu, i64 noundef %i.qv, ptr noundef nonnull %i.f, i32 noundef 52, i32 noundef %i.qa) ; 6 uses
  %i.qx = icmp ult i64 %i.qw, -119
  br i1 %i.qx, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not209 = icmp eq i32 %8, 0
  br i1 %.not209, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.qy = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite210 = call i64 @fwrite(ptr nonnull @.str.13, i64 46, i64 1, ptr %i.qy) #18 ; 0 uses
  %i.qz = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ra = call i32 @fflush(ptr noundef %i.qz)     ; 0 uses
  br label %.thread

bb.aj:                                            ; preds = %bb.ag
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qu, i64 %i.qw ; 2 uses
  %i.rc = sub i64 %i.qv, %i.qw                    ; 2 uses
  %i.rd = call noundef i64 @_ZN11duckdb_zstd15FSE_writeNCountEPvmPKsjj(ptr noundef %i.rb, i64 noundef %i.rc, ptr noundef nonnull %i.h, i32 noundef 35, i32 noundef %i.qh) ; 6 uses
  %i.re = icmp ult i64 %i.rd, -119
  br i1 %i.re, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not212 = icmp eq i32 %8, 0
  br i1 %.not212, label %.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.rf = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite213 = call i64 @fwrite(ptr nonnull @.str.14, i64 44, i64 1, ptr %i.rf) #18 ; 0 uses
  %i.rg = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.rh = call i32 @fflush(ptr noundef %i.rg)     ; 0 uses
  br label %.thread

bb.am:                                            ; preds = %bb.aj
  %i.ri = sub i64 %i.rc, %i.rd
  %i.rj = icmp ult i64 %i.ri, 12
  br i1 %i.rj, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %.not214 = icmp eq i32 %8, 0
  br i1 %.not214, label %.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.rk = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite215 = call i64 @fwrite(ptr nonnull @.str.15, i64 38, i64 1, ptr %i.rk) #18 ; 0 uses
  %i.rl = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.rm = call i32 @fflush(ptr noundef %i.rl)     ; 0 uses
  br label %.thread

bb.ap:                                            ; preds = %bb.am
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rb, i64 %i.rd ; 3 uses
  store i32 1, ptr %i.rn, align 1, !tbaa !6
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 4
  store i32 4, ptr %i.ro, align 1, !tbaa !6
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  store i32 8, ptr %i.rp, align 1, !tbaa !6
  %i.rq = add nuw i64 %i.qi, 12
  %i.rr = add i64 %i.rq, %i.qp
  %i.rs = add i64 %i.rr, %i.qw
  %i.rt = add i64 %i.rs, %i.rd
  br label %.thread

.thread:                                          ; preds = %bb.ak, %bb.al, %bb.ah, %bb.ai, %bb.ae, %bb.af, %bb.ab, %bb.ac, %bb.n, %bb.o, %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit, %bb.an, %bb.ao, %bb.y, %bb.z, %bb.v, %bb.w, %bb.s, %bb.t, %bb.b, %bb.c, %bb.ap
  %.sroa.0.0 = phi ptr [ %i.dq, %bb.b ], [ %i.dq, %bb.t ], [ %i.dq, %bb.s ], [ %i.dq, %bb.w ], [ %i.dq, %bb.v ], [ %i.dq, %bb.z ], [ %i.dq, %bb.y ], [ %i.dq, %bb.ao ], [ %i.dq, %bb.an ], [ %i.dq, %bb.ap ], [ %i.dq, %bb.ah ], [ %i.dq, %bb.ae ], [ %i.dq, %bb.ab ], [ %i.dq, %bb.n ], [ null, %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit ], [ %i.dq, %bb.c ], [ %i.dq, %bb.o ], [ %i.dq, %bb.ac ], [ %i.dq, %bb.af ], [ %i.dq, %bb.ai ], [ %i.dq, %bb.al ], [ %i.dq, %bb.ak ]
  %.sroa.7.0 = phi ptr [ %i.dr, %bb.b ], [ %i.dr, %bb.t ], [ %i.dr, %bb.s ], [ %i.dr, %bb.w ], [ %i.dr, %bb.v ], [ %i.dr, %bb.z ], [ %i.dr, %bb.y ], [ %i.dr, %bb.ao ], [ %i.dr, %bb.an ], [ %i.dr, %bb.ap ], [ %i.dr, %bb.ah ], [ %i.dr, %bb.ae ], [ %i.dr, %bb.ab ], [ %i.dr, %bb.n ], [ null, %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit ], [ %i.dr, %bb.c ], [ %i.dr, %bb.o ], [ %i.dr, %bb.ac ], [ %i.dr, %bb.af ], [ %i.dr, %bb.ai ], [ %i.dr, %bb.al ], [ %i.dr, %bb.ak ]
  %.sroa.10.0 = phi ptr [ %i.ds, %bb.b ], [ %i.ds, %bb.t ], [ %i.ds, %bb.s ], [ %i.ds, %bb.w ], [ %i.ds, %bb.v ], [ %i.ds, %bb.z ], [ %i.ds, %bb.y ], [ %i.ds, %bb.ao ], [ %i.ds, %bb.an ], [ %i.ds, %bb.ap ], [ %i.ds, %bb.ah ], [ %i.ds, %bb.ae ], [ %i.ds, %bb.ab ], [ %i.ds, %bb.n ], [ null, %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit ], [ %i.ds, %bb.c ], [ %i.ds, %bb.o ], [ %i.ds, %bb.ac ], [ %i.ds, %bb.af ], [ %i.ds, %bb.ai ], [ %i.ds, %bb.al ], [ %i.ds, %bb.ak ]
  %.5 = phi i64 [ -64, %bb.b ], [ %i.pl, %bb.t ], [ %i.pl, %bb.s ], [ %i.pu, %bb.w ], [ %i.pu, %bb.v ], [ %i.qc, %bb.z ], [ %i.qc, %bb.y ], [ -70, %bb.ao ], [ -70, %bb.an ], [ %i.rt, %bb.ap ], [ %i.qw, %bb.ah ], [ %i.qp, %bb.ae ], [ %i.qi, %bb.ab ], [ %i.lw, %bb.n ], [ -34, %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit ], [ -64, %bb.c ], [ %i.lw, %bb.o ], [ %i.qi, %bb.ac ], [ %i.qp, %bb.af ], [ %i.qw, %bb.ai ], [ %i.rd, %bb.al ], [ %i.rd, %bb.ak ]
  %i.ru = call noundef i64 @_ZN11duckdb_zstd14ZSTD_freeCDictEPNS_12ZSTD_CDict_sE(ptr noundef %.sroa.0.0) ; 0 uses
  %i.rv = call noundef i64 @_ZN11duckdb_zstd13ZSTD_freeCCtxEPNS_11ZSTD_CCtx_sE(ptr noundef %.sroa.7.0) ; 0 uses
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
define noundef i64 @_ZN11duckdb_zstd28ZDICT_trainFromBuffer_legacyEPvmPKvPKmjNS_21ZDICT_legacy_params_tE(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef readonly byval(%"struct.duckdb_zstd::ZDICT_legacy_params_t") align 8 captures(none) %5) local_unnamed_addr #1 {
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
  %vec.phi130 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.g, %vector.body ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <2 x i64>, ptr %i.d, align 8, !tbaa !15
  %wide.load131 = load <2 x i64>, ptr %i.e, align 8, !tbaa !15
  %i.f = add <2 x i64> %wide.load, %vec.phi       ; 2 uses
  %i.g = add <2 x i64> %wide.load131, %vec.phi130 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !60

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
  %i.k = load i64, ptr %i.j, align 8, !tbaa !15
  %i.l = add i64 %i.k, %.067.i                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstdL14ZDICT_tryMergeEPNS_8dictItemES0_jPKv:bb.a
  %i.u = lshr i32 %.sroa.0102.sroa.14.0.extract.trunc, 3
  %i.v = add i32 %i.r, %i.u
  %i.w = add i32 %i.v, %i.t                       ; 3 uses
  store i32 %i.w, ptr %i.s, align 4, !tbaa !25
  %.sroa.0102.0.copyload = load i64, ptr %i.j, align 4
  %i.x = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.x, label %.lr.ph203, label %.critedge

.lr.ph203:                                        ; preds = %bb.c, %bb.d
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %bb.d ], [ %indvars.iv, %bb.c ] ; 3 uses
  %indvars.iv.next225 = add nsw i64 %indvars.iv224, -1 ; 3 uses
  %i.y = and i64 %indvars.iv.next225, 4294967295
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !25
  %i.ac = icmp ult i32 %i.ab, %i.w
  br i1 %i.ac, label %bb.d, label %.critedge.loopexit.split.loop.exit269

bb.d:                                             ; preds = %.lr.ph203
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv224
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ad, ptr noundef nonnull align 4 dereferenceable(12) %i.z, i64 12, i1 false), !tbaa.struct !26
  %i.ae = and i64 %indvars.iv.next225, 4294967294
  %.not248 = icmp eq i64 %i.ae, 0
  br i1 %.not248, label %.critedge, label %.lr.ph203, !llvm.loop !97

.critedge.loopexit.split.loop.exit269:            ; preds = %.lr.ph203
  %i.af = trunc nuw i64 %indvars.iv224 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.critedge.loopexit.split.loop.exit269, %bb.c
  %.1.lcssa = phi i32 [ 1, %bb.c ], [ %i.af, %.critedge.loopexit.split.loop.exit269 ], [ 1, %bb.d ] ; 2 uses
  %i.ag = zext i32 %.1.lcssa to i64
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.ag ; 2 uses
  store i64 %.sroa.0102.0.copyload, ptr %i.ah, align 4
  %.sroa.24.0..sroa_idx132 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 %i.w, ptr %.sroa.24.0..sroa_idx132, align 4, !tbaa !6
  br label %.loopexit

bb.e:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph197, label %.lr.ph, !llvm.loop !98

bb.f:                                             ; preds = %.lr.ph197, %_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit
  %indvars.iv227 = phi i64 [ 1, %.lr.ph197 ], [ %indvars.iv.next228, %_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit ] ; 6 uses
  %i.ai = icmp eq i64 %indvars.iv227, %i.h
  br i1 %i.ai, label %_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv227 ; 8 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !23 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !24 ; 6 uses
  %i.an = add i32 %i.am, %i.ak                    ; 2 uses
  %.not = icmp uge i32 %i.an, %.sroa.0102.sroa.0.0.extract.trunc
  %i.ao = icmp ult i32 %i.ak, %.sroa.0102.sroa.0.0.extract.trunc
  %or.cond165 = and i1 %i.ao, %.not
  br i1 %or.cond165, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ap = sub nsw i32 %i.b, %i.an                 ; 3 uses
  %i.aq = lshr i32 %.sroa.0102.sroa.14.0.extract.trunc, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !25
  %i.at = add i32 %i.as, %i.aq                    ; 3 uses
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !25
  %i.au = icmp sgt i32 %i.ap, 0
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.aw = add i32 %i.ap, %i.am
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !24
  %i.ax = mul i32 %i.ap, %2
  %i.ay = udiv i32 %i.ax, %.sroa.0102.sroa.14.0.extract.trunc
  %i.az = add i32 %i.ay, %i.at                    ; 2 uses
  store i32 %i.az, ptr %i.ar, align 4, !tbaa !25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.24.0.copyload135 = phi i32 [ %i.az, %bb.i ], [ %i.at, %bb.h ] ; 2 uses
  %.sroa.0102.0.copyload112 = load i64, ptr %i.aj, align 4
  %i.ba = icmp samesign ugt i64 %indvars.iv227, 1
  br i1 %i.ba, label %.lr.ph199, label %.critedge2

.lr.ph199:                                        ; preds = %bb.j, %bb.k
  %indvars.iv236 = phi i64 [ %indvars.iv.next237, %bb.k ], [ %indvars.iv227, %bb.j ] ; 3 uses
  %indvars.iv.next237 = add nsw i64 %indvars.iv236, -1 ; 3 uses
  %i.bb = and i64 %indvars.iv.next237, 4294967295
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !25
  %i.bf = icmp ult i32 %i.be, %.sroa.24.0.copyload135
  br i1 %i.bf, label %bb.k, label %.critedge2.loopexit.split.loop.exit274

bb.k:                                             ; preds = %.lr.ph199
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv236
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bg, ptr noundef nonnull align 4 dereferenceable(12) %i.bc, i64 12, i1 false), !tbaa.struct !26
  %i.bh = and i64 %indvars.iv.next237, 4294967294
  %.not249 = icmp eq i64 %i.bh, 0
  br i1 %.not249, label %.critedge2, label %.lr.ph199, !llvm.loop !99

.critedge2.loopexit.split.loop.exit274:           ; preds = %.lr.ph199
  %i.bi = trunc nuw i64 %indvars.iv236 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.k, %.critedge2.loopexit.split.loop.exit274, %bb.j
  %.3.lcssa = phi i32 [ 1, %bb.j ], [ %i.bi, %.critedge2.loopexit.split.loop.exit274 ], [ 1, %bb.k ] ; 2 uses
  %i.bj = zext i32 %.3.lcssa to i64
  %i.bk = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.bj ; 2 uses
  store i64 %.sroa.0102.0.copyload112, ptr %i.bk, align 4
  %.sroa.24.0..sroa_idx136 = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i32 %.sroa.24.0.copyload135, ptr %.sroa.24.0..sroa_idx136, align 4, !tbaa !6
  br label %.loopexit

bb.l:                                             ; preds = %bb.g
  %i.bl = zext i32 %i.ak to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 %i.bl ; 2 uses
  %.val166 = load i64, ptr %i.bm, align 1, !tbaa !15
  %.val = load i64, ptr %i.g, align 1, !tbaa !15
  %i.bn = icmp eq i64 %.val166, %.val
  br i1 %i.bn, label %bb.m, label %_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit

bb.m:                                             ; preds = %bb.l
  %i.bo = zext i32 %i.am to i64
  %.not13.i = icmp eq i32 %i.am, 0
  br i1 %.not13.i, label %_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %bb.n
  %.010.i = phi i64 [ %i.bt, %bb.n ], [ 0, %bb.m ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.010.i
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !19
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 %.010.i
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !19
  %.not.i = icmp eq i8 %i.bq, %i.bs
  br i1 %.not.i, label %bb.n, label %_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit

bb.n:                                             ; preds = %.lr.ph.i
  %i.bt = add nuw nsw i64 %.010.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bt, %i.bo
  br i1 %exitcond.not.i, label %_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit.thread, label %.lr.ph.i, !llvm.loop !100

_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit.thread: ; preds = %bb.m, %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %.2196218 = trunc i64 %indvars.iv227 to i32
  %i.bv = sub nsw i32 %.sroa.0102.sroa.14.0.extract.trunc, %i.am
  %narrow = tail call i32 @llvm.smax.i32(i32 %i.bv, i32 1)
  %spec.select = zext nneg i32 %narrow to i64
  store i32 %.sroa.0102.sroa.0.0.extract.trunc, ptr %i.aj, align 4, !tbaa !23
  %i.bw = zext i32 %2 to i64
  %i.bx = mul nuw nsw i64 %spec.select, %i.bw
  %i.by = udiv i64 %i.bx, %.sroa.0102.sroa.14.0.extract.shift
  %i.bz = trunc i64 %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !25
  %i.cc = add i32 %i.cb, %i.bz
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !25
  %i.cd = add i32 %i.am, 1
  %i.ce = tail call i32 @llvm.umin.i32(i32 %i.cd, i32 %.sroa.0102.sroa.14.0.extract.trunc)
  store i32 %i.ce, ptr %i.bu, align 4, !tbaa !24
  br label %.loopexit

_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit:       ; preds = %.lr.ph.i, %bb.l, %bb.f
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %exitcond232.not = icmp eq i64 %indvars.iv.next228, %wide.trip.count231
  br i1 %exitcond232.not, label %.loopexit, label %bb.f, !llvm.loop !101

.loopexit:                                        ; preds = %_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit, %bb.a, %_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit.thread, %.critedge2, %.critedge
  %.0156 = phi i32 [ %.1.lcssa, %.critedge ], [ %.3.lcssa, %.critedge2 ], [ %.2196218, %_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit.thread ], [ 0, %bb.a ], [ 0, %_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit ]
  ret i32 %.0156
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
declare i32 @llvm.vector.reduce.add.v52i32(<52 x i32>) #13

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
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"_ZTSN11duckdb_zstd14ZDICT_params_tE", !5, i64 0, !5, i64 4, !5, i64 8}
!8 = !{!7, !5, i64 0}
!9 = !{!7, !5, i64 4}
!10 = !{!7, !5, i64 8}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"long", !4, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = !{!4, !4, i64 0}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = !{!"short", !4, i64 0}
!22 = !{!"_ZTSN11duckdb_zstd8dictItemE", !5, i64 0, !5, i64 4, !5, i64 8}
!23 = !{!22, !5, i64 0}
!24 = !{!22, !5, i64 4}
!25 = !{!22, !5, i64 8}
!26 = !{i64 0, i64 4, !6, i64 4, i64 4, !6, i64 8, i64 4, !6}
!27 = distinct !{!27, !16, !17, !18}
!28 = distinct !{!28, !16, !18, !17}
!29 = distinct !{!29, !16, !17, !18}
!30 = distinct !{!30, !16, !18, !17}
!31 = distinct !{!31, !20}
!32 = distinct !{!32, !16}
!33 = distinct !{!33, !16}
!34 = distinct !{!34, !20}
!35 = distinct !{!35, !16}
!36 = distinct !{!36, !20}
!37 = distinct !{!37, !16}
!38 = distinct !{!38, !20}
!39 = distinct !{!39, !16}
!40 = distinct !{!40, !16}
!41 = distinct !{!41, !16, !17, !18}
!42 = distinct !{!42, !16, !18, !17}
!43 = !{!"_ZTSN11duckdb_zstd13ZSTD_strategyE", !4, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{i64 0, i64 4, !6, i64 4, i64 4, !6, i64 8, i64 4, !6, i64 12, i64 4, !6, i64 16, i64 4, !6, i64 20, i64 4, !44, i64 24, i64 4, !6, i64 28, i64 4, !6, i64 32, i64 4, !6}
!46 = !{i64 0, i64 4, !6, i64 4, i64 4, !6, i64 8, i64 4, !6, i64 12, i64 4, !6, i64 16, i64 4, !6, i64 20, i64 4, !44}
!47 = !{!"p1 _ZTSN11duckdb_zstd8seqDef_sE", !11, i64 0}
!48 = !{!"p1 omnipotent char", !11, i64 0}
!49 = !{!"_ZTSN11duckdb_zstd21ZSTD_longLengthType_eE", !4, i64 0}
!50 = !{!"_ZTSN11duckdb_zstd10seqStore_tE", !47, i64 0, !47, i64 8, !48, i64 16, !48, i64 24, !48, i64 32, !48, i64 40, !48, i64 48, !14, i64 56, !14, i64 64, !49, i64 72, !5, i64 76}
!51 = !{!50, !48, i64 16}
!52 = !{!50, !48, i64 24}
!53 = !{!50, !47, i64 8}
!54 = !{!50, !47, i64 0}
!55 = !{!50, !48, i64 48}
!56 = !{!50, !48, i64 40}
!57 = !{!50, !48, i64 32}
!58 = !{!"_ZTSN11duckdb_zstd8seqDef_sE", !5, i64 0, !21, i64 4, !21, i64 6}
!59 = !{!58, !5, i64 0}
!60 = distinct !{!60, !16, !17, !18}
!61 = distinct !{!61, !16, !18, !17}
!62 = distinct !{!62, !16, !17, !18}
!63 = distinct !{!63, !16, !18, !17}
!64 = distinct !{!64, !16}
!65 = distinct !{!65, !16}
!66 = distinct !{!66, !20}
!67 = distinct !{!67, !16}
!68 = distinct !{!68, !16}
!69 = distinct !{!69, !16}
!70 = distinct !{!70, !16}
!71 = distinct !{!71, !20}
!72 = distinct !{!72, !16}
!73 = distinct !{!73, !16}
!74 = distinct !{!74, !16}
!75 = distinct !{!75, !16}
!76 = distinct !{!76, !16}
!77 = distinct !{!77, !16}
!78 = distinct !{!78, !16}
!79 = distinct !{!79, !16}
!80 = distinct !{!80, !16}
!81 = distinct !{!81, !16}
!82 = distinct !{!82, !16}
!83 = distinct !{!83, !16}
!84 = distinct !{!84, !20}
!85 = distinct !{!85, !16}
!86 = distinct !{!86, !16}
!87 = distinct !{!87, !20}
!88 = distinct !{!88, !16}
!89 = distinct !{!89, !16}
!90 = distinct !{!90, !16}
!91 = !{!21, !21, i64 0}
!92 = !{!"double", !4, i64 0}
!93 = !{!"_ZTSN11duckdb_zstd24ZDICT_fastCover_params_tE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !92, i64 24, !5, i64 32, !5, i64 36, !5, i64 40, !7, i64 44}
!94 = !{!93, !5, i64 4}
!95 = !{!93, !5, i64 12}
!96 = !{!93, !5, i64 44}
!97 = distinct !{!97, !16}
!98 = distinct !{!98, !16}
!99 = distinct !{!99, !16}
!100 = distinct !{!100, !16}
!101 = distinct !{!101, !16}
end_hunk_2
