inline.NumInlined: 67
inline.NumDeleted: 19
begin_hunk_0_@_ZN11duckdb_zstdL21COVER_buildDictionaryEPKNS_11COVER_ctx_tEPjPNS_11COVER_map_sEPvmNS_20ZDICT_cover_params_tE:bb.a
  br label %bb.r

bb.r:                                             ; preds = %_ZN11duckdb_zstdL16COVER_map_removeEPNS_11COVER_map_sEj.exit.i, %_ZN11duckdb_zstdL12COVER_map_atEPNS_11COVER_map_sEj.exit79.i, %_ZN11duckdb_zstdL12COVER_map_atEPNS_11COVER_map_sEj.exit79.thread.i, %bb.i
  %.sroa.022.1.i = phi i32 [ %.sroa.022.06.i, %bb.i ], [ %i.de, %_ZN11duckdb_zstdL16COVER_map_removeEPNS_11COVER_map_sEj.exit.i ], [ %i.de, %_ZN11duckdb_zstdL12COVER_map_atEPNS_11COVER_map_sEj.exit79.i ], [ %i.da, %_ZN11duckdb_zstdL12COVER_map_atEPNS_11COVER_map_sEj.exit79.thread.i ] ; 2 uses
  %.sroa.14.3.i = phi i32 [ %.sroa.14.1.i, %bb.i ], [ %i.eu, %_ZN11duckdb_zstdL16COVER_map_removeEPNS_11COVER_map_sEj.exit.i ], [ %.sroa.14.1.i, %_ZN11duckdb_zstdL12COVER_map_atEPNS_11COVER_map_sEj.exit79.i ], [ %.sroa.14.1.i, %_ZN11duckdb_zstdL12COVER_map_atEPNS_11COVER_map_sEj.exit79.thread.i ] ; 3 uses
  %i.ev = icmp ugt i32 %.sroa.14.3.i, %.sroa.12.010.i ; 2 uses
  %.sroa.12.1.i = tail call i32 @llvm.umax.i32(i32 %.sroa.14.3.i, i32 %.sroa.12.010.i) ; 2 uses
  %.sroa.048.sroa.7.1.i = select i1 %i.ev, i32 %indvars.i, i32 %.sroa.048.sroa.7.011.i ; 10 uses
  %.sroa.048.sroa.0.1.i = select i1 %i.ev, i32 %.sroa.022.1.i, i32 %.sroa.048.sroa.0.012.i ; 10 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader1.i, label %bb.f, !llvm.loop !67

.preheader.i:                                     ; preds = %.lr.ph19.i, %.lr.ph19.i.prol.loopexit
  %.167.i.lcssa = phi i32 [ %.167.i.lcssa.unr, %.lr.ph19.i.prol.loopexit ], [ %.167.i.1, %.lr.ph19.i ] ; 9 uses
  %.1.i.lcssa = phi i32 [ %.1.i.lcssa.unr, %.lr.ph19.i.prol.loopexit ], [ %.1.i.1, %.lr.ph19.i ] ; 6 uses
  %.not6822.i = icmp eq i32 %.167.i.lcssa, %.1.i.lcssa
  br i1 %.not6822.i, label %_ZN11duckdb_zstdL19COVER_selectSegmentEPKNS_11COVER_ctx_tEPjPNS_11COVER_map_sEjjNS_20ZDICT_cover_params_tE.exit, label %.lr.ph24.i.preheader

.lr.ph24.i.preheader:                             ; preds = %.preheader.i
  %i.ew = sub i32 %.1.i.lcssa, %.167.i.lcssa
  %xtraiter142 = and i32 %i.ew, 3                 ; 2 uses
  %lcmp.mod143.not = icmp eq i32 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %.lr.ph24.i.prol.loopexit, label %.lr.ph24.i.prol

.lr.ph24.i.prol:                                  ; preds = %.lr.ph24.i.preheader, %.lr.ph24.i.prol
  %.023.i.prol = phi i32 [ %i.fc, %.lr.ph24.i.prol ], [ %.167.i.lcssa, %.lr.ph24.i.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph24.i.prol ], [ 0, %.lr.ph24.i.preheader ]
  %i.ex = zext i32 %.023.i.prol to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !3
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fa
  store i32 0, ptr %i.fb, align 4, !tbaa !3
  %i.fc = add i32 %.023.i.prol, 1                 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter142
  br i1 %prol.iter.cmp.not, label %.lr.ph24.i.prol.loopexit, label %.lr.ph24.i.prol, !llvm.loop !68

.lr.ph24.i.prol.loopexit:                         ; preds = %.lr.ph24.i.prol, %.lr.ph24.i.preheader
  %.023.i.unr = phi i32 [ %.167.i.lcssa, %.lr.ph24.i.preheader ], [ %i.fc, %.lr.ph24.i.prol ]
  %i.fd = sub i32 %.167.i.lcssa, %.1.i.lcssa
  %i.fe = icmp ugt i32 %i.fd, -4
  br i1 %i.fe, label %_ZN11duckdb_zstdL19COVER_selectSegmentEPKNS_11COVER_ctx_tEPjPNS_11COVER_map_sEjjNS_20ZDICT_cover_params_tE.exit, label %.lr.ph24.i

