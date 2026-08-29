Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_storage_compression_roaring?download=true
inline.NumInlined: 1873
inline.NumDeleted: 1202
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6duckdb7roaring19RoaringAnalyzeState7AnalyzeILNS_12PhysicalTypeE1EEEvRNS_6VectorEm:bb.a
  %.not4.i.1 = icmp eq i64 %i.dk, 0
  br i1 %.not4.i.1, label %bb.n, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.1: ; preds = %.lr.ph.i31.1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.de
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !230, !range !312, !noundef !91
  %i.dn = zext nneg i8 %i.dm to i32
  br label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.1, %.lr.ph.i31.1
  %.0.i2.i.1 = phi i32 [ 1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.1 ], [ 0, %.lr.ph.i31.1 ] ; 2 uses
  %i.do = phi i32 [ %i.dn, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.1 ], [ %i.cy, %.lr.ph.i31.1 ] ; 3 uses
  %i.dp = and i32 %i.do, %.0.i2.i.1
  %i.dq = xor i32 %.0.i2.i.1, 1
  %i.dr = select i1 %.not, i32 0, i32 %i.dq
  %i.ds = or i32 %i.dp, %i.dr
  %.tr = trunc nuw nsw i32 %i.ds to i8
  %i.dt = shl nuw nsw i8 %.tr, 1
  %i.du = or i8 %i.dt, %i.dd                      ; 2 uses
  %.not117 = icmp eq i32 %i.do, 0
  %i.dv = add nuw i64 %.010.ph.i, 2               ; 4 uses
  %exitcond.not.i32.1 = icmp eq i64 %i.dv, %2
  br i1 %exitcond.not.i32.1, label %._crit_edge.i33, label %.lr.ph.i31.2

.lr.ph.i31.2:                                     ; preds = %bb.n
  %i.dw = lshr i64 %i.dv, 6
  %i.dx = and i64 %i.dv, 63
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.dw
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !7
  %i.ea = shl nuw i64 1, %i.dx
  %i.eb = and i64 %i.dz, %i.ea
  %.not4.i.2 = icmp eq i64 %i.eb, 0
  br i1 %.not4.i.2, label %bb.o, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.2

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.2: ; preds = %.lr.ph.i31.2
  %i.ec = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.dv
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !230, !range !312, !noundef !91
  %i.ee = zext nneg i8 %i.ed to i32
  br label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.2, %.lr.ph.i31.2
  %.0.i2.i.2 = phi i32 [ 1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.2 ], [ 0, %.lr.ph.i31.2 ] ; 2 uses
  %i.ef = phi i32 [ %i.ee, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.2 ], [ %i.do, %.lr.ph.i31.2 ] ; 3 uses
  %i.eg = and i32 %i.ef, %.0.i2.i.2
  %i.eh = xor i32 %.0.i2.i.2, 1
  %i.ei = select i1 %.not117, i32 0, i32 %i.eh
  %i.ej = or i32 %i.eg, %i.ei
  %.tr118 = trunc nuw nsw i32 %i.ej to i8
  %i.ek = shl nuw nsw i8 %.tr118, 2
  %i.el = or i8 %i.du, %i.ek                      ; 2 uses
  %.not119 = icmp eq i32 %i.ef, 0
  %i.em = add nuw i64 %.010.ph.i, 3               ; 4 uses
  %exitcond.not.i32.2 = icmp eq i64 %i.em, %2
  br i1 %exitcond.not.i32.2, label %._crit_edge.i33, label %.lr.ph.i31.3

.lr.ph.i31.3:                                     ; preds = %bb.o
  %i.en = lshr i64 %i.em, 6
  %i.eo = and i64 %i.em, 63
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.en
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !7
  %i.er = shl nuw i64 1, %i.eo
  %i.es = and i64 %i.eq, %i.er
  %.not4.i.3 = icmp eq i64 %i.es, 0
  br i1 %.not4.i.3, label %bb.p, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.3

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.3: ; preds = %.lr.ph.i31.3
  %i.et = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.em
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !230, !range !312, !noundef !91
  %i.ev = zext nneg i8 %i.eu to i32
  br label %bb.p

bb.p:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.3, %.lr.ph.i31.3
  %.0.i2.i.3 = phi i32 [ 1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.3 ], [ 0, %.lr.ph.i31.3 ] ; 2 uses
  %i.ew = phi i32 [ %i.ev, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.3 ], [ %i.ef, %.lr.ph.i31.3 ] ; 3 uses
  %i.ex = and i32 %i.ew, %.0.i2.i.3
  %i.ey = xor i32 %.0.i2.i.3, 1
  %i.ez = select i1 %.not119, i32 0, i32 %i.ey
  %i.fa = or i32 %i.ex, %i.ez
  %.tr120 = trunc nuw nsw i32 %i.fa to i8
  %i.fb = shl nuw nsw i8 %.tr120, 3
  %i.fc = or i8 %i.el, %i.fb                      ; 2 uses
  %.not121 = icmp eq i32 %i.ew, 0
  %i.fd = add nuw i64 %.010.ph.i, 4               ; 4 uses
  %exitcond.not.i32.3 = icmp eq i64 %i.fd, %2
  br i1 %exitcond.not.i32.3, label %._crit_edge.i33, label %.lr.ph.i31.4

