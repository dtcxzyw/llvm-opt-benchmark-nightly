inline.NumInlined: 722
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN11duckdb_zstdL43HUF_decompress4X2_usingDTable_internal_fastEPvmPKvmPKjPFvPNS_22HUF_DecompressFastArgsEE:bb.a
  %i.dk = zext i8 %i.dj to i32
  %i.dl = add i32 %i.cx, %i.dk                    ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 3
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !100
  %i.do = zext i8 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.do ; 2 uses
  %i.dq = icmp ugt i32 %i.dl, 64
  br i1 %i.dq, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit73.loopexit, label %bb.g, !prof !134, !llvm.loop !102

bb.l:                                             ; preds = %bb.f
  %.not.i67 = icmp ult ptr %i.s, %i.ac
  br i1 %.not.i67, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dr = lshr i64 %i.z, 3
  %i.ds = sub nsw i64 0, %i.dr
  %i.dt = getelementptr inbounds i8, ptr %i.s, i64 %i.ds ; 2 uses
  %i.du = and i32 %i.aa, 7
  %.val.i94 = load i64, ptr %i.dt, align 1, !tbaa !32
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit73

bb.n:                                             ; preds = %bb.l
  %i.dv = icmp eq ptr %i.s, %i.ab
  br i1 %i.dv, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit73, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dw = lshr i32 %i.aa, 3                       ; 2 uses
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = sub nsw i64 0, %i.dx
  %i.dz = getelementptr inbounds i8, ptr %i.s, i64 %i.dy
  %i.ea = icmp ult ptr %i.dz, %i.ab
  %i.eb = ptrtoint ptr %i.s to i64
  %i.ec = ptrtoint ptr %i.ab to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = trunc i64 %i.ed to i32
  %.021.i69 = select i1 %i.ea, i32 %i.ee, i32 %i.dw ; 2 uses
  %i.ef = zext i32 %.021.i69 to i64
  %i.eg = sub nsw i64 0, %i.ef
  %i.eh = getelementptr inbounds i8, ptr %i.s, i64 %i.eg ; 2 uses
  %i.ei = shl i32 %.021.i69, 3
  %i.ej = sub i32 %i.aa, %i.ei
  %.val = load i64, ptr %i.eh, align 1, !tbaa !32
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit73

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit73.loopexit: ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit, %bb.k, %bb.i
  %.sroa.6235.5.ph = phi ptr [ %.sroa.6235.3, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit ], [ %.sroa.6235.273, %bb.i ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.k ]
  %.sroa.17.5.ph = phi i32 [ %.sroa.17.3, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit ], [ %.sroa.17.274, %bb.i ], [ %i.dl, %bb.k ]
  %.sroa.0.5.ph = phi i64 [ %.sroa.0.3, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit ], [ %.sroa.0.275, %bb.i ], [ %.sroa.0.3, %bb.k ]
  %.4.i.ph = phi ptr [ %.0.i76, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit ], [ %.0.i76, %bb.i ], [ %i.dp, %bb.k ] ; 2 uses
  %.pre = ptrtoint ptr %.4.i.ph to i64
  %.pre85 = sub i64 %i.ad, %.pre
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit73

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit73: ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit73.loopexit, %bb.n, %bb.o, %bb.m
  %.pre-phi86 = phi i64 [ %.pre85, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit73.loopexit ], [ %i.af, %bb.n ], [ %i.af, %bb.o ], [ %i.af, %bb.m ]
  %.sroa.6235.5 = phi ptr [ %.sroa.6235.5.ph, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit73.loopexit ], [ %i.s, %bb.n ], [ %i.eh, %bb.o ], [ %i.dt, %bb.m ]
  %.sroa.17.5 = phi i32 [ %.sroa.17.5.ph, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit73.loopexit ], [ %i.aa, %bb.n ], [ %i.ej, %bb.o ], [ %i.du, %bb.m ] ; 4 uses
  %.sroa.0.5 = phi i64 [ %.sroa.0.5.ph, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit73.loopexit ], [ %.val.i, %bb.n ], [ %.val, %bb.o ], [ %.val.i94, %bb.m ] ; 3 uses
  %.4.i = phi ptr [ %.4.i.ph, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit73.loopexit ], [ %i.p, %bb.n ], [ %i.p, %bb.o ], [ %i.p, %bb.m ] ; 3 uses
  %i.ek = icmp ugt i64 %.pre-phi86, 1
  br i1 %i.ek, label %.preheader71, label %.loopexit