.lr.ph19.i:                                       ; preds = %.lr.ph19.i.prol.loopexit, %.lr.ph19.i
  %.06418.i = phi i32 [ %i.fu, %.lr.ph19.i ], [ %.06418.i.unr, %.lr.ph19.i.prol.loopexit ] ; 4 uses
  %.06517.i = phi i32 [ %.1.i.1, %.lr.ph19.i ], [ %.06517.i.unr, %.lr.ph19.i.prol.loopexit ]
  %.06616.i = phi i32 [ %.167.i.1, %.lr.ph19.i ], [ %.06616.i.unr, %.lr.ph19.i.prol.loopexit ] ; 2 uses
  %i.ff = zext i32 %.06418.i to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !3
  %i.fi = zext i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fi
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !3
  %.not69.i = icmp eq i32 %i.fk, 0                ; 2 uses
  %i.fl = tail call i32 @llvm.umin.i32(i32 %.06616.i, i32 %.06418.i)
  %i.fm = add i32 %.06418.i, 1                    ; 3 uses
  %.167.i = select i1 %.not69.i, i32 %.06616.i, i32 %i.fl ; 2 uses
  %.1.i = select i1 %.not69.i, i32 %.06517.i, i32 %i.fm
  %i.fn = zext i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !3
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !3
  %.not69.i.1 = icmp eq i32 %i.fs, 0              ; 2 uses
  %i.ft = tail call i32 @llvm.umin.i32(i32 %.167.i, i32 %i.fm)
  %i.fu = add i32 %.06418.i, 2                    ; 3 uses
  %.167.i.1 = select i1 %.not69.i.1, i32 %.167.i, i32 %i.ft ; 2 uses
  %.1.i.1 = select i1 %.not69.i.1, i32 %.1.i, i32 %i.fu ; 2 uses
  %.not.i56.1 = icmp eq i32 %i.fu, %.sroa.048.sroa.7.1.i
  br i1 %.not.i56.1, label %.preheader.i, label %.lr.ph19.i, !llvm.loop !69

.lr.ph24.i:                                       ; preds = %.lr.ph24.i.prol.loopexit, %.lr.ph24.i
  %.023.i = phi i32 [ %i.gs, %.lr.ph24.i ], [ %.023.i.unr, %.lr.ph24.i.prol.loopexit ] ; 5 uses
  %i.fv = zext i32 %.023.i to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !3
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fy
  store i32 0, ptr %i.fz, align 4, !tbaa !3
  %i.ga = add i32 %.023.i, 1
  %i.gb = zext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !3
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ge
  store i32 0, ptr %i.gf, align 4, !tbaa !3
  %i.gg = add i32 %.023.i, 2
  %i.gh = zext i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !3
  %i.gk = zext i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gk
  store i32 0, ptr %i.gl, align 4, !tbaa !3
  %i.gm = add i32 %.023.i, 3
  %i.gn = zext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !3
  %i.gq = zext i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gq
  store i32 0, ptr %i.gr, align 4, !tbaa !3
  %i.gs = add i32 %.023.i, 4                      ; 2 uses
  %.not68.i.3 = icmp eq i32 %i.gs, %.1.i.lcssa
  br i1 %.not68.i.3, label %_ZN11duckdb_zstdL19COVER_selectSegmentEPKNS_11COVER_ctx_tEPjPNS_11COVER_map_sEjjNS_20ZDICT_cover_params_tE.exit, label %.lr.ph24.i, !llvm.loop !70

_ZN11duckdb_zstdL19COVER_selectSegmentEPKNS_11COVER_ctx_tEPjPNS_11COVER_map_sEjjNS_20ZDICT_cover_params_tE.exit: ; preds = %.lr.ph24.i.prol.loopexit, %.lr.ph24.i, %.preheader1.i, %.preheader.i
  %.065.lcssa49.i = phi i32 [ %.sroa.048.sroa.7.1.i, %.preheader1.i ], [ %.167.i.lcssa, %.preheader.i ], [ %.1.i.lcssa, %.lr.ph24.i ], [ %.1.i.lcssa, %.lr.ph24.i.prol.loopexit ]
  %.066.lcssa48.i = phi i32 [ %.sroa.048.sroa.7.1.i, %.preheader1.i ], [ %.167.i.lcssa, %.preheader.i ], [ %.167.i.lcssa, %.lr.ph24.i ], [ %.167.i.lcssa, %.lr.ph24.i.prol.loopexit ] ; 2 uses
  %.sroa.048.sroa.0.0.insert.ext.i = zext i32 %.066.lcssa48.i to i64
  %i.gt = icmp eq i32 %.sroa.12.1.i, 0
  br i1 %i.gt, label %_ZN11duckdb_zstdL19COVER_selectSegmentEPKNS_11COVER_ctx_tEPjPNS_11COVER_map_sEjjNS_20ZDICT_cover_params_tE.exit.thread, label %bb.s

_ZN11duckdb_zstdL19COVER_selectSegmentEPKNS_11COVER_ctx_tEPjPNS_11COVER_map_sEjjNS_20ZDICT_cover_params_tE.exit.thread: ; preds = %bb.e, %_ZN11duckdb_zstdL19COVER_selectSegmentEPKNS_11COVER_ctx_tEPjPNS_11COVER_map_sEjjNS_20ZDICT_cover_params_tE.exit
  %i.gu = add i64 %.04688, 1                      ; 2 uses
  %.not54 = icmp ult i64 %i.gu, %i.o
  br i1 %.not54, label %select.unfold, label %._crit_edge