.lr.ph.i31.4:                                     ; preds = %bb.p
  %i.fe = lshr i64 %i.fd, 6
  %i.ff = and i64 %i.fd, 63
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.fe
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !7
  %i.fi = shl nuw i64 1, %i.ff
  %i.fj = and i64 %i.fh, %i.fi
  %.not4.i.4 = icmp eq i64 %i.fj, 0
  br i1 %.not4.i.4, label %bb.q, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.4

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.4: ; preds = %.lr.ph.i31.4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.fd
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !230, !range !312, !noundef !91
  %i.fm = zext nneg i8 %i.fl to i32
  br label %bb.q

bb.q:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.4, %.lr.ph.i31.4
  %.0.i2.i.4 = phi i32 [ 1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.4 ], [ 0, %.lr.ph.i31.4 ] ; 2 uses
  %i.fn = phi i32 [ %i.fm, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.4 ], [ %i.ew, %.lr.ph.i31.4 ] ; 3 uses
  %i.fo = and i32 %i.fn, %.0.i2.i.4
  %i.fp = xor i32 %.0.i2.i.4, 1
  %i.fq = select i1 %.not121, i32 0, i32 %i.fp
  %i.fr = or i32 %i.fo, %i.fq
  %.tr122 = trunc nuw nsw i32 %i.fr to i8
  %i.fs = shl nuw nsw i8 %.tr122, 4
  %i.ft = or i8 %i.fc, %i.fs                      ; 2 uses
  %.not123 = icmp eq i32 %i.fn, 0
  %i.fu = add nuw i64 %.010.ph.i, 5               ; 4 uses
  %exitcond.not.i32.4 = icmp eq i64 %i.fu, %2
  br i1 %exitcond.not.i32.4, label %._crit_edge.i33, label %.lr.ph.i31.5

.lr.ph.i31.5:                                     ; preds = %bb.q
  %i.fv = lshr i64 %i.fu, 6
  %i.fw = and i64 %i.fu, 63
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.fv
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !7
  %i.fz = shl nuw i64 1, %i.fw
  %i.ga = and i64 %i.fy, %i.fz
  %.not4.i.5 = icmp eq i64 %i.ga, 0
  br i1 %.not4.i.5, label %bb.r, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.5

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.5: ; preds = %.lr.ph.i31.5
  %i.gb = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.fu
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !230, !range !312, !noundef !91
  %i.gd = zext nneg i8 %i.gc to i32
  br label %bb.r

bb.r:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.5, %.lr.ph.i31.5
  %.0.i2.i.5 = phi i32 [ 1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.5 ], [ 0, %.lr.ph.i31.5 ] ; 2 uses
  %i.ge = phi i32 [ %i.gd, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.5 ], [ %i.fn, %.lr.ph.i31.5 ] ; 3 uses
  %i.gf = and i32 %i.ge, %.0.i2.i.5
  %i.gg = xor i32 %.0.i2.i.5, 1
  %i.gh = select i1 %.not123, i32 0, i32 %i.gg
  %i.gi = or i32 %i.gf, %i.gh
  %.tr124 = trunc nuw nsw i32 %i.gi to i8
  %i.gj = shl nuw nsw i8 %.tr124, 5
  %i.gk = or i8 %i.ft, %i.gj                      ; 2 uses
  %.not125 = icmp eq i32 %i.ge, 0
  %i.gl = add nuw i64 %.010.ph.i, 6               ; 4 uses
  %exitcond.not.i32.5 = icmp eq i64 %i.gl, %2
  br i1 %exitcond.not.i32.5, label %._crit_edge.i33, label %.lr.ph.i31.6

.lr.ph.i31.6:                                     ; preds = %bb.r
  %i.gm = lshr i64 %i.gl, 6
  %i.gn = and i64 %i.gl, 63
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.gm
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !7
  %i.gq = shl nuw i64 1, %i.gn
  %i.gr = and i64 %i.gp, %i.gq
  %.not4.i.6 = icmp eq i64 %i.gr, 0
  br i1 %.not4.i.6, label %bb.s, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.6

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.6: ; preds = %.lr.ph.i31.6
  %i.gs = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.gl
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !230, !range !312, !noundef !91
  %i.gu = zext nneg i8 %i.gt to i32
  br label %bb.s

bb.s:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.6, %.lr.ph.i31.6
  %.0.i2.i.6 = phi i32 [ 1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.6 ], [ 0, %.lr.ph.i31.6 ] ; 2 uses
  %i.gv = phi i32 [ %i.gu, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.6 ], [ %i.ge, %.lr.ph.i31.6 ] ; 3 uses
  %i.gw = and i32 %i.gv, %.0.i2.i.6
  %i.gx = xor i32 %.0.i2.i.6, 1
  %i.gy = select i1 %.not125, i32 0, i32 %i.gx
  %i.gz = or i32 %i.gw, %i.gy
  %.tr126 = trunc nuw nsw i32 %i.gz to i8
  %i.ha = shl nuw nsw i8 %.tr126, 6
  %i.hb = or i8 %i.gk, %i.ha                      ; 2 uses
  %.not127 = icmp eq i32 %i.gv, 0
  %i.hc = add nuw i64 %.010.ph.i, 7               ; 5 uses
  %exitcond.not.i32.6 = icmp eq i64 %i.hc, %2
  br i1 %exitcond.not.i32.6, label %._crit_edge.i33, label %.lr.ph.i31.7

