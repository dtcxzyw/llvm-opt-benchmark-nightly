Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/zero_copy_stream_impl_lite?download=true
inline.NumInlined: 489
inline.NumDeleted: 209
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6google8protobuf2io26CopyingOutputStreamAdaptor9WriteCordERKN4absl12lts_202505124CordE:bb.a
  %.not8.i.i.i = icmp ne ptr %i.g, null
  %.not.not.i.i.i = select i1 %i.e, i1 %.not8.i.i.i, i1 false
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !tbaa !79, !noalias !76 ; 3 uses
  store i64 %i.h, ptr %i.a, align 8, !tbaa !84, !alias.scope !76
  %.not7.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not7.i.i.i, label %._crit_edge, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.j = load i8, ptr %i.i, align 4, !tbaa !89, !noalias !76 ; 2 uses
  %i.k = icmp eq i8 %i.j, 2
  br i1 %i.k, label %bb.d, label %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !90, !noalias !76 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !89, !noalias !76
  br label %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.n = phi i8 [ %.pre.i.i.i.i, %bb.d ], [ %i.j, %bb.c ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.m, %bb.d ], [ %i.g, %bb.c ] ; 10 uses
  %i.o = icmp eq i8 %i.n, 3
  br i1 %i.o, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 13
  %i.q = load i8, ptr %i.p, align 1, !tbaa !36, !noalias !76 ; 4 uses
  %i.r = zext i8 %i.q to i32
  store i32 %i.r, ptr %i.c, align 8, !tbaa !77, !alias.scope !76
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 14
  %i.t = load i8, ptr %i.s, align 1, !noalias !76 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.v = zext i8 %i.q to i64                      ; 5 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  store ptr %.0.i.i.i.i.i, ptr %i.w, align 8, !tbaa !94, !alias.scope !76
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 %i.t, ptr %i.y, align 1, !tbaa !36, !alias.scope !76
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
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !96, !noalias !76 ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !94, !alias.scope !76
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 14
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !76 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !36, !alias.scope !76
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
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !96, !noalias !76 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !94, !alias.scope !76
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 14
  %i.am = load i8, ptr %i.al, align 1, !noalias !76 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store i8 %i.am, ptr %i.an, align 1, !tbaa !36, !alias.scope !76
  %.0.i.i.i.i.i.i.i = zext i8 %i.am to i64
  %indvars.iv.next.i.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -2 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.0.i.i.i.i.i.i.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !96, !noalias !76 ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !94, !alias.scope !76
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 14
  %i.at = load i8, ptr %i.as, align 1, !noalias !76 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store i8 %i.at, ptr %i.au, align 1, !tbaa !36, !alias.scope !76
  %.0.i.i.i.i.i.i.i.1 = zext i8 %i.at to i64      ; 2 uses
  %i.av = icmp sgt i64 %indvars.iv.i.i.i.i.i.i.i, 2
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, !llvm.loop !97

