inline.NumInlined: 29
inline.NumDeleted: 15
begin_hunk_0_@_ZN11duckdb_zstdL25FASTCOVER_buildDictionaryEPKNS_15FASTCOVER_ctx_tEPjPvmNS_20ZDICT_cover_params_tEPt:bb.a
bb.k:                                             ; preds = %bb.j, %bb.g
  %.sroa.011.1.i = phi i32 [ %i.bo, %bb.j ], [ %.sroa.011.02.i, %bb.g ] ; 3 uses
  %.sroa.18.3.i = phi i32 [ %.sroa.18.2.i, %bb.j ], [ %.sroa.18.1.i, %bb.g ] ; 3 uses
  %i.bp = icmp ugt i32 %.sroa.18.3.i, %.sroa.6.05.i ; 2 uses
  %.sroa.6.1.i = tail call i32 @llvm.umax.i32(i32 %.sroa.18.3.i, i32 %.sroa.6.05.i) ; 2 uses
  %.sroa.049.sroa.4.1.i = select i1 %i.bp, i32 %indvars.i, i32 %.sroa.049.sroa.4.06.i ; 2 uses
  %.sroa.049.sroa.0.1.i = select i1 %i.bp, i32 %.sroa.011.1.i, i32 %.sroa.049.sroa.0.07.i ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader1.i.loopexit, label %bb.e, !llvm.loop !47

.preheader.i:                                     ; preds = %.prol.loopexit, %.lr.ph12.i.new, %.preheader1.i
  %.not13.i = icmp eq i32 %.sroa.049.sroa.0.0.lcssa.i, %.sroa.049.sroa.4.0.lcssa.i
  br i1 %.not13.i, label %_ZN11duckdb_zstdL23FASTCOVER_selectSegmentEPKNS_15FASTCOVER_ctx_tEPjjjNS_20ZDICT_cover_params_tEPt.exit, label %.lr.ph15.i

.lr.ph15.i:                                       ; preds = %.preheader.i
  %i.bq = load ptr, ptr %0, align 8, !tbaa !29    ; 5 uses
  %i.br = sub i32 64, %i.w
  %i.bs = zext nneg i32 %i.br to i64              ; 5 uses
  %i.bt = sub i32 %.sroa.049.sroa.4.0.lcssa.i, %.sroa.049.sroa.0.0.lcssa.i
  %xtraiter68 = and i32 %i.bt, 3                  ; 2 uses
  %lcmp.mod69.not = icmp eq i32 %xtraiter68, 0
  br i1 %lcmp.mod69.not, label %.prol.loopexit67, label %.prol.preheader66

.prol.preheader66:                                ; preds = %.lr.ph15.i, %.prol.preheader66
  %.014.i.prol = phi i32 [ %i.bz, %.prol.preheader66 ], [ %.sroa.049.sroa.0.0.lcssa.i, %.lr.ph15.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader66 ], [ 0, %.lr.ph15.i ]
  %i.bu = zext i32 %.014.i.prol to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bu
  %.val.i58.i.prol = load i64, ptr %i.bv, align 1, !tbaa !35
  %i.bw = mul i64 %.val.i58.i.prol, %..i.i
  %i.bx = lshr i64 %i.bw, %i.bs
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bx
  store i32 0, ptr %i.by, align 4, !tbaa !3
  %i.bz = add i32 %.014.i.prol, 1                 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter68
  br i1 %prol.iter.cmp.not, label %.prol.loopexit67, label %.prol.preheader66, !llvm.loop !48

.prol.loopexit67:                                 ; preds = %.prol.preheader66, %.lr.ph15.i
  %.014.i.unr = phi i32 [ %.sroa.049.sroa.0.0.lcssa.i, %.lr.ph15.i ], [ %i.bz, %.prol.preheader66 ]
  %i.ca = sub i32 %.sroa.049.sroa.0.0.lcssa.i, %.sroa.049.sroa.4.0.lcssa.i
  %i.cb = icmp ugt i32 %i.ca, -4
  br i1 %i.cb, label %_ZN11duckdb_zstdL23FASTCOVER_selectSegmentEPKNS_15FASTCOVER_ctx_tEPjjjNS_20ZDICT_cover_params_tEPt.exit, label %.lr.ph15.i.new

