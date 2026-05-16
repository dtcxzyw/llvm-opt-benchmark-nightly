inline.NumInlined: 489
inline.NumDeleted: 209
begin_hunk_0_@_ZN4absl12lts_202505124Cord12CharIteratorC2EPKS1_:bb.a
  %.not8.i = icmp ne ptr %i.h, null
  %.not.not.i = select i1 %i.f, i1 %.not8.i, i1 false
  br i1 %.not.not.i, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !tbaa !79   ; 2 uses
  store i64 %i.i, ptr %i.b, align 8, !tbaa !84
  %.not7.i = icmp eq i64 %i.i, 0
  br i1 %.not7.i, label %bb.o, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.k = load i8, ptr %i.j, align 4, !tbaa !89    ; 2 uses
  %i.l = icmp eq i8 %i.k, 2
  br i1 %i.l, label %bb.d, label %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !90   ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 4, !tbaa !89
  br label %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i

_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i: ; preds = %bb.d, %bb.c
  %i.o = phi i8 [ %.pre.i.i, %bb.d ], [ %i.k, %bb.c ] ; 3 uses
  %.0.i.i.i = phi ptr [ %i.n, %bb.d ], [ %i.h, %bb.c ] ; 11 uses
  %i.p = icmp eq i8 %i.o, 3
  br i1 %i.p, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 13
  %i.r = load i8, ptr %i.q, align 1, !tbaa !78    ; 4 uses
  %i.s = zext i8 %i.r to i32
  store i32 %i.s, ptr %i.d, align 8, !tbaa !76
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 14
  %i.u = load i8, ptr %i.t, align 1               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.w = zext i8 %i.r to i64                      ; 5 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  store ptr %.0.i.i.i, ptr %i.x, align 8, !tbaa !94
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 %i.u, ptr %i.z, align 1, !tbaa !78
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
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !78
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
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !78
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
  store i8 %i.au, ptr %i.av, align 1, !tbaa !78
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
  %.010.i.i.i.i = phi i64 [ %i.bi, %bb.f ], [ 0, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i ]
  %.0.i.i.i.i = phi ptr [ %i.bk, %bb.f ], [ %i.ba, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i ] ; 2 uses
  %i.bm = icmp ugt i8 %i.bl, 5
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !102
  br label %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i

_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i: ; preds = %bb.i, %bb.h
  %.pn.i.i.i.i = phi ptr [ %i.bn, %bb.h ], [ %i.bp, %bb.i ]
  %.sroa.3.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 %.010.i.i.i.i
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
  %.010.i.i.i = phi i64 [ %i.bt, %bb.k ], [ 0, %bb.j ]
  %.0.i8.i.i = phi ptr [ %i.bv, %bb.k ], [ %.0.i.i.i, %bb.j ] ; 2 uses
  %i.bx = icmp ugt i8 %i.bw, 5
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i8.i.i, i64 13
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i8.i.i, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !102
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i

_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i: ; preds = %bb.n, %bb.m
  %.pn.i.i.i = phi ptr [ %i.by, %bb.m ], [ %i.ca, %bb.n ]
  %.sroa.3.0.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 %.010.i.i.i
  br label %_ZN4absl12lts_202505124Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i

_ZN4absl12lts_202505124Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i: ; preds = %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i
  %.sink.i.i = phi i64 [ %i.bq, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i ], [ %i.bc, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i ]
  %.sroa.3.0.i.sink.i.i = phi ptr [ %.sroa.3.0.i.i.i, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i ], [ %.sroa.3.0.i.i.i.i, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i ]
  store i64 %.sink.i.i, ptr %0, align 8, !tbaa !115
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0.i.sink.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !55
  br label %_ZN4absl12lts_202505124Cord13ChunkIteratorC2EPKS1_.exit

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 0, i64 16, i1 false)
  br label %_ZN4absl12lts_202505124Cord13ChunkIteratorC2EPKS1_.exit

