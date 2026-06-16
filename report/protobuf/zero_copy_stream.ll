inline.NumInlined: 207
inline.NumDeleted: 134
begin_hunk_0_@_ZN6google8protobuf2io20ZeroCopyOutputStream9WriteCordERKN4absl12lts_202505124CordE:bb.a
bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.z = load i8, ptr %i.y, align 4, !tbaa !24, !noalias !64 ; 2 uses
  %i.aa = icmp eq i8 %i.z, 2
  br i1 %i.aa, label %bb.h, label %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i, !prof !44

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !73, !noalias !64 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !24, !noalias !64
  br label %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.ad = phi i8 [ %.pre.i.i.i.i, %bb.h ], [ %i.z, %bb.g ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.ac, %bb.h ], [ %i.w, %bb.g ] ; 11 uses
  %i.ae = icmp eq i8 %i.ad, 3
  br i1 %i.ae, label %bb.i, label %bb.n

bb.i:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 13
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !13, !noalias !64 ; 4 uses
  %i.ah = zext i8 %i.ag to i32
  store i32 %i.ah, ptr %i.s, align 8, !tbaa !65, !alias.scope !64
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 14
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !64 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.al = zext i8 %i.ag to i64                    ; 5 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.al
  store ptr %.0.i.i.i.i.i, ptr %i.am, align 8, !tbaa !77, !alias.scope !64
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 %i.aj, ptr %i.ao, align 1, !tbaa !13, !alias.scope !64
  %.018.i.i.i.i.i.i.i = zext i8 %i.aj to i64      ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.i
  %xtraiter = and i64 %i.al, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.i.prol = add nsw i64 %i.al, -1 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.018.i.i.i.i.i.i.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !79, !noalias !64 ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !77, !alias.scope !64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 14
  %i.au = load i8, ptr %i.at, align 1, !noalias !64 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store i8 %i.au, ptr %i.av, align 1, !tbaa !13, !alias.scope !64
  %.0.i.i.i.i.i.i.i.prol = zext i8 %i.au to i64   ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.i.unr = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.aw = icmp eq i8 %i.ag, 1
  br i1 %i.aw, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i.i, i64 16
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.021.i.i.i.i.i.i.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !79, !noalias !64 ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !77, !alias.scope !64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 14
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !64 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !13, !alias.scope !64
  %.0.i.i.i.i.i.i.i = zext i8 %i.bc to i64
  %indvars.iv.next.i.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -2 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.0.i.i.i.i.i.i.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !79, !noalias !64 ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !77, !alias.scope !64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 14
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !64 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !13, !alias.scope !64
  %.0.i.i.i.i.i.i.i.1 = zext i8 %i.bj to i64      ; 2 uses
  %i.bl = icmp sgt i64 %indvars.iv.i.i.i.i.i.i.i, 2
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, !llvm.loop !80

