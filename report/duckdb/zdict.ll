inline.NumInlined: 73
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN11duckdb_zstdL20ZDICT_analyzeEntropyEPvmiPKvPKmjS2_mj:bb.a
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
  %i.cy = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 2 uses
  store <4 x i32> splat (i32 1), ptr %i.cy, align 16, !tbaa !3
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  store <4 x i32> splat (i32 1), ptr %i.cz, align 16, !tbaa !3
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  store <4 x i32> splat (i32 1), ptr %i.da, align 16, !tbaa !3
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  store <4 x i32> splat (i32 1), ptr %i.db, align 16, !tbaa !3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  store <4 x i32> splat (i32 1), ptr %i.dc, align 16, !tbaa !3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 208 ; 2 uses
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
  %i.dl = getelementptr inbounds nuw i8, ptr %i.g, i64 128 ; 2 uses
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
  %.0175281 = phi i64 [ 0, %.lr.ph ], [ %i.lk, %_ZN11duckdb_zstdL17ZDICT_countEStatsENS_13EStats_ress_tEPKNS_15ZSTD_parametersEPjS4_S4_S4_S4_PKvmj.exit ] ; 2 uses
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
  %11 = ptrtoint ptr %i.ew to i64                 ; 2 uses
  %12 = ptrtoint ptr %i.eu to i64                 ; 2 uses
  %i.ey = sub i64 %11, %12
  %xtraiter = and i64 %i.ey, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i224.prol.loopexit, label %.lr.ph.i224.prol

.lr.ph.i224.prol:                                 ; preds = %.lr.ph.i224.preheader, %.lr.ph.i224.prol
  %.0551.i.prol = phi ptr [ %i.fe, %.lr.ph.i224.prol ], [ %i.eu, %.lr.ph.i224.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i224.prol ], [ 0, %.lr.ph.i224.preheader ]
  %i.ez = load i8, ptr %.0551.i.prol, align 1, !tbaa !33
  %i.fa = zext i8 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fa ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !3
  %i.fd = add i32 %i.fc, 1
  store i32 %i.fd, ptr %i.fb, align 4, !tbaa !3
  %i.fe = getelementptr inbounds nuw i8, ptr %.0551.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i224.prol.loopexit, label %.lr.ph.i224.prol, !llvm.loop !34

.lr.ph.i224.prol.loopexit:                        ; preds = %.lr.ph.i224.prol, %.lr.ph.i224.preheader
  %.0551.i.unr = phi ptr [ %i.eu, %.lr.ph.i224.preheader ], [ %i.fe, %.lr.ph.i224.prol ]
  %i.ff = sub i64 %12, %11
  %i.fg = icmp ugt i64 %i.ff, -4
  br i1 %i.fg, label %._crit_edge.i, label %.lr.ph.i224

.lr.ph.i224:                                      ; preds = %.lr.ph.i224.prol.loopexit, %.lr.ph.i224
  %.0551.i = phi ptr [ %i.ge, %.lr.ph.i224 ], [ %.0551.i.unr, %.lr.ph.i224.prol.loopexit ] ; 5 uses
  %i.fh = load i8, ptr %.0551.i, align 1, !tbaa !33
  %i.fi = zext i8 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fi ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !3
  %i.fl = add i32 %i.fk, 1
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !3
  %i.fm = getelementptr inbounds nuw i8, ptr %.0551.i, i64 1
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !33
  %i.fo = zext i8 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fo ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !3
  %i.fr = add i32 %i.fq, 1
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !3
  %i.fs = getelementptr inbounds nuw i8, ptr %.0551.i, i64 2
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !33
  %i.fu = zext i8 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fu ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !3
  %i.fx = add i32 %i.fw, 1
  store i32 %i.fx, ptr %i.fv, align 4, !tbaa !3
  %i.fy = getelementptr inbounds nuw i8, ptr %.0551.i, i64 3
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !33
  %i.ga = zext i8 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ga ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !3
  %i.gd = add i32 %i.gc, 1
  store i32 %i.gd, ptr %i.gb, align 4, !tbaa !3
  %i.ge = getelementptr inbounds nuw i8, ptr %.0551.i, i64 4 ; 2 uses
  %exitcond.not.i225.3 = icmp eq ptr %i.ge, %i.ew
  br i1 %exitcond.not.i225.3, label %._crit_edge.i, label %.lr.ph.i224, !llvm.loop !36

