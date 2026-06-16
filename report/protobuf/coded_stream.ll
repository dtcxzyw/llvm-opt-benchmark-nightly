inline.NumInlined: 268
inline.NumDeleted: 134
begin_hunk_0_@_ZN6google8protobuf2io12_GLOBAL__N_115CopyCordToArrayERKN4absl12lts_202505124CordEPh:bb.a
  %.not8.i.i.i = icmp ne ptr %i.g, null
  %.not.not.i.i.i = select i1 %i.e, i1 %.not8.i.i.i, i1 false
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !tbaa !64, !noalias !75 ; 3 uses
  store i64 %i.h, ptr %i.a, align 8, !tbaa !78, !alias.scope !75
  %.not7.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not7.i.i.i, label %._crit_edge, label %bb.c, !prof !36

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.j = load i8, ptr %i.i, align 4, !tbaa !83, !noalias !75 ; 2 uses
  %i.k = icmp eq i8 %i.j, 2
  br i1 %i.k, label %bb.d, label %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i, !prof !36

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !84, !noalias !75 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !83, !noalias !75
  br label %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.n = phi i8 [ %.pre.i.i.i.i, %bb.d ], [ %i.j, %bb.c ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.m, %bb.d ], [ %i.g, %bb.c ] ; 10 uses
  %i.o = icmp eq i8 %i.n, 3
  br i1 %i.o, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 13
  %i.q = load i8, ptr %i.p, align 1, !tbaa !28, !noalias !75 ; 4 uses
  %i.r = zext i8 %i.q to i32
  store i32 %i.r, ptr %i.c, align 8, !tbaa !76, !alias.scope !75
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 14
  %i.t = load i8, ptr %i.s, align 1, !noalias !75 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.v = zext i8 %i.q to i64                      ; 5 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  store ptr %.0.i.i.i.i.i, ptr %i.w, align 8, !tbaa !88, !alias.scope !75
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 %i.t, ptr %i.y, align 1, !tbaa !28, !alias.scope !75
  %.018.i.i.i.i.i.i.i = zext i8 %i.t to i64       ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.e
  %xtraiter = and i64 %i.v, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.i.prol = add nsw i64 %i.v, -1 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.018.i.i.i.i.i.i.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !90, !noalias !75 ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !88, !alias.scope !75
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 14
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !75 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !28, !alias.scope !75
  %.0.i.i.i.i.i.i.i.prol = zext i8 %i.ae to i64   ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.i.unr = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.ag = icmp eq i8 %i.q, 1
  br i1 %i.ag, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i.i, i64 16
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.021.i.i.i.i.i.i.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !90, !noalias !75 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !88, !alias.scope !75
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 14
  %i.am = load i8, ptr %i.al, align 1, !noalias !75 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store i8 %i.am, ptr %i.an, align 1, !tbaa !28, !alias.scope !75
  %.0.i.i.i.i.i.i.i = zext i8 %i.am to i64
  %indvars.iv.next.i.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -2 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.0.i.i.i.i.i.i.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !90, !noalias !75 ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !88, !alias.scope !75
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 14
  %i.at = load i8, ptr %i.as, align 1, !noalias !75 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store i8 %i.at, ptr %i.au, align 1, !tbaa !28, !alias.scope !75
  %.0.i.i.i.i.i.i.i.1 = zext i8 %i.at to i64      ; 2 uses
  %i.av = icmp sgt i64 %indvars.iv.i.i.i.i.i.i.i, 2
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, !llvm.loop !91