.lr.ph.i31.7:                                     ; preds = %bb.s
  %i.hd = lshr i64 %i.hc, 6
  %i.he = and i64 %i.hc, 63
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.hd
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !7
  %i.hh = shl nuw i64 1, %i.he
  %i.hi = and i64 %i.hg, %i.hh
  %.not4.i.7 = icmp eq i64 %i.hi, 0
  br i1 %.not4.i.7, label %.thread.i34.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.7

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.7: ; preds = %.lr.ph.i31.7
  %i.hj = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.hc
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !230, !range !312, !noundef !91
  %i.hl = zext nneg i8 %i.hk to i32
  br label %.thread.i34.loopexit

.thread.i34.loopexit:                             ; preds = %.lr.ph.i31.7, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.7
  %.0.i2.i.7 = phi i32 [ 1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.7 ], [ 0, %.lr.ph.i31.7 ] ; 2 uses
  %i.hm = phi i32 [ %i.hl, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.7 ], [ %i.gv, %.lr.ph.i31.7 ] ; 3 uses
  %i.hn = icmp ne i32 %i.hm, 0
  %i.ho = and i32 %i.hm, %.0.i2.i.7
  %i.hp = xor i32 %.0.i2.i.7, 1
  %i.hq = select i1 %.not127, i32 0, i32 %i.hp
  %i.hr = or i32 %i.ho, %i.hq
  %.tr128 = trunc nuw nsw i32 %i.hr to i8
  %i.hs = shl nuw i8 %.tr128, 7
  %i.ht = or i8 %i.hb, %i.hs
  br label %.thread.i34

.thread.i34:                                      ; preds = %.thread.i34.loopexit, %.thread.i34.split.us
  %.us-phi = phi i32 [ %i.ct, %.thread.i34.split.us ], [ %i.hm, %.thread.i34.loopexit ]
  %.us-phi47 = phi i8 [ %i.cs, %.thread.i34.split.us ], [ %i.ht, %.thread.i34.loopexit ]
  %.us-phi48 = phi i1 [ %i.cu, %.thread.i34.split.us ], [ %i.hn, %.thread.i34.loopexit ]
  %.us-phi49 = phi i64 [ %i.co, %.thread.i34.split.us ], [ %i.hc, %.thread.i34.loopexit ]
  store i8 %.us-phi47, ptr %.0285.ph.i, align 1, !tbaa !177
  %i.hu = add nuw i64 %.us-phi49, 1               ; 2 uses
  %exitcond.not23.i = icmp eq i64 %i.hu, %2
  br i1 %exitcond.not23.i, label %_ZN6duckdb7roaringL15BitPackBooleansILb0ELb1EEEvPhPKbmPKNS_12ValidityMaskEPNS_14BaseStatisticsE.exit, label %.lr.ph.outer.i30thread-pre-split, !llvm.loop !320

_ZN6duckdb7roaringL15BitPackBooleansILb0ELb1EEEvPhPKbmPKNS_12ValidityMaskEPNS_14BaseStatisticsE.exit: ; preds = %.thread.i34, %.thread.i, %._crit_edge.i33, %bb.l, %._crit_edge.i, %bb.g
  invoke void @_ZN6duckdb7roaring20RoaringStateAppenderINS0_19RoaringAnalyzeStateEE12AppendVectorERS2_RNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %2)
          to label %bb.t unwind label %bb.k