.preheader71:                                     ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit73
  %i.el = getelementptr inbounds i8, ptr %.146, i64 -2 ; 3 uses
  %i.em = ptrtoint ptr %i.ab to i64
  %i.en = icmp ugt i32 %.sroa.17.5, 64
  br i1 %i.en, label %.preheader, label %.lr.ph108, !prof !104

.lr.ph108:                                        ; preds = %.preheader71, %bb.s
  %.5.i107 = phi ptr [ %i.fq, %bb.s ], [ %.4.i, %.preheader71 ] ; 5 uses
  %.sroa.0.6106 = phi i64 [ %.sroa.0.7, %bb.s ], [ %.sroa.0.5, %.preheader71 ]
  %.sroa.17.6105 = phi i32 [ %i.fm, %bb.s ], [ %.sroa.17.5, %.preheader71 ] ; 5 uses
  %.sroa.6235.6104 = phi ptr [ %.sroa.6235.7, %bb.s ], [ %.sroa.6235.5, %.preheader71 ] ; 5 uses
  %.not.i60 = icmp ult ptr %.sroa.6235.6104, %i.ac
  br i1 %.not.i60, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph108
  %i.eo = lshr i32 %.sroa.17.6105, 3
  %i.ep = and i32 %.sroa.17.6105, 7
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit66

bb.q:                                             ; preds = %.lr.ph108
  %i.eq = icmp eq ptr %.sroa.6235.6104, %i.ab
  br i1 %i.eq, label %.preheader, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.er = lshr i32 %.sroa.17.6105, 3              ; 2 uses
  %i.es = zext nneg i32 %i.er to i64
  %i.et = sub nsw i64 0, %i.es
  %i.eu = getelementptr inbounds i8, ptr %.sroa.6235.6104, i64 %i.et
  %i.ev = icmp uge ptr %i.eu, %i.ab               ; 2 uses
  %i.ew = ptrtoint ptr %.sroa.6235.6104 to i64
  %i.ex = sub i64 %i.ew, %i.em
  %i.ey = trunc i64 %i.ex to i32
  %.021.i62 = select i1 %i.ev, i32 %i.er, i32 %i.ey ; 2 uses
  %i.ez = shl i32 %.021.i62, 3
  %i.fa = sub i32 %.sroa.17.6105, %i.ez
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit66

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit66: ; preds = %bb.p, %bb.r
  %.pn102.in = phi i32 [ %i.eo, %bb.p ], [ %.021.i62, %bb.r ]
  %.sroa.17.7 = phi i32 [ %i.ep, %bb.p ], [ %i.fa, %bb.r ] ; 3 uses
  %.022.i61 = phi i1 [ true, %bb.p ], [ %i.ev, %bb.r ]
  %.pn102 = zext i32 %.pn102.in to i64
  %.pn101 = sub nsw i64 0, %.pn102
  %.sroa.6235.7 = getelementptr inbounds i8, ptr %.sroa.6235.6104, i64 %.pn101 ; 2 uses
  %.sroa.0.7 = load i64, ptr %.sroa.6235.7, align 1, !tbaa !32 ; 4 uses
  %i.fb = icmp ule ptr %.5.i107, %i.el
  %i.fc = and i1 %i.fb, %.022.i61
  br i1 %i.fc, label %bb.s, label %.preheader

.preheader:                                       ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit66, %bb.s, %bb.q, %.preheader71
  %.5.i.lcssa = phi ptr [ %.4.i, %.preheader71 ], [ %.5.i107, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit66 ], [ %i.fq, %bb.s ], [ %.5.i107, %bb.q ] ; 3 uses
  %.sroa.0.799 = phi i64 [ %.sroa.0.5, %.preheader71 ], [ %.sroa.0.7, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit66 ], [ %.sroa.0.7, %bb.s ], [ %.sroa.0.6106, %bb.q ] ; 3 uses
  %.sroa.17.798 = phi i32 [ %.sroa.17.5, %.preheader71 ], [ %.sroa.17.7, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit66 ], [ %i.fm, %bb.s ], [ %.sroa.17.6105, %bb.q ] ; 2 uses
  %.not.i77 = icmp ugt ptr %.5.i.lcssa, %i.el
  br i1 %.not.i77, label %.loopexit, label %.lr.ph