.lr.ph12.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph12.i.new
  %indvars.iv17.i = phi i64 [ %indvars.iv.next18.i.1, %.lr.ph12.i.new ], [ %indvars.iv17.i.unr, %.prol.loopexit ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv17.i
  %.val.i56.i = load i64, ptr %i.cc, align 1, !tbaa !35
  %i.cd = mul i64 %.val.i56.i, %..i.i
  %i.ce = lshr i64 %i.cd, %i.ag
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.ce ; 2 uses
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !45
  %i.ch = add i16 %i.cg, -1
  store i16 %i.ch, ptr %i.cf, align 2, !tbaa !45
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv17.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %.val.i56.i.1 = load i64, ptr %i.cj, align 1, !tbaa !35
  %i.ck = mul i64 %.val.i56.i.1, %..i.i
  %i.cl = lshr i64 %i.ck, %i.ag
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.cl ; 2 uses
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !45
  %i.co = add i16 %i.cn, -1
  store i16 %i.co, ptr %i.cm, align 2, !tbaa !45
  %indvars.iv.next18.i.1 = add nuw nsw i64 %indvars.iv17.i, 2 ; 2 uses
  %exitcond22.not.i.1 = icmp eq i64 %indvars.iv.next18.i.1, %wide.trip.count21.i
  br i1 %exitcond22.not.i.1, label %.preheader.i, label %.lr.ph12.i.new, !llvm.loop !49

.lr.ph15.i.new:                                   ; preds = %.prol.loopexit67, %.lr.ph15.i.new
  %.014.i = phi i32 [ %i.dm, %.lr.ph15.i.new ], [ %.014.i.unr, %.prol.loopexit67 ] ; 5 uses
  %i.cp = zext i32 %.014.i to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.cp
  %.val.i58.i = load i64, ptr %i.cq, align 1, !tbaa !35
  %i.cr = mul i64 %.val.i58.i, %..i.i
  %i.cs = lshr i64 %i.cr, %i.bs
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cs
  store i32 0, ptr %i.ct, align 4, !tbaa !3
  %i.cu = add i32 %.014.i, 1
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.cv
  %.val.i58.i.1 = load i64, ptr %i.cw, align 1, !tbaa !35
  %i.cx = mul i64 %.val.i58.i.1, %..i.i
  %i.cy = lshr i64 %i.cx, %i.bs
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cy
  store i32 0, ptr %i.cz, align 4, !tbaa !3
  %i.da = add i32 %.014.i, 2
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.db
  %.val.i58.i.2 = load i64, ptr %i.dc, align 1, !tbaa !35
  %i.dd = mul i64 %.val.i58.i.2, %..i.i
  %i.de = lshr i64 %i.dd, %i.bs
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.de
  store i32 0, ptr %i.df, align 4, !tbaa !3
  %i.dg = add i32 %.014.i, 3
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.dh
  %.val.i58.i.3 = load i64, ptr %i.di, align 1, !tbaa !35
  %i.dj = mul i64 %.val.i58.i.3, %..i.i
  %i.dk = lshr i64 %i.dj, %i.bs
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dk
  store i32 0, ptr %i.dl, align 4, !tbaa !3
  %i.dm = add i32 %.014.i, 4                      ; 2 uses
  %.not.i.3 = icmp eq i32 %i.dm, %.sroa.049.sroa.4.0.lcssa.i
  br i1 %.not.i.3, label %_ZN11duckdb_zstdL23FASTCOVER_selectSegmentEPKNS_15FASTCOVER_ctx_tEPjjjNS_20ZDICT_cover_params_tEPt.exit, label %.lr.ph15.i.new, !llvm.loop !50

_ZN11duckdb_zstdL23FASTCOVER_selectSegmentEPKNS_15FASTCOVER_ctx_tEPjjjNS_20ZDICT_cover_params_tEPt.exit: ; preds = %.prol.loopexit67, %.lr.ph15.i.new, %.preheader.i
  %.sroa.049.sroa.0.0.insert.ext.i = zext i32 %.sroa.049.sroa.0.0.lcssa.i to i64
  br i1 %.sroa.6.0.lcssa.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN11duckdb_zstdL23FASTCOVER_selectSegmentEPKNS_15FASTCOVER_ctx_tEPjjjNS_20ZDICT_cover_params_tEPt.exit
  %i.dn = add i64 %.04156, 1                      ; 2 uses
  %i.do = icmp ugt i64 %i.dn, 9
  br i1 %i.do, label %select.unfold, label %bb.q

bb.m:                                             ; preds = %_ZN11duckdb_zstdL23FASTCOVER_selectSegmentEPKNS_15FASTCOVER_ctx_tEPjjjNS_20ZDICT_cover_params_tEPt.exit
  %i.dp = add i32 %i.q, %.sroa.049.sroa.4.0.lcssa.i
  %i.dq = sub i32 %i.dp, %.sroa.049.sroa.0.0.lcssa.i
  %i.dr = zext i32 %i.dq to i64
  %..040 = tail call i64 @llvm.umin.i64(i64 %.04057, i64 %i.dr) ; 3 uses
  %i.ds = icmp samesign ult i64 %..040, %i.r
  br i1 %i.ds, label %select.unfold, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dt = sub i64 %.04057, %..040                 ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 %i.dt
  %i.dv = load ptr, ptr %0, align 8, !tbaa !29
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.049.sroa.0.0.insert.ext.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.du, ptr align 1 %i.dw, i64 %..040, i1 false)
  %i.dx = load i32, ptr @_ZN11duckdb_zstdL14g_displayLevelE, align 4, !tbaa !3
  %i.dy = icmp sgt i32 %i.dx, 1
  br i1 %i.dy, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.dz = tail call i64 @clock() #12
  %i.ea = load i64, ptr @_ZN11duckdb_zstdL6g_timeE, align 8, !tbaa !35
  %i.eb = sub nsw i64 %i.dz, %i.ea
  %i.ec = icmp sgt i64 %i.eb, 150000
  %i.ed = load i32, ptr @_ZN11duckdb_zstdL14g_displayLevelE, align 4
  %i.ee = icmp sgt i32 %i.ed, 3
  %or.cond = select i1 %i.ec, i1 true, i1 %i.ee
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ef = tail call i64 @clock() #12
  store i64 %i.ef, ptr @_ZN11duckdb_zstdL6g_timeE, align 8, !tbaa !35
  %i.eg = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.eh = sub i64 %3, %i.dt
  %i.ei = mul i64 %i.eh, 100
  %i.ej = udiv i64 %i.ei, %3
  %i.ek = trunc i64 %i.ej to i32
  %i.el = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eg, ptr noundef nonnull @.str.13, i32 noundef %i.ek) #14 ; 0 uses
  %i.em = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.en = tail call i32 @fflush(ptr noundef %i.em) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.p, %bb.o, %bb.n
  %.142.ph = phi i64 [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.p ], [ %i.dn, %bb.l ]
  %.1.ph = phi i64 [ %i.dt, %bb.n ], [ %i.dt, %bb.o ], [ %i.dt, %bb.p ], [ %.04057, %bb.l ] ; 2 uses
  %i.eo = add nsw i64 %.04355, 1
  %i.ep = urem i64 %i.eo, %i.s
  %.not = icmp eq i64 %.1.ph, 0
  br i1 %.not, label %select.unfold, label %bb.d, !llvm.loop !51

