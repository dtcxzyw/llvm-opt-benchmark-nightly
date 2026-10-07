Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/cord?download=true
inline.NumInlined: 1757
inline.NumDeleted: 506
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZNK4absl12lts_202605264Cord15CompareSlowPathESt17basic_string_viewIcSt11char_traitsIcEEmm:bb.a
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.n = phi i8 [ %.pre.i.i.i, %bb.d ], [ %i.j, %bb.c ] ; 3 uses
  %.0.i.i.i.i = phi ptr [ %i.m, %bb.d ], [ %i.g, %bb.c ] ; 10 uses
  %i.o = icmp eq i8 %i.n, 3
  br i1 %i.o, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 13
  %i.q = load i8, ptr %i.p, align 1, !tbaa !23, !noalias !486 ; 4 uses
  %i.r = zext i8 %i.q to i32
  store i32 %i.r, ptr %i.c, align 8, !tbaa !73, !alias.scope !486
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 14
  %i.t = load i8, ptr %i.s, align 1, !noalias !486 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 5 uses
  %i.v = zext i8 %i.q to i64                      ; 5 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  store ptr %.0.i.i.i.i, ptr %i.w, align 8, !tbaa !79, !alias.scope !486
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 %i.t, ptr %i.y, align 1, !tbaa !23, !alias.scope !486
  %.018.i.i.i.i.i.i = zext i8 %i.t to i64         ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.e
  %xtraiter = and i64 %i.v, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.prol = add nsw i64 %i.v, -1 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.018.i.i.i.i.i.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !39, !noalias !486 ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i.i.prol
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !79, !alias.scope !486
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 14
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !486 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.i.i.i.i.i.i.prol
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !23, !alias.scope !486
  %.0.i.i.i.i.i.i.prol = zext i8 %i.ae to i64     ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.unr = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ag = icmp eq i8 %i.q, 1
  br i1 %i.ag, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i, -1 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i, i64 16
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.021.i.i.i.i.i.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !39, !noalias !486 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i.i
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !79, !alias.scope !486
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 14
  %i.am = load i8, ptr %i.al, align 1, !noalias !486 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.i.i.i.i.i.i
  store i8 %i.am, ptr %i.an, align 1, !tbaa !23, !alias.scope !486
  %.0.i.i.i.i.i.i = zext i8 %i.am to i64
  %indvars.iv.next.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i, -2 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.0.i.i.i.i.i.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !39, !noalias !486 ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i.i.1
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !79, !alias.scope !486
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 14
  %i.at = load i8, ptr %i.as, align 1, !noalias !486 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.i.i.i.i.i.i.1
  store i8 %i.at, ptr %i.au, align 1, !tbaa !23, !alias.scope !486
  %.0.i.i.i.i.i.i.1 = zext i8 %i.at to i64        ; 2 uses
  %i.av = icmp sgt i64 %indvars.iv.i.i.i.i.i.i, 2
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, !llvm.loop !0

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i, %bb.e ], [ %.0.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ]
  %i.aw = load ptr, ptr %i.u, align 8, !tbaa !79, !alias.scope !486
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.0.lcssa.i.i.i.i.i.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !39, !noalias !486 ; 5 uses
  %i.ba = load i64, ptr %.0.i.i.i.i, align 8, !tbaa !31, !noalias !486
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !31, !noalias !486 ; 2 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  store i64 %i.bc, ptr %i.b, align 8, !tbaa !81, !alias.scope !486
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !32, !noalias !486 ; 2 uses
  %i.bf = icmp eq i8 %i.be, 1
  br i1 %i.bf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !82, !noalias !486
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !42, !noalias !486 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !32, !noalias !486
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i
  %i.bk = phi i8 [ %.pre.i.i.i.i.i, %bb.f ], [ %i.be, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %.010.i.i.i.i.i = phi ptr [ %i.bj, %bb.f ], [ %i.az, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i = phi i64 [ %i.bh, %bb.f ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %i.bl = icmp ugt i8 %i.bk, 5
  br i1 %i.bl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !33, !noalias !486
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i

_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.pn.i.i.i.i.i = phi ptr [ %i.bm, %bb.h ], [ %i.bo, %bb.i ]
  %.sroa.3.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 %.0.i.i.i.i.i
  %.pr.pre.pre = load i64, ptr %i.a, align 8, !tbaa !77
  br label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit

bb.j:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i
  %i.bp = load i64, ptr %.0.i.i.i.i, align 8, !tbaa !31, !noalias !486
  %i.bq = icmp eq i8 %i.n, 1
  br i1 %i.bq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !82, !noalias !486
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !42, !noalias !486 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !32, !noalias !486
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bv = phi i8 [ %.pre.i.i.i.i, %bb.k ], [ %i.n, %bb.j ]
  %.010.i.i.i.i = phi ptr [ %i.bu, %bb.k ], [ %.0.i.i.i.i, %bb.j ] ; 2 uses
  %.0.i8.i.i.i = phi i64 [ %i.bs, %bb.k ], [ 0, %bb.j ]
  %i.bw = icmp ugt i8 %i.bv, 5
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !33, !noalias !486
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.pn.i.i.i.i = phi ptr [ %i.bx, %bb.m ], [ %i.bz, %bb.n ]
  %.sroa.3.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 %.0.i8.i.i.i
  br label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit

bb.o:                                             ; preds = %bb.a
  %i.ca = sext i8 %i.d to i64
  %i.cb = lshr i64 %i.ca, 1                       ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1
  %spec.select.i.i.i = select i1 %i.e, ptr null, ptr %i.cc
  br label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit

_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit: ; preds = %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i, %bb.o
  %i.cd = phi i64 [ 0, %bb.o ], [ 0, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %i.bc, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i ] ; 2 uses
  %.sroa.2.0.copyload.i = phi ptr [ %spec.select.i.i.i, %bb.o ], [ %.sroa.3.0.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %.sroa.3.0.i.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i ]
  %.sroa.0.0.copyload.i = phi i64 [ %i.cb, %bb.o ], [ %i.bp, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %i.bb, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i ] ; 3 uses
  %.pr = phi i64 [ %i.cb, %bb.o ], [ %i.h, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %.pr.pre.pre, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i ] ; 2 uses
  %.not = icmp eq i64 %.pr, 0
  br i1 %.not, label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread, label %bb.p

bb.p:                                             ; preds = %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit
  br label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread

_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread: ; preds = %bb.b, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit, %bb.p
  %i.ce = phi i64 [ %i.cd, %bb.p ], [ %i.cd, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit ], [ 0, %bb.b ]
  %i.cf = phi i64 [ %.pr, %bb.p ], [ 0, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit ], [ 0, %bb.b ]
  %i.cg = phi i64 [ %.sroa.0.0.copyload.i, %bb.p ], [ %.sroa.0.0.copyload.i, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit ], [ 0, %bb.b ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload.i, %bb.p ], [ 0, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit ], [ 0, %bb.b ]
  %.sroa.12.0 = phi ptr [ %.sroa.2.0.copyload.i, %bb.p ], [ null, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit ], [ null, %bb.b ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.12.0, i64 %3
  %i.ci = sub i64 %.sroa.0.0, %3
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.ck = sub i64 %1, %3
  %i.cl = sub i64 %4, %3
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 5 uses
  br label %bb.q

bb.q:                                             ; preds = %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread
  %i.co = phi i64 [ %i.ce, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread ], [ %i.ey, %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ] ; 5 uses
  %i.cp = phi i64 [ %i.cf, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread ], [ %i.ez, %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ] ; 3 uses
  %i.cq = phi i64 [ %i.cg, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread ], [ %i.fa, %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ] ; 3 uses
  %.sroa.032.0 = phi i64 [ %i.ck, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread ], [ %i.fh, %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ] ; 5 uses
  %.0 = phi i64 [ %i.cl, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread ], [ %i.fd, %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ]
  %.sroa.8.0 = phi ptr [ %i.cj, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread ], [ %i.fg, %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %i.ci, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread ], [ %i.ff, %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %i.ch, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread ], [ %i.fe, %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ]
  %i.cr = icmp eq i64 %.sroa.0.1, 0
  br i1 %i.cr, label %bb.r, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.thread27.i

bb.r:                                             ; preds = %bb.q
  %i.cs = sub i64 %i.cp, %i.cq                    ; 4 uses
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !77
  %.not.i.i = icmp eq i64 %i.cp, %i.cq
  br i1 %.not.i.i, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ct = load i32, ptr %i.c, align 8, !tbaa !73  ; 2 uses
  %i.cu = icmp sgt i32 %i.ct, -1
  br i1 %i.cu, label %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i.i, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.thread27.i

_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i.i: ; preds = %bb.s
  %i.cv = zext nneg i32 %i.ct to i64              ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cv
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !79
  %.not2.i.i = icmp eq ptr %i.cx, null
  br i1 %.not2.i.i, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.thread27.i, label %bb.t

bb.t:                                             ; preds = %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i.i
  %i.cy = icmp eq i64 %i.co, 0
  br i1 %i.cy, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.thread27.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = load ptr, ptr %i.cm, align 8, !tbaa !79 ; 2 uses
  %i.da = load i8, ptr %i.cn, align 4, !tbaa !23  ; 2 uses
  %i.db = zext i8 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 15
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !23
  %i.de = zext i8 %i.dd to i64
  %i.df = add nsw i64 %i.de, -1
  %i.dg = icmp eq i64 %i.df, %i.db
  br i1 %i.dg, label %.preheader.i, label %bb.x

.preheader.i:                                     ; preds = %bb.u, %.preheader.i
  %indvars.iv37.i.i.i.i.i.i = phi i32 [ %indvars.iv.next38.i.i.i.i.i.i, %.preheader.i ], [ 1, %bb.u ] ; 2 uses
  %indvars.iv.i.i.i.i.i.i17 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i18, %.preheader.i ], [ 0, %bb.u ] ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp ne i64 %indvars.iv.i.i.i.i.i.i17, %i.cv
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i.i.i.i)
  %indvars.iv.next.i.i.i.i.i.i18 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i17, 1 ; 4 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.next.i.i.i.i.i.i18
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !79 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cn, i64 %indvars.iv.next.i.i.i.i.i.i18
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !23
  %i.dl = zext i8 %i.dk to i64
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 15
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !23
  %i.dp = zext i8 %i.do to i64
  %i.dq = icmp eq i64 %i.dm, %i.dp
  %indvars.iv.next38.i.i.i.i.i.i = add nuw i32 %indvars.iv37.i.i.i.i.i.i, 1
  br i1 %i.dq, label %.preheader.i, label %bb.v, !llvm.loop !1

bb.v:                                             ; preds = %.preheader.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %indvars.iv.next.i.i.i.i.i.i18
  %i.ds = trunc i64 %i.dm to i8
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !23
  %i.dt = sext i32 %indvars.iv37.i.i.i.i.i.i to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %indvars.iv40.i.i.i.i.i.i = phi i64 [ %indvars.iv.next41.i.i.i.i.i.i, %bb.w ], [ %i.dt, %bb.v ] ; 2 uses
  %.017.i.i.i.i.i.i = phi ptr [ %i.dw, %bb.w ], [ %i.di, %bb.v ]
  %.016.i.i.i.i.i.i = phi i64 [ %i.ea, %bb.w ], [ %i.dm, %bb.v ]
  %i.du = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.i, i64 16
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %.016.i.i.i.i.i.i
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !39 ; 4 uses
  %indvars.iv.next41.i.i.i.i.i.i = add nsw i64 %indvars.iv40.i.i.i.i.i.i, -1 ; 3 uses
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %indvars.iv.next41.i.i.i.i.i.i
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !79
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 14
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !23  ; 2 uses
  %i.ea = zext i8 %i.dz to i64                    ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.cn, i64 %indvars.iv.next41.i.i.i.i.i.i
  store i8 %i.dz, ptr %i.eb, align 1, !tbaa !23
  %i.ec = icmp sgt i64 %indvars.iv40.i.i.i.i.i.i, 1
  br i1 %i.ec, label %bb.w, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i.i, !llvm.loop !2

bb.x:                                             ; preds = %bb.u
  %i.ed = add i8 %i.da, 1                         ; 2 uses
  store i8 %i.ed, ptr %i.cn, align 4, !tbaa !23
  %i.ee = zext i8 %i.ed to i64
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i.i

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i.i: ; preds = %bb.w
  %.pre.i.i.i.i19 = load i64, ptr %i.b, align 8, !tbaa !81
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i.i

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i.i: ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i.i, %bb.x
  %i.ef = phi i64 [ %i.co, %bb.x ], [ %.pre.i.i.i.i19, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i.i ]
  %.lcssa12.sink.i.i.i.i.i = phi ptr [ %i.cz, %bb.x ], [ %i.dw, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i.i ]
  %.lcssa.sink.i.i.i.i.i = phi i64 [ %i.ee, %bb.x ], [ %i.ea, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i.i ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.lcssa12.sink.i.i.i.i.i, i64 16
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.lcssa.sink.i.i.i.i.i
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !39 ; 5 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !31 ; 3 uses
  %i.ek = sub i64 %i.ef, %i.ej                    ; 2 uses
  store i64 %i.ek, ptr %i.b, align 8, !tbaa !81
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  %i.em = load i8, ptr %i.el, align 4, !tbaa !32  ; 2 uses
  %i.en = icmp eq i8 %i.em, 1
  br i1 %i.en, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !82
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !42 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i15 = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  %.pre.i.i.i.i.i16 = load i8, ptr %.phi.trans.insert.i.i.i.i.i15, align 4, !tbaa !32
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i.i
  %i.es = phi i8 [ %.pre.i.i.i.i.i16, %bb.y ], [ %i.em, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i.i ]
  %.010.i.i.i.i.i10 = phi ptr [ %i.er, %bb.y ], [ %i.ei, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i11 = phi i64 [ %i.ep, %bb.y ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i.i ]
  %i.et = icmp ugt i8 %i.es, 5
  br i1 %i.et, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.eu = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i10, i64 13
  br label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.ev = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i10, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !33
  br label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.i

_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.i: ; preds = %bb.ab, %bb.aa
  %.pn.i.i.i.i.i12 = phi ptr [ %i.eu, %bb.aa ], [ %i.ew, %bb.ab ]
  %.sroa.3.0.i.i.i.i.i13 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i12, i64 %.0.i.i.i.i.i11
  %.pr.pre.pre.i = load i64, ptr %i.a, align 8, !tbaa !77 ; 2 uses
  %i.ex = icmp eq i64 %.pr.pre.pre.i, 0
  br i1 %i.ex, label %.critedge, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.thread27.i

_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.thread27.i: ; preds = %bb.s, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i.i, %bb.t, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.i, %bb.q
  %i.ey = phi i64 [ %i.co, %bb.q ], [ %i.ek, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.i ], [ 0, %bb.t ], [ %i.co, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i.i ], [ %i.co, %bb.s ]
  %i.ez = phi i64 [ %i.cp, %bb.q ], [ %.pr.pre.pre.i, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.i ], [ %i.cs, %bb.t ], [ %i.cs, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i.i ], [ %i.cs, %bb.s ]
  %i.fa = phi i64 [ %i.cq, %bb.q ], [ %i.ej, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.i ], [ 0, %bb.t ], [ 0, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i.i ], [ 0, %bb.s ]
  %.sroa.0.2.ph = phi i64 [ %.sroa.0.1, %bb.q ], [ %i.ej, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.i ], [ 0, %bb.t ], [ 0, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i.i ], [ 0, %bb.s ] ; 3 uses
  %.sroa.12.2.ph = phi ptr [ %.sroa.12.1, %bb.q ], [ %.sroa.3.0.i.i.i.i.i13, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.i ], [ null, %bb.t ], [ null, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i.i ], [ null, %bb.s ] ; 2 uses
  %i.fb = icmp eq i64 %.sroa.032.0, 0
  br i1 %i.fb, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.thread27.i
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.032.0, i64 %.sroa.0.2.ph) ; 6 uses
  %i.fc = tail call i32 @memcmp(ptr noundef %.sroa.12.2.ph, ptr noundef %.sroa.8.0, i64 noundef %.sroa.speculated.i) #27 ; 2 uses
  %.not.i = icmp eq i32 %i.fc, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit, label %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit.thread

_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit: ; preds = %bb.ac
  %i.fd = sub i64 %.0, %.sroa.speculated.i        ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.12.2.ph, i64 %.sroa.speculated.i
  %i.ff = sub nuw i64 %.sroa.0.2.ph, %.sroa.speculated.i
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 %.sroa.speculated.i
  %i.fh = sub nuw i64 %.sroa.032.0, %.sroa.speculated.i
  %.not54 = icmp eq i64 %i.fd, 0
  br i1 %.not54, label %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit.thread, label %bb.q, !llvm.loop !485

.critedge:                                        ; preds = %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.i, %bb.r, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.thread27.i
  %.sroa.032.0.lcssa = phi i64 [ %.sroa.032.0, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.i ], [ %.sroa.032.0, %bb.r ], [ 0, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.thread27.i ]
  %.sroa.0.243 = phi i64 [ 0, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.i ], [ 0, %bb.r ], [ %.sroa.0.2.ph, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.thread27.i ]
  %i.fi = icmp eq i64 %.sroa.032.0.lcssa, 0
  %i.fj = zext i1 %i.fi to i32
  %i.fk = icmp eq i64 %.sroa.0.243, 0
  %.neg = sext i1 %i.fk to i32
  %i.fl = add nsw i32 %.neg, %i.fj
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit.thread

_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit.thread: ; preds = %bb.ac, %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit, %.critedge
  %.2 = phi i32 [ %i.fl, %.critedge ], [ %i.fc, %bb.ac ], [ 0, %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret i32 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4absl12lts_202605264Cord15CompareSlowPathERKS1_mm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::Cord::ChunkIterator", align 8 ; 12 uses
  %5 = alloca %"class.absl::lts_20260526::Cord::ChunkIterator", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %4, i8 0, i64 40, i1 false), !alias.scope !492
  store i32 -1, ptr %i.d, align 8, !tbaa !73, !alias.scope !492
  %i.e = load i8, ptr %0, align 8, !tbaa !23, !noalias !492 ; 2 uses
  %i.f = trunc i8 %i.e to i1                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noalias !492 ; 5 uses
  %.not8.i.i = icmp ne ptr %i.h, null
  %.not.not.i.i = select i1 %i.f, i1 %.not8.i.i, i1 false
  br i1 %.not.not.i.i, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !tbaa !31, !noalias !492 ; 2 uses
  store i64 %i.i, ptr %i.b, align 8, !tbaa !77, !alias.scope !492
  %.not7.i.i = icmp eq i64 %i.i, 0
  br i1 %.not7.i.i, label %bb.o, label %bb.c, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.k = load i8, ptr %i.j, align 4, !tbaa !32, !noalias !492 ; 2 uses
  %i.l = icmp eq i8 %i.k, 2
  br i1 %i.l, label %bb.d, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i, !prof !68

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !67, !noalias !492 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !32, !noalias !492
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.o = phi i8 [ %.pre.i.i.i, %bb.d ], [ %i.k, %bb.c ] ; 3 uses
  %.0.i.i.i.i = phi ptr [ %i.n, %bb.d ], [ %i.h, %bb.c ] ; 11 uses
  %i.p = icmp eq i8 %i.o, 3
  br i1 %i.p, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 13
  %i.r = load i8, ptr %i.q, align 1, !tbaa !23, !noalias !492 ; 4 uses
  %i.s = zext i8 %i.r to i32
  store i32 %i.s, ptr %i.d, align 8, !tbaa !73, !alias.scope !492
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 14
  %i.u = load i8, ptr %i.t, align 1, !noalias !492 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 5 uses
  %i.w = zext i8 %i.r to i64                      ; 5 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  store ptr %.0.i.i.i.i, ptr %i.x, align 8, !tbaa !79, !alias.scope !492
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 %i.u, ptr %i.z, align 1, !tbaa !23, !alias.scope !492
  %.018.i.i.i.i.i.i = zext i8 %i.u to i64         ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.e
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.prol = add nsw i64 %i.w, -1 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.018.i.i.i.i.i.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !39, !noalias !492 ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.i.i.i.prol
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !79, !alias.scope !492
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 14
  %i.af = load i8, ptr %i.ae, align 1, !noalias !492 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.i.i.i.i.i.i.prol
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !23, !alias.scope !492
  %.0.i.i.i.i.i.i.prol = zext i8 %i.af to i64     ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.unr = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ah = icmp eq i8 %i.r, 1
  br i1 %i.ah, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i, -1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.021.i.i.i.i.i.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !39, !noalias !492 ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.i.i.i
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !79, !alias.scope !492
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 14
  %i.an = load i8, ptr %i.am, align 1, !noalias !492 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.i.i.i.i.i.i
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !23, !alias.scope !492
  %.0.i.i.i.i.i.i = zext i8 %i.an to i64
  %indvars.iv.next.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i, -2 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.0.i.i.i.i.i.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !39, !noalias !492 ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.i.i.i.1
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !79, !alias.scope !492
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 14
  %i.au = load i8, ptr %i.at, align 1, !noalias !492 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.i.i.i.i.i.i.1
  store i8 %i.au, ptr %i.av, align 1, !tbaa !23, !alias.scope !492
  %.0.i.i.i.i.i.i.1 = zext i8 %i.au to i64        ; 2 uses
  %i.aw = icmp sgt i64 %indvars.iv.i.i.i.i.i.i, 2
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, !llvm.loop !0

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i, %bb.e ], [ %.0.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ]
  %i.ax = load ptr, ptr %i.v, align 8, !tbaa !79, !alias.scope !492
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.0.lcssa.i.i.i.i.i.i
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !39, !noalias !492 ; 5 uses
  %i.bb = load i64, ptr %.0.i.i.i.i, align 8, !tbaa !31, !noalias !492
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !31, !noalias !492 ; 2 uses
  %i.bd = sub i64 %i.bb, %i.bc                    ; 2 uses
  store i64 %i.bd, ptr %i.c, align 8, !tbaa !81, !alias.scope !492
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !32, !noalias !492 ; 2 uses
  %i.bg = icmp eq i8 %i.bf, 1
  br i1 %i.bg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !82, !noalias !492
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !42, !noalias !492 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !32, !noalias !492
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i
  %i.bl = phi i8 [ %.pre.i.i.i.i.i, %bb.f ], [ %i.bf, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %.010.i.i.i.i.i = phi ptr [ %i.bk, %bb.f ], [ %i.ba, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i = phi i64 [ %i.bi, %bb.f ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %i.bm = icmp ugt i8 %i.bl, 5
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !33, !noalias !492
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i

_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.pn.i.i.i.i.i = phi ptr [ %i.bn, %bb.h ], [ %i.bp, %bb.i ]
  %.sroa.3.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 %.0.i.i.i.i.i
  br label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit

bb.j:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i
  store ptr %.0.i.i.i.i, ptr %i.a, align 8, !tbaa !87, !alias.scope !492
  %i.bq = load i64, ptr %.0.i.i.i.i, align 8, !tbaa !31, !noalias !492
  %i.br = icmp eq i8 %i.o, 1
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !82, !noalias !492
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !42, !noalias !492 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !32, !noalias !492
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bw = phi i8 [ %.pre.i.i.i.i, %bb.k ], [ %i.o, %bb.j ]
  %.010.i.i.i.i = phi ptr [ %i.bv, %bb.k ], [ %.0.i.i.i.i, %bb.j ] ; 2 uses
  %.0.i8.i.i.i = phi i64 [ %i.bt, %bb.k ], [ 0, %bb.j ]
  %i.bx = icmp ugt i8 %i.bw, 5
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
end_hunk_0