bb.p:                                             ; preds = %bb.a
  %i.cb = sext i8 %i.e to i64
  %i.cc = lshr i64 %i.cb, 1                       ; 2 uses
  store i64 %i.cc, ptr %i.b, align 8, !tbaa !84
  %i.cd = load i8, ptr %1, align 8, !tbaa !78
  %i.ce = trunc i8 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 1
  %spec.select.i.i = select i1 %i.ce, ptr null, ptr %i.cf
  store i64 %i.cc, ptr %0, align 8, !tbaa !115
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %spec.select.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !55
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
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !119
  %i.e = icmp eq i64 %1, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br i1 %i.e, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.f, align 8, !tbaa !98   ; 4 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4NextEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !94   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 7 uses
  %i.l = load i8, ptr %i.k, align 4, !tbaa !78    ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 15
  %i.o = load i8, ptr %i.n, align 1, !tbaa !78
  %i.p = zext i8 %i.o to i64
  %i.q = add nsw i64 %i.p, -1
  %i.r = icmp eq i64 %i.q, %i.m
  br i1 %i.r, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !76   ; 2 uses
  %smax.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.t, i32 0)
  %wide.trip.count.i.i.i = zext nneg i32 %smax.i.i.i to i64
  %exitcond.not.i.i.i65 = icmp slt i32 %i.t, 1
  br i1 %exitcond.not.i.i.i65, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4NextEv.exit.i, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next38.i.i.i = add nuw i32 %indvars.iv37.i.i.i66, 1
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4NextEv.exit.i, label %.lr.ph, !llvm.loop !104

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %indvars.iv.i.i.i67 = phi i64 [ %indvars.iv.next.i.i.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %indvars.iv37.i.i.i66 = phi i32 [ %indvars.iv.next38.i.i.i, %bb.f ], [ 1, %bb.e ] ; 3 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i67, 1 ; 5 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i.i.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !94   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next.i.i.i
  %i.x = load i8, ptr %i.w, align 1, !tbaa !78
  %i.y = zext i8 %i.x to i64
  %i.z = add nuw nsw i64 %i.y, 1                  ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 15
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !78
  %i.ac = zext i8 %i.ab to i64
  %i.ad = icmp eq i64 %i.z, %i.ac
  br i1 %i.ad, label %bb.f, label %bb.g, !llvm.loop !104

bb.g:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next.i.i.i
  %i.af = trunc i64 %i.z to i8
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !78
  %i.ag = sext i32 %indvars.iv37.i.i.i66 to i64   ; 2 uses
  %i.ah = and i32 %indvars.iv37.i.i.i66, 1
  %lcmp.mod.not = icmp eq i32 %i.ah, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.z
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !96 ; 4 uses
  %indvars.iv.next41.i.i.i.prol = add nsw i64 %i.ag, -1 ; 3 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv.next41.i.i.i.prol
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !94
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 14
  %i.an = load i8, ptr %i.am, align 1, !tbaa !78  ; 2 uses
  %i.ao = zext i8 %i.an to i64                    ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.k, i64 %indvars.iv.next41.i.i.i.prol
  store i8 %i.an, ptr %i.ap, align 1, !tbaa !78
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.g
  %indvars.iv40.i.i.i.unr = phi i64 [ %i.ag, %bb.g ], [ %indvars.iv.next41.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.017.i.i.i.unr = phi ptr [ %i.v, %bb.g ], [ %i.ak, %.prol.loopexit.unr-lcssa ]
  %.016.i.i.i.unr = phi i64 [ %i.z, %bb.g ], [ %i.ao, %.prol.loopexit.unr-lcssa ]
  %.lcssa68.unr = phi ptr [ poison, %bb.g ], [ %i.ak, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi i64 [ poison, %bb.g ], [ %i.ao, %.prol.loopexit.unr-lcssa ]
  %i.aq = icmp eq i64 %indvars.iv.i.i.i67, 0
  br i1 %i.aq, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %indvars.iv40.i.i.i = phi i64 [ %indvars.iv.next41.i.i.i.1, %.new ], [ %indvars.iv40.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.017.i.i.i = phi ptr [ %i.bb, %.new ], [ %.017.i.i.i.unr, %.prol.loopexit ]
  %.016.i.i.i = phi i64 [ %i.bf, %.new ], [ %.016.i.i.i.unr, %.prol.loopexit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.017.i.i.i, i64 16
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.016.i.i.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !96 ; 3 uses
  %indvars.iv.next41.i.i.i = add nsw i64 %indvars.iv40.i.i.i, -1 ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv.next41.i.i.i
  store ptr %i.at, ptr %i.au, align 8, !tbaa !94
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 14
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !78  ; 2 uses
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %i.k, i64 %indvars.iv.next41.i.i.i
  store i8 %i.aw, ptr %i.ay, align 1, !tbaa !78
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !96 ; 4 uses
  %indvars.iv.next41.i.i.i.1 = add nsw i64 %indvars.iv40.i.i.i, -2 ; 3 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv.next41.i.i.i.1
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !94
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 14
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !78  ; 2 uses
  %i.bf = zext i8 %i.be to i64                    ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.k, i64 %indvars.iv.next41.i.i.i.1
  store i8 %i.be, ptr %i.bg, align 1, !tbaa !78
  %i.bh = icmp sgt i64 %indvars.iv40.i.i.i, 2
  br i1 %i.bh, label %.new, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i, !llvm.loop !105

bb.h:                                             ; preds = %bb.d
  %i.bi = add i8 %i.l, 1                          ; 2 uses
  store i8 %i.bi, ptr %i.k, align 4, !tbaa !78
  %i.bj = zext i8 %i.bi to i64
  br label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i

_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i: ; preds = %.new, %.prol.loopexit
  %.lcssa68 = phi ptr [ %.lcssa68.unr, %.prol.loopexit ], [ %i.bb, %.new ]
  %.lcssa = phi i64 [ %.lcssa.unr, %.prol.loopexit ], [ %i.bf, %.new ]
  %.pre.pre.i = load i64, ptr %i.f, align 8, !tbaa !98
  br label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i

_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i: ; preds = %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i, %bb.h
  %.pre.i = phi i64 [ %i.g, %bb.h ], [ %.pre.pre.i, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i ]
  %.lcssa12.sink.i.i = phi ptr [ %i.j, %bb.h ], [ %.lcssa68, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i ]
  %.lcssa.sink.i.i = phi i64 [ %i.bj, %bb.h ], [ %.lcssa, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.lcssa12.sink.i.i, i64 16
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.lcssa.sink.i.i
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !96
  br label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4NextEv.exit.i

_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4NextEv.exit.i: ; preds = %bb.f, %bb.e, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i
  %i.bn = phi i64 [ %.pre.i, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i ], [ %i.g, %bb.e ], [ %i.g, %bb.f ]
  %i.bo = phi ptr [ %i.bm, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i ], [ null, %bb.e ], [ null, %bb.f ] ; 5 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !79 ; 2 uses
  %i.bq = sub i64 %i.bn, %i.bp
  store i64 %i.bq, ptr %i.f, align 8, !tbaa !98
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !89  ; 2 uses
  %i.bt = icmp eq i8 %i.bs, 1
  br i1 %i.bt, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4NextEv.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !99
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !101 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 4, !tbaa !89
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4NextEv.exit.i
  %i.by = phi i8 [ %.pre.i.i, %bb.i ], [ %i.bs, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4NextEv.exit.i ]
  %.010.i.i = phi i64 [ %i.bv, %bb.i ], [ 0, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4NextEv.exit.i ]
  %.0.i.i = phi ptr [ %i.bx, %bb.i ], [ %i.bo, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4NextEv.exit.i ] ; 2 uses
  %i.bz = icmp ugt i8 %i.by, 5
  br i1 %i.bz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 13
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i

bb.l:                                             ; preds = %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !102
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i

_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i: ; preds = %bb.l, %bb.k
  %.pn.i.i = phi ptr [ %i.ca, %bb.k ], [ %i.cc, %bb.l ]
  %.sroa.3.0.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 %.010.i.i
  br label %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4NextEv.exit

_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4NextEv.exit: ; preds = %bb.c, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i
  %.sroa.0.0.i = phi i64 [ %i.bp, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i ], [ 0, %bb.c ]
  %.sroa.3.0.i = phi ptr [ %.sroa.3.0.i.i, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i ], [ null, %bb.c ]
  store i64 %.sroa.0.0.i, ptr %0, align 8, !tbaa !115
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0.i, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !55
  br label %bb.v

bb.m:                                             ; preds = %bb.b
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !76 ; 3 uses
  %i.cf = icmp sgt i32 %i.ce, -1
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ch = zext nneg i32 %i.ce to i64              ; 3 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !94 ; 5 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !79 ; 2 uses
  %i.cl = sub i64 %i.ck, %i.c                     ; 4 uses
  %.not.i.i.not = icmp ugt i64 %i.c, %i.ck
  br i1 %.not.i.i.not, label %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4SeekEm.exit, label %bb.n, !prof !20

bb.n:                                             ; preds = %bb.m
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 14
  %i.cn = load i8, ptr %i.cm, align 2, !tbaa !78
  %i.co = zext i8 %i.cn to i64                    ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.co
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !96
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !79 ; 2 uses
  %.not8.i.i.i = icmp ult i64 %i.cl, %i.cs
  br i1 %.not8.i.i.i, label %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n, %.lr.ph.i.i.i
  %i.ct = phi i64 [ %i.cy, %.lr.ph.i.i.i ], [ %i.cs, %bb.n ]
  %.010.i.i.i = phi i64 [ %i.cu, %.lr.ph.i.i.i ], [ %i.co, %bb.n ]
  %.069.i.i.i = phi i64 [ %i.cv, %.lr.ph.i.i.i ], [ %i.cl, %bb.n ]
  %i.cu = add i64 %.010.i.i.i, 1                  ; 3 uses
  %i.cv = sub nuw i64 %.069.i.i.i, %i.ct          ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cu
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !96
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !79 ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.cv, %i.cy
  br i1 %.not.i.i.i, label %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !148

_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.n
  %.06.lcssa.i.i.i = phi i64 [ %i.cl, %bb.n ], [ %i.cv, %.lr.ph.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i = phi i64 [ %i.co, %bb.n ], [ %i.cu, %.lr.ph.i.i.i ] ; 3 uses
  %i.cz = trunc i64 %.0.lcssa.i.i.i to i8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ch
  store i8 %i.cz, ptr %i.db, align 1, !tbaa !78
  %.not13 = icmp eq i32 %i.ce, 0
  br i1 %.not13, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4SeekEm.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i ], [ %i.ch, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i ] ; 2 uses
  %.sroa.01.039.i.i = phi i64 [ %.0.lcssa.i28.i.i, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i ], [ %.0.lcssa.i.i.i, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i ]
  %.06.lcssa.i.pn38.i.i = phi i64 [ %.06.lcssa.i27.i.i, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i ], [ %.06.lcssa.i.i.i, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i ] ; 3 uses
  %.037.i.i = phi ptr [ %i.de, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i ], [ %i.cj, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.037.i.i, i64 16
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.sroa.01.039.i.i
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !96 ; 5 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.next.i.i
  store ptr %i.de, ptr %i.df, align 8, !tbaa !94
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 14
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !78
  %i.di = zext i8 %i.dh to i64                    ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.di
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !96
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !79 ; 2 uses
  %.not8.i22.i.i = icmp ult i64 %.06.lcssa.i.pn38.i.i, %i.dm
  br i1 %.not8.i22.i.i, label %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i, label %.lr.ph.i23.i.i

.lr.ph.i23.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i23.i.i
  %i.dn = phi i64 [ %i.ds, %.lr.ph.i23.i.i ], [ %i.dm, %.lr.ph.i.i ]
  %.010.i24.i.i = phi i64 [ %i.do, %.lr.ph.i23.i.i ], [ %i.di, %.lr.ph.i.i ]
  %.069.i25.i.i = phi i64 [ %i.dp, %.lr.ph.i23.i.i ], [ %.06.lcssa.i.pn38.i.i, %.lr.ph.i.i ]
  %i.do = add i64 %.010.i24.i.i, 1                ; 3 uses
  %i.dp = sub nuw i64 %.069.i25.i.i, %i.dn        ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.do
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !96
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !79 ; 2 uses
  %.not.i26.i.i = icmp ult i64 %i.dp, %i.ds
  br i1 %.not.i26.i.i, label %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i, label %.lr.ph.i23.i.i, !llvm.loop !148

_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i: ; preds = %.lr.ph.i23.i.i, %.lr.ph.i.i
  %.06.lcssa.i27.i.i = phi i64 [ %.06.lcssa.i.pn38.i.i, %.lr.ph.i.i ], [ %i.dp, %.lr.ph.i23.i.i ] ; 2 uses
  %.0.lcssa.i28.i.i = phi i64 [ %i.di, %.lr.ph.i.i ], [ %i.do, %.lr.ph.i23.i.i ] ; 3 uses
  %i.dt = trunc i64 %.0.lcssa.i28.i.i to i8
  %i.du = getelementptr inbounds nuw i8, ptr %i.da, i64 %indvars.iv.next.i.i
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !78
  %i.dv = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.dv, label %.lr.ph.i.i, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4SeekEm.exit.i, !llvm.loop !149

_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4SeekEm.exit.i: ; preds = %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i
  %.0.lcssa.i.i = phi ptr [ %i.cj, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i ], [ %i.de, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i ]
  %.06.lcssa.i.pn.lcssa.i.i = phi i64 [ %.06.lcssa.i.i.i, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i ], [ %.06.lcssa.i27.i.i, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i ] ; 4 uses
  %.sroa.01.0.lcssa.i.i = phi i64 [ %.0.lcssa.i.i.i, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i ], [ %.0.lcssa.i28.i.i, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 16
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.sroa.01.0.lcssa.i.i
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !96 ; 6 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4SeekEm.exit, label %bb.o, !prof !150

bb.o:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4SeekEm.exit.i
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !79 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  %i.ec = load i8, ptr %i.eb, align 4, !tbaa !89  ; 2 uses
  %i.ed = icmp eq i8 %i.ec, 1
  br i1 %i.ed, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !99
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !101 ; 2 uses
  %.phi.trans.insert.i.i11 = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  %.pre.i.i12 = load i8, ptr %.phi.trans.insert.i.i11, align 4, !tbaa !89
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ei = phi i8 [ %.pre.i.i12, %bb.p ], [ %i.ec, %bb.o ]
  %.010.i.i7 = phi i64 [ %i.ef, %bb.p ], [ 0, %bb.o ]
  %.0.i.i8 = phi ptr [ %i.eh, %bb.p ], [ %i.dy, %bb.o ] ; 2 uses
  %i.ej = icmp ugt i8 %i.ei, 5
  br i1 %i.ej, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.i.i8, i64 13
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i9

bb.s:                                             ; preds = %bb.q
  %i.el = getelementptr inbounds nuw i8, ptr %.0.i.i8, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !102
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i9

_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i9: ; preds = %bb.s, %bb.r
  %.pn.i.i10 = phi ptr [ %i.ek, %bb.r ], [ %i.em, %bb.s ]
  %i.en = icmp ugt i64 %.06.lcssa.i.pn.lcssa.i.i, %i.ea
  br i1 %i.en, label %bb.t, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i

bb.t:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i9
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i64 noundef %.06.lcssa.i.pn.lcssa.i.i, i64 noundef %i.ea) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i9
  %.sroa.3.0.i3.i = getelementptr inbounds nuw i8, ptr %.pn.i.i10, i64 %.010.i.i7
  %i.eo = sub nuw i64 %i.ea, %.06.lcssa.i.pn.lcssa.i.i ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i3.i, i64 %.06.lcssa.i.pn.lcssa.i.i
  %i.eq = load i32, ptr %i.cd, align 8, !tbaa !76 ; 2 uses
  %i.er = icmp sgt i32 %i.eq, -1
  tail call void @llvm.assume(i1 %i.er)
  %i.es = zext nneg i32 %i.eq to i64
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.es
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !94
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !79
  %i.ew = add i64 %i.eo, %i.cl
  %i.ex = sub i64 %i.ev, %i.ew
  br label %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4SeekEm.exit

_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4SeekEm.exit: ; preds = %bb.m, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4SeekEm.exit.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %storemerge.i = phi i64 [ %i.ex, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ], [ 0, %bb.m ], [ 0, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4SeekEm.exit.i ]
  %.sroa.49.0.i = phi ptr [ %i.ep, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ], [ null, %bb.m ], [ null, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4SeekEm.exit.i ]
  %.sroa.08.0.i = phi i64 [ %i.eo, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ], [ 0, %bb.m ], [ 0, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4SeekEm.exit.i ]
  store i64 %storemerge.i, ptr %i.f, align 8, !tbaa !98
  store i64 %.sroa.08.0.i, ptr %0, align 8, !tbaa !115
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.49.0.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !55
  br label %bb.v

bb.u:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4NextEv.exit, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4SeekEm.exit, %bb.u
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #18

declare void @_ZN4absl12lts_202505124Cord13ChunkIterator19AdvanceAndReadBytesEm(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Cord") align 8, ptr noundef nonnull align 8 dereferenceable(152), i64 noundef) local_unnamed_addr #12

declare void @_ZN4absl12lts_202505124Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #12

declare void @_ZN4absl12lts_202505124Cord23GetAppendBufferSlowPathEmmm(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::CordBuffer") align 8, ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #12

declare void @_ZN4absl12lts_202505124Cord9InlineRep10AppendTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #12

declare void @_ZN4absl12lts_202505124Cord13AppendPreciseESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr, i32 noundef) local_unnamed_addr #12

declare void @_ZN4absl12lts_2025051213cord_internal9CordzInfo7UntrackEv(ptr noundef nonnull align 8 dereferenceable(1344)) local_unnamed_addr #12

declare void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #19

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #12

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #12

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

end_hunk_0