._crit_edge.i:                                    ; preds = %.lr.ph.i224.prol.loopexit, %.lr.ph.i224, %bb.j
  %i.gf = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !37
  %i.gh = load ptr, ptr %i.es, align 8, !tbaa !38
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = lshr i64 %i.gk, 3                       ; 8 uses
  %i.gm = trunc i64 %i.gl to i32                  ; 2 uses
  %i.gn = call noundef i32 @_ZN11duckdb_zstd15ZSTD_seqToCodesEPKNS_10seqStore_tE(ptr noundef nonnull %i.es) ; 0 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !39 ; 5 uses
  %.not.i220 = icmp eq i32 %i.gm, 0
  br i1 %.not.i220, label %_ZN11duckdb_zstdL17ZDICT_countEStatsENS_13EStats_ress_tEPKNS_15ZSTD_parametersEPjS4_S4_S4_S4_PKvmj.exit, label %.lr.ph4.preheader.i

.lr.ph4.preheader.i:                              ; preds = %._crit_edge.i
  %wide.trip.count.i221 = and i64 %i.gl, 4294967295
  %i.gq = add nsw i64 %wide.trip.count.i221, -1   ; 3 uses
  %xtraiter411 = and i64 %i.gl, 3                 ; 3 uses
  %i.gr = icmp ult i64 %i.gq, 3
  br i1 %i.gr, label %.lr.ph4.i.epil.preheader, label %.lr.ph4.preheader.i.new

.lr.ph4.preheader.i.new:                          ; preds = %.lr.ph4.preheader.i
  %unroll_iter = and i64 %i.gl, 4294967292
  br label %.lr.ph4.i

.lr.ph4.i:                                        ; preds = %.lr.ph4.i, %.lr.ph4.preheader.i.new
  %indvars.iv.i222 = phi i64 [ 0, %.lr.ph4.preheader.i.new ], [ %indvars.iv.next.i223.3, %.lr.ph4.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph4.preheader.i.new ], [ %niter.next.3, %.lr.ph4.i ]
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 %indvars.iv.i222
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !33
  %i.gu = zext i8 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gu ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !3
  %i.gx = add i32 %i.gw, 1
  store i32 %i.gx, ptr %i.gv, align 4, !tbaa !3
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gp, i64 %indvars.iv.i222
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 1
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !33
  %i.hb = zext i8 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hb ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !3
  %i.he = add i32 %i.hd, 1
  store i32 %i.he, ptr %i.hc, align 4, !tbaa !3
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gp, i64 %indvars.iv.i222
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 2
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !33
  %i.hi = zext i8 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hi ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !3
  %i.hl = add i32 %i.hk, 1
  store i32 %i.hl, ptr %i.hj, align 4, !tbaa !3
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gp, i64 %indvars.iv.i222
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 3
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !33
  %i.hp = zext i8 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hp ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !3
  %i.hs = add i32 %i.hr, 1
  store i32 %i.hs, ptr %i.hq, align 4, !tbaa !3
  %indvars.iv.next.i223.3 = add nuw nsw i64 %indvars.iv.i222, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph8.preheader.i.unr-lcssa, label %.lr.ph4.i, !llvm.loop !40

.lr.ph8.preheader.i.unr-lcssa:                    ; preds = %.lr.ph4.i
  %lcmp.mod412.not = icmp eq i64 %xtraiter411, 0
  br i1 %lcmp.mod412.not, label %.lr.ph8.preheader.i, label %.lr.ph4.i.epil.preheader

.lr.ph4.i.epil.preheader:                         ; preds = %.lr.ph8.preheader.i.unr-lcssa, %.lr.ph4.preheader.i
  %indvars.iv.i222.epil.init = phi i64 [ 0, %.lr.ph4.preheader.i ], [ %indvars.iv.next.i223.3, %.lr.ph8.preheader.i.unr-lcssa ]
  %lcmp.mod413 = icmp ne i64 %xtraiter411, 0
  call void @llvm.assume(i1 %lcmp.mod413)
  br label %.lr.ph4.i.epil

.lr.ph4.i.epil:                                   ; preds = %.lr.ph4.i.epil, %.lr.ph4.i.epil.preheader
  %indvars.iv.i222.epil = phi i64 [ %indvars.iv.i222.epil.init, %.lr.ph4.i.epil.preheader ], [ %indvars.iv.next.i223.epil, %.lr.ph4.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph4.i.epil.preheader ], [ %epil.iter.next, %.lr.ph4.i.epil ]
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gp, i64 %indvars.iv.i222.epil
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !33
  %i.hv = zext i8 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hv ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !3
  %i.hy = add i32 %i.hx, 1
  store i32 %i.hy, ptr %i.hw, align 4, !tbaa !3
  %indvars.iv.next.i223.epil = add nuw nsw i64 %indvars.iv.i222.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter411
  br i1 %epil.iter.cmp.not, label %.lr.ph8.preheader.i, label %.lr.ph4.i.epil, !llvm.loop !41