_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.i
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i.i, %bb.i ], [ %.0.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bm = load ptr, ptr %i.ak, align 8, !tbaa !77, !alias.scope !64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.0.lcssa.i.i.i.i.i.i.i
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !79, !noalias !64 ; 5 uses
  %i.bq = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !14, !noalias !64
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !14, !noalias !64 ; 2 uses
  %i.bs = sub i64 %i.bq, %i.br                    ; 2 uses
  store i64 %i.bs, ptr %i.r, align 8, !tbaa !81, !alias.scope !64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.bu = load i8, ptr %i.bt, align 4, !tbaa !24, !noalias !64 ; 2 uses
  %i.bv = icmp eq i8 %i.bu, 1
  br i1 %i.bv, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !82, !noalias !64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !84, !noalias !64 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 4, !tbaa !24, !noalias !64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.ca = phi i8 [ %.pre.i.i.i.i.i.i, %bb.j ], [ %i.bu, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %.010.i.i.i.i.i.i = phi i64 [ %i.bx, %bb.j ], [ 0, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %.0.i.i.i.i.i.i = phi ptr [ %i.bz, %bb.j ], [ %i.bp, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ] ; 2 uses
  %i.cb = icmp ugt i8 %i.ca, 5
  br i1 %i.cb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !85, !noalias !64
  br label %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i

_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.pn.i.i.i.i.i.i = phi ptr [ %i.cc, %bb.l ], [ %i.ce, %bb.m ]
  %.sroa.3.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i, i64 %.010.i.i.i.i.i.i
  %.pre.pre = load i64, ptr %i.q, align 8, !tbaa !67
  br label %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit

bb.n:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  store ptr %.0.i.i.i.i.i, ptr %i.p, align 8, !tbaa !87, !alias.scope !64
  %i.cf = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !14, !noalias !64
  %i.cg = icmp eq i8 %i.ad, 1
  br i1 %i.cg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !82, !noalias !64
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !84, !noalias !64 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !24, !noalias !64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cl = phi i8 [ %.pre.i.i.i.i.i, %bb.o ], [ %i.ad, %bb.n ]
  %.010.i.i.i.i.i = phi i64 [ %i.ci, %bb.o ], [ 0, %bb.n ]
  %.0.i8.i.i.i.i = phi ptr [ %i.ck, %bb.o ], [ %.0.i.i.i.i.i, %bb.n ] ; 2 uses
  %i.cm = icmp ugt i8 %i.cl, 5
  br i1 %i.cm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i8.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i8.i.i.i.i, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !85, !noalias !64
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.r, %bb.q
  %.pn.i.i.i.i.i = phi ptr [ %i.cn, %bb.q ], [ %i.cp, %bb.r ]
  %.sroa.3.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 %.010.i.i.i.i.i
  br label %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit

bb.s:                                             ; preds = %bb.e
  %i.cq = sext i8 %i.t to i64
  %i.cr = lshr i64 %i.cq, 1                       ; 3 uses
  store i64 %i.cr, ptr %i.q, align 8, !tbaa !67, !alias.scope !64
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 1
  %spec.select.i.i.i.i = select i1 %i.u, ptr null, ptr %i.cs
  br label %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit

_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit: ; preds = %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i, %bb.s
  %.sink.i.i.i.i.sink = phi i64 [ %i.cr, %bb.s ], [ %i.cf, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %i.br, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %.sroa.3.0.i.sink.i.i.i.i.sink = phi ptr [ %spec.select.i.i.i.i, %bb.s ], [ %.sroa.3.0.i.i.i.i.i, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %.sroa.3.0.i.i.i.i.i.i, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %i.ct = phi i64 [ 0, %bb.s ], [ 0, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %i.bs, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %i.cu = phi i64 [ %i.cr, %bb.s ], [ %i.x, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %.pre.pre, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  store i64 %.sink.i.i.i.i.sink, ptr %2, align 8, !tbaa !88, !alias.scope !64
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.3.0.i.sink.i.i.i.i.sink, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !89, !alias.scope !64
  %.not2128 = icmp eq i64 %i.cu, 0
  br i1 %.not2128, label %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit.._crit_edge_crit_edge, label %.lr.ph

_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit.._crit_edge_crit_edge: ; preds = %bb.f, %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit
  %.pre41 = load i32, ptr %i.b, align 4, !tbaa !3
  br label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 7 uses
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit
  %i.cx = phi i64 [ %i.ct, %.lr.ph ], [ %i.fu, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit ] ; 3 uses
  %.sroa.2.0.copyload.i = phi ptr [ %.sroa.3.0.i.sink.i.i.i.i.sink, %.lr.ph ], [ %.sroa.2.0.copyload.i38, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit ]
  %.sroa.0.0.copyload.i = phi i64 [ %.sink.i.i.i.i.sink, %.lr.ph ], [ %.sroa.0.0.copyload.i35, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit ] ; 3 uses
  %i.cy = phi i64 [ %i.cu, %.lr.ph ], [ %i.ft, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit ] ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  %.sroa.9.0 = phi ptr [ %.sroa.2.0.copyload.i, %bb.t ], [ %i.de, %bb.v ] ; 3 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload.i, %bb.t ], [ %i.df, %bb.v ] ; 5 uses
  %i.cz = load i32, ptr %i.b, align 4, !tbaa !3
  %i.da = sext i32 %i.cz to i64                   ; 2 uses
  %.not = icmp ugt i64 %.sroa.0.0, %i.da
  %i.db = load ptr, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  br i1 %.not, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.db, ptr align 1 %.sroa.9.0, i64 %i.da, i1 false)
  %i.dc = load i32, ptr %i.b, align 4, !tbaa !3
  %i.dd = sext i32 %i.dc to i64                   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 %i.dd
  %i.df = sub i64 %.sroa.0.0, %i.dd
  %i.dg = load ptr, ptr %0, align 8, !tbaa !37
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = call noundef zeroext i1 %i.di(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.dj, label %bb.u, label %bb.ah, !llvm.loop !90

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.db, ptr align 1 %.sroa.9.0, i64 %.sroa.0.0, i1 false)
  %i.dk = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.sroa.0.0
  store ptr %i.dl, ptr %i.a, align 8, !tbaa !42
  %i.dm = trunc i64 %.sroa.0.0 to i32
  %i.dn = load i32, ptr %i.b, align 4, !tbaa !3
  %i.do = sub nsw i32 %i.dn, %i.dm                ; 3 uses
  store i32 %i.do, ptr %i.b, align 4, !tbaa !3
  %i.dp = sub i64 %i.cy, %.sroa.0.0.copyload.i    ; 3 uses
  store i64 %i.dp, ptr %i.q, align 8, !tbaa !67
  %.not.i = icmp eq i64 %i.cy, %.sroa.0.0.copyload.i
  br i1 %.not.i, label %._crit_edge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dq = load i32, ptr %i.s, align 8, !tbaa !65  ; 2 uses
  %i.dr = icmp sgt i32 %i.dq, -1
  br i1 %i.dr, label %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i, label %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i

_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i: ; preds = %bb.x
  %i.ds = zext nneg i32 %i.dq to i64              ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.ds
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !77
  %.not2.i = icmp eq ptr %i.du, null
  br i1 %.not2.i, label %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i, label %bb.y

bb.y:                                             ; preds = %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i
  %i.dv = icmp eq i64 %i.cx, 0
  br i1 %i.dv, label %_ZN4absl12lts_202505124Cord13ChunkIterator12AdvanceBtreeEv.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dw = load ptr, ptr %i.cv, align 8, !tbaa !77 ; 2 uses
  %i.dx = load i8, ptr %i.cw, align 4, !tbaa !13  ; 2 uses
  %i.dy = zext i8 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 15
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !13
  %i.eb = zext i8 %i.ea to i64
  %i.ec = add nsw i64 %i.eb, -1
  %i.ed = icmp eq i64 %i.ec, %i.dy
  br i1 %i.ed, label %.preheader, label %bb.ac

.preheader:                                       ; preds = %bb.z, %.preheader
  %indvars.iv38.i.i.i.i.i = phi i64 [ %indvars.iv.next39.i.i.i.i.i, %.preheader ], [ 1, %bb.z ] ; 5 uses
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.preheader ], [ 0, %bb.z ] ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp ne i64 %indvars.iv.i.i.i.i.i, %i.ds
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i.i)
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 4 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.next.i.i.i.i.i
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !77 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cw, i64 %indvars.iv.next.i.i.i.i.i
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !13
  %i.ei = zext i8 %i.eh to i64
  %i.ej = add nuw nsw i64 %i.ei, 1                ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 15
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !13
  %i.em = zext i8 %i.el to i64
  %i.en = icmp eq i64 %i.ej, %i.em
  %indvars.iv.next39.i.i.i.i.i = add nuw i64 %indvars.iv38.i.i.i.i.i, 1
  br i1 %i.en, label %.preheader, label %3, !llvm.loop !91

3:                                                ; preds = %.preheader
  %4 = getelementptr inbounds nuw i8, ptr %i.cw, i64 %indvars.iv.next.i.i.i.i.i
  %5 = trunc i64 %i.ej to i8
  store i8 %5, ptr %4, align 1, !tbaa !13
  %xtraiter82 = and i64 %indvars.iv38.i.i.i.i.i, 1
  %lcmp.mod83.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod83.not, label %.prol.loopexit, label %bb.aa

bb.aa:                                            ; preds = %3
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %6 = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.ej
  %7 = load ptr, ptr %6, align 8, !tbaa !79       ; 4 uses
  %indvars.iv.next42.i.i.i.i.i.prol = add nsw i64 %indvars.iv38.i.i.i.i.i, -1 ; 3 uses
  %8 = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %indvars.iv.next42.i.i.i.i.i.prol
  store ptr %7, ptr %8, align 8, !tbaa !77
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 14
  %10 = load i8, ptr %9, align 1, !tbaa !13       ; 2 uses
  %11 = zext i8 %10 to i64                        ; 2 uses
  %12 = getelementptr inbounds i8, ptr %i.cw, i64 %indvars.iv.next42.i.i.i.i.i.prol
  store i8 %10, ptr %12, align 1, !tbaa !13
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %bb.aa, %3
  %indvars.iv41.i.i.i.i.i.unr = phi i64 [ %indvars.iv38.i.i.i.i.i, %3 ], [ %indvars.iv.next42.i.i.i.i.i.prol, %bb.aa ]
  %.017.i.i.i.i.i.unr = phi ptr [ %i.ef, %3 ], [ %7, %bb.aa ]
  %.016.i.i.i.i.i.unr = phi i64 [ %i.ej, %3 ], [ %11, %bb.aa ]
  %.lcssa80.unr = phi ptr [ poison, %3 ], [ %7, %bb.aa ]
  %.lcssa79.unr = phi i64 [ poison, %3 ], [ %11, %bb.aa ]
  %13 = icmp eq i64 %indvars.iv38.i.i.i.i.i, 1
  br i1 %13, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.prol.loopexit, %bb.ab
  %indvars.iv40.i.i.i.i.i = phi i64 [ %indvars.iv.next41.i.i.i.i.i, %bb.ab ], [ %indvars.iv41.i.i.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.017.i.i.i.i.i = phi ptr [ %i.er, %bb.ab ], [ %.017.i.i.i.i.i.unr, %.prol.loopexit ]
  %.016.i.i.i.i.i = phi i64 [ %i.ev, %bb.ab ], [ %.016.i.i.i.i.i.unr, %.prol.loopexit ]
  %14 = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i, i64 16
  %15 = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %.016.i.i.i.i.i
  %16 = load ptr, ptr %15, align 8, !tbaa !79     ; 3 uses
  %indvars.iv.next42.i.i.i.i.i = add nsw i64 %indvars.iv40.i.i.i.i.i, -1 ; 2 uses
  %17 = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %indvars.iv.next42.i.i.i.i.i
  store ptr %16, ptr %17, align 8, !tbaa !77
  %18 = getelementptr inbounds nuw i8, ptr %16, i64 14
  %19 = load i8, ptr %18, align 1, !tbaa !13      ; 2 uses
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds i8, ptr %i.cw, i64 %indvars.iv.next42.i.i.i.i.i
  store i8 %19, ptr %21, align 1, !tbaa !13
  %i.ep = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %20
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !79 ; 4 uses
  %indvars.iv.next41.i.i.i.i.i = add nsw i64 %indvars.iv40.i.i.i.i.i, -2 ; 3 uses
  %i.es = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %indvars.iv.next41.i.i.i.i.i
  store ptr %i.er, ptr %i.es, align 8, !tbaa !77
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 14
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !13  ; 2 uses
  %i.ev = zext i8 %i.eu to i64                    ; 2 uses
  %i.ew = getelementptr inbounds i8, ptr %i.cw, i64 %indvars.iv.next41.i.i.i.i.i
  store i8 %i.eu, ptr %i.ew, align 1, !tbaa !13
  %i.ex = icmp sgt i64 %indvars.iv40.i.i.i.i.i, 2
  br i1 %i.ex, label %bb.ab, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i, !llvm.loop !92

bb.ac:                                            ; preds = %bb.z
  %i.ey = add i8 %i.dx, 1                         ; 2 uses
  store i8 %i.ey, ptr %i.cw, align 4, !tbaa !13
  %i.ez = zext i8 %i.ey to i64
  br label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i

_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i: ; preds = %bb.ab, %.prol.loopexit
  %.lcssa80 = phi ptr [ %.lcssa80.unr, %.prol.loopexit ], [ %i.er, %bb.ab ]
  %.lcssa79 = phi i64 [ %.lcssa79.unr, %.prol.loopexit ], [ %i.ev, %bb.ab ]
  %.pre.i.i.i = load i64, ptr %i.r, align 8, !tbaa !81
  br label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i

_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i: ; preds = %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i, %bb.ac
  %i.fa = phi i64 [ %i.cx, %bb.ac ], [ %.pre.i.i.i, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i ]
  %.lcssa12.sink.i.i.i.i = phi ptr [ %i.dw, %bb.ac ], [ %.lcssa80, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i.i = phi i64 [ %i.ez, %bb.ac ], [ %.lcssa79, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.lcssa12.sink.i.i.i.i, i64 16
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %.lcssa.sink.i.i.i.i
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !79 ; 5 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !14 ; 2 uses
  %i.ff = sub i64 %i.fa, %i.fe                    ; 2 uses
  store i64 %i.ff, ptr %i.r, align 8, !tbaa !81
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  %i.fh = load i8, ptr %i.fg, align 4, !tbaa !24  ; 2 uses
  %i.fi = icmp eq i8 %i.fh, 1
  br i1 %i.fi, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !82
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !84 ; 2 uses
  %.phi.trans.insert.i.i.i.i10 = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  %.pre.i.i.i.i11 = load i8, ptr %.phi.trans.insert.i.i.i.i10, align 4, !tbaa !24
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i
  %i.fn = phi i8 [ %.pre.i.i.i.i11, %bb.ad ], [ %i.fh, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i ]
  %.010.i.i.i.i = phi i64 [ %i.fk, %bb.ad ], [ 0, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i ]
  %.0.i.i.i.i = phi ptr [ %i.fm, %bb.ad ], [ %i.fd, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i ] ; 2 uses
  %i.fo = icmp ugt i8 %i.fn, 5
  br i1 %i.fo, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !85
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i: ; preds = %bb.ag, %bb.af
  %.pn.i.i.i.i = phi ptr [ %i.fp, %bb.af ], [ %i.fr, %bb.ag ]
  %.sroa.3.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 %.010.i.i.i.i
  %.pre40.pre = load i64, ptr %i.q, align 8, !tbaa !67
  br label %_ZN4absl12lts_202505124Cord13ChunkIterator12AdvanceBtreeEv.exit.i

_ZN4absl12lts_202505124Cord13ChunkIterator12AdvanceBtreeEv.exit.i: ; preds = %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i, %bb.y
  %.pre40 = phi i64 [ %.pre40.pre, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %i.dp, %bb.y ]
  %i.fs = phi i64 [ %i.ff, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ 0, %bb.y ]
  %.sroa.0.0.i.i.i = phi i64 [ %i.fe, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ 0, %bb.y ] ; 2 uses
  %.sroa.3.0.i.i.i = phi ptr [ %.sroa.3.0.i.i.i.i, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ null, %bb.y ] ; 2 uses
  store i64 %.sroa.0.0.i.i.i, ptr %2, align 8, !tbaa !88
  store ptr %.sroa.3.0.i.i.i, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !89
  br label %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit

_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i: ; preds = %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i, %bb.x
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %2, i8 0, i64 16, i1 false)
  br label %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit

_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit: ; preds = %_ZN4absl12lts_202505124Cord13ChunkIterator12AdvanceBtreeEv.exit.i, %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i
  %i.ft = phi i64 [ %i.dp, %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i ], [ %.pre40, %_ZN4absl12lts_202505124Cord13ChunkIterator12AdvanceBtreeEv.exit.i ] ; 2 uses
  %i.fu = phi i64 [ %i.cx, %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i ], [ %i.fs, %_ZN4absl12lts_202505124Cord13ChunkIterator12AdvanceBtreeEv.exit.i ]
  %.sroa.2.0.copyload.i38 = phi ptr [ null, %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i ], [ %.sroa.3.0.i.i.i, %_ZN4absl12lts_202505124Cord13ChunkIterator12AdvanceBtreeEv.exit.i ]
  %.sroa.0.0.copyload.i35 = phi i64 [ 0, %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i ], [ %.sroa.0.0.i.i.i, %_ZN4absl12lts_202505124Cord13ChunkIterator12AdvanceBtreeEv.exit.i ]
  %.not21 = icmp eq i64 %i.ft, 0
  br i1 %.not21, label %._crit_edge, label %bb.t

bb.ah:                                            ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.ai

._crit_edge:                                      ; preds = %bb.w, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit, %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit.._crit_edge_crit_edge
  %i.fv = phi i32 [ %.pre41, %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit.._crit_edge_crit_edge ], [ %i.do, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit ], [ %i.do, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.fw = load ptr, ptr %0, align 8, !tbaa !37
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.fv)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.d, %._crit_edge
  %.3 = phi i1 [ true, %._crit_edge ], [ false, %bb.ah ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNK4absl12lts_202505124Cord5emptyEv.exit, %bb.ai
  %.4 = phi i1 [ %.3, %bb.ai ], [ true, %_ZNK4absl12lts_202505124Cord5emptyEv.exit ]
  ret i1 %.4
}

; Function Attrs: cold mustprogress noreturn uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io20ZeroCopyOutputStream15WriteAliasedRawEPKvi(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str, i32 noundef 118) #18
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 122, ptr nonnull @.str.1)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi123EEERS2_RAT__Kc.exit unwind label %bb.b

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi123EEERS2_RAT__Kc.exit: ; preds = %bb.a
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.b

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi123EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #19
  unreachable

bb.b:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi123EEERS2_RAT__Kc.exit, %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #19
  unreachable
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io19ZeroCopyInputStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io19ZeroCopyInputStreamD0Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #19
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io20ZeroCopyOutputStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io20ZeroCopyOutputStreamD0Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #19
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6google8protobuf2io20ZeroCopyOutputStream14AllowsAliasingEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZN4absl12lts_202505124Cord23GetAppendBufferSlowPathEmmm(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::CordBuffer") align 8, ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

declare void @_ZN4absl12lts_202505124Cord9InlineRep10AppendTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #8

declare void @_ZN4absl12lts_202505124Cord13AppendPreciseESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr, i32 noundef) local_unnamed_addr #8

declare void @_ZN4absl12lts_2025051213cord_internal9CordzInfo7UntrackEv(ptr noundef nonnull align 8 dereferenceable(1344)) local_unnamed_addr #8

declare void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #12

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #8

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