_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i.i, %bb.e ], [ %.0.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.aw = load ptr, ptr %i.u, align 8, !tbaa !88, !alias.scope !75
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.0.lcssa.i.i.i.i.i.i.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !90, !noalias !75 ; 5 uses
  %i.ba = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !64, !noalias !75
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !64, !noalias !75 ; 2 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  store i64 %i.bc, ptr %i.b, align 8, !tbaa !92, !alias.scope !75
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !83, !noalias !75 ; 2 uses
  %i.bf = icmp eq i8 %i.be, 1
  br i1 %i.bf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !93, !noalias !75
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !95, !noalias !75 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 4, !tbaa !83, !noalias !75
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.bk = phi i8 [ %.pre.i.i.i.i.i.i, %bb.f ], [ %i.be, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %.010.i.i.i.i.i.i = phi i64 [ %i.bh, %bb.f ], [ 0, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %.0.i.i.i.i.i.i = phi ptr [ %i.bj, %bb.f ], [ %i.az, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ] ; 2 uses
  %i.bl = icmp ugt i8 %i.bk, 5
  br i1 %i.bl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !96, !noalias !75
  br label %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i

_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.pn.i.i.i.i.i.i = phi ptr [ %i.bm, %bb.h ], [ %i.bo, %bb.i ]
  %.sroa.3.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i, i64 %.010.i.i.i.i.i.i
  %.pre.pre = load i64, ptr %i.a, align 8, !tbaa !78
  br label %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit

bb.j:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.bp = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !64, !noalias !75
  %i.bq = icmp eq i8 %i.n, 1
  br i1 %i.bq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !93, !noalias !75
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !95, !noalias !75 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !83, !noalias !75
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bv = phi i8 [ %.pre.i.i.i.i.i, %bb.k ], [ %i.n, %bb.j ]
  %.010.i.i.i.i.i = phi i64 [ %i.bs, %bb.k ], [ 0, %bb.j ]
  %.0.i8.i.i.i.i = phi ptr [ %i.bu, %bb.k ], [ %.0.i.i.i.i.i, %bb.j ] ; 2 uses
  %i.bw = icmp ugt i8 %i.bv, 5
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i8.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i8.i.i.i.i, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !96, !noalias !75
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.n, %bb.m
  %.pn.i.i.i.i.i = phi ptr [ %i.bx, %bb.m ], [ %i.bz, %bb.n ]
  %.sroa.3.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 %.010.i.i.i.i.i
  br label %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit

bb.o:                                             ; preds = %bb.a
  %i.ca = sext i8 %i.d to i64
  %i.cb = lshr i64 %i.ca, 1                       ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1
  %spec.select.i.i.i.i = select i1 %i.e, ptr null, ptr %i.cc
  br label %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit

_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit: ; preds = %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i, %bb.o
  %i.cd = phi i64 [ 0, %bb.o ], [ 0, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %i.bc, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %.sroa.2.0.copyload.i28 = phi ptr [ %spec.select.i.i.i.i, %bb.o ], [ %.sroa.3.0.i.i.i.i.i, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %.sroa.3.0.i.i.i.i.i.i, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %.sroa.0.0.copyload.i25 = phi i64 [ %i.cb, %bb.o ], [ %i.bp, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %i.bb, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %i.ce = phi i64 [ %i.cb, %bb.o ], [ %i.h, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %.pre.pre, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %.not17 = icmp eq i64 %i.ce, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 5 uses
  br label %bb.p

._crit_edge:                                      ; preds = %bb.p, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit, %bb.b, %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit
  %.0.lcssa = phi ptr [ %1, %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit ], [ %1, %bb.b ], [ %i.cj, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit ], [ %i.cj, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret ptr %.0.lcssa

bb.p:                                             ; preds = %.lr.ph, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit
  %i.ch = phi i64 [ %i.cd, %.lr.ph ], [ %i.eo, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit ] ; 4 uses
  %.sroa.2.0.copyload.i = phi ptr [ %.sroa.2.0.copyload.i28, %.lr.ph ], [ %.sroa.2.0.copyload.i27, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit ]
  %.sroa.0.0.copyload.i = phi i64 [ %.sroa.0.0.copyload.i25, %.lr.ph ], [ %.sroa.0.0.copyload.i24, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit ] ; 4 uses
  %i.ci = phi i64 [ %i.ce, %.lr.ph ], [ %i.en, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit ] ; 2 uses
  %.018 = phi ptr [ %1, %.lr.ph ], [ %i.cj, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.018, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %.018, i64 %.sroa.0.0.copyload.i ; 3 uses
  %i.ck = sub i64 %i.ci, %.sroa.0.0.copyload.i    ; 4 uses
  store i64 %i.ck, ptr %i.a, align 8, !tbaa !78
  %.not.i = icmp eq i64 %i.ci, %.sroa.0.0.copyload.i
  br i1 %.not.i, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cl = load i32, ptr %i.c, align 8, !tbaa !76  ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, -1
  br i1 %i.cm, label %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i, label %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit

_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i: ; preds = %bb.q
  %i.cn = zext nneg i32 %i.cl to i64              ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !88
  %.not2.i = icmp eq ptr %i.cp, null
  br i1 %.not2.i, label %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit, label %bb.r

bb.r:                                             ; preds = %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i
  %i.cq = icmp eq i64 %i.ch, 0
  br i1 %i.cq, label %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = load ptr, ptr %i.cf, align 8, !tbaa !88 ; 2 uses
  %i.cs = load i8, ptr %i.cg, align 4, !tbaa !28  ; 2 uses
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 15
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !28
  %i.cw = zext i8 %i.cv to i64
  %i.cx = add nsw i64 %i.cw, -1
  %i.cy = icmp eq i64 %i.cx, %i.ct
  br i1 %i.cy, label %.preheader, label %bb.v

.preheader:                                       ; preds = %bb.s, %.preheader
  %indvars.iv37.i.i.i.i.i = phi i32 [ %indvars.iv.next38.i.i.i.i.i, %.preheader ], [ 1, %bb.s ] ; 2 uses
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.preheader ], [ 0, %bb.s ] ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp ne i64 %indvars.iv.i.i.i.i.i, %i.cn
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i.i.i)
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 4 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i.i.i.i.i
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !88 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cg, i64 %indvars.iv.next.i.i.i.i.i
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !28
  %i.dd = zext i8 %i.dc to i64
  %i.de = add nuw nsw i64 %i.dd, 1                ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 15
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !28
  %i.dh = zext i8 %i.dg to i64
  %i.di = icmp eq i64 %i.de, %i.dh
  %indvars.iv.next38.i.i.i.i.i = add nuw i32 %indvars.iv37.i.i.i.i.i, 1
  br i1 %i.di, label %.preheader, label %bb.t, !llvm.loop !98

bb.t:                                             ; preds = %.preheader
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %indvars.iv.next.i.i.i.i.i
  %3 = trunc i64 %i.de to i8
  store i8 %3, ptr %i.dj, align 1, !tbaa !28
  %4 = sext i32 %indvars.iv37.i.i.i.i.i to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %indvars.iv40.i.i.i.i.i = phi i64 [ %indvars.iv.next41.i.i.i.i.i, %bb.u ], [ %4, %bb.t ] ; 2 uses
  %.017.i.i.i.i.i = phi ptr [ %i.dm, %bb.u ], [ %i.da, %bb.t ]
  %.016.i.i.i.i.i = phi i64 [ %i.dq, %bb.u ], [ %i.de, %bb.t ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i, i64 16
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %.016.i.i.i.i.i
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !90 ; 4 uses
  %indvars.iv.next41.i.i.i.i.i = add nsw i64 %indvars.iv40.i.i.i.i.i, -1 ; 3 uses
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %indvars.iv.next41.i.i.i.i.i
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !88
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 14
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !28  ; 2 uses
  %i.dq = zext i8 %i.dp to i64                    ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %i.cg, i64 %indvars.iv.next41.i.i.i.i.i
  store i8 %i.dp, ptr %i.dr, align 1, !tbaa !28
  %i.ds = icmp sgt i64 %indvars.iv40.i.i.i.i.i, 1
  br i1 %i.ds, label %bb.u, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i, !llvm.loop !99

bb.v:                                             ; preds = %bb.s
  %i.dt = add i8 %i.cs, 1                         ; 2 uses
  store i8 %i.dt, ptr %i.cg, align 4, !tbaa !28
  %i.du = zext i8 %i.dt to i64
  br label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i

_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i: ; preds = %bb.u
  %.pre.i.i.i = load i64, ptr %i.b, align 8, !tbaa !92
  br label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i

_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i: ; preds = %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i, %bb.v
  %i.dv = phi i64 [ %i.ch, %bb.v ], [ %.pre.i.i.i, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i ]
  %.lcssa12.sink.i.i.i.i = phi ptr [ %i.cr, %bb.v ], [ %i.dm, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i.i = phi i64 [ %i.du, %bb.v ], [ %i.dq, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.lcssa12.sink.i.i.i.i, i64 16
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.lcssa.sink.i.i.i.i
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !90 ; 5 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !64 ; 2 uses
  %i.ea = sub i64 %i.dv, %i.dz                    ; 2 uses
  store i64 %i.ea, ptr %i.b, align 8, !tbaa !92
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  %i.ec = load i8, ptr %i.eb, align 4, !tbaa !83  ; 2 uses
  %i.ed = icmp eq i8 %i.ec, 1
  br i1 %i.ed, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !93
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !95 ; 2 uses
  %.phi.trans.insert.i.i.i.i6 = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  %.pre.i.i.i.i7 = load i8, ptr %.phi.trans.insert.i.i.i.i6, align 4, !tbaa !83
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i
  %i.ei = phi i8 [ %.pre.i.i.i.i7, %bb.w ], [ %i.ec, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i ]
  %.010.i.i.i.i = phi i64 [ %i.ef, %bb.w ], [ 0, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i ]
  %.0.i.i.i.i = phi ptr [ %i.eh, %bb.w ], [ %i.dy, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i ] ; 2 uses
  %i.ej = icmp ugt i8 %i.ei, 5
  br i1 %i.ej, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.el = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !96
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i: ; preds = %bb.z, %bb.y
  %.pn.i.i.i.i = phi ptr [ %i.ek, %bb.y ], [ %i.em, %bb.z ]
  %.sroa.3.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 %.010.i.i.i.i
  %.pre29.pre = load i64, ptr %i.a, align 8, !tbaa !78
  br label %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit

_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit: ; preds = %bb.q, %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i, %bb.r, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i
  %i.en = phi i64 [ %i.ck, %bb.r ], [ %.pre29.pre, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %i.ck, %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i ], [ %i.ck, %bb.q ] ; 2 uses
  %i.eo = phi i64 [ 0, %bb.r ], [ %i.ea, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %i.ch, %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i ], [ %i.ch, %bb.q ]
  %.sroa.2.0.copyload.i27 = phi ptr [ null, %bb.r ], [ %.sroa.3.0.i.i.i.i, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ null, %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i ], [ null, %bb.q ]
  %.sroa.0.0.copyload.i24 = phi i64 [ 0, %bb.r ], [ %i.dz, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ 0, %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i ], [ 0, %bb.q ]
  %.not = icmp eq i64 %i.en, 0
  br i1 %.not, label %._crit_edge, label %bb.p
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream30WriteStringMaybeAliasedOutlineEjSt17basic_string_viewIcSt11char_traitsIcEEPh(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %1, i64 %2, ptr %3, ptr noundef %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !52
  %.not.i = icmp ult ptr %4, %i.a
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.b, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %4)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.a, %bb.b
  %.0.i8 = phi ptr [ %i.b, %bb.b ], [ %4, %bb.a ] ; 2 uses
  %i.c = trunc i64 %2 to i32                      ; 6 uses
  %i.d = shl i32 %1, 3                            ; 2 uses
  %i.e = or disjoint i32 %i.d, 2                  ; 2 uses
  %i.f = icmp ugt i32 %i.d, 127
  br i1 %i.f, label %.lr.ph, label %_ZN6google8protobuf2io19EpsCopyOutputStream12UnsafeVarintIjEEPhT_S4_.exit, !prof !100

.lr.ph:                                           ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, %.lr.ph
  %.0.i712 = phi ptr [ %i.j, %.lr.ph ], [ %.0.i8, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 2 uses
  %.07.i611 = phi i32 [ %i.i, %.lr.ph ], [ %i.e, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 3 uses
  %i.g = trunc i32 %.07.i611 to i8
  %i.h = or i8 %i.g, -128
  store i8 %i.h, ptr %.0.i712, align 1, !tbaa !28
  %i.i = lshr i32 %.07.i611, 7                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i712, i64 1 ; 2 uses
  %i.k = icmp ugt i32 %.07.i611, 16383
  br i1 %i.k, label %.lr.ph, label %_ZN6google8protobuf2io19EpsCopyOutputStream12UnsafeVarintIjEEPhT_S4_.exit, !prof !101, !llvm.loop !102

_ZN6google8protobuf2io19EpsCopyOutputStream12UnsafeVarintIjEEPhT_S4_.exit: ; preds = %.lr.ph, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %.07.i6.lcssa = phi i32 [ %i.e, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.i, %.lr.ph ]
  %.0.i7.lcssa = phi ptr [ %.0.i8, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.j, %.lr.ph ] ; 3 uses
  %i.l = trunc nuw nsw i32 %.07.i6.lcssa to i8
  store i8 %i.l, ptr %.0.i7.lcssa, align 1, !tbaa !28
  %.0.i14 = getelementptr inbounds nuw i8, ptr %.0.i7.lcssa, i64 1 ; 2 uses
  %i.m = icmp ugt i32 %i.c, 127
  br i1 %i.m, label %.lr.ph17, label %_ZN6google8protobuf2io19EpsCopyOutputStream15UnsafeWriteSizeEjPh.exit, !prof !100

.lr.ph17:                                         ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream12UnsafeVarintIjEEPhT_S4_.exit, %.lr.ph17
  %.0.i16 = phi ptr [ %.0.i, %.lr.ph17 ], [ %.0.i14, %_ZN6google8protobuf2io19EpsCopyOutputStream12UnsafeVarintIjEEPhT_S4_.exit ] ; 3 uses
  %.07.i15 = phi i32 [ %i.p, %.lr.ph17 ], [ %i.c, %_ZN6google8protobuf2io19EpsCopyOutputStream12UnsafeVarintIjEEPhT_S4_.exit ] ; 3 uses
  %i.n = trunc i32 %.07.i15 to i8
  %i.o = or i8 %i.n, -128
  store i8 %i.o, ptr %.0.i16, align 1, !tbaa !28
  %i.p = lshr i32 %.07.i15, 7                     ; 2 uses
  %.0.i = getelementptr inbounds nuw i8, ptr %.0.i16, i64 1 ; 2 uses
  %i.q = icmp ugt i32 %.07.i15, 16383
  br i1 %i.q, label %.lr.ph17, label %_ZN6google8protobuf2io19EpsCopyOutputStream15UnsafeWriteSizeEjPh.exit, !prof !101, !llvm.loop !103

_ZN6google8protobuf2io19EpsCopyOutputStream15UnsafeWriteSizeEjPh.exit: ; preds = %.lr.ph17, %_ZN6google8protobuf2io19EpsCopyOutputStream12UnsafeVarintIjEEPhT_S4_.exit
  %.07.i.lcssa = phi i32 [ %i.c, %_ZN6google8protobuf2io19EpsCopyOutputStream12UnsafeVarintIjEEPhT_S4_.exit ], [ %i.p, %.lr.ph17 ]
  %.0.i7.pn.lcssa = phi ptr [ %.0.i7.lcssa, %_ZN6google8protobuf2io19EpsCopyOutputStream12UnsafeVarintIjEEPhT_S4_.exit ], [ %.0.i16, %.lr.ph17 ]
  %.0.i.lcssa = phi ptr [ %.0.i14, %_ZN6google8protobuf2io19EpsCopyOutputStream12UnsafeVarintIjEEPhT_S4_.exit ], [ %.0.i, %.lr.ph17 ]
  %i.r = trunc nuw nsw i32 %.07.i.lcssa to i8
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i7.pn.lcssa, i64 2 ; 9 uses
  store i8 %i.r, ptr %.0.i.lcssa, align 1, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.u = load i8, ptr %i.t, align 1, !tbaa !51, !range !29, !noundef !30
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.c, label %bb.i

bb.c:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream15UnsafeWriteSizeEjPh.exit
  %sext10 = shl i64 %2, 32
  %i.w = ashr exact i64 %sext10, 32               ; 3 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !52     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp sgt i64 %i.ab, %i.w
  br i1 %i.ac, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ad = ptrtoint ptr %i.x to i64
  %i.ae = sub i64 %i.ad, %i.aa
  %i.af = icmp slt i64 %i.ae, %i.w
  br i1 %i.af, label %bb.e, label %bb.f, !prof !36

bb.e:                                             ; preds = %bb.d
  %i.ag = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %3, i32 noundef %i.c, ptr noundef nonnull %i.s)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream20WriteRawMaybeAliasedEPKviPh.exit

bb.f:                                             ; preds = %bb.d
  %i.ah = and i64 %2, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %3, i64 %i.ah, i1 false)
  %i.ai = getelementptr inbounds i8, ptr %i.s, i64 %i.w
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream20WriteRawMaybeAliasedEPKviPh.exit

bb.g:                                             ; preds = %bb.c
  %i.aj = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream4TrimEPh(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull %i.s)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !48 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef zeroext i1 %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef %3, i32 noundef %i.c), !inline_history !104
  br i1 %i.ap, label %_ZN6google8protobuf2io19EpsCopyOutputStream20WriteRawMaybeAliasedEPKviPh.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.aq, align 8, !tbaa !54
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.as, ptr %0, align 8, !tbaa !52
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream20WriteRawMaybeAliasedEPKviPh.exit

bb.i:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream15UnsafeWriteSizeEjPh.exit
  %i.at = load ptr, ptr %0, align 8, !tbaa !52
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.s to i64
  %i.aw = sub i64 %i.au, %i.av
  %sext = shl i64 %2, 32
  %i.ax = ashr exact i64 %sext, 32                ; 2 uses
  %i.ay = icmp slt i64 %i.aw, %i.ax
  br i1 %i.ay, label %bb.j, label %bb.k, !prof !36

bb.j:                                             ; preds = %bb.i
  %i.az = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %3, i32 noundef %i.c, ptr noundef nonnull %i.s)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream20WriteRawMaybeAliasedEPKviPh.exit

bb.k:                                             ; preds = %bb.i
  %i.ba = and i64 %2, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %3, i64 %i.ba, i1 false)
  %i.bb = getelementptr inbounds i8, ptr %i.s, i64 %i.ax
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream20WriteRawMaybeAliasedEPKviPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream20WriteRawMaybeAliasedEPKviPh.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.j, %bb.k
  %.0.i9 = phi ptr [ %i.ai, %bb.f ], [ %i.aj, %bb.g ], [ %i.ar, %bb.h ], [ %i.ag, %bb.e ], [ %i.az, %bb.j ], [ %i.bb, %bb.k ]
  ret ptr %.0.i9
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream18WriteStringOutlineEjSt17basic_string_viewIcSt11char_traitsIcEEPh(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %1, i64 %2, ptr nofree readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !52
  %.not.i = icmp ult ptr %4, %i.a
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.b, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %4)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.a, %bb.b
  %.0.i8 = phi ptr [ %i.b, %bb.b ], [ %4, %bb.a ] ; 2 uses
  %i.c = trunc i64 %2 to i32                      ; 4 uses
  %i.d = shl i32 %1, 3                            ; 2 uses
  %i.e = or disjoint i32 %i.d, 2                  ; 2 uses
  %i.f = icmp ugt i32 %i.d, 127
end_hunk_0