bb.s:                                             ; preds = %_ZN11duckdb_zstdL19COVER_selectSegmentEPKNS_11COVER_ctx_tEPjPNS_11COVER_map_sEjjNS_20ZDICT_cover_params_tE.exit
  %i.gv = load i32, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !71 ; 2 uses
  %i.gw = xor i32 %.066.lcssa48.i, -1
  %i.gx = add i32 %.065.lcssa49.i, %i.gw
  %i.gy = add i32 %i.gx, %i.gv
  %i.gz = zext i32 %i.gy to i64
  %..045 = tail call i64 @llvm.umin.i64(i64 %.04589, i64 %i.gz) ; 3 uses
  %i.ha = zext i32 %i.gv to i64
  %i.hb = icmp samesign ult i64 %..045, %i.ha
  br i1 %i.hb, label %._crit_edge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hc = sub i64 %.04589, %..045                 ; 5 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 %i.hc
  %i.he = load ptr, ptr %0, align 8, !tbaa !43
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 %.sroa.048.sroa.0.0.insert.ext.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hd, ptr align 1 %i.hf, i64 %..045, i1 false)
  %i.hg = load i32, ptr @_ZL14g_displayLevel, align 4, !tbaa !3
  %i.hh = icmp sgt i32 %i.hg, 1
  br i1 %i.hh, label %bb.u, label %select.unfold

bb.u:                                             ; preds = %bb.t
  %i.hi = tail call i64 @clock() #23
  %i.hj = load i64, ptr @_ZL6g_time, align 8, !tbaa !7
  %i.hk = sub nsw i64 %i.hi, %i.hj
  %i.hl = icmp sgt i64 %i.hk, 150000
  %i.hm = load i32, ptr @_ZL14g_displayLevel, align 4
  %i.hn = icmp sgt i32 %i.hm, 3
  %or.cond = select i1 %i.hl, i1 true, i1 %i.hn
  br i1 %or.cond, label %bb.v, label %select.unfold

bb.v:                                             ; preds = %bb.u
  %i.ho = tail call i64 @clock() #23
  store i64 %i.ho, ptr @_ZL6g_time, align 8, !tbaa !7
  %i.hp = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.hq = sub i64 %4, %i.hc
  %i.hr = mul i64 %i.hq, 100
  %i.hs = udiv i64 %i.hr, %4
  %i.ht = trunc i64 %i.hs to i32
  %i.hu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hp, ptr noundef nonnull @.str.13, i32 noundef %i.ht) #22 ; 0 uses
  %i.hv = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.hw = tail call i32 @fflush(ptr noundef %i.hv) ; 0 uses
  br label %select.unfold

select.unfold:                                    ; preds = %_ZN11duckdb_zstdL19COVER_selectSegmentEPKNS_11COVER_ctx_tEPjPNS_11COVER_map_sEjjNS_20ZDICT_cover_params_tE.exit.thread, %bb.v, %bb.u, %bb.t
  %.147.ph = phi i64 [ 0, %bb.v ], [ 0, %bb.t ], [ 0, %bb.u ], [ %i.gu, %_ZN11duckdb_zstdL19COVER_selectSegmentEPKNS_11COVER_ctx_tEPjPNS_11COVER_map_sEjjNS_20ZDICT_cover_params_tE.exit.thread ]
  %.1.ph = phi i64 [ %i.hc, %bb.v ], [ %i.hc, %bb.t ], [ %i.hc, %bb.u ], [ %.04589, %_ZN11duckdb_zstdL19COVER_selectSegmentEPKNS_11COVER_ctx_tEPjPNS_11COVER_map_sEjjNS_20ZDICT_cover_params_tE.exit.thread ] ; 2 uses
  %i.hx = add nsw i64 %.04887, 1
  %i.hy = urem i64 %i.hx, %.sroa.0.0.insert.ext.i
  %.not = icmp eq i64 %.1.ph, 0
  br i1 %.not, label %._crit_edge, label %bb.e, !llvm.loop !72

._crit_edge:                                      ; preds = %select.unfold, %_ZN11duckdb_zstdL19COVER_selectSegmentEPKNS_11COVER_ctx_tEPjPNS_11COVER_map_sEjjNS_20ZDICT_cover_params_tE.exit.thread, %bb.s, %bb.d
  %.045.lcssa = phi i64 [ 0, %bb.d ], [ %.04589, %bb.s ], [ %.04589, %_ZN11duckdb_zstdL19COVER_selectSegmentEPKNS_11COVER_ctx_tEPjPNS_11COVER_map_sEjjNS_20ZDICT_cover_params_tE.exit.thread ], [ 0, %select.unfold ]
  %i.hz = load i32, ptr @_ZL14g_displayLevel, align 4, !tbaa !3
  %i.ia = icmp sgt i32 %i.hz, 1
  br i1 %i.ia, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge
  %i.ib = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ic = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ib, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #22 ; 0 uses
  %i.id = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ie = tail call i32 @fflush(ptr noundef %i.id) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge
  ret i64 %.045.lcssa
}