select.unfold:                                    ; preds = %bb.q, %bb.m, %bb.l, %bb.c
  %.040.lcssa = phi i64 [ 0, %bb.c ], [ %.04057, %bb.l ], [ %.04057, %bb.m ], [ 0, %bb.q ]
  %i.eq = load i32, ptr @_ZN11duckdb_zstdL14g_displayLevelE, align 4, !tbaa !3
  %i.er = icmp sgt i32 %i.eq, 1
  br i1 %i.er, label %bb.r, label %bb.s

bb.r:                                             ; preds = %select.unfold
  %i.es = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.et = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.es, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #14 ; 0 uses
  %i.eu = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ev = tail call i32 @fflush(ptr noundef %i.eu) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %select.unfold
  ret i64 %.040.lcssa
}

declare noundef i64 @_ZN11duckdb_zstd24ZDICT_finalizeDictionaryEPvmPKvmS2_PKmjNS_14ZDICT_params_tE(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef byval(%"struct.duckdb_zstd::ZDICT_params_t") align 8) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd39ZDICT_optimizeTrainFromBuffer_fastCoverEPvmPKvPKmjPNS_24ZDICT_fastCover_params_tE(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %.sroa.10.sroa.4 = alloca [12 x i8], align 4    ; 4 uses
  %6 = alloca %"struct.duckdb_zstd::COVER_best_s", align 8 ; 18 uses
  %7 = alloca %"struct.duckdb_zstd::FASTCOVER_ctx_t", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.sroa.4)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !53 ; 2 uses
  %i.e = fcmp ugt double %i.d, 0.000000e+00
  %i.f = select i1 %i.e, double %i.d, double 7.500000e-01 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !54   ; 3 uses
  %i.i = icmp eq i32 %i.h, 0                      ; 3 uses
  %i.j = select i1 %i.i, i32 6, i32 %i.h          ; 2 uses
  %i.k = select i1 %i.i, i32 8, i32 %i.h          ; 3 uses
  %i.l = load i32, ptr %5, align 8, !tbaa !55     ; 3 uses
  %i.m = icmp eq i32 %i.l, 0                      ; 3 uses
  %i.n = select i1 %i.m, i32 50, i32 %i.l         ; 3 uses
  %i.o = select i1 %i.m, i32 2000, i32 %i.l       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !56   ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  %i.s = select i1 %i.r, i32 40, i32 %i.q         ; 2 uses
  %i.t = select i1 %i.m, i32 1950, i32 0          ; 2 uses
  %i.u = udiv i32 %i.t, %i.s
  %i.v = tail call i32 @llvm.umax.i32(i32 %i.u, i32 1) ; 2 uses
  %.lhs.trunc = trunc nuw nsw i32 %i.t to i16
  %.rhs.trunc = trunc nuw nsw i32 %i.v to i16
  %i.w = udiv i16 %.lhs.trunc, %.rhs.trunc
  %narrow = add nuw nsw i16 %i.w, 1
  %i.x = zext nneg i16 %narrow to i32
  %i.y = zext i1 %i.i to i32
  %i.z = shl nuw nsw i32 %i.x, %i.y               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !11 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  %i.ad = select i1 %i.ac, i32 20, i32 %i.ab      ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !12 ; 2 uses
  %i.ag = tail call i32 @llvm.umax.i32(i32 %i.af, i32 1) ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !7  ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.aj = fcmp ogt double %i.f, 1.000000e+00
  br i1 %i.aj, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.ak = icmp sgt i32 %i.ai, 0
  br i1 %i.ak, label %bb.c, label %bb.av

bb.c:                                             ; preds = %bb.b
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.am = tail call i64 @fwrite(ptr nonnull @.str.6, i64 21, i64 1, ptr %i.al) #13 ; 0 uses
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ao = tail call i32 @fflush(ptr noundef %i.an) ; 0 uses
  br label %bb.av