bb.s:                                             ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit66
  %i.fd = and i32 %.sroa.17.7, 63
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = shl i64 %.sroa.0.7, %i.fe
  %i.fg = lshr i64 %i.ff, 53
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fg ; 3 uses
  %i.fi = load i16, ptr %i.fh, align 2
  store i16 %i.fi, ptr %.5.i107, align 1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 2
  %i.fk = load i8, ptr %i.fj, align 2, !tbaa !97
  %i.fl = zext i8 %i.fk to i32
  %i.fm = add i32 %.sroa.17.7, %i.fl              ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 3
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !100
  %i.fp = zext i8 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %.5.i107, i64 %i.fp ; 2 uses
  %i.fr = icmp ugt i32 %i.fm, 64
  br i1 %i.fr, label %.preheader, label %.lr.ph108, !prof !101, !llvm.loop !105

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.6.i79 = phi ptr [ %i.gf, %.lr.ph ], [ %.5.i.lcssa, %.preheader ] ; 2 uses
  %.sroa.17.878 = phi i32 [ %i.gb, %.lr.ph ], [ %.sroa.17.798, %.preheader ] ; 2 uses
  %i.fs = and i32 %.sroa.17.878, 63
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = shl i64 %.sroa.0.799, %i.ft
  %i.fv = lshr i64 %i.fu, 53
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fv ; 3 uses
  %i.fx = load i16, ptr %i.fw, align 2
  store i16 %i.fx, ptr %.6.i79, align 1
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 2
  %i.fz = load i8, ptr %i.fy, align 2, !tbaa !97
  %i.ga = zext i8 %i.fz to i32
  %i.gb = add i32 %.sroa.17.878, %i.ga            ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fw, i64 3
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !100
  %i.ge = zext i8 %i.gd to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %.6.i79, i64 %i.ge ; 3 uses
  %.not.i = icmp ugt ptr %i.gf, %i.el
  br i1 %.not.i, label %.loopexit, label %.lr.ph, !llvm.loop !106

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit73
  %.sroa.17.9 = phi i32 [ %.sroa.17.5, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit73 ], [ %.sroa.17.798, %.preheader ], [ %i.gb, %.lr.ph ]
  %.sroa.0.8 = phi i64 [ %.sroa.0.5, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit73 ], [ %.sroa.0.799, %.preheader ], [ %.sroa.0.799, %.lr.ph ]
  %.7.i = phi ptr [ %.4.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit73 ], [ %.5.i.lcssa, %.preheader ], [ %i.gf, %.lr.ph ] ; 4 uses
  %i.gg = icmp ult ptr %.7.i, %.146
  br i1 %i.gg, label %_ZN11duckdb_zstdL22HUF_decodeLastSymbolX2EPvPNS_13BIT_DStream_tEPKNS_10HUF_DEltX2Ej.exit, label %bb.t

_ZN11duckdb_zstdL22HUF_decodeLastSymbolX2EPvPNS_13BIT_DStream_tEPKNS_10HUF_DEltX2Ej.exit: ; preds = %.loopexit
  %i.gh = and i32 %.sroa.17.9, 63
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = shl i64 %.sroa.0.8, %i.gi
  %i.gk = lshr i64 %i.gj, 53
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 2
  store i8 %i.gm, ptr %.7.i, align 1
  %i.gn = getelementptr inbounds nuw i8, ptr %.7.i, i64 1
  br label %bb.t

