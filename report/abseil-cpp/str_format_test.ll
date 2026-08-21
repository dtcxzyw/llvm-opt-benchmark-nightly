Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/str_format_test?download=true
inline.NumInlined: 7775
inline.NumDeleted: 2008
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplINS0_4CordETnPNSt9enable_ifIXsr3std7is_sameIT_S3_EE5valueEvE4typeELPv0EEENS1_16ArgConvertResultILNS0_23FormatConversionCharSetE524292EEERKS5_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  %.not7.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not7.i.i.i, label %._crit_edge, label %bb.i, !prof !681

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.ay = load i8, ptr %i.ax, align 4, !tbaa !1557, !noalias !1544 ; 2 uses
  %i.az = icmp eq i8 %i.ay, 2
  br i1 %i.az, label %bb.j, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i, !prof !681

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1558, !noalias !1544 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !1557, !noalias !1544
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.bc = phi i8 [ %.pre.i.i.i.i, %bb.j ], [ %i.ay, %bb.i ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.bb, %bb.j ], [ %i.av, %bb.i ] ; 10 uses
  %i.bd = icmp eq i8 %i.bc, 3
  br i1 %i.bd, label %bb.k, label %bb.p

bb.k:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 13
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !25, !noalias !1544 ; 4 uses
  %i.bg = zext i8 %i.bf to i32
  store i32 %i.bg, ptr %i.as, align 8, !tbaa !1551, !alias.scope !1544
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 14
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !1544 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 5 uses
  %i.bk = zext i8 %i.bf to i64                    ; 5 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bk
  store ptr %.0.i.i.i.i.i, ptr %i.bl, align 8, !tbaa !1562, !alias.scope !1544
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bk
  store i8 %i.bi, ptr %i.bn, align 1, !tbaa !25, !alias.scope !1544
  %.018.i.i.i.i.i.i.i = zext i8 %i.bi to i64      ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.k
  %xtraiter = and i64 %i.bk, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.i.prol = add nsw i64 %i.bk, -1 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.018.i.i.i.i.i.i.i
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1564, !noalias !1544 ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !1562, !alias.scope !1544
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 14
  %i.bt = load i8, ptr %i.bs, align 1, !noalias !1544 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !25, !alias.scope !1544
  %.0.i.i.i.i.i.i.i.prol = zext i8 %i.bt to i64   ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.i.unr = phi i64 [ %i.bk, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bq, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.bv = icmp eq i8 %i.bf, 1
  br i1 %i.bv, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i.i, i64 16
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %.021.i.i.i.i.i.i.i
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1564, !noalias !1544 ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !1562, !alias.scope !1544
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 14
  %i.cb = load i8, ptr %i.ca, align 1, !noalias !1544 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !25, !alias.scope !1544
  %.0.i.i.i.i.i.i.i = zext i8 %i.cb to i64
  %indvars.iv.next.i.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -2 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.0.i.i.i.i.i.i.i
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1564, !noalias !1544 ; 3 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !1562, !alias.scope !1544
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 14
  %i.ci = load i8, ptr %i.ch, align 1, !noalias !1544 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !25, !alias.scope !1544
  %.0.i.i.i.i.i.i.i.1 = zext i8 %i.ci to i64      ; 2 uses
  %i.ck = icmp sgt i64 %indvars.iv.i.i.i.i.i.i.i, 2
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, !llvm.loop !1565

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.k
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i.i, %bb.k ], [ %.0.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cl = load ptr, ptr %i.bj, align 8, !tbaa !1562, !alias.scope !1544
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.0.lcssa.i.i.i.i.i.i.i
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !1564, !noalias !1544 ; 5 uses
  %i.cp = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !1533, !noalias !1544
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !1533, !noalias !1544 ; 2 uses
  %i.cr = sub i64 %i.cp, %i.cq                    ; 2 uses
  store i64 %i.cr, ptr %i.ar, align 8, !tbaa !1566, !alias.scope !1544
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  %i.ct = load i8, ptr %i.cs, align 4, !tbaa !1557, !noalias !1544 ; 2 uses
  %i.cu = icmp eq i8 %i.ct, 1
  br i1 %i.cu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !1567, !noalias !1544
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1569, !noalias !1544 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 4, !tbaa !1557, !noalias !1544
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.cz = phi i8 [ %.pre.i.i.i.i.i.i, %bb.l ], [ %i.ct, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %.010.i.i.i.i.i.i = phi ptr [ %i.cy, %bb.l ], [ %i.co, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i = phi i64 [ %i.cw, %bb.l ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %i.da = icmp ugt i8 %i.cz, 5
  br i1 %i.da, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.db = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.dc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !1570, !noalias !1544
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i

_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  %.pn.i.i.i.i.i.i = phi ptr [ %i.db, %bb.n ], [ %i.dd, %bb.o ]
  %.sroa.3.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i, i64 %.0.i.i.i.i.i.i
  %.pre73.pre = load i64, ptr %i.aq, align 8, !tbaa !1553
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

bb.p:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.de = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !1533, !noalias !1544
  %i.df = icmp eq i8 %i.bc, 1
  br i1 %i.df, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !1567, !noalias !1544
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !1569, !noalias !1544 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !1557, !noalias !1544
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dk = phi i8 [ %.pre.i.i.i.i.i, %bb.q ], [ %i.bc, %bb.p ]
  %.010.i.i.i.i.i = phi ptr [ %i.dj, %bb.q ], [ %.0.i.i.i.i.i, %bb.p ] ; 2 uses
  %.0.i8.i.i.i.i = phi i64 [ %i.dh, %bb.q ], [ 0, %bb.p ]
  %i.dl = icmp ugt i8 %i.dk, 5
  br i1 %i.dl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dm = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.dn = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1570, !noalias !1544
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.t, %bb.s
  %.pn.i.i.i.i.i = phi ptr [ %i.dm, %bb.s ], [ %i.do, %bb.t ]
  %.sroa.3.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 %.0.i8.i.i.i.i
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

bb.u:                                             ; preds = %bb.g
  %i.dp = sext i8 %i.ap to i64
  %i.dq = lshr i64 %i.dp, 1                       ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 1
  %spec.select.i.i.i.i = select i1 %i.at, ptr null, ptr %i.dr
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit: ; preds = %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i, %bb.u
  %i.ds = phi i64 [ 0, %bb.u ], [ 0, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %i.cr, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %.sroa.2.0.copyload.i79 = phi ptr [ %spec.select.i.i.i.i, %bb.u ], [ %.sroa.3.0.i.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %.sroa.3.0.i.i.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %.sroa.0.0.copyload.i76 = phi i64 [ %i.dq, %bb.u ], [ %i.de, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %i.cq, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %i.dt = phi i64 [ %i.dq, %bb.u ], [ %i.aw, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %.pre73.pre, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %.not5966 = icmp eq i64 %i.dt, 0
  br i1 %.not5966, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 1056
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 5 uses
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit
  %i.ed = phi i64 [ %i.ds, %.lr.ph ], [ %i.gw, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 4 uses
  %.sroa.2.0.copyload.i = phi ptr [ %.sroa.2.0.copyload.i79, %.lr.ph ], [ %.sroa.2.0.copyload.i78, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 2 uses
  %.sroa.0.0.copyload.i = phi i64 [ %.sroa.0.0.copyload.i76, %.lr.ph ], [ %.sroa.0.0.copyload.i75, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 5 uses
  %i.ee = phi i64 [ %i.dt, %.lr.ph ], [ %i.gv, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 2 uses
  %.167 = phi i64 [ %.0, %.lr.ph ], [ %storemerge, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 3 uses
  %.sroa.0.0 = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload.i, i64 %.167) ; 6 uses
  %storemerge = tail call i64 @llvm.usub.sat.i64(i64 %.167, i64 %.sroa.0.0.copyload.i)
  %i.ef = icmp eq i64 %.sroa.0.0, 0
  br i1 %i.ef, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eg = load i64, ptr %i.du, align 8, !tbaa !328
  %i.eh = add i64 %i.eg, %.sroa.0.0
  store i64 %i.eh, ptr %i.du, align 8, !tbaa !328
  %i.ei = load ptr, ptr %i.dw, align 8, !tbaa !1538 ; 2 uses
  %i.ej = ptrtoint ptr %i.ei to i64               ; 2 uses
  %i.ek = sub i64 %i.dx, %i.ej
  %.not.i = icmp ult i64 %.sroa.0.0, %i.ek
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.el = sub i64 %i.ej, %i.dz
  %i.em = load ptr, ptr %i.ea, align 8, !tbaa !1539
  %i.en = load ptr, ptr %3, align 8, !tbaa !1540
  tail call void %i.em(ptr noundef %i.en, i64 %i.el, ptr nonnull %i.dy), !inline_history !1572
  store ptr %i.dy, ptr %i.dw, align 8, !tbaa !1538
  %i.eo = load ptr, ptr %i.ea, align 8, !tbaa !1539
  %i.ep = load ptr, ptr %3, align 8, !tbaa !1540
  tail call void %i.eo(ptr noundef %i.ep, i64 %.sroa.0.0, ptr %.sroa.2.0.copyload.i), !inline_history !1573
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.y:                                             ; preds = %bb.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ei, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.0.0, i1 false)
  %i.eq = load ptr, ptr %i.dw, align 8, !tbaa !1538
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.sroa.0.0
  store ptr %i.er, ptr %i.dw, align 8, !tbaa !1538
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.v, %bb.x, %bb.y
  %.not.not = icmp ugt i64 %.167, %.sroa.0.0.copyload.i
  br i1 %.not.not, label %bb.z, label %._crit_edge

bb.z:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.es = sub i64 %i.ee, %.sroa.0.0.copyload.i    ; 4 uses
  store i64 %i.es, ptr %i.aq, align 8, !tbaa !1553
  %.not.i28 = icmp eq i64 %i.ee, %.sroa.0.0.copyload.i
  br i1 %.not.i28, label %._crit_edge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.et = load i32, ptr %i.as, align 8, !tbaa !1551 ; 2 uses
  %i.eu = icmp sgt i32 %i.et, -1
  br i1 %i.eu, label %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit

_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i: ; preds = %bb.aa
  %i.ev = zext nneg i32 %i.et to i64              ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ev
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !1562
  %.not2.i = icmp eq ptr %i.ex, null
  br i1 %.not2.i, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i
  %i.ey = icmp eq i64 %i.ed, 0
  br i1 %i.ey, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ez = load ptr, ptr %i.eb, align 8, !tbaa !1562 ; 2 uses
  %i.fa = load i8, ptr %i.ec, align 4, !tbaa !25  ; 2 uses
  %i.fb = zext i8 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 15
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !25
  %i.fe = zext i8 %i.fd to i64
  %i.ff = add nsw i64 %i.fe, -1
  %i.fg = icmp eq i64 %i.ff, %i.fb
  br i1 %i.fg, label %.preheader, label %bb.af

.preheader:                                       ; preds = %bb.ac, %.preheader
  %indvars.iv37.i.i.i.i.i = phi i32 [ %indvars.iv.next38.i.i.i.i.i, %.preheader ], [ 1, %bb.ac ] ; 2 uses
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.preheader ], [ 0, %bb.ac ] ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp ne i64 %indvars.iv.i.i.i.i.i, %i.ev
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i.i.i)
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 4 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.next.i.i.i.i.i
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !1562 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ec, i64 %indvars.iv.next.i.i.i.i.i
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !25
  %i.fl = zext i8 %i.fk to i64
  %i.fm = add nuw nsw i64 %i.fl, 1                ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 15
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !25
  %i.fp = zext i8 %i.fo to i64
  %i.fq = icmp eq i64 %i.fm, %i.fp
  %indvars.iv.next38.i.i.i.i.i = add nuw i32 %indvars.iv37.i.i.i.i.i, 1
  br i1 %i.fq, label %.preheader, label %bb.ad, !llvm.loop !1574

bb.ad:                                            ; preds = %.preheader
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ec, i64 %indvars.iv.next.i.i.i.i.i
  %5 = trunc i64 %i.fm to i8
  store i8 %5, ptr %i.fr, align 1, !tbaa !25
  %6 = sext i32 %indvars.iv37.i.i.i.i.i to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %bb.ad
  %indvars.iv40.i.i.i.i.i = phi i64 [ %indvars.iv.next41.i.i.i.i.i.a, %bb.ae ], [ %6, %bb.ad ] ; 2 uses
  %.017.i.i.i.i.i = phi ptr [ %i.fu, %bb.ae ], [ %i.fi, %bb.ad ]
  %.016.i.i.i.i.i = phi i64 [ %i.fy, %bb.ae ], [ %i.fm, %bb.ad ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i, i64 16
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %.016.i.i.i.i.i
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !1564 ; 4 uses
  %indvars.iv.next41.i.i.i.i.i.a = add nsw i64 %indvars.iv40.i.i.i.i.i, -1 ; 3 uses
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %indvars.iv.next41.i.i.i.i.i.a
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !1562
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 14
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !25  ; 2 uses
  %i.fy = zext i8 %i.fx to i64                    ; 2 uses
  %i.fz = getelementptr inbounds i8, ptr %i.ec, i64 %indvars.iv.next41.i.i.i.i.i.a
  store i8 %i.fx, ptr %i.fz, align 1, !tbaa !25
  %i.ga = icmp sgt i64 %indvars.iv40.i.i.i.i.i, 1
  br i1 %i.ga, label %bb.ae, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i, !llvm.loop !1575

bb.af:                                            ; preds = %bb.ac
  %i.gb = add i8 %i.fa, 1                         ; 2 uses
  store i8 %i.gb, ptr %i.ec, align 4, !tbaa !25
  %i.gc = zext i8 %i.gb to i64
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i: ; preds = %bb.ae
  %.pre.i.i.i = load i64, ptr %i.ar, align 8, !tbaa !1566
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i: ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i, %bb.af
  %i.gd = phi i64 [ %i.ed, %bb.af ], [ %.pre.i.i.i, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i ]
  %.lcssa12.sink.i.i.i.i = phi ptr [ %i.ez, %bb.af ], [ %i.fu, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i.i = phi i64 [ %i.gc, %bb.af ], [ %i.fy, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i ]
  %i.ge = getelementptr inbounds nuw i8, ptr %.lcssa12.sink.i.i.i.i, i64 16
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %.lcssa.sink.i.i.i.i
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !1564 ; 5 uses
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !1533 ; 2 uses
  %i.gi = sub i64 %i.gd, %i.gh                    ; 2 uses
  store i64 %i.gi, ptr %i.ar, align 8, !tbaa !1566
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 12
  %i.gk = load i8, ptr %i.gj, align 4, !tbaa !1557 ; 2 uses
  %i.gl = icmp eq i8 %i.gk, 1
  br i1 %i.gl, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !1567
  %i.go = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !1569 ; 2 uses
  %.phi.trans.insert.i.i.i.i29 = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  %.pre.i.i.i.i30 = load i8, ptr %.phi.trans.insert.i.i.i.i29, align 4, !tbaa !1557
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i
  %i.gq = phi i8 [ %.pre.i.i.i.i30, %bb.ag ], [ %i.gk, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i ]
  %.010.i.i.i.i = phi ptr [ %i.gp, %bb.ag ], [ %i.gg, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i = phi i64 [ %i.gn, %bb.ag ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i ]
  %i.gr = icmp ugt i8 %i.gq, 5
  br i1 %i.gr, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gs = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.gt = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !1570
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i: ; preds = %bb.aj, %bb.ai
  %.pn.i.i.i.i = phi ptr [ %i.gs, %bb.ai ], [ %i.gu, %bb.aj ]
  %.sroa.3.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 %.0.i.i.i.i
  %.pre80.pre = load i64, ptr %i.aq, align 8, !tbaa !1553
  br label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit

_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit: ; preds = %bb.aa, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i, %bb.ab, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i
  %i.gv = phi i64 [ %i.es, %bb.ab ], [ %.pre80.pre, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %i.es, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i ], [ %i.es, %bb.aa ] ; 2 uses
  %i.gw = phi i64 [ 0, %bb.ab ], [ %i.gi, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %i.ed, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i ], [ %i.ed, %bb.aa ]
  %.sroa.2.0.copyload.i78 = phi ptr [ null, %bb.ab ], [ %.sroa.3.0.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ null, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i ], [ null, %bb.aa ]
  %.sroa.0.0.copyload.i75 = phi i64 [ 0, %bb.ab ], [ %i.gh, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ 0, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i ], [ 0, %bb.aa ]
  %.not59 = icmp eq i64 %i.gv, 0
  br i1 %.not59, label %._crit_edge, label %bb.v

._crit_edge:                                      ; preds = %bb.z, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit, %bb.h, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.gx = icmp ugt i64 %spec.select, %.0
  %or.cond3 = and i1 %i.b, %i.gx
  br i1 %or.cond3, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %._crit_edge
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !328
  %i.ha = add i64 %i.gz, %i.n
  store i64 %i.ha, ptr %i.gy, align 8, !tbaa !328
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 1056 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 8 uses
  %i.hd = ptrtoint ptr %i.hb to i64               ; 2 uses
  %i.he = load ptr, ptr %i.hc, align 8, !tbaa !1538 ; 4 uses
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = sub i64 %i.hd, %i.hf                    ; 4 uses
  %i.hh = icmp ugt i64 %i.n, %i.hg
  br i1 %i.hh, label %.lr.ph.i34, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit40

.lr.ph.i34:                                       ; preds = %bb.ak
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 8 uses
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.hl = sub nuw nsw i64 %i.n, %i.hg             ; 3 uses
  %.not.peel.i35 = icmp eq ptr %i.hb, %i.he
  br i1 %.not.peel.i35, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i34
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.he, i8 32, i64 %i.hg, i1 false)
  %i.hm = load ptr, ptr %i.hc, align 8, !tbaa !1538
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hg ; 2 uses
  store ptr %i.hn, ptr %i.hc, align 8, !tbaa !1538
  %.pre.i36 = ptrtoint ptr %i.hn to i64
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph.i34
  %.pre-phi.i37 = phi i64 [ %.pre.i36, %bb.al ], [ %i.hd, %.lr.ph.i34 ]
  %i.ho = sub i64 %.pre-phi.i37, %i.hj
  %i.hp = load ptr, ptr %i.hk, align 8, !tbaa !1539
  %i.hq = load ptr, ptr %3, align 8, !tbaa !1540
  tail call void %i.hp(ptr noundef %i.hq, i64 %i.ho, ptr nonnull %i.hi), !inline_history !1541
  store ptr %i.hi, ptr %i.hc, align 8, !tbaa !1538
  %i.hr = icmp samesign ugt i64 %i.hl, 1024
  br i1 %i.hr, label %.peel.next.i38, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit40

.peel.next.i38:                                   ; preds = %bb.am, %.peel.next.i38
  %.010.i39 = phi i64 [ %i.hs, %.peel.next.i38 ], [ %i.hl, %bb.am ]
  %i.hs = add i64 %.010.i39, -1024                ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.hi, i8 32, i64 1024, i1 false)
  store ptr %i.hb, ptr %i.hc, align 8, !tbaa !1538
  %i.ht = load ptr, ptr %i.hk, align 8, !tbaa !1539
  %i.hu = load ptr, ptr %3, align 8, !tbaa !1540
  tail call void %i.ht(ptr noundef %i.hu, i64 1024, ptr nonnull %i.hi), !inline_history !1541
  store ptr %i.hi, ptr %i.hc, align 8, !tbaa !1538
  %i.hv = icmp ugt i64 %i.hs, 1024
  br i1 %i.hv, label %.peel.next.i38, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit40, !llvm.loop !1542

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit40: ; preds = %.peel.next.i38, %bb.ak, %bb.am
  %.0.lcssa.i32 = phi i64 [ %i.n, %bb.ak ], [ %i.hl, %bb.am ], [ %i.hs, %.peel.next.i38 ] ; 2 uses
  %.lcssa.i33 = phi ptr [ %i.he, %bb.ak ], [ %i.hi, %bb.am ], [ %i.hi, %.peel.next.i38 ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i33, i8 32, i64 %.0.lcssa.i32, i1 false)
  %i.hw = load ptr, ptr %i.hc, align 8, !tbaa !1538
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 %.0.lcssa.i32
  store ptr %i.hx, ptr %i.hc, align 8, !tbaa !1538
  br label %bb.an

bb.an:                                            ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit40, %._crit_edge
  ret i8 1
}

declare void @_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr, i32 noundef) unnamed_addr #0

declare void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18CmpHelperEQFailureINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA3_cEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(3) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN7testing13PrintToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1576
  store ptr %4, ptr %i.a, align 8, !tbaa !72, !noalias !1581
  invoke void @_ZN7testing13PrintToStringIPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1576
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %6, align 8, !tbaa !49     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.e = load i64, ptr %i.c, align 8, !tbaa !25
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.g = load ptr, ptr %5, align 8, !tbaa !49     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !25
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.d:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.e:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %6, align 8, !tbaa !49     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.e
  %i.q = load i64, ptr %i.o, align 8, !tbaa !25
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.d
  %.pn = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.m, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.s = load ptr, ptr %5, align 8, !tbaa !49     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

end_hunk_0
