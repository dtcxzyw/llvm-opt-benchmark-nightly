Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/service.grpc.pb?download=true
inline.NumInlined: 3176
inline.NumDeleted: 1087
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4grpc17ProtoBufferWriter9WriteCordERKN4absl12lts_202505124CordE:bb.a
  %i.k = load i64, ptr %i.j, align 8, !tbaa !511, !noalias !508 ; 3 uses
  store i64 %i.k, ptr %i.d, align 8, !tbaa !512, !alias.scope !508
  %.not7.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not7.i.i.i, label %._crit_edge, label %bb.c, !prof !38

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.m = load i8, ptr %i.l, align 4, !tbaa !516, !noalias !508 ; 2 uses
  %i.n = icmp eq i8 %i.m, 2
  br i1 %i.n, label %bb.d, label %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i, !prof !38

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !517, !noalias !508 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !516, !noalias !508
  br label %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.q = phi i8 [ %.pre.i.i.i.i, %bb.d ], [ %i.m, %bb.c ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.p, %bb.d ], [ %i.j, %bb.c ] ; 11 uses
  %i.r = icmp eq i8 %i.q, 3
  br i1 %i.r, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 13
  %i.t = load i8, ptr %i.s, align 1, !tbaa !19, !noalias !508 ; 4 uses
  %i.u = zext i8 %i.t to i32
  store i32 %i.u, ptr %i.f, align 8, !tbaa !509, !alias.scope !508
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 14
  %i.w = load i8, ptr %i.v, align 1, !noalias !508 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.y = zext i8 %i.t to i64                      ; 5 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.y
  store ptr %.0.i.i.i.i.i, ptr %i.z, align 8, !tbaa !521, !alias.scope !508
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 %i.w, ptr %i.ab, align 1, !tbaa !19, !alias.scope !508
  %.018.i.i.i.i.i.i.i = zext i8 %i.w to i64       ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.e
  %xtraiter = and i64 %i.y, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.i.prol = add nsw i64 %i.y, -1 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.018.i.i.i.i.i.i.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !523, !noalias !508 ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !521, !alias.scope !508
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 14
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !508 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !19, !alias.scope !508
  %.0.i.i.i.i.i.i.i.prol = zext i8 %i.ah to i64   ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.i.unr = phi i64 [ %i.y, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.aj = icmp eq i8 %i.t, 1
  br i1 %i.aj, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i.i, i64 16
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.021.i.i.i.i.i.i.i
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !523, !noalias !508 ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store ptr %i.am, ptr %i.an, align 8, !tbaa !521, !alias.scope !508
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 14
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !508 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !19, !alias.scope !508
  %.0.i.i.i.i.i.i.i = zext i8 %i.ap to i64
  %indvars.iv.next.i.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -2 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.0.i.i.i.i.i.i.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !523, !noalias !508 ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store ptr %i.at, ptr %i.au, align 8, !tbaa !521, !alias.scope !508
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 14
  %i.aw = load i8, ptr %i.av, align 1, !noalias !508 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !19, !alias.scope !508
  %.0.i.i.i.i.i.i.i.1 = zext i8 %i.aw to i64      ; 2 uses
  %i.ay = icmp sgt i64 %indvars.iv.i.i.i.i.i.i.i, 2
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, !llvm.loop !524

_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i.i, %bb.e ], [ %.0.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.az = load ptr, ptr %i.x, align 8, !tbaa !521, !alias.scope !508
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.0.lcssa.i.i.i.i.i.i.i
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !523, !noalias !508 ; 5 uses
  %i.bd = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !511, !noalias !508
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !511, !noalias !508 ; 2 uses
  %i.bf = sub i64 %i.bd, %i.be
  store i64 %i.bf, ptr %i.e, align 8, !tbaa !525, !alias.scope !508
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.bh = load i8, ptr %i.bg, align 4, !tbaa !516, !noalias !508 ; 2 uses
  %i.bi = icmp eq i8 %i.bh, 1
  br i1 %i.bi, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !526, !noalias !508
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !528, !noalias !508 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 4, !tbaa !516, !noalias !508
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.bn = phi i8 [ %.pre.i.i.i.i.i.i, %bb.f ], [ %i.bh, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %.010.i.i.i.i.i.i = phi ptr [ %i.bm, %bb.f ], [ %i.bc, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i = phi i64 [ %i.bk, %bb.f ], [ 0, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %i.bo = icmp ugt i8 %i.bn, 5
  br i1 %i.bo, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !529, !noalias !508
  br label %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i

_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.pn.i.i.i.i.i.i = phi ptr [ %i.bp, %bb.h ], [ %i.br, %bb.i ]
  %.sroa.3.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i, i64 %.0.i.i.i.i.i.i
  %.pre.pre = load i64, ptr %i.d, align 8, !tbaa !512
  br label %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit

bb.j:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !530, !alias.scope !508
  %i.bs = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !511, !noalias !508
  %i.bt = icmp eq i8 %i.q, 1
  br i1 %i.bt, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !526, !noalias !508
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !528, !noalias !508 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !516, !noalias !508
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.by = phi i8 [ %.pre.i.i.i.i.i, %bb.k ], [ %i.q, %bb.j ]
  %.010.i.i.i.i.i = phi ptr [ %i.bx, %bb.k ], [ %.0.i.i.i.i.i, %bb.j ] ; 2 uses
  %.0.i8.i.i.i.i = phi i64 [ %i.bv, %bb.k ], [ 0, %bb.j ]
  %i.bz = icmp ugt i8 %i.by, 5
  br i1 %i.bz, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !529, !noalias !508
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.n, %bb.m
  %.pn.i.i.i.i.i = phi ptr [ %i.ca, %bb.m ], [ %i.cc, %bb.n ]
  %.sroa.3.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 %.0.i8.i.i.i.i
  br label %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit

bb.o:                                             ; preds = %bb.a
  %i.cd = sext i8 %i.g to i64
  %i.ce = lshr i64 %i.cd, 1                       ; 3 uses
  store i64 %i.ce, ptr %i.d, align 8, !tbaa !512, !alias.scope !508
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 1
  %spec.select.i.i.i.i = select i1 %i.h, ptr null, ptr %i.cf
  br label %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit

_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit: ; preds = %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i, %bb.o
  %.sink.i.i.i.i.sink = phi i64 [ %i.ce, %bb.o ], [ %i.bs, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %i.be, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %.sroa.3.0.i.sink.i.i.i.i.sink = phi ptr [ %spec.select.i.i.i.i, %bb.o ], [ %.sroa.3.0.i.i.i.i.i, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %.sroa.3.0.i.i.i.i.i.i, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %i.cg = phi i64 [ %i.ce, %bb.o ], [ %i.k, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %.pre.pre, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  store i64 %.sink.i.i.i.i.sink, ptr %2, align 8, !tbaa !195, !alias.scope !508
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.3.0.i.sink.i.i.i.i.sink, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !311, !alias.scope !508
  %.not29 = icmp eq i64 %i.cg, 0
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 5 uses
  br label %bb.p

._crit_edge:                                      ; preds = %bb.u, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit, %bb.b, %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit
  %.0.lcssa = phi i64 [ 0, %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit ], [ 0, %bb.b ], [ %i.ct, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit ], [ %i.ct, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.cj = load ptr, ptr %0, align 8, !tbaa !11
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = call noundef i64 %i.cl(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.cn = add i64 %i.cm, %.0.lcssa
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !474
  ret i1 true

bb.p:                                             ; preds = %.lr.ph, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit
  %.sroa.2.0.copyload.i = phi ptr [ %.sroa.3.0.i.sink.i.i.i.i.sink, %.lr.ph ], [ %.sroa.2.0.copyload.i40, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit ] ; 2 uses
  %.sroa.0.0.copyload.i = phi i64 [ %.sink.i.i.i.i.sink, %.lr.ph ], [ %.sroa.0.0.copyload.i37, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit ] ; 7 uses
  %i.cp = phi i64 [ %i.cg, %.lr.ph ], [ %i.ey, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit ] ; 2 uses
  %.030 = phi i64 [ 0, %.lr.ph ], [ %i.ct, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit ] ; 2 uses
  %i.cq = icmp ult i64 %.sroa.0.0.copyload.i, 512
  br i1 %i.cq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @grpc_slice_from_copied_buffer(ptr dead_on_unwind nonnull writable sret(%struct.grpc_slice) align 8 %3, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  call void @grpc_slice_buffer_add(ptr noundef %i.b, ptr noundef nonnull byval(%struct.grpc_slice) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.cr = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27 ; 3 uses
  invoke void @_ZNK4absl12lts_202505124Cord7SubcordEmm(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Cord") align 8 %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.030, i64 noundef %.sroa.0.0.copyload.i)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @grpc_slice_new_with_user_data(ptr dead_on_unwind nonnull writable sret(%struct.grpc_slice) align 8 %4, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i, ptr noundef nonnull @_ZZN4grpc17ProtoBufferWriter9WriteCordERKN4absl12lts_202505124CordEENUlPvE_8__invokeES6_, ptr noundef nonnull %i.cr)
  call void @grpc_slice_buffer_add(ptr noundef %i.b, ptr noundef nonnull byval(%struct.grpc_slice) align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef 16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.cs

bb.u:                                             ; preds = %bb.s, %bb.q
  %i.ct = add i64 %.sroa.0.0.copyload.i, %.030    ; 3 uses
  %i.cu = sub i64 %i.cp, %.sroa.0.0.copyload.i    ; 3 uses
  store i64 %i.cu, ptr %i.d, align 8, !tbaa !512
  %.not.i = icmp eq i64 %i.cp, %.sroa.0.0.copyload.i
  br i1 %.not.i, label %._crit_edge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cv = load i32, ptr %i.f, align 8, !tbaa !509 ; 2 uses
  %i.cw = icmp sgt i32 %i.cv, -1
  br i1 %i.cw, label %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i, label %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i

_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i: ; preds = %bb.v
  %i.cx = zext nneg i32 %i.cv to i64              ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !521
  %.not2.i = icmp eq ptr %i.cz, null
  br i1 %.not2.i, label %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i, label %bb.w

bb.w:                                             ; preds = %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i
  %i.da = load i64, ptr %i.e, align 8, !tbaa !525 ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %_ZN4absl12lts_202505124Cord13ChunkIterator12AdvanceBtreeEv.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dc = load ptr, ptr %i.ch, align 8, !tbaa !521 ; 2 uses
  %i.dd = load i8, ptr %i.ci, align 4, !tbaa !19  ; 2 uses
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 15
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !19
  %i.dh = zext i8 %i.dg to i64
  %i.di = add nsw i64 %i.dh, -1
  %i.dj = icmp eq i64 %i.di, %i.de
  br i1 %i.dj, label %.preheader, label %bb.aa

.preheader:                                       ; preds = %bb.x, %.preheader
  %indvars.iv37.i.i.i.i.i = phi i32 [ %indvars.iv.next38.i.i.i.i.i, %.preheader ], [ 1, %bb.x ] ; 2 uses
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.preheader ], [ 0, %bb.x ] ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp ne i64 %indvars.iv.i.i.i.i.i, %i.cx
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i.i)
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 4 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.next.i.i.i.i.i
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !521 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ci, i64 %indvars.iv.next.i.i.i.i.i
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !19
  %i.do = zext i8 %i.dn to i64
  %i.dp = add nuw nsw i64 %i.do, 1                ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 15
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !19
  %i.ds = zext i8 %i.dr to i64
  %i.dt = icmp eq i64 %i.dp, %i.ds
  %indvars.iv.next38.i.i.i.i.i = add nuw i32 %indvars.iv37.i.i.i.i.i, 1
  br i1 %i.dt, label %.preheader, label %bb.y, !llvm.loop !531

bb.y:                                             ; preds = %.preheader
  %i.du = getelementptr inbounds nuw i8, ptr %i.ci, i64 %indvars.iv.next.i.i.i.i.i
  %5 = trunc i64 %i.dp to i8
  store i8 %5, ptr %i.du, align 1, !tbaa !19
  %6 = sext i32 %indvars.iv37.i.i.i.i.i to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %bb.y
  %indvars.iv40.i.i.i.i.i = phi i64 [ %indvars.iv.next41.i.i.i.i.i.a, %bb.z ], [ %6, %bb.y ] ; 2 uses
  %.017.i.i.i.i.i = phi ptr [ %i.dx, %bb.z ], [ %i.dl, %bb.y ]
  %.016.i.i.i.i.i = phi i64 [ %i.eb, %bb.z ], [ %i.dp, %bb.y ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i, i64 16
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.016.i.i.i.i.i
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !523 ; 4 uses
  %indvars.iv.next41.i.i.i.i.i.a = add nsw i64 %indvars.iv40.i.i.i.i.i, -1 ; 3 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %indvars.iv.next41.i.i.i.i.i.a
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !521
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 14
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !19  ; 2 uses
  %i.eb = zext i8 %i.ea to i64                    ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %i.ci, i64 %indvars.iv.next41.i.i.i.i.i.a
  store i8 %i.ea, ptr %i.ec, align 1, !tbaa !19
  %i.ed = icmp sgt i64 %indvars.iv40.i.i.i.i.i, 1
  br i1 %i.ed, label %bb.z, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i, !llvm.loop !532

bb.aa:                                            ; preds = %bb.x
  %i.ee = add i8 %i.dd, 1                         ; 2 uses
  store i8 %i.ee, ptr %i.ci, align 4, !tbaa !19
  %i.ef = zext i8 %i.ee to i64
  br label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i

_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i: ; preds = %bb.z
  %.pre.i.i.i = load i64, ptr %i.e, align 8, !tbaa !525
  br label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i

_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i: ; preds = %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i, %bb.aa
  %i.eg = phi i64 [ %i.da, %bb.aa ], [ %.pre.i.i.i, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i ]
  %.lcssa12.sink.i.i.i.i = phi ptr [ %i.dc, %bb.aa ], [ %i.dx, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i.i = phi i64 [ %i.ef, %bb.aa ], [ %i.eb, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.lcssa12.sink.i.i.i.i, i64 16
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.lcssa.sink.i.i.i.i
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !523 ; 5 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !511 ; 2 uses
  %i.el = sub i64 %i.eg, %i.ek
  store i64 %i.el, ptr %i.e, align 8, !tbaa !525
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  %i.en = load i8, ptr %i.em, align 4, !tbaa !516 ; 2 uses
  %i.eo = icmp eq i8 %i.en, 1
  br i1 %i.eo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !526
  %i.er = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !528 ; 2 uses
  %.phi.trans.insert.i.i.i.i12 = getelementptr inbounds nuw i8, ptr %i.es, i64 12
  %.pre.i.i.i.i13 = load i8, ptr %.phi.trans.insert.i.i.i.i12, align 4, !tbaa !516
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i
  %i.et = phi i8 [ %.pre.i.i.i.i13, %bb.ab ], [ %i.en, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i ]
  %.010.i.i.i.i = phi ptr [ %i.es, %bb.ab ], [ %i.ej, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i = phi i64 [ %i.eq, %bb.ab ], [ 0, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i ]
  %i.eu = icmp ugt i8 %i.et, 5
  br i1 %i.eu, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ev = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.ew = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !529
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i: ; preds = %bb.ae, %bb.ad
  %.pn.i.i.i.i = phi ptr [ %i.ev, %bb.ad ], [ %i.ex, %bb.ae ]
  %.sroa.3.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 %.0.i.i.i.i
  %.pre42.pre = load i64, ptr %i.d, align 8, !tbaa !512
  br label %_ZN4absl12lts_202505124Cord13ChunkIterator12AdvanceBtreeEv.exit.i

_ZN4absl12lts_202505124Cord13ChunkIterator12AdvanceBtreeEv.exit.i: ; preds = %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i, %bb.w
  %.pre42 = phi i64 [ %.pre42.pre, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %i.cu, %bb.w ]
  %.sroa.0.0.i.i.i = phi i64 [ %i.ek, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ 0, %bb.w ] ; 2 uses
  %.sroa.3.0.i.i.i = phi ptr [ %.sroa.3.0.i.i.i.i, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ null, %bb.w ] ; 2 uses
  store i64 %.sroa.0.0.i.i.i, ptr %2, align 8, !tbaa !195
  store ptr %.sroa.3.0.i.i.i, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !311
  br label %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit

_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i: ; preds = %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i, %bb.v
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %2, i8 0, i64 16, i1 false)
  br label %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit

_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit: ; preds = %_ZN4absl12lts_202505124Cord13ChunkIterator12AdvanceBtreeEv.exit.i, %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i
  %i.ey = phi i64 [ %i.cu, %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i ], [ %.pre42, %_ZN4absl12lts_202505124Cord13ChunkIterator12AdvanceBtreeEv.exit.i ] ; 2 uses
  %.sroa.2.0.copyload.i40 = phi ptr [ null, %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i ], [ %.sroa.3.0.i.i.i, %_ZN4absl12lts_202505124Cord13ChunkIterator12AdvanceBtreeEv.exit.i ]
  %.sroa.0.0.copyload.i37 = phi i64 [ 0, %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i ], [ %.sroa.0.0.i.i.i, %_ZN4absl12lts_202505124Cord13ChunkIterator12AdvanceBtreeEv.exit.i ]
  %.not = icmp eq i64 %i.ey, 0
  br i1 %.not, label %._crit_edge, label %bb.p
}

declare i64 @grpc_slice_buffer_add_indexed(ptr noundef, ptr noundef byval(%struct.grpc_slice) align 8) local_unnamed_addr #12

declare void @grpc_slice_buffer_pop(ptr noundef) local_unnamed_addr #12

declare void @grpc_slice_buffer_add(ptr noundef, ptr noundef byval(%struct.grpc_slice) align 8) local_unnamed_addr #12

declare void @grpc_slice_from_copied_buffer(ptr dead_on_unwind writable sret(%struct.grpc_slice) align 8, ptr noundef, i64 noundef) local_unnamed_addr #12

declare void @_ZNK4absl12lts_202505124Cord7SubcordEmm(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Cord") align 8, ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef) local_unnamed_addr #12

declare void @grpc_slice_new_with_user_data(ptr dead_on_unwind writable sret(%struct.grpc_slice) align 8, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN4grpc17ProtoBufferWriter9WriteCordERKN4absl12lts_202505124CordEENUlPvE_8__invokeES6_(ptr noundef %0) #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZZN4grpc17ProtoBufferWriter9WriteCordERKN4absl12lts_202505124CordEENKUlPvE_clES6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !19
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %_ZN4absl12lts_202505124CordD2Ev.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4absl12lts_202505124Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZN4absl12lts_202505124CordD2Ev.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #31
  unreachable

_ZN4absl12lts_202505124CordD2Ev.exit.i:           ; preds = %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #28
  br label %_ZZN4grpc17ProtoBufferWriter9WriteCordERKN4absl12lts_202505124CordEENKUlPvE_clES6_.exit

_ZZN4grpc17ProtoBufferWriter9WriteCordERKN4absl12lts_202505124CordEENKUlPvE_clES6_.exit: ; preds = %bb.a, %_ZN4absl12lts_202505124CordD2Ev.exit.i
  ret void
}

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19FlushAndResetBufferEPh(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef) local_unnamed_addr #12

declare ptr @grpc_byte_buffer_copy(ptr noundef) local_unnamed_addr #12

declare void @grpc_empty_slice(ptr dead_on_unwind writable sret(%struct.grpc_slice) align 8) local_unnamed_addr #12

declare void @grpc_call_ref(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4grpc8internal17CallOpSendMessage24SetInterceptionHookPointEPNS0_27InterceptorBatchMethodsImplE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.53", align 16 ; 16 uses
  %3 = alloca %"class.std::function.53", align 8  ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !226
  %i.b = icmp ne ptr %i.a, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp ne ptr %i.d, null
  %or.cond = select i1 %i.b, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.b, label %_ZNSt14_Function_baseD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 1, ptr %i.f, align 1, !tbaa !267
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !152  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFN4grpc6StatusEPKvEEC2ERKS5_.exit.thread, label %bb.c

_ZNSt8functionIFN4grpc6StatusEPKvEEC2ERKS5_.exit.thread: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %i.c, ptr %i.l, align 8, !tbaa !328
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %0, ptr %i.m, align 8, !tbaa !327
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.g, ptr %i.n, align 8, !tbaa !329
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  br label %_ZNSt8functionIFN4grpc6StatusEPKvEEC2ERKS5_.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i32 noundef 2)
          to label %_ZNSt8functionIFN4grpc6StatusEPKvEEC2ERKS5_.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !152  ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #31
  unreachable

common.resume:                                    ; preds = %bb.q, %.body, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.d ], [ %i.s, %bb.e ], [ %i.ah, %.body ], [ %i.ah, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8functionIFN4grpc6StatusEPKvEEC2ERKS5_.exit: ; preds = %bb.c
  %i.x = load <2 x ptr>, ptr %i.j, align 8, !tbaa !276
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !152  ; 2 uses
  store <2 x ptr> %i.x, ptr %i.h, align 8, !tbaa !276
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %i.c, ptr %i.z, align 8, !tbaa !328
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %0, ptr %i.aa, align 8, !tbaa !327
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.g, ptr %i.ab, align 8, !tbaa !329
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %.not.i.i.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFN4grpc6StatusEPKvEEC2ERKS5_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFN4grpc6StatusEPKvEEC2ERKS5_.exit
  %i.ae = invoke noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 2)
          to label %bb.h unwind label %bb.i       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !325
end_hunk_0