bb.t:                                             ; preds = %_ZN11duckdb_zstdL22HUF_decodeLastSymbolX2EPvPNS_13BIT_DStream_tEPKNS_10HUF_DEltX2Ej.exit, %.loopexit
  %.8.i = phi ptr [ %i.gn, %_ZN11duckdb_zstdL22HUF_decodeLastSymbolX2EPvPNS_13BIT_DStream_tEPKNS_10HUF_DEltX2Ej.exit ], [ %.7.i, %.loopexit ]
  %i.go = ptrtoint ptr %.8.i to i64
  %i.gp = sub i64 %i.go, %i.ae
  %i.gq = load ptr, ptr %i.o, align 8, !tbaa !133
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gp ; 2 uses
  store ptr %i.gr, ptr %i.o, align 8, !tbaa !133
  %.not55 = icmp eq ptr %i.gr, %.146
  br i1 %.not55, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.t, %bb.c, %bb.e, %bb.d, %bb.a
  %.6 = phi i64 [ %i.c, %bb.a ], [ -20, %bb.d ], [ -20, %bb.e ], [ %1, %bb.c ], [ -20, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret i64 %.6
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i64 -20, 2) i64 @_ZN11duckdb_zstdL27HUF_DecompressFastArgs_initEPNS_22HUF_DecompressFastArgsEPvmPKvmPKj(ptr nofree noundef nonnull writeonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.val = load i32, ptr %5, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %4, 10
  br i1 %i.d, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %.val, 16711680
  %.not = icmp eq i32 %i.e, 720896
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.val83 = load i16, ptr %3, align 1, !tbaa !115 ; 2 uses
  %i.f = zext i16 %.val83 to i64                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 2
  %.val82 = load i16, ptr %i.g, align 1, !tbaa !115 ; 2 uses
  %i.h = zext i16 %.val82 to i64                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.val81 = load i16, ptr %i.i, align 1, !tbaa !115 ; 2 uses
  %i.j = zext i16 %.val81 to i64                  ; 2 uses
  %i.k = add nuw nsw i64 %i.f, 6
  %i.l = add nuw nsw i64 %i.k, %i.h
  %i.m = add nuw nsw i64 %i.l, %i.j               ; 2 uses
  %i.n = sub i64 %4, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 6 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.o, ptr %i.p, align 8, !tbaa !133
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.q, ptr %i.r, align 8, !tbaa !133
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.h ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.s, ptr %i.t, align 8, !tbaa !133
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.j ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.u, ptr %i.v, align 8, !tbaa !133
  %i.w = icmp ugt i16 %.val83, 7
  %i.x = icmp ugt i16 %.val82, 7
  %or.cond.not95 = and i1 %i.w, %i.x
  %i.y = icmp ugt i16 %.val81, 7
  %or.cond3.not92 = and i1 %or.cond.not95, %i.y
  %i.z = icmp ugt i64 %i.n, 7
  %or.cond5.not = select i1 %or.cond3.not92, i1 %i.z, i1 false ; 2 uses
  %i.aa = icmp ule i64 %i.m, %4
  %cond = select i1 %or.cond5.not, i1 %i.aa, i1 false
  %.0 = select i1 %or.cond5.not, i64 -20, i64 0
  br i1 %cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds i8, ptr %i.q, i64 -8 ; 2 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !133
  %i.ac = getelementptr inbounds i8, ptr %i.s, i64 -8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !133
  %i.ae = getelementptr inbounds i8, ptr %i.u, i64 -8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !133
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !133
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.aj, align 8, !tbaa !133
  %i.ak = add i64 %2, 3
  %i.al = lshr i64 %i.ak, 2                       ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.am, ptr %i.an, align 8, !tbaa !133
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !133
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.al
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !133
  %i.as = mul nuw nsw i64 %i.al, 3
  %.not79 = icmp sgt i64 %2, %i.as
  br i1 %.not79, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds i8, ptr %i.q, i64 -1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !7   ; 2 uses
  %.not.i = icmp eq i8 %i.au, 0
  %i.av = zext i8 %i.au to i32
  %i.aw = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.av, i1 true)
  %i.ax = xor i32 %i.aw, 31
  %i.ay = sub nuw nsw i32 8, %i.ax
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = select i1 %.not.i, i64 0, i64 %i.az
  %.val.i = load i64, ptr %i.ab, align 1, !tbaa !32
  %i.bb = or i64 %.val.i, 1
  %i.bc = shl i64 %i.bb, %i.ba
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !32
  %i.be = getelementptr inbounds i8, ptr %i.s, i64 -1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !7   ; 2 uses
  %.not.i84 = icmp eq i8 %i.bf, 0
  %i.bg = zext i8 %i.bf to i32
  %i.bh = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.bg, i1 true)
  %i.bi = xor i32 %i.bh, 31
  %i.bj = sub nuw nsw i32 8, %i.bi
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = select i1 %.not.i84, i64 0, i64 %i.bk
  %.val.i85 = load i64, ptr %i.ac, align 1, !tbaa !32
  %i.bm = or i64 %.val.i85, 1
  %i.bn = shl i64 %i.bm, %i.bl
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !32
  %i.bp = getelementptr inbounds i8, ptr %i.u, i64 -1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !7   ; 2 uses
  %.not.i86 = icmp eq i8 %i.bq, 0
  %i.br = zext i8 %i.bq to i32
  %i.bs = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.br, i1 true)
  %i.bt = xor i32 %i.bs, 31
  %i.bu = sub nuw nsw i32 8, %i.bt
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = select i1 %.not.i86, i64 0, i64 %i.bv
  %.val.i87 = load i64, ptr %i.ae, align 1, !tbaa !32
  %i.bx = or i64 %.val.i87, 1
  %i.by = shl i64 %i.bx, %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !32
  %i.ca = getelementptr inbounds i8, ptr %i.ag, i64 -1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !7   ; 2 uses
  %.not.i88 = icmp eq i8 %i.cb, 0
  %i.cc = zext i8 %i.cb to i32
  %i.cd = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.cc, i1 true)
  %i.ce = xor i32 %i.cd, 31
  %i.cf = sub nuw nsw i32 8, %i.ce
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = select i1 %.not.i88, i64 0, i64 %i.cg
  %.val.i89 = load i64, ptr %i.ah, align 1, !tbaa !32
  %i.ci = or i64 %.val.i89, 1
  %i.cj = shl i64 %i.ci, %i.ch
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !32
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %3, ptr %i.cl, align 8, !tbaa !129
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.b, ptr %i.cm, align 8, !tbaa !130
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.a, ptr %i.cn, align 8, !tbaa !127
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.b, %bb.a, %bb.d, %bb.f
  %.1 = phi i64 [ %.0, %bb.d ], [ 1, %bb.f ], [ 0, %bb.a ], [ -20, %bb.b ], [ 0, %bb.c ], [ 0, %bb.e ]
  ret i64 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN11duckdb_zstdL50HUF_decompress4X1_usingDTable_internal_fast_c_loopEPNS_22HUF_DecompressFastArgsE(ptr nofree noundef captures(none) %0) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127  ; 20 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !130
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !129
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.0142.0.copyload = load i64, ptr %i.g, align 8 ; 2 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.23.0.copyload = load i64, ptr %.sroa.23.0..sroa_idx, align 8 ; 2 uses
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.42.0.copyload = load i64, ptr %.sroa.42.0..sroa_idx, align 8 ; 2 uses
  %.sroa.61.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.61.0.copyload = load i64, ptr %.sroa.61.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0.0.copyload290 = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.13.0.copyload = load ptr, ptr %.sroa.13.0..sroa_idx, align 8 ; 2 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.17.0.copyload = load ptr, ptr %.sroa.17.0..sroa_idx, align 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.h, align 8 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx, align 8 ; 2 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.18.0.copyload = load ptr, ptr %.sroa.18.0..sroa_idx, align 8 ; 2 uses
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.25.0.copyload = load ptr, ptr %.sroa.25.0..sroa_idx, align 8 ; 4 uses
  %i.i = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.k = ptrtoint ptr %.sroa.25.0.copyload to i64
  %i.l = sub i64 %i.i, %i.k
  %i.m = udiv i64 %i.l, 5
  %i.n = ptrtoint ptr %.sroa.0.0.copyload290 to i64
  %i.o = sub i64 %i.n, %i.j
  %i.p = udiv i64 %i.o, 7
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.p) ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.loopexit229, label %.preheader228.lr.ph

.preheader228.lr.ph:                              ; preds = %bb.a
  %i.s = mul nuw i64 %i.q, 5
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.25.0.copyload, i64 %i.s
  br label %.preheader228

.loopexit:                                        ; preds = %.preheader
  %i.u = ptrtoint ptr %i.id to i64
end_hunk_0