bb.t:                                             ; preds = %_ZN6duckdb7roaringL15BitPackBooleansILb0ELb1EEEvPhPKbmPKNS_12ValidityMaskEPNS_14BaseStatisticsE.exit
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !281
  %i.hx = add i64 %i.hw, %2
  store i64 %i.hx, ptr %i.hv, align 8, !tbaa !281
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.u:                                             ; preds = %bb.j, %bb.k, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.i ], [ %i.az, %bb.k ], [ %i.ay, %bb.j ]
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %3) #26
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.u ], [ %i.aw, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN6duckdb6Vector7FlattenEm(ptr noundef nonnull align 8 dereferenceable(104), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb7roaring25ContainerCompressionStateC2Ev(ptr noundef nonnull align 8 dereferenceable(936) initializes((0, 2), (4, 9), (112, 118), (920, 921)) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 0, ptr %0, align 8, !tbaa !321
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i16 0, ptr %i.b, align 8, !tbaa !324
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 114
  store i16 0, ptr %i.c, align 2, !tbaa !325
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i16 0, ptr %i.d, align 4, !tbaa !325
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.a, i8 0, i64 5, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 920
  store i8 0, ptr %i.i, align 8
  store ptr %i.f, ptr %i.h, align 8, !tbaa !326
  store ptr %i.e, ptr %i.g, align 8, !tbaa !326
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !328
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.o, align 8, !tbaa !229
  store ptr %i.l, ptr %i.n, align 8, !tbaa !229
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.p, ptr %i.q, align 8, !tbaa !329
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.s, ptr %i.u, align 8, !tbaa !229
  store ptr %i.r, ptr %i.t, align 8, !tbaa !229
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.v, ptr %i.w, align 8, !tbaa !330
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb7roaring25ContainerCompressionState5ResetEv(ptr noundef nonnull align 8 dereferenceable(936) initializes((0, 2), (4, 9), (112, 118), (920, 921)) %0) local_unnamed_addr #8 align 2 {
bb.a:
  store i16 0, ptr %0, align 8, !tbaa !321
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 0, ptr %i.a, align 4, !tbaa !331
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 0, ptr %i.b, align 2, !tbaa !332
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i16 0, ptr %i.c, align 8, !tbaa !324
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 114
  store i16 0, ptr %i.d, align 2, !tbaa !325
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i16 0, ptr %i.e, align 4, !tbaa !325
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 920
  store i8 0, ptr %i.f, align 8, !tbaa !333
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.g, align 8, !tbaa !334
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.i, ptr %i.k, align 8, !tbaa !326
  store ptr %i.h, ptr %i.j, align 8, !tbaa !326
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !328
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.o, ptr %i.q, align 8, !tbaa !229
  store ptr %i.n, ptr %i.p, align 8, !tbaa !229
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.r, ptr %i.s, align 8, !tbaa !329
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.u, ptr %i.w, align 8, !tbaa !229
  store ptr %i.t, ptr %i.v, align 8, !tbaa !229
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.x, ptr %i.y, align 8, !tbaa !330
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb7roaring25ContainerCompressionState6AppendEbt(ptr noundef nonnull align 8 dereferenceable(936) %0, i1 noundef zeroext %1, i16 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !335
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(936) %0, i1 noundef zeroext %1, i16 noundef zeroext %2)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.a, ptr %i.d, align 8, !tbaa !334
  %i.e = select i1 %1, i16 %2, i16 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load <2 x i16>, ptr %i.f, align 4, !tbaa !325
  %i.h = insertelement <2 x i16> poison, i16 %2, i64 0
  %i.i = insertelement <2 x i16> %i.h, i16 %i.e, i64 1
  %i.j = add <2 x i16> %i.g, %i.i
  store <2 x i16> %i.j, ptr %i.f, align 4, !tbaa !325
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6duckdb7roaring25ContainerCompressionState13OverrideArrayERPhbm(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(936) initializes((928, 936)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, i1 noundef zeroext %2, i64 noundef %3) local_unnamed_addr #14 align 2 {
bb.a:
  %spec.select = select i1 %2, ptr @_ZN6duckdb7roaring13AppendToArrayILb1EEEvRNS0_25ContainerCompressionStateEbt, ptr @_ZN6duckdb7roaring13AppendToArrayILb0EEEvRNS0_25ContainerCompressionStateEbt
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 928
  store ptr %spec.select, ptr %i.a, align 8, !tbaa !335
  %i.b = icmp ugt i64 %3, 7
  %i.c = load ptr, ptr %1, align 8, !tbaa !229    ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.c, align 1
  %i.d = load ptr, ptr %1, align 8, !tbaa !229    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = zext i1 %2 to i64                        ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8, !tbaa !229
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.f
  store ptr %i.h, ptr %i.j, align 8, !tbaa !229
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = add i64 %i.k, 1
  %i.m = and i64 %i.l, -2
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  store ptr %i.n, ptr %1, align 8, !tbaa !229
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = zext i1 %2 to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  store ptr %i.n, ptr %i.q, align 8, !tbaa !326
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb7roaring13AppendToArrayILb1EEEvRNS0_25ContainerCompressionStateEbt(ptr noundef nonnull align 8 dereferenceable(936) %0, i1 noundef zeroext %1, i16 noundef zeroext %2) #7 comdat {
bb.a:
  br i1 %1, label %bb.b, label %bb.e, !prof !178

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.b = load i16, ptr %i.a, align 4, !tbaa !325  ; 2 uses
  %i.c = zext i16 %i.b to i32                     ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb7roaring20RoaringCompressState8CompressILNS_12PhysicalTypeE1EEEvRNS_6VectorEm:bb.a
  store i8 %.in.sroa.speculated.i.i.i.i33.3, ptr %i.cu, align 1, !tbaa !230
  %i.iz = load i8, ptr %i.cv, align 1, !tbaa !230, !range !312, !noundef !91 ; 2 uses
  %i.ja = trunc nuw i8 %i.iz to i1
  %not..i.i.i.i.i34.3 = xor i1 %i.ja, true
  %i.jb = and i1 %i.iu, %not..i.i.i.i.i34.3
  %.in6.sroa.speculated.i.i.i.i35.3 = select i1 %i.jb, i8 %i.iv, i8 %i.iz
  store i8 %.in6.sroa.speculated.i.i.i.i35.3, ptr %i.cv, align 1, !tbaa !230
  store i8 1, ptr %i.cw, align 1, !tbaa !407
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.jc = add nuw i64 %.045.ph.i, 4               ; 4 uses
  %exitcond.not.i29.3 = icmp eq i64 %i.jc, %2
  br i1 %exitcond.not.i29.3, label %._crit_edge.i30, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.4

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.4: ; preds = %bb.ag
  %i.jd = lshr i64 %i.jc, 6
  %i.je = and i64 %i.jc, 63
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.jd
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !7
  %i.jh = shl nuw i64 1, %i.je
  %i.ji = and i64 %i.jg, %i.jh
  %.not39.i.4 = icmp ne i64 %i.ji, 0              ; 3 uses
  br i1 %.not39.i.4, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.4, label %bb.ah

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.4: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.4
  %i.jj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jc
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !230, !range !312, !noundef !91
  %i.jl = zext nneg i8 %i.jk to i32
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.4, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.4
  %i.jm = phi i32 [ %i.jl, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.4 ], [ %i.im, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.4 ] ; 3 uses
  %i.jn = zext i1 %.not39.i.4 to i32              ; 2 uses
  %i.jo = and i32 %i.jm, %i.jn
  %i.jp = xor i32 %i.jn, 1
  %i.jq = select i1 %i.iu, i32 %i.jp, i32 0
  %i.jr = or i32 %i.jq, %i.jo
  %.tr122 = trunc nuw nsw i32 %i.jr to i8
  %i.js = shl nuw nsw i8 %.tr122, 4
  %i.jt = or i8 %i.it, %i.js                      ; 2 uses
  %i.ju = icmp ne i32 %i.jm, 0                    ; 4 uses
  br i1 %.not39.i.4, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i8 1, ptr %i.ct, align 8, !tbaa !397
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.jv = zext i1 %i.ju to i8                     ; 2 uses
  %i.jw = load i8, ptr %i.cu, align 1             ; 2 uses
  %i.jx = trunc nuw i8 %i.jw to i1
  %not..i.i.i.i.i.i32.4 = xor i1 %i.ju, true
  %i.jy = select i1 %not..i.i.i.i.i.i32.4, i1 %i.jx, i1 false
  %.in.sroa.speculated.i.i.i.i33.4 = select i1 %i.jy, i8 %i.jv, i8 %i.jw
  store i8 %.in.sroa.speculated.i.i.i.i33.4, ptr %i.cu, align 1, !tbaa !230
  %i.jz = load i8, ptr %i.cv, align 1, !tbaa !230, !range !312, !noundef !91 ; 2 uses
  %i.ka = trunc nuw i8 %i.jz to i1
  %not..i.i.i.i.i34.4 = xor i1 %i.ka, true
  %i.kb = and i1 %i.ju, %not..i.i.i.i.i34.4
  %.in6.sroa.speculated.i.i.i.i35.4 = select i1 %i.kb, i8 %i.jv, i8 %i.jz
  store i8 %.in6.sroa.speculated.i.i.i.i35.4, ptr %i.cv, align 1, !tbaa !230
  store i8 1, ptr %i.cw, align 1, !tbaa !407
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.kc = add nuw i64 %.045.ph.i, 5               ; 4 uses
  %exitcond.not.i29.4 = icmp eq i64 %i.kc, %2
  br i1 %exitcond.not.i29.4, label %._crit_edge.i30, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.5

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.5: ; preds = %bb.ak
  %i.kd = lshr i64 %i.kc, 6
  %i.ke = and i64 %i.kc, 63
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.kd
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !7
  %i.kh = shl nuw i64 1, %i.ke
  %i.ki = and i64 %i.kg, %i.kh
  %.not39.i.5 = icmp ne i64 %i.ki, 0              ; 3 uses
  br i1 %.not39.i.5, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.5, label %bb.al

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.5: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.5
  %i.kj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.kc
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !230, !range !312, !noundef !91
  %i.kl = zext nneg i8 %i.kk to i32
  br label %bb.al

bb.al:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.5, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.5
  %i.km = phi i32 [ %i.kl, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.5 ], [ %i.jm, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.5 ] ; 3 uses
  %i.kn = zext i1 %.not39.i.5 to i32              ; 2 uses
  %i.ko = and i32 %i.km, %i.kn
  %i.kp = xor i32 %i.kn, 1
  %i.kq = select i1 %i.ju, i32 %i.kp, i32 0
  %i.kr = or i32 %i.kq, %i.ko
  %.tr123 = trunc nuw nsw i32 %i.kr to i8
  %i.ks = shl nuw nsw i8 %.tr123, 5
  %i.kt = or i8 %i.jt, %i.ks                      ; 2 uses
  %i.ku = icmp ne i32 %i.km, 0                    ; 4 uses
  br i1 %.not39.i.5, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i8 1, ptr %i.ct, align 8, !tbaa !397
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.kv = zext i1 %i.ku to i8                     ; 2 uses
  %i.kw = load i8, ptr %i.cu, align 1             ; 2 uses
  %i.kx = trunc nuw i8 %i.kw to i1
  %not..i.i.i.i.i.i32.5 = xor i1 %i.ku, true
  %i.ky = select i1 %not..i.i.i.i.i.i32.5, i1 %i.kx, i1 false
  %.in.sroa.speculated.i.i.i.i33.5 = select i1 %i.ky, i8 %i.kv, i8 %i.kw
  store i8 %.in.sroa.speculated.i.i.i.i33.5, ptr %i.cu, align 1, !tbaa !230
  %i.kz = load i8, ptr %i.cv, align 1, !tbaa !230, !range !312, !noundef !91 ; 2 uses
  %i.la = trunc nuw i8 %i.kz to i1
  %not..i.i.i.i.i34.5 = xor i1 %i.la, true
  %i.lb = and i1 %i.ku, %not..i.i.i.i.i34.5
  %.in6.sroa.speculated.i.i.i.i35.5 = select i1 %i.lb, i8 %i.kv, i8 %i.kz
  store i8 %.in6.sroa.speculated.i.i.i.i35.5, ptr %i.cv, align 1, !tbaa !230
  store i8 1, ptr %i.cw, align 1, !tbaa !407
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.lc = add nuw i64 %.045.ph.i, 6               ; 4 uses
  %exitcond.not.i29.5 = icmp eq i64 %i.lc, %2
  br i1 %exitcond.not.i29.5, label %._crit_edge.i30, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.6

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.6: ; preds = %bb.ao
  %i.ld = lshr i64 %i.lc, 6
  %i.le = and i64 %i.lc, 63
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.ld
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !7
  %i.lh = shl nuw i64 1, %i.le
  %i.li = and i64 %i.lg, %i.lh
  %.not39.i.6 = icmp ne i64 %i.li, 0              ; 3 uses
  br i1 %.not39.i.6, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.6, label %bb.ap

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.6: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.6
  %i.lj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.lc
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !230, !range !312, !noundef !91
  %i.ll = zext nneg i8 %i.lk to i32
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.6, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.6
  %i.lm = phi i32 [ %i.ll, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.6 ], [ %i.km, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.6 ] ; 3 uses
  %i.ln = zext i1 %.not39.i.6 to i32              ; 2 uses
  %i.lo = and i32 %i.lm, %i.ln
  %i.lp = xor i32 %i.ln, 1
  %i.lq = select i1 %i.ku, i32 %i.lp, i32 0
  %i.lr = or i32 %i.lq, %i.lo
  %.tr124 = trunc nuw nsw i32 %i.lr to i8
  %i.ls = shl nuw nsw i8 %.tr124, 6
  %i.lt = or i8 %i.kt, %i.ls                      ; 2 uses
  %i.lu = icmp ne i32 %i.lm, 0                    ; 4 uses
  br i1 %.not39.i.6, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i8 1, ptr %i.ct, align 8, !tbaa !397
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.lv = zext i1 %i.lu to i8                     ; 2 uses
  %i.lw = load i8, ptr %i.cu, align 1             ; 2 uses
  %i.lx = trunc nuw i8 %i.lw to i1
  %not..i.i.i.i.i.i32.6 = xor i1 %i.lu, true
  %i.ly = select i1 %not..i.i.i.i.i.i32.6, i1 %i.lx, i1 false
  %.in.sroa.speculated.i.i.i.i33.6 = select i1 %i.ly, i8 %i.lv, i8 %i.lw
  store i8 %.in.sroa.speculated.i.i.i.i33.6, ptr %i.cu, align 1, !tbaa !230
  %i.lz = load i8, ptr %i.cv, align 1, !tbaa !230, !range !312, !noundef !91 ; 2 uses
  %i.ma = trunc nuw i8 %i.lz to i1
  %not..i.i.i.i.i34.6 = xor i1 %i.ma, true
  %i.mb = and i1 %i.lu, %not..i.i.i.i.i34.6
  %.in6.sroa.speculated.i.i.i.i35.6 = select i1 %i.mb, i8 %i.lv, i8 %i.lz
  store i8 %.in6.sroa.speculated.i.i.i.i35.6, ptr %i.cv, align 1, !tbaa !230
  store i8 1, ptr %i.cw, align 1, !tbaa !407
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.mc = add nuw i64 %.045.ph.i, 7               ; 6 uses
  %exitcond.not.i29.6 = icmp eq i64 %i.mc, %2
  br i1 %exitcond.not.i29.6, label %._crit_edge.i30, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.7

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.7: ; preds = %bb.as
  %i.md = lshr i64 %i.mc, 6
  %i.me = and i64 %i.mc, 63
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.md
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !7
  %i.mh = shl nuw i64 1, %i.me
  %i.mi = and i64 %i.mg, %i.mh
  %.not39.i.7 = icmp ne i64 %i.mi, 0              ; 3 uses
  br i1 %.not39.i.7, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.7, label %bb.at

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.7: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.7
  %i.mj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.mc
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !230, !range !312, !noundef !91
  %i.ml = zext nneg i8 %i.mk to i32
  br label %bb.at

bb.at:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.7, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.7
  %i.mm = phi i32 [ %i.ml, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.7 ], [ %i.lm, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.7 ] ; 4 uses
  %i.mn = zext i1 %.not39.i.7 to i32              ; 2 uses
  %i.mo = and i32 %i.mm, %i.mn
  %i.mp = xor i32 %i.mn, 1
  %i.mq = select i1 %i.lu, i32 %i.mp, i32 0
  %i.mr = or i32 %i.mq, %i.mo
  %.tr125 = trunc nuw nsw i32 %i.mr to i8
  %i.ms = shl nuw i8 %.tr125, 7
  %i.mt = or i8 %i.lt, %i.ms                      ; 2 uses
  %i.mu = icmp ne i32 %i.mm, 0                    ; 5 uses
  br i1 %.not39.i.7, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i8 1, ptr %i.ct, align 8, !tbaa !397
  br label %.thread.i31

bb.av:                                            ; preds = %bb.at
  %i.mv = zext i1 %i.mu to i8                     ; 2 uses
  %i.mw = load i8, ptr %i.cu, align 1             ; 2 uses
  %i.mx = trunc nuw i8 %i.mw to i1
  %not..i.i.i.i.i.i32.7 = xor i1 %i.mu, true
  %i.my = select i1 %not..i.i.i.i.i.i32.7, i1 %i.mx, i1 false
  %.in.sroa.speculated.i.i.i.i33.7 = select i1 %i.my, i8 %i.mv, i8 %i.mw
  store i8 %.in.sroa.speculated.i.i.i.i33.7, ptr %i.cu, align 1, !tbaa !230
  %i.mz = load i8, ptr %i.cv, align 1, !tbaa !230, !range !312, !noundef !91 ; 2 uses
  %i.na = trunc nuw i8 %i.mz to i1
  %not..i.i.i.i.i34.7 = xor i1 %i.na, true
  %i.nb = and i1 %i.mu, %not..i.i.i.i.i34.7
  %.in6.sroa.speculated.i.i.i.i35.7 = select i1 %i.nb, i8 %i.mv, i8 %i.mz
  store i8 %.in6.sroa.speculated.i.i.i.i35.7, ptr %i.cv, align 1, !tbaa !230
  store i8 1, ptr %i.cw, align 1, !tbaa !407
  br label %.thread.i31

.thread.i31.loopexit:                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.us.6
  %i.nc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fm
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !230, !range !312, !noundef !91 ; 5 uses
  %i.ne = icmp ne i8 %i.nd, 0                     ; 3 uses
  %i.nf = trunc nuw i8 %.in.sroa.speculated.i.i.i.i33.us.6 to i1
  %not..i.i.i.i.i.i32.us.7 = xor i1 %i.ne, true
  %i.ng = select i1 %not..i.i.i.i.i.i32.us.7, i1 %i.nf, i1 false
  %.in.sroa.speculated.i.i.i.i33.us.7 = select i1 %i.ng, i8 %i.nd, i8 %.in.sroa.speculated.i.i.i.i33.us.6
  store i8 %.in.sroa.speculated.i.i.i.i33.us.7, ptr %i.cu, align 1, !tbaa !230
  %i.nh = trunc nuw i8 %.in6.sroa.speculated.i.i.i.i35.us.6 to i1
  %not..i.i.i.i.i34.us.7 = xor i1 %i.nh, true
  %i.ni = and i1 %i.ne, %not..i.i.i.i.i34.us.7
  %.in6.sroa.speculated.i.i.i.i35.us.7 = select i1 %i.ni, i8 %i.nd, i8 %.in6.sroa.speculated.i.i.i.i35.us.6
  store i8 %.in6.sroa.speculated.i.i.i.i35.us.7, ptr %i.cv, align 1, !tbaa !230
  store i8 1, ptr %i.cw, align 1, !tbaa !407
  %i.nj = shl nuw i8 %i.nd, 7
  %i.nk = or i8 %i.fh, %i.nj
  %i.nl = zext nneg i8 %i.nd to i32
  br label %.thread.i31

.thread.i31:                                      ; preds = %bb.av, %bb.au, %.thread.i31.loopexit
  %.us-phi = phi i32 [ %i.nl, %.thread.i31.loopexit ], [ %i.mm, %bb.au ], [ %i.mm, %bb.av ]
  %.us-phi48 = phi i8 [ %i.nk, %.thread.i31.loopexit ], [ %i.mt, %bb.au ], [ %i.mt, %bb.av ]
  %.us-phi49 = phi i1 [ %i.ne, %.thread.i31.loopexit ], [ %i.mu, %bb.au ], [ %i.mu, %bb.av ]
  %.us-phi50 = phi i64 [ %i.fm, %.thread.i31.loopexit ], [ %i.mc, %bb.au ], [ %i.mc, %bb.av ]
  %i.nm = getelementptr inbounds nuw i8, ptr %.03340.ph.i, i64 1
  store i8 %.us-phi48, ptr %.03340.ph.i, align 1, !tbaa !177
  %i.nn = add nuw i64 %.us-phi50, 1               ; 2 uses
  %exitcond.not58.i = icmp eq i64 %i.nn, %2
  br i1 %exitcond.not58.i, label %_ZN6duckdb7roaringL15BitPackBooleansILb1ELb1EEEvPhPKbmPKNS_12ValidityMaskEPNS_14BaseStatisticsE.exit, label %.outer.i28, !llvm.loop !420

_ZN6duckdb7roaringL15BitPackBooleansILb1ELb1EEEvPhPKbmPKNS_12ValidityMaskEPNS_14BaseStatisticsE.exit: ; preds = %.thread.i31, %.thread.i, %._crit_edge.i30, %bb.r, %._crit_edge.i, %bb.g
  invoke void @_ZN6duckdb7roaring20RoaringStateAppenderINS0_20RoaringCompressStateEE12AppendVectorERS2_RNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %2)
          to label %bb.aw unwind label %bb.p

bb.aw:                                            ; preds = %_ZN6duckdb7roaringL15BitPackBooleansILb1ELb1EEEvPhPKbmPKNS_12ValidityMaskEPNS_14BaseStatisticsE.exit
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.ax:                                            ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.cr, %bb.p ], [ %i.cq, %bb.o ]
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %3) #26
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ax ], [ %i.cp, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb7roaring20ContainerSegmentScanC2EPh(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(10) initializes((0, 10)) %0, ptr noundef %1) unnamed_addr #8 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !421
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !422
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.b, align 1, !tbaa !423
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext range(i16 0, -255) i16 @_ZN6duckdb7roaring20ContainerSegmentScanppEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(10) %0, i32 noundef %1) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.promoted = load i8, ptr %i.b, align 8, !tbaa !422 ; 4 uses
  %i.c = icmp ult i8 %.promoted, 8
  %.pre = load i8, ptr %i.a, align 1              ; 3 uses
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !421    ; 2 uses
  %i.e = zext nneg i8 %.promoted to i64           ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !177
  %.not.peel = icmp ult i8 %.pre, %i.g
  br i1 %.not.peel, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store i8 0, ptr %i.a, align 1, !tbaa !423
  %indvars.iv.next.peel = add nuw nsw i64 %i.e, 1 ; 3 uses
  %i.h = trunc nuw nsw i64 %indvars.iv.next.peel to i8
  store i8 %i.h, ptr %i.b, align 8, !tbaa !422
  %exitcond.peel.not = icmp eq i64 %indvars.iv.next.peel, 8
  br i1 %exitcond.peel.not, label %.critedge, label %.peel.next