declare noundef i64 @_ZN11duckdb_zstd24ZDICT_finalizeDictionaryEPvmPKvmS2_PKmjNS_14ZDICT_params_tE(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef byval(%"struct.duckdb_zstd::ZDICT_params_t") align 8) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd30COVER_checkTotalCompressedSizeENS_20ZDICT_cover_params_tEPKmPKhPmmmPhm(ptr noundef readonly byval(%"struct.duckdb_zstd::ZDICT_cover_params_t") align 8 captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef %2, ptr noundef readonly captures(none) %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !17
  %i.c = fcmp olt double %i.b, 1.000000e+00
  %i.d = select i1 %i.c, i64 %4, i64 0            ; 6 uses
  %i.e = icmp uge i64 %i.d, %5                    ; 2 uses
  br i1 %i.e, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = sub nuw i64 %5, %i.d                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.f, 4
  br i1 %min.iters.check, label %.lr.ph.preheader81, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.f, -4                       ; 3 uses
  %8 = add i64 %i.d, %n.vec
  %9 = getelementptr [8 x i8], ptr %1, i64 %i.d
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %10, %vector.body ]
  %vec.phi79 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %11, %vector.body ]
  %i.g = getelementptr [8 x i8], ptr %9, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <2 x i64>, ptr %i.g, align 8, !tbaa !7
  %wide.load80 = load <2 x i64>, ptr %i.h, align 8, !tbaa !7
  %10 = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %wide.load, <2 x i64> %vec.phi) ; 2 uses
  %11 = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %wide.load80, <2 x i64> %vec.phi79) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %10, <2 x i64> %11)
  %12 = tail call i64 @llvm.vector.reduce.umax.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader81