bb.d:                                             ; preds = %bb.a
  %i.ap = icmp ugt i32 %i.af, 10
  br i1 %i.ap, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aq = icmp sgt i32 %i.ai, 0
  br i1 %i.aq, label %bb.f, label %bb.av

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.as = tail call i64 @fwrite(ptr nonnull @.str.7, i64 16, i64 1, ptr %i.ar) #13 ; 0 uses
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.au = tail call i32 @fflush(ptr noundef %i.at) ; 0 uses
  br label %bb.av

bb.g:                                             ; preds = %bb.d
  %i.av = icmp ult i32 %i.n, %i.k
  %8 = icmp ult i32 %i.o, %i.n
  %or.cond = or i1 %i.av, %8
  br i1 %or.cond, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.aw = icmp sgt i32 %i.ai, 0
  br i1 %i.aw, label %bb.i, label %bb.av

bb.i:                                             ; preds = %bb.h
  %i.ax = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ay = tail call i64 @fwrite(ptr nonnull @.str.8, i64 12, i64 1, ptr %i.ax) #13 ; 0 uses
  %i.az = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ba = tail call i32 @fflush(ptr noundef %i.az) ; 0 uses
  br label %bb.av

bb.j:                                             ; preds = %bb.g
  %i.bb = icmp eq i32 %4, 0
  br i1 %i.bb, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bc = icmp sgt i32 %i.ai, 0
  br i1 %i.bc, label %bb.l, label %bb.av

bb.l:                                             ; preds = %bb.k
  %i.bd = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.be = tail call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %i.bd) #13 ; 0 uses
  %i.bf = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.bg = tail call i32 @fflush(ptr noundef %i.bf) ; 0 uses
  br label %bb.av

bb.m:                                             ; preds = %bb.j
  %i.bh = icmp ult i64 %1, 256
  br i1 %i.bh, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bi = icmp sgt i32 %i.ai, 0
  br i1 %i.bi, label %bb.o, label %bb.av

bb.o:                                             ; preds = %bb.n
  %i.bj = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.bk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bj, ptr noundef nonnull @.str.2, i32 noundef 256) #14 ; 0 uses
  %i.bl = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.bm = tail call i32 @fflush(ptr noundef %i.bl) ; 0 uses
  br label %bb.av

bb.p:                                             ; preds = %bb.m
  %i.bn = icmp ugt i32 %i.b, 1
  br i1 %i.bn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bo = zext i32 %i.b to i64
  %i.bp = tail call noundef ptr @_ZN11duckdb_zstd11POOL_createEmm(i64 noundef %i.bo, i64 noundef 1) ; 2 uses
  %.not = icmp eq ptr %i.bp, null
  br i1 %.not, label %bb.av, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0137 = phi ptr [ %i.bp, %bb.q ], [ null, %bb.p ] ; 5 uses
  call void @_ZN11duckdb_zstd15COVER_best_initEPNS_12COVER_best_sE(ptr noundef nonnull %6)
  %.sroa.5188.0.copyload = load i32, ptr %i.a, align 8, !tbaa !3
  %.sroa.9192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.sroa.4, ptr noundef nonnull align 4 dereferenceable(12) %i.bq, i64 12, i1 false)
  %i.br = zext nneg i32 %i.ag to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr @_ZN11duckdb_zstdL32FASTCOVER_defaultAccelParametersE, i64 %i.br
  %.sroa.0100.0.copyload = load i64, ptr %i.bs, align 8
  %i.bt = call i32 @llvm.usub.sat.i32(i32 %i.ai, i32 1)
  store i32 %i.bt, ptr @_ZN11duckdb_zstdL14g_displayLevelE, align 4, !tbaa !3
  %i.bu = icmp sgt i32 %i.ai, 1                   ; 3 uses
  br i1 %i.bu, label %bb.s, label %9

bb.s:                                             ; preds = %bb.r
  %i.bv = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.bw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bv, ptr noundef nonnull @.str.9, i32 noundef %i.z) #14 ; 0 uses
  %i.bx = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.by = call i32 @fflush(ptr noundef %i.bx)     ; 0 uses
  br label %9

9:                                                ; preds = %bb.s, %bb.r
  %.not164233 = icmp ugt i32 %i.j, %i.k
  br i1 %.not164233, label %._crit_edge239, label %.lr.ph238.split.preheader

.lr.ph238.split.preheader:                        ; preds = %9
  %i.bz = icmp sgt i32 %i.ai, 2                   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 68
  %.not171 = icmp eq ptr %.0137, null
  %i.cc = icmp samesign ugt i32 %i.ai, 3
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  br label %.lr.ph238.split

.lr.ph238.split:                                  ; preds = %.lr.ph238.split.preheader, %._crit_edge
  %.0131236 = phi i32 [ %.2133.ph, %._crit_edge ], [ 1, %.lr.ph238.split.preheader ]
  %.0135235 = phi i32 [ %i.ej, %._crit_edge ], [ %i.j, %.lr.ph238.split.preheader ] ; 7 uses
  %.not167234 = phi i1 [ false, %._crit_edge ], [ true, %.lr.ph238.split.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  br i1 %i.bz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph238.split
  %i.cf = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.cg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.10, i32 noundef %.0135235) #14 ; 0 uses
  %i.ch = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ci = call i32 @fflush(ptr noundef %i.ch)     ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph238.split
  %i.cj = call fastcc noundef i64 @_ZN11duckdb_zstdL18FASTCOVER_ctx_initEPNS_15FASTCOVER_ctx_tEPKvPKmjjdjNS_17FASTCOVER_accel_tE(ptr noundef %7, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %.0135235, double noundef %i.f, i32 noundef %i.ad, i64 %.sroa.0100.0.copyload) ; 2 uses
  %i.ck = icmp ult i64 %i.cj, -119
  br i1 %i.ck, label %bb.x, label %.split.us