.peel.next:                                       ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv.next.peel, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  %i.j = load i8, ptr %i.i, align 1, !tbaa !177
  %.not.not = icmp eq i8 %i.j, 0
  br i1 %.not.not, label %bb.c, label %.critedge.loopexit.split.loop.exit6

bb.c:                                             ; preds = %.peel.next
  store i8 0, ptr %i.a, align 1, !tbaa !423
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = trunc i64 %indvars.iv.next to i8         ; 2 uses
  store i8 %i.k, ptr %i.b, align 8, !tbaa !422
  %exitcond.not = icmp eq i8 %i.k, 8
  br i1 %exitcond.not, label %.critedge, label %.peel.next, !llvm.loop !424

.critedge.loopexit.split.loop.exit6:              ; preds = %.peel.next
  %i.l = trunc nuw nsw i64 %indvars.iv to i8
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.critedge.loopexit.split.loop.exit6, %.lr.ph, %bb.b, %bb.a
  %i.m = phi i8 [ %.pre, %bb.a ], [ %.pre, %.lr.ph ], [ 0, %bb.b ], [ 0, %.critedge.loopexit.split.loop.exit6 ], [ 0, %bb.c ]
  %.lcssa = phi i8 [ %.promoted, %bb.a ], [ %.promoted, %.lr.ph ], [ 8, %bb.b ], [ %i.l, %.critedge.loopexit.split.loop.exit6 ], [ 8, %bb.c ]
  %i.n = add i8 %i.m, 1
  store i8 %i.n, ptr %i.a, align 1, !tbaa !423
  %i.o = zext i8 %.lcssa to i16
  %i.p = shl nuw i16 %i.o, 8
  ret i16 %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb7roaring21RunContainerScanStateC2EmmmPh(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 32), (36, 37), (40, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !197
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.b, align 8, !tbaa !180
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.c, align 8, !tbaa !182
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb7roaring21RunContainerScanStateE, i64 16), ptr %0, align 8, !tbaa !149
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 0, ptr %i.d, align 4, !tbaa !426
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !428
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %3, ptr %i.f, align 8, !tbaa !429
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %4, ptr %i.g, align 8, !tbaa !430
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb7roaring21RunContainerScanState11ScanPartialERNS_6VectorEmm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !428
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !149
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(64) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.h = load i8, ptr %i.g, align 4, !tbaa !426, !range !312, !noundef !91
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = icmp eq i64 %3, 0
  %.not2829 = or i1 %i.j, %i.i
  br i1 %.not2829, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 34
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.h
  %.030 = phi i64 [ 0, %.lr.ph ], [ %i.af, %bb.h ]
  %i.n = load i16, ptr %i.k, align 8, !tbaa !431
  %i.o = zext i16 %i.n to i64                     ; 2 uses
  %i.p = load i64, ptr %i.l, align 8, !tbaa !182  ; 5 uses
  %i.q = add i64 %i.p, %3                         ; 2 uses
end_hunk_1