.lr.ph.preheader81:                               ; preds = %.lr.ph.preheader, %middle.block
  %.04556.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %12, %middle.block ]
  %.04655.ph = phi i64 [ %i.d, %.lr.ph.preheader ], [ %8, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader81, %.lr.ph
  %.04556.a = phi i64 [ %..045.a, %.lr.ph ], [ %.04556.ph, %.lr.ph.preheader81 ]
  %.04655.a = phi i64 [ %i.l, %.lr.ph ], [ %.04655.ph, %.lr.ph.preheader81 ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.04655.a
  %i.k = load i64, ptr %i.j, align 8, !tbaa !7
  %..045.a = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %.04556.a) ; 2 uses
  %i.l = add nuw i64 %.04655.a, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %5
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !74

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.045.lcssa = phi i64 [ 0, %bb.a ], [ %12, %middle.block ], [ %..045.a, %.lr.ph ]
  %i.m = tail call noundef i64 @_ZN11duckdb_zstd18ZSTD_compressBoundEm(i64 noundef %.045.lcssa) ; 2 uses
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #25 ; 3 uses
  %i.o = tail call noundef ptr @_ZN11duckdb_zstd15ZSTD_createCCtxEv() ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !75
  %i.r = tail call noundef ptr @_ZN11duckdb_zstd16ZSTD_createCDictEPKvmi(ptr noundef %6, i64 noundef %7, i32 noundef %i.q) ; 3 uses
  %i.s = icmp eq ptr %i.n, null                   ; 2 uses
  %i.t = icmp eq ptr %i.o, null
  %i.u = icmp eq ptr %i.r, null
  %.not78 = or i1 %i.t, %i.u
  %or.cond3.not75 = or i1 %i.s, %.not78           ; 2 uses
  %brmerge = or i1 %or.cond3.not75, %i.e
  %.mux = select i1 %or.cond3.not75, i64 -1, i64 %7
  br i1 %brmerge, label %.loopexit, label %.lr.ph59

.lr.ph59:                                         ; preds = %._crit_edge, %bb.b
  %.158 = phi i64 [ %i.ad, %bb.b ], [ %i.d, %._crit_edge ] ; 3 uses
  %.04757 = phi i64 [ %i.ac, %bb.b ], [ %7, %._crit_edge ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.158
  %i.w = load i64, ptr %i.v, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %i.w
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.158
  %i.z = load i64, ptr %i.y, align 8, !tbaa !7
  %i.aa = tail call noundef i64 @_ZN11duckdb_zstd24ZSTD_compress_usingCDictEPNS_11ZSTD_CCtx_sEPvmPKvmPKNS_12ZSTD_CDict_sE(ptr noundef nonnull %i.o, ptr noundef nonnull %i.n, i64 noundef %i.m, ptr noundef %i.x, i64 noundef %i.z, ptr noundef nonnull %i.r) ; 3 uses
  %i.ab = icmp ult i64 %i.aa, -119
  br i1 %i.ab, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph59
  %i.ac = add i64 %i.aa, %.04757                  ; 2 uses
  %i.ad = add i64 %.158, 1                        ; 2 uses
  %exitcond63.not = icmp eq i64 %i.ad, %5
  br i1 %exitcond63.not, label %.loopexit, label %.lr.ph59, !llvm.loop !76

.loopexit:                                        ; preds = %bb.b, %.lr.ph59, %._crit_edge
  %.2 = phi i64 [ %.mux, %._crit_edge ], [ %i.ac, %bb.b ], [ %i.aa, %.lr.ph59 ]
  %i.ae = tail call noundef i64 @_ZN11duckdb_zstd13ZSTD_freeCCtxEPNS_11ZSTD_CCtx_sE(ptr noundef %i.o) ; 0 uses
  %i.af = tail call noundef i64 @_ZN11duckdb_zstd14ZSTD_freeCDictEPNS_12ZSTD_CDict_sE(ptr noundef %i.r) ; 0 uses
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit
  tail call void @free(ptr noundef nonnull %i.n) #23
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %bb.c
  ret i64 %.2
}

declare noundef i64 @_ZN11duckdb_zstd18ZSTD_compressBoundEm(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

declare noundef ptr @_ZN11duckdb_zstd15ZSTD_createCCtxEv() local_unnamed_addr #7

declare noundef ptr @_ZN11duckdb_zstd16ZSTD_createCDictEPKvmi(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

declare noundef i64 @_ZN11duckdb_zstd24ZSTD_compress_usingCDictEPNS_11ZSTD_CCtx_sEPvmPKvmPKNS_12ZSTD_CDict_sE(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

declare noundef i64 @_ZN11duckdb_zstd13ZSTD_freeCCtxEPNS_11ZSTD_CCtx_sE(ptr noundef) local_unnamed_addr #7

declare noundef i64 @_ZN11duckdb_zstd14ZSTD_freeCDictEPNS_12ZSTD_CDict_sE(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN11duckdb_zstd15COVER_best_initEPNS_12COVER_best_sE(ptr noundef writeonly captures(address_is_null) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 0, i64 48, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define void @_ZN11duckdb_zstd15COVER_best_waitEPNS_12COVER_best_sE(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
.loopexit:
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @_ZN11duckdb_zstd18COVER_best_destroyEPNS_12COVER_best_sE(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #12 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %_ZN11duckdb_zstd15COVER_best_waitEPNS_12COVER_best_sE.exit

_ZN11duckdb_zstd15COVER_best_waitEPNS_12COVER_best_sE.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 2 uses
  %.not5 = icmp eq ptr %i.b, null
  br i1 %.not5, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN11duckdb_zstd15COVER_best_waitEPNS_12COVER_best_sE.exit
  tail call void @free(ptr noundef nonnull %i.b) #23
  br label %bb.c

bb.c:                                             ; preds = %_ZN11duckdb_zstd15COVER_best_waitEPNS_12COVER_best_sE.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN11duckdb_zstd16COVER_best_startEPNS_12COVER_best_sE(ptr noundef captures(address_is_null) %0) local_unnamed_addr #13 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !80
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !80
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @_ZN11duckdb_zstd17COVER_best_finishEPNS_12COVER_best_sENS_20ZDICT_cover_params_tENS_19COVER_dictSelectionE(ptr noundef captures(address_is_null) %0, ptr noundef readonly byval(%"struct.duckdb_zstd::ZDICT_cover_params_t") align 8 captures(none) %1, ptr noundef readonly byval(%"struct.duckdb_zstd::COVER_dictSelection") align 8 captures(none) %2) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !81     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !83   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !84   ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !80
  %i.h = add i64 %i.g, -1
  store i64 %i.h, ptr %i.f, align 8, !tbaa !80
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !77
  %i.k = icmp ult i64 %i.c, %i.j
  br i1 %i.k, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !79   ; 3 uses
  %.not29 = icmp eq ptr %i.m, null
  br i1 %.not29, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !85
  %i.p = icmp ult i64 %i.o, %i.e
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.m) #23
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.e
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.e) #25 ; 3 uses
  store ptr %i.q, ptr %i.l, align 8, !tbaa !79
  %.not31 = icmp eq ptr %i.q, null
  br i1 %.not31, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread
  store i64 -1, ptr %i.i, align 8, !tbaa !77
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.r, align 8, !tbaa !85
  br label %bb.i

bb.g:                                             ; preds = %.thread, %bb.d
  %i.s = phi ptr [ %i.q, %.thread ], [ %i.m, %bb.d ]
  %.not32 = icmp eq ptr %i.a, null
  br i1 %.not32, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 1 %i.a, i64 %i.e, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.e, ptr %i.t, align 8, !tbaa !85
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !86
  store i64 %i.c, ptr %i.i, align 8, !tbaa !77
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN11duckdb_zstd24COVER_dictSelectionErrorEm(ptr dead_on_unwind noalias writable writeonly sret(%"struct.duckdb_zstd::COVER_dictSelection") align 8 captures(none) initializes((0, 24)) %0, i64 noundef %1) local_unnamed_addr #10 {
bb.a:
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstdL19COVER_tryParametersEPv:bb.a
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !77
  %i.bj = icmp ult i64 %.sroa.862.0, %i.bi
  br i1 %i.bj, label %bb.k, label %_ZN11duckdb_zstd17COVER_best_finishEPNS_12COVER_best_sENS_20ZDICT_cover_params_tENS_19COVER_dictSelectionE.exit

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !79 ; 3 uses
  %.not29.i = icmp eq ptr %i.bl, null
  br i1 %.not29.i, label %.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !85
  %i.bo = icmp ult i64 %i.bn, %.sroa.7.0
  br i1 %i.bo, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef nonnull %i.bl) #23
  br label %.thread.i

.thread.i:                                        ; preds = %bb.m, %bb.k
  %i.bp = tail call noalias ptr @malloc(i64 noundef %.sroa.7.0) #25 ; 3 uses
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !79
  %.not31.i = icmp eq ptr %i.bp, null
  br i1 %.not31.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread.i
  store i64 -1, ptr %i.bh, align 8, !tbaa !77
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store i64 0, ptr %i.bq, align 8, !tbaa !85
  br label %_ZN11duckdb_zstd17COVER_best_finishEPNS_12COVER_best_sENS_20ZDICT_cover_params_tENS_19COVER_dictSelectionE.exit

bb.o:                                             ; preds = %.thread.i, %bb.l
  %i.br = phi ptr [ %i.bp, %.thread.i ], [ %i.bl, %bb.l ]
  %.not32.i = icmp eq ptr %.sroa.053.0, null
  br i1 %.not32.i, label %_ZN11duckdb_zstd17COVER_best_finishEPNS_12COVER_best_sENS_20ZDICT_cover_params_tENS_19COVER_dictSelectionE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.br, ptr nonnull align 1 %.sroa.053.0, i64 %.sroa.7.0, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store i64 %.sroa.7.0, ptr %i.bs, align 8, !tbaa !85
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store i32 %.sroa.0.0.copyload, ptr %i.bt, align 8, !tbaa !3
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 36
  store i32 %.sroa.7.0.copyload, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, i64 40, i1 false)
  store i64 %.sroa.862.0, ptr %i.bh, align 8, !tbaa !77
  br label %_ZN11duckdb_zstd17COVER_best_finishEPNS_12COVER_best_sENS_20ZDICT_cover_params_tENS_19COVER_dictSelectionE.exit

_ZN11duckdb_zstd17COVER_best_finishEPNS_12COVER_best_sENS_20ZDICT_cover_params_tENS_19COVER_dictSelectionE.exit: ; preds = %bb.i, %bb.j, %bb.n, %bb.o, %bb.p
  tail call void @free(ptr noundef nonnull %0) #23
  br i1 %.not.i, label %_ZN11duckdb_zstdL17COVER_map_destroyEPNS_11COVER_map_sE.exit, label %bb.q

bb.q:                                             ; preds = %_ZN11duckdb_zstd17COVER_best_finishEPNS_12COVER_best_sENS_20ZDICT_cover_params_tENS_19COVER_dictSelectionE.exit
  tail call void @free(ptr noundef nonnull %i.v) #23
  br label %_ZN11duckdb_zstdL17COVER_map_destroyEPNS_11COVER_map_sE.exit

_ZN11duckdb_zstdL17COVER_map_destroyEPNS_11COVER_map_sE.exit: ; preds = %_ZN11duckdb_zstd17COVER_best_finishEPNS_12COVER_best_sENS_20ZDICT_cover_params_tENS_19COVER_dictSelectionE.exit, %bb.q
  tail call void @free(ptr noundef %.sroa.053.0) #23
  tail call void @free(ptr noundef %i.i) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #14

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZN11duckdb_zstdL17COVER_strict_cmp8EPKvS1_(ptr noundef readonly captures(address) %0, ptr noundef readonly captures(address) %1) #16 {
bb.a:
  %i.a = load ptr, ptr @_ZN11duckdb_zstdL10g_coverCtxE, align 8, !tbaa !54 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load i32, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %i.d = icmp eq i32 %i.c, 8
  %i.e = shl i32 %i.c, 3
  %i.f = zext nneg i32 %i.e to i64
  %notmask.i = shl nsw i64 -1, %i.f
  %i.g = xor i64 %notmask.i, -1
  %i.h = select i1 %i.d, i64 -1, i64 %i.g         ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.j = load i32, ptr %0, align 4, !tbaa !3
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  %.val15.i = load i64, ptr %i.l, align 1, !tbaa !7
  %i.m = and i64 %i.h, %.val15.i                  ; 2 uses
  %i.n = load i32, ptr %1, align 4, !tbaa !3
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.o
  %.val.i = load i64, ptr %i.p, align 1, !tbaa !7
  %i.q = and i64 %.val.i, %i.h                    ; 2 uses
  %.0.i = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64 %i.m, i64 %i.q)
  %i.r = icmp eq i64 %i.m, %i.q
  %i.s = icmp ult ptr %0, %1
  %i.t = select i1 %i.s, i32 -1, i32 1
  %.0 = select i1 %i.r, i32 %i.t, i32 %.0.i
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @_ZN11duckdb_zstdL16COVER_strict_cmpEPKvS1_(ptr noundef readonly captures(address) %0, ptr noundef readonly captures(address) %1) #16 {
bb.a:
  %i.a = load ptr, ptr @_ZN11duckdb_zstdL10g_coverCtxE, align 8, !tbaa !54 ; 2 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !3
  %i.c = load i32, ptr %1, align 4, !tbaa !3
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.e = zext i32 %i.b to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  %i.g = zext i32 %i.c to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.j = load i32, ptr %i.i, align 8, !tbaa !48
  %i.k = zext i32 %i.j to i64
  %i.l = tail call noundef i32 @memcmp(ptr noundef %i.f, ptr noundef %i.h, i64 noundef %i.k) #26 ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  %i.n = icmp ult ptr %0, %1
  %i.o = select i1 %i.n, i32 -1, i32 1
  %.0 = select i1 %i.m, i32 %i.o, i32 %i.l
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZN11duckdb_zstdL10COVER_cmp8EPNS_11COVER_ctx_tEPKvS3_(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i32, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.c = icmp eq i32 %i.b, 8
  %i.d = shl i32 %i.b, 3
  %i.e = zext nneg i32 %i.d to i64
  %notmask = shl nsw i64 -1, %i.e
  %i.f = xor i64 %notmask, -1
  %i.g = select i1 %i.c, i64 -1, i64 %i.f         ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !43     ; 2 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !3
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  %.val15 = load i64, ptr %i.k, align 1, !tbaa !7
  %i.l = and i64 %i.g, %.val15
  %i.m = load i32, ptr %2, align 4, !tbaa !3
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.n
  %.val = load i64, ptr %i.o, align 1, !tbaa !7
  %i.p = and i64 %.val, %i.g
  %.0 = tail call i32 @llvm.ucmp.i32.i64(i64 %i.l, i64 %i.p)
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @_ZN11duckdb_zstdL9COVER_cmpEPNS_11COVER_ctx_tEPKvS3_(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) unnamed_addr #16 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !3
  %i.b = load i32, ptr %2, align 4, !tbaa !3
  %i.c = load ptr, ptr %0, align 8, !tbaa !43     ; 2 uses
  %i.d = zext i32 %i.a to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = zext i32 %i.b to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load i32, ptr %i.h, align 8, !tbaa !48
  %i.j = zext i32 %i.i to i64
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.g, i64 noundef %i.j) #26
  ret i32 %i.k
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.umax.v2i64(<2 x i64>, <2 x i64>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.umax.v2i64(<2 x i64>) #19

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nofree nounwind }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { cold nounwind }
attributes #23 = { nounwind }
attributes #24 = { cold }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { nounwind willreturn memory(read) }

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
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !10, !12, !11}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 _ZTS8_IO_FILE", !16, i64 0}
!16 = !{!"any pointer", !5, i64 0}
!17 = !{!18, !19, i64 16}
!18 = !{!"_ZTSN11duckdb_zstd20ZDICT_cover_params_tE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !19, i64 16, !4, i64 24, !4, i64 28, !20, i64 32}
!19 = !{!"double", !5, i64 0}
!20 = !{!"_ZTSN11duckdb_zstd14ZDICT_params_tE", !4, i64 0, !4, i64 4, !4, i64 8}
!21 = !{!18, !4, i64 36}
!22 = !{!23, !8, i64 56}
!23 = !{!"_ZTSN11duckdb_zstd11COVER_ctx_tE", !24, i64 0, !25, i64 8, !25, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !26, i64 48, !8, i64 56, !26, i64 64, !26, i64 72, !4, i64 80}
!24 = !{!"p1 omnipotent char", !16, i64 0}
!25 = !{!"p1 long", !16, i64 0}
!26 = !{!"p1 int", !16, i64 0}
!27 = !{!28, !4, i64 8}
!28 = !{!"_ZTSN11duckdb_zstd11COVER_map_sE", !29, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!29 = !{!"p1 _ZTSN11duckdb_zstd18COVER_map_pair_t_sE", !16, i64 0}
!30 = !{!28, !4, i64 12}
!31 = !{!28, !4, i64 16}
!32 = !{!28, !29, i64 0}
!33 = !{!23, !26, i64 48}
!34 = !{!23, !26, i64 64}
!35 = !{!23, !26, i64 72}
!36 = !{!23, !25, i64 8}
!37 = distinct !{!37, !10, !11, !12}
!38 = distinct !{!38, !10, !12, !11}
!39 = distinct !{!39, !10, !11, !12}
!40 = distinct !{!40, !10, !12, !11}
!41 = distinct !{!41, !10, !11, !12}
!42 = distinct !{!42, !10, !12, !11}
!43 = !{!23, !24, i64 0}
!44 = !{!23, !25, i64 16}
!45 = !{!23, !8, i64 24}
!46 = !{!23, !8, i64 32}
!47 = !{!23, !8, i64 40}
!48 = !{!23, !4, i64 80}
!49 = distinct !{!49, !10}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = distinct !{!52, !10, !11, !12}
!53 = distinct !{!53, !10, !11}
!54 = !{!16, !16, i64 0}
!55 = distinct !{!55, !10}
!56 = !{ptr @_ZN11duckdb_zstdL10COVER_cmp8EPNS_11COVER_ctx_tEPKvS3_, ptr @_ZN11duckdb_zstdL9COVER_cmpEPNS_11COVER_ctx_tEPKvS3_}
!57 = distinct !{null}
!58 = distinct !{!58, !10}
!59 = distinct !{!59, !10}
!60 = distinct !{!60, !10}
!61 = !{!18, !4, i64 0}
!62 = !{!63, !4, i64 4}
!63 = !{!"_ZTSN11duckdb_zstd18COVER_map_pair_t_sE", !4, i64 0, !4, i64 4}
!64 = !{!63, !4, i64 0}
!65 = distinct !{!65, !10}
!66 = distinct !{!66, !10}
!67 = distinct !{!67, !10}
!68 = distinct !{!68, !51}
!69 = distinct !{!69, !10}
!70 = distinct !{!70, !10}
!71 = !{!18, !4, i64 4}
!72 = distinct !{!72, !10}
!73 = distinct !{!73, !10, !11, !12}
!74 = distinct !{!74, !10, !12, !11}
!75 = !{!18, !4, i64 32}
!76 = distinct !{!76, !10}
!77 = !{!78, !8, i64 80}
!78 = !{!"_ZTSN11duckdb_zstd12COVER_best_sE", !4, i64 0, !4, i64 4, !8, i64 8, !16, i64 16, !8, i64 24, !18, i64 32, !8, i64 80}
!79 = !{!78, !16, i64 16}
!80 = !{!78, !8, i64 8}
!81 = !{!82, !24, i64 0}
!82 = !{!"_ZTSN11duckdb_zstd19COVER_dictSelectionE", !24, i64 0, !8, i64 8, !8, i64 16}
!83 = !{!82, !8, i64 16}
!84 = !{!82, !8, i64 8}
!85 = !{!78, !8, i64 24}
!86 = !{i64 0, i64 4, !3, i64 4, i64 4, !3, i64 8, i64 4, !3, i64 12, i64 4, !3, i64 16, i64 8, !87, i64 24, i64 4, !3, i64 28, i64 4, !3, i64 32, i64 4, !3, i64 36, i64 4, !3, i64 40, i64 4, !3}
!87 = !{!19, !19, i64 0}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZN11duckdb_zstdL16setDictSelectionEPhmm: argument 0"}
!90 = distinct !{!90, !"_ZN11duckdb_zstdL16setDictSelectionEPhmm"}
!91 = !{!18, !4, i64 28}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN11duckdb_zstd24COVER_dictSelectionErrorEm: argument 0"}
!94 = distinct !{!94, !"_ZN11duckdb_zstd24COVER_dictSelectionErrorEm"}
!95 = !{!96, !93}
!96 = distinct !{!96, !97, !"_ZN11duckdb_zstdL16setDictSelectionEPhmm: argument 0"}
!97 = distinct !{!97, !"_ZN11duckdb_zstdL16setDictSelectionEPhmm"}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZN11duckdb_zstd24COVER_dictSelectionErrorEm: argument 0"}
!100 = distinct !{!100, !"_ZN11duckdb_zstd24COVER_dictSelectionErrorEm"}
!101 = !{!102, !99}
!102 = distinct !{!102, !103, !"_ZN11duckdb_zstdL16setDictSelectionEPhmm: argument 0"}
!103 = distinct !{!103, !"_ZN11duckdb_zstdL16setDictSelectionEPhmm"}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZN11duckdb_zstd24COVER_dictSelectionErrorEm: argument 0"}
!106 = distinct !{!106, !"_ZN11duckdb_zstd24COVER_dictSelectionErrorEm"}
!107 = !{!108, !105}
!108 = distinct !{!108, !109, !"_ZN11duckdb_zstdL16setDictSelectionEPhmm: argument 0"}
!109 = distinct !{!109, !"_ZN11duckdb_zstdL16setDictSelectionEPhmm"}
!110 = !{!18, !4, i64 24}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZN11duckdb_zstdL16setDictSelectionEPhmm: argument 0"}
!113 = distinct !{!113, !"_ZN11duckdb_zstdL16setDictSelectionEPhmm"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZN11duckdb_zstd24COVER_dictSelectionErrorEm: argument 0"}
!116 = distinct !{!116, !"_ZN11duckdb_zstd24COVER_dictSelectionErrorEm"}
!117 = !{!118, !115}
!118 = distinct !{!118, !119, !"_ZN11duckdb_zstdL16setDictSelectionEPhmm: argument 0"}
!119 = distinct !{!119, !"_ZN11duckdb_zstdL16setDictSelectionEPhmm"}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZN11duckdb_zstd24COVER_dictSelectionErrorEm: argument 0"}
!122 = distinct !{!122, !"_ZN11duckdb_zstd24COVER_dictSelectionErrorEm"}
!123 = !{!124, !121}
!124 = distinct !{!124, !125, !"_ZN11duckdb_zstdL16setDictSelectionEPhmm: argument 0"}
!125 = distinct !{!125, !"_ZN11duckdb_zstdL16setDictSelectionEPhmm"}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZN11duckdb_zstdL16setDictSelectionEPhmm: argument 0"}
!128 = distinct !{!128, !"_ZN11duckdb_zstdL16setDictSelectionEPhmm"}
!129 = distinct !{!129, !10}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZN11duckdb_zstdL16setDictSelectionEPhmm: argument 0"}
!132 = distinct !{!132, !"_ZN11duckdb_zstdL16setDictSelectionEPhmm"}
!133 = !{!18, !4, i64 12}
!134 = !{!18, !4, i64 8}
!135 = !{!136, !16, i64 0}
!136 = !{!"_ZTSN11duckdb_zstd26COVER_tryParameters_data_sE", !16, i64 0, !137, i64 8, !8, i64 16, !18, i64 24}
!137 = !{!"p1 _ZTSN11duckdb_zstd12COVER_best_sE", !16, i64 0}
!138 = !{!136, !137, i64 8}
!139 = !{!136, !8, i64 16}
!140 = !{!136, !4, i64 24}
!141 = !{!136, !4, i64 28}
!142 = !{!136, !19, i64 40}
!143 = !{!136, !4, i64 32}
!144 = !{!136, !4, i64 48}
!145 = !{!136, !4, i64 60}
!146 = distinct !{!146, !10}
!147 = distinct !{!147, !10}
!148 = !{!24, !24, i64 0}
end_hunk_1