.split.us:                                        ; preds = %bb.u
  %i.cl = icmp sgt i32 %i.ai, 0
  br i1 %i.cl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.split.us
  %i.cm = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.cn = call i64 @fwrite(ptr nonnull @.str.3, i64 29, i64 1, ptr %i.cm) #13 ; 0 uses
  %i.co = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.cp = call i32 @fflush(ptr noundef %i.co)     ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %.split.us, %bb.v
  call void @_ZN11duckdb_zstd18COVER_best_destroyEPNS_12COVER_best_sE(ptr noundef nonnull %6)
  br label %.thread221

bb.x:                                             ; preds = %bb.u
  br i1 %.not167234, label %bb.y, label %.lr.ph

bb.y:                                             ; preds = %bb.x
  %i.cq = load i64, ptr %i.ca, align 8, !tbaa !16
  call void @_ZN11duckdb_zstd23COVER_warnOnSmallCorpusEmmi(i64 noundef %1, i64 noundef %i.cq, i32 noundef %i.ai)
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.y, %bb.x
  %i.cr = icmp eq i32 %.0135235, 0
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph, %bb.aq
  %.1132232 = phi i32 [ %.0131236, %.lr.ph ], [ %.2133.ph, %bb.aq ] ; 3 uses
  %.0136230 = phi i32 [ %i.n, %.lr.ph ], [ %i.eg, %bb.aq ] ; 6 uses
  %i.cs = call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #16 ; 17 uses
  br i1 %i.bz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ct = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.cu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ct, ptr noundef nonnull @.str.11, i32 noundef %.0136230) #14 ; 0 uses
  %i.cv = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.cw = call i32 @fflush(ptr noundef %i.cv)     ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.not169 = icmp eq ptr %i.cs, null
  br i1 %.not169, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.cx = icmp sgt i32 %i.ai, 0
  br i1 %i.cx, label %bb.ad, label %bb.ap

bb.ad:                                            ; preds = %bb.ac
  %i.cy = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.cz = call i64 @fwrite(ptr nonnull @.str.12, i64 30, i64 1, ptr %i.cy) #13 ; 0 uses
  %i.da = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.db = call i32 @fflush(ptr noundef %i.da)     ; 0 uses
  br label %bb.ap

