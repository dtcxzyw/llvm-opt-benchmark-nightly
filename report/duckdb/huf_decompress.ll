inline.NumInlined: 722
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN11duckdb_zstdL43HUF_decompress4X2_usingDTable_internal_fastEPvmPKvmPKjPFvPNS_22HUF_DecompressFastArgsEE:bb.a
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
  %.idx.i = tail call i64 @llvm.smax.i64(i64 %2, i64 0)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
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
  %.sroa.0142.0.copyload = load i64, ptr %i.g, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.23.0.copyload = load i64, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.42.0.copyload = load i64, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.61.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.61.0.copyload = load i64, ptr %.sroa.61.0..sroa_idx, align 8
  %.sroa.0.0.copyload290 = load ptr, ptr %0, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.13.0.copyload = load ptr, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.17.0.copyload = load ptr, ptr %.sroa.17.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.h, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.18.0.copyload = load ptr, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.25.0.copyload = load ptr, ptr %.sroa.25.0..sroa_idx, align 8
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %i.f to i64
  br label %.preheader228

.preheader228.lr.ph:                              ; preds = %.preheader
  br label %.preheader228, !llvm.loop !135

.preheader228:                                    ; preds = %.preheader228.lr.ph, %bb.a
  %.sroa.16.0 = phi ptr [ %.sroa.17.0.copyload, %bb.a ], [ %i.hl, %.preheader228.lr.ph ] ; 3 uses
  %.sroa.12.0 = phi ptr [ %.sroa.13.0.copyload, %bb.a ], [ %i.hd, %.preheader228.lr.ph ] ; 4 uses
  %.sroa.8.0 = phi ptr [ %.sroa.9.0.copyload, %bb.a ], [ %i.gv, %.preheader228.lr.ph ] ; 4 uses
  %.sroa.17.0 = phi ptr [ %.sroa.0.0.copyload290, %bb.a ], [ %i.gn, %.preheader228.lr.ph ] ; 4 uses
  %.sroa.13.0 = phi ptr [ %.sroa.0.0.copyload, %bb.a ], [ %i.gl, %.preheader228.lr.ph ] ; 2 uses
  %.sroa.9.0 = phi ptr [ %.sroa.11.0.copyload, %bb.a ], [ %i.gt, %.preheader228.lr.ph ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.18.0.copyload, %bb.a ], [ %i.hb, %.preheader228.lr.ph ] ; 2 uses
  %i.k = phi ptr [ %.sroa.25.0.copyload, %bb.a ], [ %i.hj, %.preheader228.lr.ph ] ; 4 uses
  %.sroa.61.0262 = phi i64 [ %.sroa.0142.0.copyload, %bb.a ], [ %i.gp, %.preheader228.lr.ph ] ; 2 uses
  %.sroa.42.0261 = phi i64 [ %.sroa.23.0.copyload, %bb.a ], [ %i.gx, %.preheader228.lr.ph ] ; 2 uses
  %.sroa.23.0260 = phi i64 [ %.sroa.42.0.copyload, %bb.a ], [ %i.hf, %.preheader228.lr.ph ] ; 2 uses
  %.sroa.0142.0259 = phi i64 [ %.sroa.61.0.copyload, %bb.a ], [ %i.hn, %.preheader228.lr.ph ] ; 2 uses
  %1 = ptrtoint ptr %i.k to i64
  %2 = sub i64 %i.i, %1
  %3 = udiv i64 %2, 5
  %4 = ptrtoint ptr %.sroa.17.0 to i64
  %5 = sub i64 %4, %i.j
  %6 = udiv i64 %5, 7
  %7 = tail call i64 @llvm.umin.i64(i64 %3, i64 %6) ; 2 uses
  %8 = mul nuw i64 %7, 5
  %9 = getelementptr inbounds nuw i8, ptr %i.k, i64 %8
  %10 = icmp eq i64 %7, 0
  %i.l = icmp ult ptr %.sroa.8.0, %.sroa.17.0
  %or.cond = select i1 %10, i1 true, i1 %i.l
  %i.m = icmp ult ptr %.sroa.12.0, %.sroa.8.0
  %or.cond.a = select i1 %or.cond, i1 true, i1 %i.m
  %i.n = icmp ult ptr %.sroa.16.0, %.sroa.12.0
  %or.cond305 = select i1 %or.cond.a, i1 true, i1 %i.n
  br i1 %or.cond305, label %.loopexit229, label %.preheader