.lr.ph8.preheader.i:                              ; preds = %.lr.ph4.i.epil, %.lr.ph8.preheader.i.unr-lcssa
  %i.hz = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !42 ; 5 uses
  %xtraiter414 = and i64 %i.gl, 3                 ; 3 uses
  %i.ib = icmp ult i64 %i.gq, 3
  br i1 %i.ib, label %.lr.ph8.i.epil.preheader, label %.lr.ph8.preheader.i.new

.lr.ph8.preheader.i.new:                          ; preds = %.lr.ph8.preheader.i
  %unroll_iter418 = and i64 %i.gl, 4294967292
  br label %.lr.ph8.i

.lr.ph8.i:                                        ; preds = %.lr.ph8.i, %.lr.ph8.preheader.i.new
  %indvars.iv18.i = phi i64 [ 0, %.lr.ph8.preheader.i.new ], [ %indvars.iv.next19.i.3, %.lr.ph8.i ] ; 5 uses
  %niter419 = phi i64 [ 0, %.lr.ph8.preheader.i.new ], [ %niter419.next.3, %.lr.ph8.i ]
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 %indvars.iv18.i
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !33
  %i.ie = zext i8 %i.id to i64
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ie ; 2 uses
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !3
  %i.ih = add i32 %i.ig, 1
  store i32 %i.ih, ptr %i.if, align 4, !tbaa !3
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ia, i64 %indvars.iv18.i
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 1
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !33
  %i.il = zext i8 %i.ik to i64
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.il ; 2 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !3
  %i.io = add i32 %i.in, 1
  store i32 %i.io, ptr %i.im, align 4, !tbaa !3
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ia, i64 %indvars.iv18.i
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 2
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !33
  %i.is = zext i8 %i.ir to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.is ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !3
  %i.iv = add i32 %i.iu, 1
  store i32 %i.iv, ptr %i.it, align 4, !tbaa !3
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ia, i64 %indvars.iv18.i
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 3
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !33
  %i.iz = zext i8 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.iz ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !3
  %i.jc = add i32 %i.jb, 1
  store i32 %i.jc, ptr %i.ja, align 4, !tbaa !3
  %indvars.iv.next19.i.3 = add nuw nsw i64 %indvars.iv18.i, 4 ; 2 uses
  %niter419.next.3 = add i64 %niter419, 4         ; 2 uses
  %niter419.ncmp.3 = icmp eq i64 %niter419.next.3, %unroll_iter418
  br i1 %niter419.ncmp.3, label %.lr.ph12.preheader.i.unr-lcssa, label %.lr.ph8.i, !llvm.loop !43

.lr.ph12.preheader.i.unr-lcssa:                   ; preds = %.lr.ph8.i
  %lcmp.mod416.not = icmp eq i64 %xtraiter414, 0
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstd18FSE_normalizeCountEPsjPKjmjj

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
  br i1 %.not252, label %.critedge2, label %.lr.ph200, !llvm.loop !100

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
  br i1 %exitcond.not.i, label %_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit.thread, label %.lr.ph.i, !llvm.loop !101

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
  br i1 %exitcond234.not, label %.loopexit, label %bb.f, !llvm.loop !102

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
declare i32 @llvm.vector.reduce.add.v32i32(<32 x i32>) #13

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
!85 = distinct !{!85, !17}
!86 = distinct !{!86, !35}
!87 = distinct !{!87, !17}
!88 = distinct !{!88, !17}
!89 = distinct !{!89, !35}
!90 = distinct !{!90, !17}
!91 = distinct !{!91, !17}
!92 = distinct !{!92, !17}
!93 = !{!94, !4, i64 4}
!94 = !{!"_ZTSN11duckdb_zstd24ZDICT_fastCover_params_tE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !95, i64 24, !4, i64 32, !4, i64 36, !4, i64 40, !8, i64 44}
!95 = !{!"double", !5, i64 0}
!96 = !{!94, !4, i64 12}
!97 = !{!94, !4, i64 44}
!98 = distinct !{!98, !17}
!99 = distinct !{!99, !17}
!100 = distinct !{!100, !17}
!101 = distinct !{!101, !17}
!102 = distinct !{!102, !17}
end_hunk_1