bb.ae:                                            ; preds = %bb.ab
  store ptr %7, ptr %i.cs, align 8, !tbaa !57
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %6, ptr %i.dc, align 8, !tbaa !60
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store i64 %1, ptr %i.dd, align 8, !tbaa !61
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 28
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 36
  store i32 %.sroa.5188.0.copyload, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !3
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 52
  store i32 0, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !3
  %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.sroa.4, i64 12, i1 false), !tbaa.struct !25
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 68
  store i32 0, ptr %.sroa.11.0..sroa_idx, align 4
  store i32 %.0136230, ptr %i.de, align 8, !tbaa !62
  store i32 %.0135235, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !63
  store double %i.f, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !64
  store i32 %i.s, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !65
  store i32 0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !66
  %i.df = load i32, ptr @_ZN11duckdb_zstdL14g_displayLevelE, align 4, !tbaa !3 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cs, i64 60
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !67
  %i.dh = load i32, ptr %i.cb, align 4, !tbaa !34
  %i.di = icmp eq i32 %.0136230, 0
  %or.cond.i = or i1 %i.di, %i.cr
  br i1 %or.cond.i, label %_ZN11duckdb_zstdL25FASTCOVER_checkParametersENS_20ZDICT_cover_params_tEmjj.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  switch i32 %.0135235, label %_ZN11duckdb_zstdL25FASTCOVER_checkParametersENS_20ZDICT_cover_params_tEmjj.exit.thread [
    i32 8, label %bb.ag
    i32 6, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af, %bb.af
  %i.dj = zext i32 %.0136230 to i64
  %i.dk = icmp ult i64 %1, %i.dj
  %i.dl = icmp ugt i32 %.0135235, %.0136230
  %or.cond20.i = or i1 %i.dk, %i.dl
  %i.dm = add i32 %i.dh, -32
  %or.cond7.i = icmp ult i32 %i.dm, -31
  %or.cond21.i = or i1 %or.cond20.i, %or.cond7.i
  br i1 %or.cond21.i, label %_ZN11duckdb_zstdL25FASTCOVER_checkParametersENS_20ZDICT_cover_params_tEmjj.exit.thread, label %_ZN11duckdb_zstdL25FASTCOVER_checkParametersENS_20ZDICT_cover_params_tEmjj.exit

_ZN11duckdb_zstdL25FASTCOVER_checkParametersENS_20ZDICT_cover_params_tEmjj.exit.thread: ; preds = %bb.ag, %bb.af, %bb.ae
  %i.dn = icmp sgt i32 %i.df, 0
  br i1 %i.dn, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZN11duckdb_zstdL25FASTCOVER_checkParametersENS_20ZDICT_cover_params_tEmjj.exit.thread
  %i.do = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.dp = call i64 @fwrite(ptr nonnull @.str, i64 31, i64 1, ptr %i.do) #13 ; 0 uses
  %i.dq = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.dr = call i32 @fflush(ptr noundef %i.dq)     ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZN11duckdb_zstdL25FASTCOVER_checkParametersENS_20ZDICT_cover_params_tEmjj.exit.thread
  call void @free(ptr noundef nonnull %i.cs) #12
  br label %bb.aq

_ZN11duckdb_zstdL25FASTCOVER_checkParametersENS_20ZDICT_cover_params_tEmjj.exit: ; preds = %bb.ag
  call void @_ZN11duckdb_zstd16COVER_best_startEPNS_12COVER_best_sE(ptr noundef nonnull %6)
  br i1 %.not171, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZN11duckdb_zstdL25FASTCOVER_checkParametersENS_20ZDICT_cover_params_tEmjj.exit
  call void @_ZN11duckdb_zstd8POOL_addEPNS_10POOL_ctx_sEPFvPvES2_(ptr noundef nonnull %.0137, ptr noundef nonnull @_ZN11duckdb_zstdL23FASTCOVER_tryParametersEPv, ptr noundef nonnull %i.cs)
  br label %bb.al

bb.ak:                                            ; preds = %_ZN11duckdb_zstdL25FASTCOVER_checkParametersENS_20ZDICT_cover_params_tEmjj.exit
  call void @_ZN11duckdb_zstdL23FASTCOVER_tryParametersEPv(ptr noundef nonnull %i.cs)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  br i1 %i.bu, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.ds = call i64 @clock() #12
  %i.dt = load i64, ptr @_ZN11duckdb_zstdL6g_timeE, align 8, !tbaa !35
  %i.du = sub nsw i64 %i.ds, %i.dt
  %i.dv = icmp sgt i64 %i.du, 150000
  %or.cond6 = select i1 %i.dv, i1 true, i1 %i.cc
  br i1 %or.cond6, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dw = call i64 @clock() #12
  store i64 %i.dw, ptr @_ZN11duckdb_zstdL6g_timeE, align 8, !tbaa !35
  %i.dx = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.dy = mul i32 %.1132232, 100
  %i.dz = udiv i32 %i.dy, %i.z
  %i.ea = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dx, ptr noundef nonnull @.str.13, i32 noundef %i.dz) #14 ; 0 uses
  %i.eb = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ec = call i32 @fflush(ptr noundef %i.eb)     ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %i.ed = add i32 %.1132232, 1
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ac, %bb.ad
  call void @_ZN11duckdb_zstd18COVER_best_destroyEPNS_12COVER_best_sE(ptr noundef nonnull %6)
  %i.ee = load ptr, ptr %i.cd, align 8, !tbaa !23
  call void @free(ptr noundef %i.ee) #12
  store ptr null, ptr %i.cd, align 8, !tbaa !23
  %i.ef = load ptr, ptr %i.ce, align 8, !tbaa !28
  call void @free(ptr noundef %i.ef) #12
  store ptr null, ptr %i.ce, align 8, !tbaa !28
  br label %.thread221

bb.aq:                                            ; preds = %bb.ao, %bb.ai
  %.2133.ph = phi i32 [ %.1132232, %bb.ai ], [ %i.ed, %bb.ao ] ; 2 uses
  %i.eg = add i32 %.0136230, %i.v                 ; 2 uses
  %.not168 = icmp ugt i32 %i.eg, %i.o
  br i1 %.not168, label %._crit_edge, label %bb.z, !llvm.loop !68

.thread221:                                       ; preds = %bb.ap, %bb.w
  %.4.ph = phi i64 [ %i.cj, %bb.w ], [ -64, %bb.ap ]
  call void @_ZN11duckdb_zstd9POOL_freeEPNS_10POOL_ctx_sE(ptr noundef %.0137)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.av

._crit_edge:                                      ; preds = %bb.aq
  call void @_ZN11duckdb_zstd15COVER_best_waitEPNS_12COVER_best_sE(ptr noundef nonnull %6)
  %i.eh = load ptr, ptr %i.cd, align 8, !tbaa !23
  call void @free(ptr noundef %i.eh) #12
  store ptr null, ptr %i.cd, align 8, !tbaa !23
  %i.ei = load ptr, ptr %i.ce, align 8, !tbaa !28
  call void @free(ptr noundef %i.ei) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.ej = add i32 %.0135235, 2                    ; 2 uses
  %.not164 = icmp ugt i32 %i.ej, %i.k
  br i1 %.not164, label %._crit_edge239, label %.lr.ph238.split, !llvm.loop !69