.preheader:                                       ; preds = %.preheader228, %.preheader
  %.sroa.17.1 = phi ptr [ %i.hl, %.preheader ], [ %.sroa.16.0, %.preheader228 ]
  %.sroa.13.1 = phi ptr [ %i.hd, %.preheader ], [ %.sroa.12.0, %.preheader228 ]
  %.sroa.9.1 = phi ptr [ %i.gv, %.preheader ], [ %.sroa.8.0, %.preheader228 ]
  %.sroa.0.1303 = phi ptr [ %i.gn, %.preheader ], [ %.sroa.17.0, %.preheader228 ]
  %.sroa.0.1 = phi ptr [ %i.gl, %.preheader ], [ %.sroa.13.0, %.preheader228 ] ; 6 uses
  %.sroa.11.1 = phi ptr [ %i.gt, %.preheader ], [ %.sroa.9.0, %.preheader228 ] ; 6 uses
  %.sroa.18.1 = phi ptr [ %i.hb, %.preheader ], [ %.sroa.0.0, %.preheader228 ] ; 6 uses
  %.sroa.25.1 = phi ptr [ %i.hj, %.preheader ], [ %i.k, %.preheader228 ] ; 6 uses
  %.sroa.0142.1 = phi i64 [ %i.gp, %.preheader ], [ %.sroa.61.0262, %.preheader228 ] ; 2 uses
  %.sroa.23.1 = phi i64 [ %i.gx, %.preheader ], [ %.sroa.42.0261, %.preheader228 ] ; 2 uses
  %.sroa.42.1 = phi i64 [ %i.hf, %.preheader ], [ %.sroa.23.0260, %.preheader228 ] ; 2 uses
  %.sroa.61.1 = phi i64 [ %i.hn, %.preheader ], [ %.sroa.0142.0259, %.preheader228 ] ; 2 uses
  %i.o = lshr i64 %.sroa.0142.1, 53
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !115  ; 2 uses
  %i.r = and i16 %i.q, 63
  %i.s = zext nneg i16 %i.r to i64
  %i.t = shl i64 %.sroa.0142.1, %i.s              ; 2 uses
  %i.u = lshr i16 %i.q, 8
  %i.v = trunc nuw i16 %i.u to i8
  store i8 %i.v, ptr %.sroa.0.1, align 1, !tbaa !7
  %i.w = lshr i64 %.sroa.23.1, 53
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2, !tbaa !115  ; 2 uses
  %i.z = and i16 %i.y, 63
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = shl i64 %.sroa.23.1, %i.aa              ; 2 uses
  %i.ac = lshr i16 %i.y, 8
  %i.ad = trunc nuw i16 %i.ac to i8
  store i8 %i.ad, ptr %.sroa.11.1, align 1, !tbaa !7
  %i.ae = lshr i64 %.sroa.42.1, 53
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !115 ; 2 uses
  %i.ah = and i16 %i.ag, 63
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = shl i64 %.sroa.42.1, %i.ai              ; 2 uses
  %i.ak = lshr i16 %i.ag, 8
  %i.al = trunc nuw i16 %i.ak to i8
  store i8 %i.al, ptr %.sroa.18.1, align 1, !tbaa !7
  %i.am = lshr i64 %.sroa.61.1, 53
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !115 ; 2 uses
  %i.ap = and i16 %i.ao, 63
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = shl i64 %.sroa.61.1, %i.aq              ; 2 uses
  %i.as = lshr i16 %i.ao, 8
  %i.at = trunc nuw i16 %i.as to i8
  store i8 %i.at, ptr %.sroa.25.1, align 1, !tbaa !7
  %i.au = lshr i64 %i.t, 53
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !115 ; 2 uses
  %i.ax = and i16 %i.aw, 63
  %i.ay = zext nneg i16 %i.ax to i64
  %i.az = shl i64 %i.t, %i.ay                     ; 2 uses
  %i.ba = lshr i16 %i.aw, 8
  %i.bb = trunc nuw i16 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 1
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !7
  %i.bd = lshr i64 %i.ab, 53
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !115 ; 2 uses
  %i.bg = and i16 %i.bf, 63
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = shl i64 %i.ab, %i.bh                    ; 2 uses
  %i.bj = lshr i16 %i.bf, 8
  %i.bk = trunc nuw i16 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.11.1, i64 1
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !7
  %i.bm = lshr i64 %i.aj, 53
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !115 ; 2 uses
  %i.bp = and i16 %i.bo, 63
  %i.bq = zext nneg i16 %i.bp to i64
  %i.br = shl i64 %i.aj, %i.bq                    ; 2 uses
  %i.bs = lshr i16 %i.bo, 8
  %i.bt = trunc nuw i16 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.18.1, i64 1
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !7
  %i.bv = lshr i64 %i.ar, 53
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bv
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !115 ; 2 uses
  %i.by = and i16 %i.bx, 63
  %i.bz = zext nneg i16 %i.by to i64
  %i.ca = shl i64 %i.ar, %i.bz                    ; 2 uses
  %i.cb = lshr i16 %i.bx, 8
  %i.cc = trunc nuw i16 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.25.1, i64 1
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !7
  %i.ce = lshr i64 %i.az, 53
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !115 ; 2 uses
  %i.ch = and i16 %i.cg, 63
  %i.ci = zext nneg i16 %i.ch to i64
  %i.cj = shl i64 %i.az, %i.ci                    ; 2 uses
  %i.ck = lshr i16 %i.cg, 8
  %i.cl = trunc nuw i16 %i.ck to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 2
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !7
  %i.cn = lshr i64 %i.bi, 53
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.cn
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !115 ; 2 uses
  %i.cq = and i16 %i.cp, 63
  %i.cr = zext nneg i16 %i.cq to i64
  %i.cs = shl i64 %i.bi, %i.cr                    ; 2 uses
  %i.ct = lshr i16 %i.cp, 8
  %i.cu = trunc nuw i16 %i.ct to i8
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.11.1, i64 2
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !7
  %i.cw = lshr i64 %i.br, 53
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !115 ; 2 uses
  %i.cz = and i16 %i.cy, 63
  %i.da = zext nneg i16 %i.cz to i64
  %i.db = shl i64 %i.br, %i.da                    ; 2 uses
  %i.dc = lshr i16 %i.cy, 8
  %i.dd = trunc nuw i16 %i.dc to i8
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.18.1, i64 2
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !7
  %i.df = lshr i64 %i.ca, 53
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !115 ; 2 uses
  %i.di = and i16 %i.dh, 63
  %i.dj = zext nneg i16 %i.di to i64
  %i.dk = shl i64 %i.ca, %i.dj                    ; 2 uses
  %i.dl = lshr i16 %i.dh, 8
  %i.dm = trunc nuw i16 %i.dl to i8
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.25.1, i64 2
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !7
  %i.do = lshr i64 %i.cj, 53
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.do
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !115 ; 2 uses
  %i.dr = and i16 %i.dq, 63
  %i.ds = zext nneg i16 %i.dr to i64
  %i.dt = shl i64 %i.cj, %i.ds                    ; 2 uses
  %i.du = lshr i16 %i.dq, 8
  %i.dv = trunc nuw i16 %i.du to i8
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 3
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !7
  %i.dx = lshr i64 %i.cs, 53
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.dx
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !115 ; 2 uses
  %i.ea = and i16 %i.dz, 63
  %i.eb = zext nneg i16 %i.ea to i64
  %i.ec = shl i64 %i.cs, %i.eb                    ; 2 uses
  %i.ed = lshr i16 %i.dz, 8
  %i.ee = trunc nuw i16 %i.ed to i8
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.11.1, i64 3
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !7
  %i.eg = lshr i64 %i.db, 53
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.eg
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !115 ; 2 uses
  %i.ej = and i16 %i.ei, 63
  %i.ek = zext nneg i16 %i.ej to i64
  %i.el = shl i64 %i.db, %i.ek                    ; 2 uses
  %i.em = lshr i16 %i.ei, 8
  %i.en = trunc nuw i16 %i.em to i8
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.18.1, i64 3
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !7
  %i.ep = lshr i64 %i.dk, 53
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ep
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !115 ; 2 uses
  %i.es = and i16 %i.er, 63
  %i.et = zext nneg i16 %i.es to i64
  %i.eu = shl i64 %i.dk, %i.et                    ; 2 uses
  %i.ev = lshr i16 %i.er, 8
  %i.ew = trunc nuw i16 %i.ev to i8
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.25.1, i64 3
  store i8 %i.ew, ptr %i.ex, align 1, !tbaa !7
  %i.ey = lshr i64 %i.dt, 53
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ey
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !115 ; 2 uses
  %i.fb = and i16 %i.fa, 63
  %i.fc = zext nneg i16 %i.fb to i64
  %i.fd = shl i64 %i.dt, %i.fc
  %i.fe = lshr i16 %i.fa, 8
  %i.ff = trunc nuw i16 %i.fe to i8
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 4
  store i8 %i.ff, ptr %i.fg, align 1, !tbaa !7
  %i.fh = lshr i64 %i.ec, 53
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.fh
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !115 ; 2 uses
  %i.fk = and i16 %i.fj, 63
  %i.fl = zext nneg i16 %i.fk to i64
  %i.fm = shl i64 %i.ec, %i.fl
  %i.fn = lshr i16 %i.fj, 8
  %i.fo = trunc nuw i16 %i.fn to i8
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.11.1, i64 4
  store i8 %i.fo, ptr %i.fp, align 1, !tbaa !7
  %i.fq = lshr i64 %i.el, 53
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.fq
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !115 ; 2 uses
  %i.ft = and i16 %i.fs, 63
  %i.fu = zext nneg i16 %i.ft to i64
  %i.fv = shl i64 %i.el, %i.fu
  %i.fw = lshr i16 %i.fs, 8
  %i.fx = trunc nuw i16 %i.fw to i8
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.18.1, i64 4
  store i8 %i.fx, ptr %i.fy, align 1, !tbaa !7
  %i.fz = lshr i64 %i.eu, 53
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.fz
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !115 ; 2 uses
  %i.gc = and i16 %i.gb, 63
  %i.gd = zext nneg i16 %i.gc to i64
  %i.ge = shl i64 %i.eu, %i.gd
  %i.gf = lshr i16 %i.gb, 8
  %i.gg = trunc nuw i16 %i.gf to i8
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.25.1, i64 4
  store i8 %i.gg, ptr %i.gh, align 1, !tbaa !7
  %i.gi = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.fd, i1 true) ; 2 uses
  %i.gj = and i64 %i.gi, 7
  %i.gk = lshr i64 %i.gi, 3
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 5 ; 2 uses
  %i.gm = sub nsw i64 0, %i.gk
  %i.gn = getelementptr inbounds i8, ptr %.sroa.0.1303, i64 %i.gm ; 3 uses
  %.val207 = load i64, ptr %i.gn, align 1, !tbaa !32
  %i.go = or i64 %.val207, 1
  %i.gp = shl i64 %i.go, %i.gj                    ; 2 uses
  %i.gq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.fm, i1 true) ; 2 uses
  %i.gr = and i64 %i.gq, 7
  %i.gs = lshr i64 %i.gq, 3
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.11.1, i64 5 ; 2 uses
  %i.gu = sub nsw i64 0, %i.gs
  %i.gv = getelementptr inbounds i8, ptr %.sroa.9.1, i64 %i.gu ; 3 uses
  %.val206 = load i64, ptr %i.gv, align 1, !tbaa !32
  %i.gw = or i64 %.val206, 1
  %i.gx = shl i64 %i.gw, %i.gr                    ; 2 uses
  %i.gy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.fv, i1 true) ; 2 uses
  %i.gz = and i64 %i.gy, 7
  %i.ha = lshr i64 %i.gy, 3
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.18.1, i64 5 ; 2 uses
  %i.hc = sub nsw i64 0, %i.ha
  %i.hd = getelementptr inbounds i8, ptr %.sroa.13.1, i64 %i.hc ; 3 uses
  %.val205 = load i64, ptr %i.hd, align 1, !tbaa !32
  %i.he = or i64 %.val205, 1
  %i.hf = shl i64 %i.he, %i.gz                    ; 2 uses
  %i.hg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ge, i1 true) ; 2 uses
  %i.hh = and i64 %i.hg, 7
  %i.hi = lshr i64 %i.hg, 3
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.25.1, i64 5 ; 3 uses
  %i.hk = sub nsw i64 0, %i.hi
  %i.hl = getelementptr inbounds i8, ptr %.sroa.17.1, i64 %i.hk ; 3 uses
  %.val = load i64, ptr %i.hl, align 1, !tbaa !32
  %i.hm = or i64 %.val, 1
  %i.hn = shl i64 %i.hm, %i.hh                    ; 2 uses
  %i.ho = icmp ult ptr %i.hj, %9
  br i1 %i.ho, label %.preheader, label %.preheader228.lr.ph, !llvm.loop !135