_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i.i, %bb.e ], [ %.0.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.aw = load ptr, ptr %i.u, align 8, !tbaa !94, !alias.scope !76
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.0.lcssa.i.i.i.i.i.i.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !96, !noalias !76 ; 5 uses
  %i.ba = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !79, !noalias !76
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !79, !noalias !76 ; 2 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  store i64 %i.bc, ptr %i.b, align 8, !tbaa !98, !alias.scope !76
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !89, !noalias !76 ; 2 uses
  %i.bf = icmp eq i8 %i.be, 1
  br i1 %i.bf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !99, !noalias !76
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !101, !noalias !76 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 4, !tbaa !89, !noalias !76
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.bk = phi i8 [ %.pre.i.i.i.i.i.i, %bb.f ], [ %i.be, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %.010.i.i.i.i.i.i = phi ptr [ %i.bj, %bb.f ], [ %i.az, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i = phi i64 [ %i.bh, %bb.f ], [ 0, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %i.bl = icmp ugt i8 %i.bk, 5
  br i1 %i.bl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !102, !noalias !76
  br label %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i

_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.pn.i.i.i.i.i.i = phi ptr [ %i.bm, %bb.h ], [ %i.bo, %bb.i ]
  %.sroa.3.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i, i64 %.0.i.i.i.i.i.i
  %.pre.pre = load i64, ptr %i.a, align 8, !tbaa !84
  br label %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit

bb.j:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.bp = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !79, !noalias !76
  %i.bq = icmp eq i8 %i.n, 1
  br i1 %i.bq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !99, !noalias !76
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !101, !noalias !76 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !89, !noalias !76
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bv = phi i8 [ %.pre.i.i.i.i.i, %bb.k ], [ %i.n, %bb.j ]
  %.010.i.i.i.i.i = phi ptr [ %i.bu, %bb.k ], [ %.0.i.i.i.i.i, %bb.j ] ; 2 uses
  %.0.i8.i.i.i.i = phi i64 [ %i.bs, %bb.k ], [ 0, %bb.j ]
  %i.bw = icmp ugt i8 %i.bv, 5
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !102, !noalias !76
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.n, %bb.m
  %.pn.i.i.i.i.i = phi ptr [ %i.bx, %bb.m ], [ %i.bz, %bb.n ]
  %.sroa.3.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 %.0.i8.i.i.i.i
  br label %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit

bb.o:                                             ; preds = %bb.a
  %i.ca = sext i8 %i.d to i64
  %i.cb = lshr i64 %i.ca, 1                       ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 1
  %spec.select.i.i.i.i = select i1 %i.e, ptr null, ptr %i.cc
  br label %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit

_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit: ; preds = %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i, %bb.o
  %i.cd = phi i64 [ 0, %bb.o ], [ 0, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %i.bc, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %.sroa.2.0.copyload.i30 = phi ptr [ %spec.select.i.i.i.i, %bb.o ], [ %.sroa.3.0.i.i.i.i.i, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %.sroa.3.0.i.i.i.i.i.i, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %.sroa.0.0.copyload.i27 = phi i64 [ %i.cb, %bb.o ], [ %i.bp, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %i.bb, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %i.ce = phi i64 [ %i.cb, %bb.o ], [ %i.h, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %.pre.pre, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %.not18 = icmp eq i64 %i.ce, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 5 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit
  %i.ch = phi i64 [ %i.cd, %.lr.ph ], [ %i.es, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit ] ; 4 uses
  %.sroa.2.0.copyload.i = phi ptr [ %.sroa.2.0.copyload.i30, %.lr.ph ], [ %.sroa.2.0.copyload.i29, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit ]
  %.sroa.0.0.copyload.i = phi i64 [ %.sroa.0.0.copyload.i27, %.lr.ph ], [ %.sroa.0.0.copyload.i26, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit ] ; 3 uses
  %i.ci = phi i64 [ %i.ce, %.lr.ph ], [ %i.er, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit ] ; 2 uses
  %i.cj = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.ck = load ptr, ptr %0, align 8, !tbaa !7
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = tail call noundef zeroext i1 %i.cm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %.sroa.2.0.copyload.i, i32 noundef %i.cj) ; 4 uses
  br i1 %i.cn, label %bb.q, label %._crit_edge

bb.q:                                             ; preds = %bb.p
  %i.co = sub i64 %i.ci, %.sroa.0.0.copyload.i    ; 4 uses
  store i64 %i.co, ptr %i.a, align 8, !tbaa !84
  %.not.i = icmp eq i64 %i.ci, %.sroa.0.0.copyload.i
  br i1 %.not.i, label %._crit_edge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cp = load i32, ptr %i.c, align 8, !tbaa !77  ; 2 uses
  %i.cq = icmp sgt i32 %i.cp, -1
  br i1 %i.cq, label %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i, label %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit

_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i: ; preds = %bb.r
  %i.cr = zext nneg i32 %i.cp to i64              ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !94
  %.not2.i = icmp eq ptr %i.ct, null
  br i1 %.not2.i, label %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit, label %bb.s

bb.s:                                             ; preds = %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i
  %i.cu = icmp eq i64 %i.ch, 0
  br i1 %i.cu, label %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = load ptr, ptr %i.cf, align 8, !tbaa !94 ; 2 uses
  %i.cw = load i8, ptr %i.cg, align 4, !tbaa !36  ; 2 uses
  %i.cx = zext i8 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 15
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !36
  %i.da = zext i8 %i.cz to i64
  %i.db = add nsw i64 %i.da, -1
  %i.dc = icmp eq i64 %i.db, %i.cx
  br i1 %i.dc, label %.preheader, label %bb.w

.preheader:                                       ; preds = %bb.t, %.preheader
  %indvars.iv37.i.i.i.i.i = phi i32 [ %indvars.iv.next38.i.i.i.i.i, %.preheader ], [ 1, %bb.t ] ; 2 uses
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.preheader ], [ 0, %bb.t ] ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp ne i64 %indvars.iv.i.i.i.i.i, %i.cr
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i.i.i)
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 4 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i.i.i.i.i
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !94 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cg, i64 %indvars.iv.next.i.i.i.i.i
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !36
  %i.dh = zext i8 %i.dg to i64
  %i.di = add nuw nsw i64 %i.dh, 1                ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 15
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !36
  %i.dl = zext i8 %i.dk to i64
  %i.dm = icmp eq i64 %i.di, %i.dl
  %indvars.iv.next38.i.i.i.i.i = add nuw i32 %indvars.iv37.i.i.i.i.i, 1
  br i1 %i.dm, label %.preheader, label %bb.u, !llvm.loop !104

bb.u:                                             ; preds = %.preheader
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cg, i64 %indvars.iv.next.i.i.i.i.i
  %3 = trunc i64 %i.di to i8
  store i8 %3, ptr %i.dn, align 1, !tbaa !36
  %4 = sext i32 %indvars.iv37.i.i.i.i.i to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %bb.u
  %indvars.iv40.i.i.i.i.i = phi i64 [ %indvars.iv.next41.i.i.i.i.i.a, %bb.v ], [ %4, %bb.u ] ; 2 uses
  %.017.i.i.i.i.i = phi ptr [ %i.dq, %bb.v ], [ %i.de, %bb.u ]
  %.016.i.i.i.i.i = phi i64 [ %i.du, %bb.v ], [ %i.di, %bb.u ]
  %i.do = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i, i64 16
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.016.i.i.i.i.i
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !96 ; 4 uses
  %indvars.iv.next41.i.i.i.i.i.a = add nsw i64 %indvars.iv40.i.i.i.i.i, -1 ; 3 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %indvars.iv.next41.i.i.i.i.i.a
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !94
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 14
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !36  ; 2 uses
  %i.du = zext i8 %i.dt to i64                    ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %i.cg, i64 %indvars.iv.next41.i.i.i.i.i.a
  store i8 %i.dt, ptr %i.dv, align 1, !tbaa !36
  %i.dw = icmp sgt i64 %indvars.iv40.i.i.i.i.i, 1
  br i1 %i.dw, label %bb.v, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i, !llvm.loop !105

bb.w:                                             ; preds = %bb.t
  %i.dx = add i8 %i.cw, 1                         ; 2 uses
  store i8 %i.dx, ptr %i.cg, align 4, !tbaa !36
  %i.dy = zext i8 %i.dx to i64
  br label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i

_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i: ; preds = %bb.v
  %.pre.i.i.i = load i64, ptr %i.b, align 8, !tbaa !98
  br label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i

_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i: ; preds = %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i, %bb.w
  %i.dz = phi i64 [ %i.ch, %bb.w ], [ %.pre.i.i.i, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i ]
  %.lcssa12.sink.i.i.i.i = phi ptr [ %i.cv, %bb.w ], [ %i.dq, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i.i = phi i64 [ %i.dy, %bb.w ], [ %i.du, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.lcssa12.sink.i.i.i.i, i64 16
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.lcssa.sink.i.i.i.i
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !96 ; 5 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !79 ; 2 uses
  %i.ee = sub i64 %i.dz, %i.ed                    ; 2 uses
  store i64 %i.ee, ptr %i.b, align 8, !tbaa !98
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  %i.eg = load i8, ptr %i.ef, align 4, !tbaa !89  ; 2 uses
  %i.eh = icmp eq i8 %i.eg, 1
  br i1 %i.eh, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !99
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !101 ; 2 uses
  %.phi.trans.insert.i.i.i.i8 = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  %.pre.i.i.i.i9 = load i8, ptr %.phi.trans.insert.i.i.i.i8, align 4, !tbaa !89
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i
  %i.em = phi i8 [ %.pre.i.i.i.i9, %bb.x ], [ %i.eg, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i ]
  %.010.i.i.i.i = phi ptr [ %i.el, %bb.x ], [ %i.ec, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i = phi i64 [ %i.ej, %bb.x ], [ 0, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i ]
  %i.en = icmp ugt i8 %i.em, 5
  br i1 %i.en, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.eo = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.ep = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !102
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i: ; preds = %bb.aa, %bb.z
  %.pn.i.i.i.i = phi ptr [ %i.eo, %bb.z ], [ %i.eq, %bb.aa ]
  %.sroa.3.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 %.0.i.i.i.i
  %.pre31.pre = load i64, ptr %i.a, align 8, !tbaa !84
  br label %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit

_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit: ; preds = %bb.r, %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i, %bb.s, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i
  %i.er = phi i64 [ %i.co, %bb.s ], [ %.pre31.pre, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %i.co, %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i ], [ %i.co, %bb.r ] ; 2 uses
  %i.es = phi i64 [ 0, %bb.s ], [ %i.ee, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %i.ch, %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i ], [ %i.ch, %bb.r ]
  %.sroa.2.0.copyload.i29 = phi ptr [ null, %bb.s ], [ %.sroa.3.0.i.i.i.i, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ null, %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i ], [ null, %bb.r ]
  %.sroa.0.0.copyload.i26 = phi i64 [ 0, %bb.s ], [ %i.ed, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ 0, %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i ], [ 0, %bb.r ]
  %.not = icmp eq i64 %i.er, 0
  br i1 %.not, label %._crit_edge, label %bb.p

._crit_edge:                                      ; preds = %bb.q, %bb.p, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit, %bb.b, %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit
  %.not.lcssa = phi i1 [ true, %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit ], [ true, %bb.b ], [ %i.cn, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit ], [ %i.cn, %bb.p ], [ %i.cn, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf2io26CopyingOutputStreamAdaptor10FreeBufferEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) initializes((44, 48)) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.a, align 4, !tbaa !65
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56   ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !56
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetEDn.exit, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #26
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetEDn.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetEDn.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf2io19LimitingInputStreamC2EPNS1_19ZeroCopyInputStreamEl(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6google8protobuf2io19LimitingInputStreamE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !106
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.b, align 8, !tbaa !109
  %i.c = load ptr, ptr %1, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.g, align 8, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf2io19LimitingInputStreamD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !106  ; 2 uses
  %i.f = trunc i64 %i.b to i32
  %i.g = sub i32 0, %i.f
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef %i.g)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf2io19LimitingInputStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN6google8protobuf2io19LimitingInputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io19LimitingInputStream4NextEPPKvPi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !109
  %i.c = icmp slt i64 %i.b, 1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !106  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %1, ptr noundef %2)
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %2, align 4, !tbaa !3      ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = load i64, ptr %i.a, align 8, !tbaa !109
  %i.m = sub nsw i64 %i.l, %i.k                   ; 3 uses
  store i64 %i.m, ptr %i.a, align 8, !tbaa !109
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = trunc i64 %i.m to i32
  %i.p = add i32 %i.j, %i.o
  store i32 %i.p, ptr %2, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.d ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf2io19LimitingInputStream6BackUpEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %i.c = icmp slt i64 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !106  ; 4 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = sext i32 %1 to i64
  %i.g = trunc i64 %i.b to i32
  %i.h = sub i32 %1, %i.g
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef %i.h)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef %1)
  %i.o = sext i32 %1 to i64
  %i.p = load i64, ptr %i.a, align 8, !tbaa !109
  %i.q = add nsw i64 %i.p, %i.o
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i64 [ %i.q, %bb.c ], [ %i.f, %bb.b ]
  store i64 %storemerge, ptr %i.a, align 8, !tbaa !109
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_202505124Cord12CharIteratorC2EPKS1_:bb.a
  %i.u = load i8, ptr %i.t, align 1               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.w = zext i8 %i.r to i64                      ; 5 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  store ptr %.0.i.i.i, ptr %i.x, align 8, !tbaa !94
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 %i.u, ptr %i.z, align 1, !tbaa !36
  %.018.i.i.i.i.i = zext i8 %i.u to i64           ; 3 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.e
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.prol = add nsw i64 %i.w, -1 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.018.i.i.i.i.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !96 ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.i.i.prol
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !94
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 14
  %i.af = load i8, ptr %i.ae, align 1             ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.i.i.i.i.i.prol
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !36
  %.0.i.i.i.i.i.prol = zext i8 %i.af to i64       ; 2 uses
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.unr = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ]
  %i.ah = icmp eq i8 %i.r, 1
  br i1 %i.ah, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i ], [ %.021.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.01619.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i, -1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.021.i.i.i.i.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !96 ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.i.i
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !94
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 14
  %i.an = load i8, ptr %i.am, align 1             ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.i.i.i.i.i
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !36
  %.0.i.i.i.i.i = zext i8 %i.an to i64
  %indvars.iv.next.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i, -2 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.0.i.i.i.i.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !96 ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.i.i.1
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !94
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 14
  %i.au = load i8, ptr %i.at, align 1             ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.i.i.i.i.i.1
  store i8 %i.au, ptr %i.av, align 1, !tbaa !36
  %.0.i.i.i.i.i.1 = zext i8 %i.au to i64          ; 2 uses
  %i.aw = icmp sgt i64 %indvars.iv.i.i.i.i.i, 2
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i, !llvm.loop !97

_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i, %bb.e ], [ %.0.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i ]
  %i.ax = load ptr, ptr %i.v, align 8, !tbaa !94
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.0.lcssa.i.i.i.i.i
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !96 ; 5 uses
  %i.bb = load i64, ptr %.0.i.i.i, align 8, !tbaa !79
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !79 ; 2 uses
  %i.bd = sub i64 %i.bb, %i.bc
  store i64 %i.bd, ptr %i.c, align 8, !tbaa !98
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !89  ; 2 uses
  %i.bg = icmp eq i8 %i.bf, 1
  br i1 %i.bg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !99
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !101 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !89
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i
  %i.bl = phi i8 [ %.pre.i.i.i.i, %bb.f ], [ %i.bf, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i ]
  %.010.i.i.i.i = phi ptr [ %i.bk, %bb.f ], [ %i.ba, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i ] ; 2 uses
  %.0.i.i.i.i = phi i64 [ %i.bi, %bb.f ], [ 0, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i ]
  %i.bm = icmp ugt i8 %i.bl, 5
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !102
  br label %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i

_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i: ; preds = %bb.i, %bb.h
  %.pn.i.i.i.i = phi ptr [ %i.bn, %bb.h ], [ %i.bp, %bb.i ]
  %.sroa.3.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 %.0.i.i.i.i
  br label %_ZN4absl12lts_202505124Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i

bb.j:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !147
  %i.bq = load i64, ptr %.0.i.i.i, align 8, !tbaa !79
  %i.br = icmp eq i8 %i.o, 1
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !99
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !101 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !89
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bw = phi i8 [ %.pre.i.i.i, %bb.k ], [ %i.o, %bb.j ]
  %.010.i.i.i = phi ptr [ %i.bv, %bb.k ], [ %.0.i.i.i, %bb.j ] ; 2 uses
  %.0.i8.i.i = phi i64 [ %i.bt, %bb.k ], [ 0, %bb.j ]
  %i.bx = icmp ugt i8 %i.bw, 5
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 13
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !102
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i

_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i: ; preds = %bb.n, %bb.m
  %.pn.i.i.i = phi ptr [ %i.by, %bb.m ], [ %i.ca, %bb.n ]
  %.sroa.3.0.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 %.0.i8.i.i
  br label %_ZN4absl12lts_202505124Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i

_ZN4absl12lts_202505124Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i: ; preds = %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i
  %.sink.i.i = phi i64 [ %i.bq, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i ], [ %i.bc, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i ]
  %.sroa.3.0.i.sink.i.i = phi ptr [ %.sroa.3.0.i.i.i, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i ], [ %.sroa.3.0.i.i.i.i, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i ]
  store i64 %.sink.i.i, ptr %0, align 8, !tbaa !115
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0.i.sink.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !56
  br label %_ZN4absl12lts_202505124Cord13ChunkIteratorC2EPKS1_.exit

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 0, i64 16, i1 false)
  br label %_ZN4absl12lts_202505124Cord13ChunkIteratorC2EPKS1_.exit

bb.p:                                             ; preds = %bb.a
  %i.cb = sext i8 %i.e to i64
  %i.cc = lshr i64 %i.cb, 1                       ; 2 uses
  store i64 %i.cc, ptr %i.b, align 8, !tbaa !84
  %i.cd = load i8, ptr %1, align 8, !tbaa !36
  %i.ce = trunc i8 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 1
  %spec.select.i.i = select i1 %i.ce, ptr null, ptr %i.cf
  store i64 %i.cc, ptr %0, align 8, !tbaa !115
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %spec.select.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !56
  br label %_ZN4absl12lts_202505124Cord13ChunkIteratorC2EPKS1_.exit

_ZN4absl12lts_202505124Cord13ChunkIteratorC2EPKS1_.exit: ; preds = %_ZN4absl12lts_202505124Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i, %bb.o, %bb.p
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505124Cord13ChunkIterator17AdvanceBytesBtreeEm(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !84   ; 2 uses
  %i.c = sub i64 %i.b, %1                         ; 3 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !84
  %.not = icmp eq i64 %i.b, %1
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !119
  %i.e = icmp eq i64 %1, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br i1 %i.e, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.f, align 8, !tbaa !98   ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4NextEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !94   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.l = load i8, ptr %i.k, align 4, !tbaa !36    ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 15
  %i.o = load i8, ptr %i.n, align 1, !tbaa !36
  %i.p = zext i8 %i.o to i64
  %i.q = add nsw i64 %i.p, -1
  %i.r = icmp eq i64 %i.q, %i.m
  br i1 %i.r, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !77
  %smax.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.t, i32 0)
  %wide.trip.count.i.i.i = zext nneg i32 %smax.i.i.i to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %indvars.iv37.i.i.i = phi i32 [ %indvars.iv.next38.i.i.i, %bb.f ], [ 1, %bb.e ] ; 2 uses
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %exitcond.not.i.i.i = icmp ne i64 %indvars.iv.i.i.i, %wide.trip.count.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i.i.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !94   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next.i.i.i
  %i.x = load i8, ptr %i.w, align 1, !tbaa !36
  %i.y = zext i8 %i.x to i64
  %i.z = add nuw nsw i64 %i.y, 1                  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 15
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !36
  %i.ac = zext i8 %i.ab to i64
  %i.ad = icmp eq i64 %i.z, %i.ac
  %indvars.iv.next38.i.i.i = add nuw i32 %indvars.iv37.i.i.i, 1
  br i1 %i.ad, label %bb.f, label %bb.g, !llvm.loop !104

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next.i.i.i
  %2 = trunc i64 %i.z to i8
  store i8 %2, ptr %i.ae, align 1, !tbaa !36
  %3 = sext i32 %indvars.iv37.i.i.i to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %indvars.iv40.i.i.i = phi i64 [ %indvars.iv.next41.i.i.i.a, %bb.h ], [ %3, %bb.g ] ; 2 uses
  %.017.i.i.i = phi ptr [ %i.ah, %bb.h ], [ %i.v, %bb.g ]
  %.016.i.i.i = phi i64 [ %i.al, %bb.h ], [ %i.z, %bb.g ]
  %i.af = getelementptr inbounds nuw i8, ptr %.017.i.i.i, i64 16
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.016.i.i.i
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !96 ; 4 uses
  %indvars.iv.next41.i.i.i.a = add nsw i64 %indvars.iv40.i.i.i, -1 ; 3 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv.next41.i.i.i.a
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !94
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 14
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !36  ; 2 uses
  %i.al = zext i8 %i.ak to i64                    ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.k, i64 %indvars.iv.next41.i.i.i.a
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !36
  %i.an = icmp sgt i64 %indvars.iv40.i.i.i, 1
  br i1 %i.an, label %bb.h, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i, !llvm.loop !105

bb.i:                                             ; preds = %bb.d
  %i.ao = add i8 %i.l, 1                          ; 2 uses
  store i8 %i.ao, ptr %i.k, align 4, !tbaa !36
  %i.ap = zext i8 %i.ao to i64
  br label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i

_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i: ; preds = %bb.h
  %.pre.i = load i64, ptr %i.f, align 8, !tbaa !98
  br label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i

_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i: ; preds = %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i, %bb.i
  %i.aq = phi i64 [ %i.g, %bb.i ], [ %.pre.i, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i ]
  %.lcssa12.sink.i.i = phi ptr [ %i.j, %bb.i ], [ %i.ah, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i ]
  %.lcssa.sink.i.i = phi i64 [ %i.ap, %bb.i ], [ %i.al, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa12.sink.i.i, i64 16
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.lcssa.sink.i.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !96 ; 5 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !79 ; 2 uses
  %i.av = sub i64 %i.aq, %i.au
  store i64 %i.av, ptr %i.f, align 8, !tbaa !98
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.ax = load i8, ptr %i.aw, align 4, !tbaa !89  ; 2 uses
  %i.ay = icmp eq i8 %i.ax, 1
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !99
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !101 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 4, !tbaa !89
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i
  %i.bd = phi i8 [ %.pre.i.i, %bb.j ], [ %i.ax, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i ]
  %.010.i.i = phi ptr [ %i.bc, %bb.j ], [ %i.at, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i ] ; 2 uses
  %.0.i.i = phi i64 [ %i.ba, %bb.j ], [ 0, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i ]
  %i.be = icmp ugt i8 %i.bd, 5
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 13
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i

bb.m:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !102
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i

_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i: ; preds = %bb.m, %bb.l
  %.pn.i.i = phi ptr [ %i.bf, %bb.l ], [ %i.bh, %bb.m ]
  %.sroa.3.0.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 %.0.i.i
  br label %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4NextEv.exit

_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4NextEv.exit: ; preds = %bb.c, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i
  %.sroa.0.0.i = phi i64 [ %i.au, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i ], [ 0, %bb.c ]
  %.sroa.3.0.i = phi ptr [ %.sroa.3.0.i.i, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i ], [ null, %bb.c ]
  store i64 %.sroa.0.0.i, ptr %0, align 8, !tbaa !115
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0.i, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !56
  br label %bb.w

bb.n:                                             ; preds = %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !77 ; 3 uses
  %i.bk = icmp sgt i32 %i.bj, -1
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bm = zext nneg i32 %i.bj to i64              ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !94 ; 5 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !79 ; 2 uses
  %i.bq = sub i64 %i.bp, %i.c                     ; 4 uses
  %.not.i.i.not = icmp ugt i64 %i.c, %i.bp
  br i1 %.not.i.i.not, label %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4SeekEm.exit, label %bb.o, !prof !20

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 14
  %i.bs = load i8, ptr %i.br, align 2, !tbaa !36
  %i.bt = zext i8 %i.bs to i64                    ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !96
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !79 ; 2 uses
  %.not8.i.i.i = icmp ult i64 %i.bq, %i.bx
  br i1 %.not8.i.i.i, label %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.o, %.lr.ph.i.i.i
  %i.by = phi i64 [ %i.cd, %.lr.ph.i.i.i ], [ %i.bx, %bb.o ]
  %.010.i.i.i = phi i64 [ %i.bz, %.lr.ph.i.i.i ], [ %i.bt, %bb.o ]
  %.069.i.i.i = phi i64 [ %i.ca, %.lr.ph.i.i.i ], [ %i.bq, %bb.o ]
  %i.bz = add i64 %.010.i.i.i, 1                  ; 3 uses
  %i.ca = sub nuw i64 %.069.i.i.i, %i.by          ; 3 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bz
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !96
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !79 ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.ca, %i.cd
  br i1 %.not.i.i.i, label %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !148

_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.o
  %.06.lcssa.i.i.i = phi i64 [ %i.bq, %bb.o ], [ %i.ca, %.lr.ph.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i = phi i64 [ %i.bt, %bb.o ], [ %i.bz, %.lr.ph.i.i.i ] ; 3 uses
  %i.ce = trunc i64 %.0.lcssa.i.i.i to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bm
  store i8 %i.ce, ptr %i.cg, align 1, !tbaa !36
  %.not13 = icmp eq i32 %i.bj, 0
  br i1 %.not13, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4SeekEm.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i ], [ %i.bm, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i ] ; 2 uses
  %.sroa.01.039.i.i = phi i64 [ %.0.lcssa.i28.i.i, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i ], [ %.0.lcssa.i.i.i, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i ]
  %.06.lcssa.i.pn38.i.i = phi i64 [ %.06.lcssa.i27.i.i, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i ], [ %.06.lcssa.i.i.i, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i ] ; 3 uses
  %.037.i.i = phi ptr [ %i.cj, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i ], [ %i.bo, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.037.i.i, i64 16
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.sroa.01.039.i.i
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !96 ; 5 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next.i.i
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !94
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 14
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !36
  %i.cn = zext i8 %i.cm to i64                    ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cn
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !96
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !79 ; 2 uses
  %.not8.i22.i.i = icmp ult i64 %.06.lcssa.i.pn38.i.i, %i.cr
  br i1 %.not8.i22.i.i, label %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i, label %.lr.ph.i23.i.i

.lr.ph.i23.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i23.i.i
  %i.cs = phi i64 [ %i.cx, %.lr.ph.i23.i.i ], [ %i.cr, %.lr.ph.i.i ]
  %.010.i24.i.i = phi i64 [ %i.ct, %.lr.ph.i23.i.i ], [ %i.cn, %.lr.ph.i.i ]
  %.069.i25.i.i = phi i64 [ %i.cu, %.lr.ph.i23.i.i ], [ %.06.lcssa.i.pn38.i.i, %.lr.ph.i.i ]
  %i.ct = add i64 %.010.i24.i.i, 1                ; 3 uses
  %i.cu = sub nuw i64 %.069.i25.i.i, %i.cs        ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.ct
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !96
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !79 ; 2 uses
  %.not.i26.i.i = icmp ult i64 %i.cu, %i.cx
  br i1 %.not.i26.i.i, label %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i, label %.lr.ph.i23.i.i, !llvm.loop !148

_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i: ; preds = %.lr.ph.i23.i.i, %.lr.ph.i.i
  %.06.lcssa.i27.i.i = phi i64 [ %.06.lcssa.i.pn38.i.i, %.lr.ph.i.i ], [ %i.cu, %.lr.ph.i23.i.i ] ; 2 uses
  %.0.lcssa.i28.i.i = phi i64 [ %i.cn, %.lr.ph.i.i ], [ %i.ct, %.lr.ph.i23.i.i ] ; 3 uses
  %i.cy = trunc i64 %.0.lcssa.i28.i.i to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cf, i64 %indvars.iv.next.i.i
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !36
  %i.da = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.da, label %.lr.ph.i.i, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4SeekEm.exit.i, !llvm.loop !149

_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4SeekEm.exit.i: ; preds = %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i
  %.0.lcssa.i.i = phi ptr [ %i.bo, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i ], [ %i.cj, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i ]
  %.06.lcssa.i.pn.lcssa.i.i = phi i64 [ %.06.lcssa.i.i.i, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i ], [ %.06.lcssa.i27.i.i, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i ] ; 4 uses
  %.sroa.01.0.lcssa.i.i = phi i64 [ %.0.lcssa.i.i.i, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i ], [ %.0.lcssa.i28.i.i, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i ]
  %i.db = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 16
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.sroa.01.0.lcssa.i.i
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !96 ; 6 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4SeekEm.exit, label %bb.p, !prof !150

bb.p:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4SeekEm.exit.i
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !79 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  %i.dh = load i8, ptr %i.dg, align 4, !tbaa !89  ; 2 uses
  %i.di = icmp eq i8 %i.dh, 1
  br i1 %i.di, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !99
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !101 ; 2 uses
  %.phi.trans.insert.i.i11 = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  %.pre.i.i12 = load i8, ptr %.phi.trans.insert.i.i11, align 4, !tbaa !89
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dn = phi i8 [ %.pre.i.i12, %bb.q ], [ %i.dh, %bb.p ]
  %.010.i.i7 = phi ptr [ %i.dm, %bb.q ], [ %i.dd, %bb.p ] ; 2 uses
  %.0.i.i8 = phi i64 [ %i.dk, %bb.q ], [ 0, %bb.p ]
  %i.do = icmp ugt i8 %i.dn, 5
  br i1 %i.do, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dp = getelementptr inbounds nuw i8, ptr %.010.i.i7, i64 13
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i9

bb.t:                                             ; preds = %bb.r
  %i.dq = getelementptr inbounds nuw i8, ptr %.010.i.i7, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !102
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i9

_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i9: ; preds = %bb.t, %bb.s
  %.pn.i.i10 = phi ptr [ %i.dp, %bb.s ], [ %i.dr, %bb.t ]
  %i.ds = icmp ugt i64 %.06.lcssa.i.pn.lcssa.i.i, %i.df
  br i1 %i.ds, label %bb.u, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i

bb.u:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i9
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i64 noundef %.06.lcssa.i.pn.lcssa.i.i, i64 noundef %i.df) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i9
  %.sroa.3.0.i3.i = getelementptr inbounds nuw i8, ptr %.pn.i.i10, i64 %.0.i.i8
  %i.dt = sub nuw i64 %i.df, %.06.lcssa.i.pn.lcssa.i.i ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i3.i, i64 %.06.lcssa.i.pn.lcssa.i.i
  %i.dv = load i32, ptr %i.bi, align 8, !tbaa !77 ; 2 uses
  %i.dw = icmp sgt i32 %i.dv, -1
  tail call void @llvm.assume(i1 %i.dw)
  %i.dx = zext nneg i32 %i.dv to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.dx
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !94
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !79
end_hunk_1