._crit_edge239:                                   ; preds = %._crit_edge, %9
  br i1 %i.bu, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %._crit_edge239
  %i.ek = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.el = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ek, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #14 ; 0 uses
  %i.em = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.en = call i32 @fflush(ptr noundef %i.em)     ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %._crit_edge239
  %i.eo = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !70 ; 2 uses
  %i.eq = icmp ult i64 %i.ep, -119
  br i1 %i.eq, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZN11duckdb_zstd18COVER_best_destroyEPNS_12COVER_best_sE(ptr noundef nonnull %6)
  call void @_ZN11duckdb_zstd9POOL_freeEPNS_10POOL_ctx_sE(ptr noundef %.0137)
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.es = load i64, ptr %i.er, align 8, !tbaa !72 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.3204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.sroa.5206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  %.sroa.5206.0.copyload = load double, ptr %.sroa.5206.0..sroa_idx, align 8, !tbaa !24
  %.sroa.6207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  %.sroa.6207.0.copyload = load i32, ptr %.sroa.6207.0..sroa_idx, align 8, !tbaa !3
  %i.eu = load <2 x i32>, ptr %i.et, align 8, !tbaa !3
  store <2 x i32> %i.eu, ptr %5, align 8, !tbaa !3
  %i.ev = load <2 x i32>, ptr %.sroa.3204.0..sroa_idx, align 8, !tbaa !3
  store <2 x i32> %i.ev, ptr %i.p, align 4, !tbaa !3
  store double %.sroa.5206.0.copyload, ptr %i.c, align 8, !tbaa !53
  store i32 %i.ad, ptr %i.aa, align 8, !tbaa !11
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !12
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ew, ptr noundef nonnull align 8 dereferenceable(12) %i.ex, i64 12, i1 false)
  store i32 %.sroa.6207.0.copyload, ptr %.sroa.9192.0..sroa_idx, align 4, !tbaa !73
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %i.ez, i64 %i.es, i1 false)
  call void @_ZN11duckdb_zstd18COVER_best_destroyEPNS_12COVER_best_sE(ptr noundef nonnull %6)
  call void @_ZN11duckdb_zstd9POOL_freeEPNS_10POOL_ctx_sE(ptr noundef %.0137)
  br label %bb.av

bb.av:                                            ; preds = %.thread221, %bb.at, %bb.au, %bb.q, %bb.n, %bb.o, %bb.k, %bb.l, %bb.h, %bb.i, %bb.e, %bb.f, %bb.b, %bb.c
  %.6 = phi i64 [ -70, %bb.n ], [ -42, %bb.b ], [ -42, %bb.e ], [ -42, %bb.h ], [ -72, %bb.k ], [ %.4.ph, %.thread221 ], [ -64, %bb.q ], [ -42, %bb.c ], [ -42, %bb.f ], [ -42, %bb.i ], [ -72, %bb.l ], [ -70, %bb.o ], [ %i.ep, %bb.at ], [ %i.es, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.4)
  ret i64 %.6
}