.loopexit229:                                     ; preds = %.preheader228
  store i64 %.sroa.61.0262, ptr %i.g, align 8
  store i64 %.sroa.42.0261, ptr %.sroa.23.0..sroa_idx, align 8
  store i64 %.sroa.23.0260, ptr %.sroa.42.0..sroa_idx, align 8
  store i64 %.sroa.0142.0259, ptr %.sroa.61.0..sroa_idx, align 8
  store ptr %.sroa.17.0, ptr %0, align 8
  store ptr %.sroa.8.0, ptr %.sroa.9.0..sroa_idx, align 8
  store ptr %.sroa.12.0, ptr %.sroa.13.0..sroa_idx, align 8
  store ptr %.sroa.16.0, ptr %.sroa.17.0..sroa_idx, align 8
  store ptr %.sroa.13.0, ptr %i.h, align 8
  store ptr %.sroa.9.0, ptr %.sroa.11.0..sroa_idx, align 8
  store ptr %.sroa.0.0, ptr %.sroa.18.0..sroa_idx, align 8
  store ptr %i.k, ptr %.sroa.25.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i64 1, 0) i64 @_ZN11duckdb_zstdL43HUF_decompress4X1_usingDTable_internal_bmi2EPvmPKvmPKj(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly %4) unnamed_addr #7 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 5 uses
  %5 = alloca %"struct.duckdb_zstd::BIT_DStream_t", align 8 ; 25 uses
  %i.b = icmp ult i64 %3, 10
  %i.c = icmp ult i64 %1, 6
  %or.cond.i = or i1 %i.c, %i.b
  br i1 %or.cond.i, label %_ZN11duckdb_zstdL43HUF_decompress4X1_usingDTable_internal_bodyEPvmPKvmPKj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -3 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 42 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %.val86 = load i16, ptr %2, align 1, !tbaa !115 ; 5 uses
  %i.g = zext i16 %.val86 to i64                  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2
  %.val85 = load i16, ptr %i.h, align 1, !tbaa !115 ; 5 uses
  %i.i = zext i16 %.val85 to i64                  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val84 = load i16, ptr %i.j, align 1, !tbaa !115 ; 5 uses
  %i.k = zext i16 %.val84 to i64                  ; 2 uses
  %i.l = add nuw nsw i64 %i.g, 6
  %i.m = add nuw nsw i64 %i.l, %i.i
  %i.n = add nuw nsw i64 %i.m, %i.k               ; 2 uses
  %i.o = sub i64 %3, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 12 uses
  %i.q = getelementptr i8, ptr %i.p, i64 %i.g     ; 22 uses
  %i.r = getelementptr i8, ptr %i.q, i64 %i.i     ; 22 uses
  %i.s = getelementptr i8, ptr %i.r, i64 %i.k     ; 4 uses
  %i.t = add i64 %1, 3
  %i.u = lshr i64 %i.t, 2                         ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.u ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u ; 8 uses
  %.val = load i32, ptr %4, align 4
  %.sroa.3.0.extract.shift.i = lshr i32 %.val, 16 ; 9 uses
  %i.y = icmp ugt i64 %i.n, %3
  %i.z = mul nuw nsw i64 %i.u, 3
  %i.aa = icmp samesign ugt i64 %i.z, %1
  %or.cond180.i = select i1 %i.y, i1 true, i1 %i.aa
  br i1 %or.cond180.i, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp eq i16 %.val86, 0
  br i1 %i.ab, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 3 uses
  %i.ad = icmp ugt i16 %.val86, 7
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr i8, ptr %i.q, i64 -1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !7   ; 2 uses
  %.not50.i = icmp eq i8 %i.af, 0
  br i1 %.not50.i, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  %i.ag = getelementptr inbounds i8, ptr %i.q, i64 -8 ; 2 uses
  %.val.i = load i64, ptr %i.ag, align 1, !tbaa !32
  %i.ah = zext i8 %i.af to i32
  %i.ai = tail call noundef range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.ah, i1 true)
  %i.aj = xor i32 %i.ai, 31
  %i.ak = sub nuw nsw i32 8, %i.aj
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.al = load i8, ptr %i.p, align 1, !tbaa !7
  %i.am = zext i8 %i.al to i64                    ; 7 uses
  switch i16 %.val86, label %bb.m [
    i16 7, label %bb.g
    i16 6, label %bb.h
    i16 5, label %bb.i
    i16 4, label %bb.j
    i16 3, label %bb.k
    i16 2, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !7
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 48
  %i.ar = or disjoint i64 %i.aq, %i.am
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.as = phi i64 [ %i.ar, %bb.g ], [ %i.am, %bb.f ]
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.au = load i8, ptr %i.at, align 1, !tbaa !7
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 40
  %i.ax = add nuw nsw i64 %i.aw, %i.as
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.ay = phi i64 [ %i.ax, %bb.h ], [ %i.am, %bb.f ]
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !7
  %i.bb = zext i8 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, 32
  %i.bd = add nuw nsw i64 %i.bc, %i.ay
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.be = phi i64 [ %i.bd, %bb.i ], [ %i.am, %bb.f ]
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !7
  %i.bh = zext i8 %i.bg to i64
  %i.bi = shl nuw nsw i64 %i.bh, 24
  %i.bj = add nuw nsw i64 %i.bi, %i.be
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %i.bk = phi i64 [ %i.bj, %bb.j ], [ %i.am, %bb.f ]
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !7
  %i.bn = zext i8 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 16
  %i.bp = add nuw nsw i64 %i.bo, %i.bk
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %i.bq = phi i64 [ %i.bp, %bb.k ], [ %i.am, %bb.f ]
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !7
  %i.bt = zext i8 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 8
  %i.bv = add nuw nsw i64 %i.bu, %i.bq
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f
  %.sroa.0247.6 = phi i64 [ %i.am, %bb.f ], [ %i.bv, %bb.l ]
  %i.bw = getelementptr i8, ptr %i.q, i64 -1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !7   ; 2 uses
  %.not.i87 = icmp eq i8 %i.bx, 0
  br i1 %.not.i87, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = zext i8 %i.bx to i32
  %i.bz = tail call noundef range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.by, i1 true)
  %i.ca = shl nuw nsw i16 %.val86, 3
  %i.cb = zext nneg i16 %i.ca to i32
  %reass.sub = sub nsw i32 %i.bz, %i.cb
  %i.cc = add nsw i32 %reass.sub, 41
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread.i
  %.sroa.69266.6 = phi ptr [ %i.p, %bb.n ], [ %i.ag, %.thread.i ] ; 2 uses
  %.sroa.25248.7 = phi i32 [ %i.cc, %bb.n ], [ %i.ak, %.thread.i ] ; 2 uses
  %.sroa.0247.7 = phi i64 [ %.sroa.0247.6, %bb.n ], [ %.val.i, %.thread.i ] ; 2 uses
  %i.cd = icmp eq i16 %.val85, 0
  br i1 %i.cd, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.cf = icmp ugt i16 %.val85, 7
  br i1 %i.cf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cg = getelementptr i8, ptr %i.r, i64 -1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !7   ; 2 uses
  %.not50.i91 = icmp eq i8 %i.ch, 0
  br i1 %.not50.i91, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread, label %.thread.i92

.thread.i92:                                      ; preds = %bb.q
  %i.ci = getelementptr inbounds i8, ptr %i.r, i64 -8 ; 2 uses
  %.val.i90 = load i64, ptr %i.ci, align 1, !tbaa !32
  %i.cj = zext i8 %i.ch to i32
  %i.ck = tail call noundef range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.cj, i1 true)
  %i.cl = xor i32 %i.ck, 31
  %i.cm = sub nuw nsw i32 8, %i.cl
  br label %bb.aa

bb.r:                                             ; preds = %bb.p
  %i.cn = load i8, ptr %i.q, align 1, !tbaa !7
  %i.co = zext i8 %i.cn to i64                    ; 7 uses
  switch i16 %.val85, label %bb.y [
    i16 7, label %bb.s
    i16 6, label %bb.t
    i16 5, label %bb.u
    i16 4, label %bb.v
    i16 3, label %bb.w
    i16 2, label %bb.x
  ]

bb.s:                                             ; preds = %bb.r
  %i.cp = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !7
  %i.cr = zext i8 %i.cq to i64
  %i.cs = shl nuw nsw i64 %i.cr, 48
  %i.ct = or disjoint i64 %i.cs, %i.co
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
end_hunk_0