declare noundef ptr @_ZN11duckdb_zstd11POOL_createEmm(i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZN11duckdb_zstd15COVER_best_initEPNS_12COVER_best_sE(ptr noundef) local_unnamed_addr #4

declare void @_ZN11duckdb_zstd18COVER_best_destroyEPNS_12COVER_best_sE(ptr noundef) local_unnamed_addr #4

declare void @_ZN11duckdb_zstd9POOL_freeEPNS_10POOL_ctx_sE(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

declare void @_ZN11duckdb_zstd16COVER_best_startEPNS_12COVER_best_sE(ptr noundef) local_unnamed_addr #4

declare void @_ZN11duckdb_zstd8POOL_addEPNS_10POOL_ctx_sEPFvPvES2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal void @_ZN11duckdb_zstdL23FASTCOVER_tryParametersEPv(ptr noundef captures(none) %0) #0 {
bb.a:
  %1 = alloca %"struct.duckdb_zstd::ZDICT_cover_params_t", align 8 ; 4 uses
  %2 = alloca %"struct.duckdb_zstd::COVER_dictSelection", align 8 ; 7 uses
  %3 = alloca %"struct.duckdb_zstd::COVER_dictSelection", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !57     ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !61   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 68 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !34
  %i.g = zext nneg i32 %i.f to i64
  %i.h = shl nuw i64 1, %i.g
  %i.i = tail call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 2) #15 ; 3 uses
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.d) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @_ZN11duckdb_zstd24COVER_dictSelectionErrorEm(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb_zstd::COVER_dictSelection") align 8 %2, i64 noundef -1)
  %i.k = load i32, ptr %i.e, align 4, !tbaa !34
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl i64 4, %i.l
  %i.n = call noalias ptr @malloc(i64 noundef %i.m) #16 ; 4 uses
  %i.o = icmp ne ptr %i.i, null
  %i.p = icmp ne ptr %i.j, null
  %or.cond = and i1 %i.o, %i.p
  %i.q = icmp ne ptr %i.n, null
  %or.cond3 = and i1 %or.cond, %i.q
  br i1 %or.cond3, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = load i32, ptr @_ZN11duckdb_zstdL14g_displayLevelE, align 4, !tbaa !3
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.u = call i64 @fwrite(ptr nonnull @.str.25, i64 42, i64 1, ptr %i.t) #13 ; 0 uses
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !23
  %i.x = load i32, ptr %i.e, align 4, !tbaa !34
  %i.y = zext nneg i32 %i.x to i64
  %i.z = shl i64 4, %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.n, ptr align 4 %i.w, i64 %i.z, i1 false)
  %i.aa = call fastcc noundef i64 @_ZN11duckdb_zstdL25FASTCOVER_buildDictionaryEPKNS_15FASTCOVER_ctx_tEPjPvmNS_20ZDICT_cover_params_tEPt(ptr noundef nonnull %i.a, ptr noundef nonnull %i.n, ptr noundef nonnull %i.j, i64 noundef %i.d, ptr noundef nonnull byval(%"struct.duckdb_zstd::ZDICT_cover_params_t") align 8 %1, ptr noundef nonnull %i.i) ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !26 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !27
  %i.af = zext i32 %i.ae to i64
  %i.ag = mul i64 %i.ac, %i.af
  %i.ah = udiv i64 %i.ag, 100
  %i.ai = trunc i64 %i.ah to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.aa
  %i.ak = sub i64 %i.d, %i.aa
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !30
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !31
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !28
  call void @_ZN11duckdb_zstd16COVER_selectDictEPhmmPKhPKmjmmNS_20ZDICT_cover_params_tEPmm(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb_zstd::COVER_dictSelection") align 8 %3, ptr noundef nonnull %i.aj, i64 noundef %i.d, i64 noundef %i.ak, ptr noundef %i.al, ptr noundef %i.an, i32 noundef %i.ai, i64 noundef %i.ac, i64 noundef %i.ap, ptr noundef nonnull byval(%"struct.duckdb_zstd::ZDICT_cover_params_t") align 8 %1, ptr noundef %i.ar, i64 noundef -1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !75
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.as = call noundef i32 @_ZN11duckdb_zstd26COVER_dictSelectionIsErrorENS_19COVER_dictSelectionE(ptr noundef nonnull byval(%"struct.duckdb_zstd::COVER_dictSelection") align 8 %2)
  %.not = icmp ne i32 %i.as, 0
  %i.at = load i32, ptr @_ZN11duckdb_zstdL14g_displayLevelE, align 4
  %i.au = icmp sgt i32 %i.at, 0
  %or.cond42 = select i1 %.not, i1 %i.au, i1 false
  br i1 %or.cond42, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.aw = call i64 @fwrite(ptr nonnull @.str.26, i64 28, i64 1, ptr %i.av) #13 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.e
  %i.ax = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ay = call i32 @fflush(ptr noundef %i.ax)     ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d, %bb.b
  call void @free(ptr noundef %i.j) #12
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !60
  call void @_ZN11duckdb_zstd17COVER_best_finishEPNS_12COVER_best_sENS_20ZDICT_cover_params_tENS_19COVER_dictSelectionE(ptr noundef %i.ba, ptr noundef nonnull byval(%"struct.duckdb_zstd::ZDICT_cover_params_t") align 8 %1, ptr noundef nonnull byval(%"struct.duckdb_zstd::COVER_dictSelection") align 8 %2)
  call void @free(ptr noundef nonnull %0) #12
  call void @free(ptr noundef %i.i) #12
  call void @_ZN11duckdb_zstd23COVER_dictSelectionFreeENS_19COVER_dictSelectionE(ptr noundef nonnull byval(%"struct.duckdb_zstd::COVER_dictSelection") align 8 %2)
  call void @free(ptr noundef %i.n) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #8

declare void @_ZN11duckdb_zstd15COVER_best_waitEPNS_12COVER_best_sE(ptr noundef) local_unnamed_addr #4

declare noundef i64 @_ZN11duckdb_zstd9COVER_sumEPKmj(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @_ZN11duckdb_zstd19COVER_computeEpochsEjjjj(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN11duckdb_zstd24COVER_dictSelectionErrorEm(ptr dead_on_unwind writable sret(%"struct.duckdb_zstd::COVER_dictSelection") align 8, i64 noundef) local_unnamed_addr #4

declare void @_ZN11duckdb_zstd16COVER_selectDictEPhmmPKhPKmjmmNS_20ZDICT_cover_params_tEPmm(ptr dead_on_unwind writable sret(%"struct.duckdb_zstd::COVER_dictSelection") align 8, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef byval(%"struct.duckdb_zstd::ZDICT_cover_params_t") align 8, ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef i32 @_ZN11duckdb_zstd26COVER_dictSelectionIsErrorENS_19COVER_dictSelectionE(ptr noundef byval(%"struct.duckdb_zstd::COVER_dictSelection") align 8) local_unnamed_addr #4

declare void @_ZN11duckdb_zstd17COVER_best_finishEPNS_12COVER_best_sENS_20ZDICT_cover_params_tENS_19COVER_dictSelectionE(ptr noundef, ptr noundef byval(%"struct.duckdb_zstd::ZDICT_cover_params_t") align 8, ptr noundef byval(%"struct.duckdb_zstd::COVER_dictSelection") align 8) local_unnamed_addr #4

declare void @_ZN11duckdb_zstd23COVER_dictSelectionFreeENS_19COVER_dictSelectionE(ptr noundef byval(%"struct.duckdb_zstd::COVER_dictSelection") align 8) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
end_hunk_0
