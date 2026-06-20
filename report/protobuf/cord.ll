inline.NumInlined: 1703
inline.NumDeleted: 496
begin_hunk_0_@_ZN4absl12lts_2025051214GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS0_4CordERKT0_m:bb.a
  %i.p = phi i8 [ %.pre.i.i, %bb.c ], [ %i.l, %bb.b ] ; 3 uses
  %.0.i28.i.i = phi ptr [ %i.o, %bb.c ], [ %i.d, %bb.b ] ; 12 uses
  %i.q = icmp ugt i8 %i.p, 5
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i28.i.i, i64 13
  %i.s = load i64, ptr %.0.i28.i.i, align 8, !tbaa !22
  br label %_ZN4absl12lts_202505124Cord13GetFirstChunkERKS1_.exit

bb.e:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i
  switch i8 %i.p, label %bb.l [
    i8 5, label %bb.f
    i8 3, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i28.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !24
  %i.v = load i64, ptr %.0.i28.i.i, align 8, !tbaa !22
  br label %_ZN4absl12lts_202505124Cord13GetFirstChunkERKS1_.exit

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i28.i.i, i64 13
  %i.x = load i8, ptr %i.w, align 1, !tbaa !14    ; 3 uses
  %.not.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %i.y = zext i8 %i.x to i32                      ; 3 uses
  %xtraiter = and i32 %i.y, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %.02530.i.i.prol = phi i32 [ %i.z, %.lr.ph.i.i.prol ], [ %i.y, %.lr.ph.preheader.i.i ]
  %.02629.i.i.prol = phi ptr [ %i.af, %.lr.ph.i.i.prol ], [ %.0.i28.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.z = add nsw i32 %.02530.i.i.prol, -1         ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.02629.i.i.prol, i64 14
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %.02629.i.i.prol, i64 16
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ac
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !29 ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !480

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %.02530.i.i.unr = phi i32 [ %i.y, %.lr.ph.preheader.i.i ], [ %i.z, %.lr.ph.i.i.prol ]
  %.02629.i.i.unr = phi ptr [ %.0.i28.i.i, %.lr.ph.preheader.i.i ], [ %i.af, %.lr.ph.i.i.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader.i.i ], [ %i.af, %.lr.ph.i.i.prol ]
  %i.ag = icmp ult i8 %i.x, 8
  br i1 %i.ag, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.02530.i.i = phi i32 [ %i.bx, %.lr.ph.i.i ], [ %.02530.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.02629.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %.02629.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 14
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 16
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !29 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 14
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ap
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !29 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 14
  %i.au = load i8, ptr %i.at, align 1
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !29 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 14
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bb
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !29 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 14
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !29 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 14
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bn
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !29 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 14
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !29 ; 2 uses
  %i.bx = add nsw i32 %.02530.i.i, -8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 14
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ca
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !29 ; 2 uses
  %i.ce = icmp sgt i32 %.02530.i.i, 8
  br i1 %i.ce, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !152

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %.026.lcssa.i.i = phi ptr [ %.0.i28.i.i, %bb.g ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.cd, %.lr.ph.i.i ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.026.lcssa.i.i, i64 14
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !14
  %i.ch = zext i8 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %.026.lcssa.i.i, i64 16
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ch
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !29 ; 5 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !22
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %i.cn = load i8, ptr %i.cm, align 4, !tbaa !23  ; 2 uses
  %i.co = icmp eq i8 %i.cn, 1
  br i1 %i.co, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !111
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !32 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i
  %i.ct = phi i8 [ %.pre.i.i.i.i, %bb.h ], [ %i.cn, %._crit_edge.i.i ]
  %.010.i.i.i.i = phi i64 [ %i.cq, %bb.h ], [ 0, %._crit_edge.i.i ]
  %.0.i.i.i.i = phi ptr [ %i.cs, %bb.h ], [ %i.ck, %._crit_edge.i.i ] ; 2 uses
  %i.cu = icmp ugt i8 %i.ct, 5
  br i1 %i.cu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 13
  br label %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree4DataEm.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !24
  br label %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree4DataEm.exit.i.i

_ZNK4absl12lts_2025051213cord_internal12CordRepBtree4DataEm.exit.i.i: ; preds = %bb.k, %bb.j
  %.pn.i.i.i.i = phi ptr [ %i.cv, %bb.j ], [ %i.cx, %bb.k ]
  %.sroa.3.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 %.010.i.i.i.i
  br label %_ZN4absl12lts_202505124Cord13GetFirstChunkERKS1_.exit

bb.l:                                             ; preds = %bb.e
  %i.cy = load i64, ptr %.0.i28.i.i, align 8, !tbaa !22 ; 2 uses
  %i.cz = icmp eq i8 %i.p, 1
  br i1 %i.cz, label %bb.m, label %.thread.i.i

bb.m:                                             ; preds = %bb.l
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i28.i.i, i64 16
  %i.db = load i64, ptr %i.da, align 8, !tbaa !111 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i28.i.i, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !32 ; 3 uses
  %.phi.trans.insert31.i.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  %.pre32.i.i = load i8, ptr %.phi.trans.insert31.i.i, align 4, !tbaa !23
  %i.de = icmp ugt i8 %.pre32.i.i, 5
  br i1 %i.de, label %bb.n, label %.thread.i.i

bb.n:                                             ; preds = %bb.m
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 13
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.db
  br label %_ZN4absl12lts_202505124Cord13GetFirstChunkERKS1_.exit

.thread.i.i:                                      ; preds = %bb.m, %bb.l
  %.039.i.i = phi ptr [ %i.dd, %bb.m ], [ %.0.i28.i.i, %bb.l ]
  %.02438.i.i = phi i64 [ %i.db, %bb.m ], [ 0, %bb.l ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.039.i.i, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %.02438.i.i
  br label %_ZN4absl12lts_202505124Cord13GetFirstChunkERKS1_.exit

_ZN4absl12lts_202505124Cord13GetFirstChunkERKS1_.exit: ; preds = %_ZNK4absl12lts_202505124Cord5emptyEv.exit.i, %_ZNK4absl12lts_202505124Cord5emptyEv.exit.thread.i, %.thread.i, %bb.d, %bb.f, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree4DataEm.exit.i.i, %bb.n, %.thread.i.i
  %.sroa.0.0.i = phi i64 [ 0, %_ZNK4absl12lts_202505124Cord5emptyEv.exit.thread.i ], [ 0, %_ZNK4absl12lts_202505124Cord5emptyEv.exit.i ], [ %i.s, %bb.d ], [ %i.v, %bb.f ], [ %i.cl, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree4DataEm.exit.i.i ], [ %i.cy, %bb.n ], [ %i.cy, %.thread.i.i ], [ %i.j, %.thread.i ]
  %.sroa.3.0.i = phi ptr [ null, %_ZNK4absl12lts_202505124Cord5emptyEv.exit.thread.i ], [ null, %_ZNK4absl12lts_202505124Cord5emptyEv.exit.i ], [ %i.r, %bb.d ], [ %i.u, %bb.f ], [ %.sroa.3.0.i.i.i.i, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree4DataEm.exit.i.i ], [ %i.dg, %bb.n ], [ %i.dj, %.thread.i.i ], [ %i.h, %.thread.i ]
  %.sroa.07.0.copyload = load i64, ptr %1, align 8, !tbaa !125 ; 2 uses
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.28.0.copyload = load ptr, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !130 ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.sroa.07.0.copyload, i64 %.sroa.0.0.i) ; 4 uses
  %.not = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN4absl12lts_202505124Cord13GetFirstChunkERKS1_.exit
  %i.dk = tail call i32 @memcmp(ptr noundef %.sroa.3.0.i, ptr noundef %.sroa.28.0.copyload, i64 noundef %.sroa.speculated) #27
  br label %bb.p

bb.p:                                             ; preds = %_ZN4absl12lts_202505124Cord13GetFirstChunkERKS1_.exit, %bb.o
  %i.dl = phi i32 [ %i.dk, %bb.o ], [ 0, %_ZN4absl12lts_202505124Cord13GetFirstChunkERKS1_.exit ] ; 2 uses
  %i.dm = icmp eq i64 %.sroa.speculated, %2
  %i.dn = icmp ne i32 %i.dl, 0                    ; 2 uses
  %or.cond = select i1 %i.dm, i1 true, i1 %i.dn
  br i1 %or.cond, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.do = tail call noundef i32 @_ZNK4absl12lts_202505124Cord15CompareSlowPathESt17basic_string_viewIcSt11char_traitsIcEEmm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %.sroa.07.0.copyload, ptr %.sroa.28.0.copyload, i64 noundef %.sroa.speculated, i64 noundef %2) ; 2 uses
  %isnotnull.i.i20 = icmp ne i32 %i.do, 0
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %isnotnull.i.i20.sink = phi i1 [ %isnotnull.i.i20, %bb.q ], [ %i.dn, %bb.p ]
  %.lobit.neg.i.i19.sink.in = phi i32 [ %i.do, %bb.q ], [ %i.dl, %bb.p ]
  %.lobit.neg.i.i19.sink = ashr i32 %.lobit.neg.i.i19.sink.in, 31
  %isnotnull.zext.i.i21 = zext i1 %isnotnull.i.i20.sink to i32
  %3 = or i32 %.lobit.neg.i.i19.sink, %isnotnull.zext.i.i21
  ret i32 %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN4absl12lts_2025051214GenericCompareIiNS0_4CordEEET_RKS2_RKT0_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !14      ; 3 uses
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %_ZNK4absl12lts_202505124Cord5emptyEv.exit.i, label %_ZNK4absl12lts_202505124Cord5emptyEv.exit.thread.i

_ZNK4absl12lts_202505124Cord5emptyEv.exit.i:      ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !22
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN4absl12lts_202505124Cord13GetFirstChunkERKS1_.exit, label %bb.b

_ZNK4absl12lts_202505124Cord5emptyEv.exit.thread.i: ; preds = %bb.a
  %i.g = icmp eq i8 %i.a, 0
  br i1 %i.g, label %_ZN4absl12lts_202505124Cord13GetFirstChunkERKS1_.exit, label %.thread.i

.thread.i:                                        ; preds = %_ZNK4absl12lts_202505124Cord5emptyEv.exit.thread.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.i = sext i8 %i.a to i64
  %i.j = lshr exact i64 %i.i, 1
  br label %_ZN4absl12lts_202505124Cord13GetFirstChunkERKS1_.exit

bb.b:                                             ; preds = %_ZNK4absl12lts_202505124Cord5emptyEv.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.l = load i8, ptr %i.k, align 4, !tbaa !23    ; 2 uses
  %i.m = icmp eq i8 %i.l, 2
  br i1 %i.m, label %bb.c, label %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i, !prof !59

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !55   ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 4, !tbaa !23
  br label %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i

_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i: ; preds = %bb.c, %bb.b
  %i.p = phi i8 [ %.pre.i.i, %bb.c ], [ %i.l, %bb.b ] ; 3 uses
  %.0.i28.i.i = phi ptr [ %i.o, %bb.c ], [ %i.d, %bb.b ] ; 12 uses
  %i.q = icmp ugt i8 %i.p, 5
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i28.i.i, i64 13
  %i.s = load i64, ptr %.0.i28.i.i, align 8, !tbaa !22
  br label %_ZN4absl12lts_202505124Cord13GetFirstChunkERKS1_.exit

bb.e:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i
  switch i8 %i.p, label %bb.l [
    i8 5, label %bb.f
    i8 3, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i28.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !24
  %i.v = load i64, ptr %.0.i28.i.i, align 8, !tbaa !22
  br label %_ZN4absl12lts_202505124Cord13GetFirstChunkERKS1_.exit

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i28.i.i, i64 13
  %i.x = load i8, ptr %i.w, align 1, !tbaa !14    ; 3 uses
  %.not.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %i.y = zext i8 %i.x to i32                      ; 3 uses
  %xtraiter = and i32 %i.y, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %.02530.i.i.prol = phi i32 [ %i.z, %.lr.ph.i.i.prol ], [ %i.y, %.lr.ph.preheader.i.i ]
  %.02629.i.i.prol = phi ptr [ %i.af, %.lr.ph.i.i.prol ], [ %.0.i28.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.z = add nsw i32 %.02530.i.i.prol, -1         ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.02629.i.i.prol, i64 14
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %.02629.i.i.prol, i64 16
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ac
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !29 ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !481

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %.02530.i.i.unr = phi i32 [ %i.y, %.lr.ph.preheader.i.i ], [ %i.z, %.lr.ph.i.i.prol ]
  %.02629.i.i.unr = phi ptr [ %.0.i28.i.i, %.lr.ph.preheader.i.i ], [ %i.af, %.lr.ph.i.i.prol ]
  %.lcssa69.unr = phi ptr [ poison, %.lr.ph.preheader.i.i ], [ %i.af, %.lr.ph.i.i.prol ]
  %i.ag = icmp ult i8 %i.x, 8
  br i1 %i.ag, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.02530.i.i = phi i32 [ %i.bx, %.lr.ph.i.i ], [ %.02530.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.02629.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %.02629.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 14
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 16
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !29 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 14
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ap
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !29 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 14
  %i.au = load i8, ptr %i.at, align 1
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !29 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 14
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bb
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !29 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 14
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !29 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 14
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bn
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !29 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 14
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !29 ; 2 uses
  %i.bx = add nsw i32 %.02530.i.i, -8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 14
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ca
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !29 ; 2 uses
  %i.ce = icmp sgt i32 %.02530.i.i, 8
  br i1 %i.ce, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !152

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %.026.lcssa.i.i = phi ptr [ %.0.i28.i.i, %bb.g ], [ %.lcssa69.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.cd, %.lr.ph.i.i ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.026.lcssa.i.i, i64 14
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !14
  %i.ch = zext i8 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %.026.lcssa.i.i, i64 16
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ch
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !29 ; 5 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !22
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %i.cn = load i8, ptr %i.cm, align 4, !tbaa !23  ; 2 uses
  %i.co = icmp eq i8 %i.cn, 1
  br i1 %i.co, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !111
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !32 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i
  %i.ct = phi i8 [ %.pre.i.i.i.i, %bb.h ], [ %i.cn, %._crit_edge.i.i ]
  %.010.i.i.i.i = phi i64 [ %i.cq, %bb.h ], [ 0, %._crit_edge.i.i ]
  %.0.i.i.i.i = phi ptr [ %i.cs, %bb.h ], [ %i.ck, %._crit_edge.i.i ] ; 2 uses
  %i.cu = icmp ugt i8 %i.ct, 5
  br i1 %i.cu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 13
  br label %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree4DataEm.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !24
  br label %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree4DataEm.exit.i.i

_ZNK4absl12lts_2025051213cord_internal12CordRepBtree4DataEm.exit.i.i: ; preds = %bb.k, %bb.j
  %.pn.i.i.i.i = phi ptr [ %i.cv, %bb.j ], [ %i.cx, %bb.k ]
  %.sroa.3.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 %.010.i.i.i.i
  br label %_ZN4absl12lts_202505124Cord13GetFirstChunkERKS1_.exit

bb.l:                                             ; preds = %bb.e
  %i.cy = load i64, ptr %.0.i28.i.i, align 8, !tbaa !22 ; 2 uses
  %i.cz = icmp eq i8 %i.p, 1
  br i1 %i.cz, label %bb.m, label %.thread.i.i
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051214GenericCompareIiNS0_4CordEEET_RKS2_RKT0_m:bb.a
  br label %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i22

_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i22: ; preds = %bb.p, %bb.o
  %i.dz = phi i8 [ %.pre.i.i44, %bb.p ], [ %i.dv, %bb.o ] ; 3 uses
  %.0.i28.i.i23 = phi ptr [ %i.dy, %bb.p ], [ %i.dn, %bb.o ] ; 12 uses
  %i.ea = icmp ugt i8 %i.dz, 5
  br i1 %i.ea, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i22
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.i28.i.i23, i64 13
  %i.ec = load i64, ptr %.0.i28.i.i23, align 8, !tbaa !22
  br label %_ZN4absl12lts_202505124Cord13GetFirstChunkERKS1_.exit45

bb.r:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i22
  switch i8 %i.dz, label %bb.y [
    i8 5, label %bb.s
    i8 3, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.i28.i.i23, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !24
  %i.ef = load i64, ptr %.0.i28.i.i23, align 8, !tbaa !22
  br label %_ZN4absl12lts_202505124Cord13GetFirstChunkERKS1_.exit45

bb.t:                                             ; preds = %bb.r
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.i28.i.i23, i64 13
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !14  ; 3 uses
  %.not.i.i24 = icmp eq i8 %i.eh, 0
  br i1 %.not.i.i24, label %._crit_edge.i.i29, label %.lr.ph.preheader.i.i25

.lr.ph.preheader.i.i25:                           ; preds = %bb.t
  %i.ei = zext i8 %i.eh to i32                    ; 3 uses
  %xtraiter70 = and i32 %i.ei, 7                  ; 2 uses
  %lcmp.mod71.not = icmp eq i32 %xtraiter70, 0
  br i1 %lcmp.mod71.not, label %.lr.ph.i.i26.prol.loopexit, label %.lr.ph.i.i26.prol

.lr.ph.i.i26.prol:                                ; preds = %.lr.ph.preheader.i.i25, %.lr.ph.i.i26.prol
  %.02530.i.i27.prol = phi i32 [ %i.ej, %.lr.ph.i.i26.prol ], [ %i.ei, %.lr.ph.preheader.i.i25 ]
  %.02629.i.i28.prol = phi ptr [ %i.ep, %.lr.ph.i.i26.prol ], [ %.0.i28.i.i23, %.lr.ph.preheader.i.i25 ] ; 2 uses
  %prol.iter72 = phi i32 [ %prol.iter72.next, %.lr.ph.i.i26.prol ], [ 0, %.lr.ph.preheader.i.i25 ]
  %i.ej = add nsw i32 %.02530.i.i27.prol, -1      ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.02629.i.i28.prol, i64 14
  %i.el = load i8, ptr %i.ek, align 1
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %.02629.i.i28.prol, i64 16
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.em
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !29 ; 3 uses
  %prol.iter72.next = add i32 %prol.iter72, 1     ; 2 uses
  %prol.iter72.cmp.not = icmp eq i32 %prol.iter72.next, %xtraiter70
  br i1 %prol.iter72.cmp.not, label %.lr.ph.i.i26.prol.loopexit, label %.lr.ph.i.i26.prol, !llvm.loop !482

.lr.ph.i.i26.prol.loopexit:                       ; preds = %.lr.ph.i.i26.prol, %.lr.ph.preheader.i.i25
  %.02530.i.i27.unr = phi i32 [ %i.ei, %.lr.ph.preheader.i.i25 ], [ %i.ej, %.lr.ph.i.i26.prol ]
  %.02629.i.i28.unr = phi ptr [ %.0.i28.i.i23, %.lr.ph.preheader.i.i25 ], [ %i.ep, %.lr.ph.i.i26.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader.i.i25 ], [ %i.ep, %.lr.ph.i.i26.prol ]
  %i.eq = icmp ult i8 %i.eh, 8
  br i1 %i.eq, label %._crit_edge.i.i29, label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %.lr.ph.i.i26.prol.loopexit, %.lr.ph.i.i26
  %.02530.i.i27 = phi i32 [ %i.gh, %.lr.ph.i.i26 ], [ %.02530.i.i27.unr, %.lr.ph.i.i26.prol.loopexit ] ; 2 uses
  %.02629.i.i28 = phi ptr [ %i.gn, %.lr.ph.i.i26 ], [ %.02629.i.i28.unr, %.lr.ph.i.i26.prol.loopexit ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.02629.i.i28, i64 14
  %i.es = load i8, ptr %i.er, align 1
  %i.et = zext i8 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %.02629.i.i28, i64 16
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.et
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !29 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 14
  %i.ey = load i8, ptr %i.ex, align 1
  %i.ez = zext i8 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ez
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !29 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 14
  %i.fe = load i8, ptr %i.fd, align 1
  %i.ff = zext i8 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.ff
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !29 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 14
  %i.fk = load i8, ptr %i.fj, align 1
  %i.fl = zext i8 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fl
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !29 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 14
  %i.fq = load i8, ptr %i.fp, align 1
  %i.fr = zext i8 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.fr
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !29 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 14
  %i.fw = load i8, ptr %i.fv, align 1
  %i.fx = zext i8 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.fx
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !29 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 14
  %i.gc = load i8, ptr %i.gb, align 1
  %i.gd = zext i8 %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.gd
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !29 ; 2 uses
  %i.gh = add nsw i32 %.02530.i.i27, -8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 14
  %i.gj = load i8, ptr %i.gi, align 1
  %i.gk = zext i8 %i.gj to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.gk
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !29 ; 2 uses
  %i.go = icmp sgt i32 %.02530.i.i27, 8
  br i1 %i.go, label %.lr.ph.i.i26, label %._crit_edge.i.i29, !llvm.loop !152

._crit_edge.i.i29:                                ; preds = %.lr.ph.i.i26.prol.loopexit, %.lr.ph.i.i26, %bb.t
  %.026.lcssa.i.i30 = phi ptr [ %.0.i28.i.i23, %bb.t ], [ %.lcssa.unr, %.lr.ph.i.i26.prol.loopexit ], [ %i.gn, %.lr.ph.i.i26 ] ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.026.lcssa.i.i30, i64 14
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !14
  %i.gr = zext i8 %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %.026.lcssa.i.i30, i64 16
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.gr
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !29 ; 5 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !22
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 12
  %i.gx = load i8, ptr %i.gw, align 4, !tbaa !23  ; 2 uses
  %i.gy = icmp eq i8 %i.gx, 1
  br i1 %i.gy, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i29
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !111
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !32 ; 2 uses
  %.phi.trans.insert.i.i.i.i36 = getelementptr inbounds nuw i8, ptr %i.hc, i64 12
  %.pre.i.i.i.i37 = load i8, ptr %.phi.trans.insert.i.i.i.i36, align 4, !tbaa !23
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i.i29
  %i.hd = phi i8 [ %.pre.i.i.i.i37, %bb.u ], [ %i.gx, %._crit_edge.i.i29 ]
  %.010.i.i.i.i31 = phi i64 [ %i.ha, %bb.u ], [ 0, %._crit_edge.i.i29 ]
  %.0.i.i.i.i32 = phi ptr [ %i.hc, %bb.u ], [ %i.gu, %._crit_edge.i.i29 ] ; 2 uses
  %i.he = icmp ugt i8 %i.hd, 5
  br i1 %i.he, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.hf = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i32, i64 13
  br label %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree4DataEm.exit.i.i33

bb.x:                                             ; preds = %bb.v
  %i.hg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i32, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !24
  br label %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree4DataEm.exit.i.i33

_ZNK4absl12lts_2025051213cord_internal12CordRepBtree4DataEm.exit.i.i33: ; preds = %bb.x, %bb.w
  %.pn.i.i.i.i34 = phi ptr [ %i.hf, %bb.w ], [ %i.hh, %bb.x ]
  %.sroa.3.0.i.i.i.i35 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i34, i64 %.010.i.i.i.i31
  br label %_ZN4absl12lts_202505124Cord13GetFirstChunkERKS1_.exit45

bb.y:                                             ; preds = %bb.r
  %i.hi = load i64, ptr %.0.i28.i.i23, align 8, !tbaa !22 ; 2 uses
  %i.hj = icmp eq i8 %i.dz, 1
  br i1 %i.hj, label %bb.z, label %.thread.i.i38

bb.z:                                             ; preds = %bb.y
  %i.hk = getelementptr inbounds nuw i8, ptr %.0.i28.i.i23, i64 16
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !111 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.0.i28.i.i23, i64 24
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !32 ; 3 uses
  %.phi.trans.insert31.i.i41 = getelementptr inbounds nuw i8, ptr %i.hn, i64 12
  %.pre32.i.i42 = load i8, ptr %.phi.trans.insert31.i.i41, align 4, !tbaa !23
  %i.ho = icmp ugt i8 %.pre32.i.i42, 5
  br i1 %i.ho, label %bb.aa, label %.thread.i.i38

bb.aa:                                            ; preds = %bb.z
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 13
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hl
  br label %_ZN4absl12lts_202505124Cord13GetFirstChunkERKS1_.exit45

.thread.i.i38:                                    ; preds = %bb.z, %bb.y
  %.039.i.i39 = phi ptr [ %i.hn, %bb.z ], [ %.0.i28.i.i23, %bb.y ]
  %.02438.i.i40 = phi i64 [ %i.hl, %bb.z ], [ 0, %bb.y ]
  %i.hr = getelementptr inbounds nuw i8, ptr %.039.i.i39, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !24
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %.02438.i.i40
  br label %_ZN4absl12lts_202505124Cord13GetFirstChunkERKS1_.exit45

_ZN4absl12lts_202505124Cord13GetFirstChunkERKS1_.exit45: ; preds = %_ZNK4absl12lts_202505124Cord5emptyEv.exit.i21, %_ZNK4absl12lts_202505124Cord5emptyEv.exit.thread.i15, %.thread.i16, %bb.q, %bb.s, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree4DataEm.exit.i.i33, %bb.aa, %.thread.i.i38
  %.sroa.0.0.i17 = phi i64 [ 0, %_ZNK4absl12lts_202505124Cord5emptyEv.exit.thread.i15 ], [ 0, %_ZNK4absl12lts_202505124Cord5emptyEv.exit.i21 ], [ %i.ec, %bb.q ], [ %i.ef, %bb.s ], [ %i.gv, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree4DataEm.exit.i.i33 ], [ %i.hi, %bb.aa ], [ %i.hi, %.thread.i.i38 ], [ %i.dt, %.thread.i16 ]
  %.sroa.3.0.i18 = phi ptr [ null, %_ZNK4absl12lts_202505124Cord5emptyEv.exit.thread.i15 ], [ null, %_ZNK4absl12lts_202505124Cord5emptyEv.exit.i21 ], [ %i.eb, %bb.q ], [ %i.ee, %bb.s ], [ %.sroa.3.0.i.i.i.i35, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree4DataEm.exit.i.i33 ], [ %i.hq, %bb.aa ], [ %i.ht, %.thread.i.i38 ], [ %i.dr, %.thread.i16 ]
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.i17, i64 %.sroa.0.0.i) ; 4 uses
  %.not = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN4absl12lts_202505124Cord13GetFirstChunkERKS1_.exit45
  %i.hu = tail call i32 @memcmp(ptr noundef %.sroa.3.0.i, ptr noundef %.sroa.3.0.i18, i64 noundef %.sroa.speculated) #27
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4absl12lts_202505124Cord13GetFirstChunkERKS1_.exit45, %bb.ab
  %i.hv = phi i32 [ %i.hu, %bb.ab ], [ 0, %_ZN4absl12lts_202505124Cord13GetFirstChunkERKS1_.exit45 ] ; 2 uses
  %i.hw = icmp eq i64 %.sroa.speculated, %2
  %i.hx = icmp ne i32 %i.hv, 0                    ; 2 uses
  %or.cond = select i1 %i.hw, i1 true, i1 %i.hx
  br i1 %or.cond, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hy = tail call noundef i32 @_ZNK4absl12lts_202505124Cord15CompareSlowPathERKS1_mm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.sroa.speculated, i64 noundef %2) ; 2 uses
  %isnotnull.i.i47 = icmp ne i32 %i.hy, 0
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %isnotnull.i.i47.sink = phi i1 [ %isnotnull.i.i47, %bb.ad ], [ %i.hx, %bb.ac ]
  %.lobit.neg.i.i46.sink.in = phi i32 [ %i.hy, %bb.ad ], [ %i.hv, %bb.ac ]
  %.lobit.neg.i.i46.sink = ashr i32 %.lobit.neg.i.i46.sink.in, 31
  %isnotnull.zext.i.i48 = zext i1 %isnotnull.i.i47.sink to i32
  %3 = or i32 %.lobit.neg.i.i46.sink, %isnotnull.zext.i.i48
  ret i32 %3
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4absl12lts_2025051213cord_internal19CordRepExternalImplIZNS0_4Cord15FlattenSlowPathEvE3$_0E7ReleaseEPNS1_15CordRepExternalE"(ptr noundef %0) #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.b, align 8
  tail call void @_ZdlPvm(ptr noundef %.val1, i64 noundef %.val) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }
attributes #23 = { allocsize(0) }
attributes #24 = { nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { noreturn }
attributes #27 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !12, i64 8}
!8 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0, !12, i64 8, !5, i64 16}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!8, !10, i64 0}
!14 = !{!5, !5, i64 0}
!15 = !{!16, !4, i64 0}
!16 = !{!"_ZTSSt13__atomic_baseIiE", !4, i64 0}
!17 = !{!18, !11, i64 24}
!18 = !{!"_ZTSN4absl12lts_2025051213cord_internal15CordRepExternalE", !19, i64 0, !10, i64 16, !11, i64 24}
!19 = !{!"_ZTSN4absl12lts_2025051213cord_internal7CordRepE", !12, i64 0, !20, i64 8, !5, i64 12, !5, i64 13}
!20 = !{!"_ZTSN4absl12lts_2025051213cord_internal16RefcountAndFlagsE", !21, i64 0}
!21 = !{!"_ZTSSt6atomicIiE", !16, i64 0}
!22 = !{!19, !12, i64 0}
!23 = !{!19, !5, i64 12}
!24 = !{!18, !10, i64 16}
!25 = !{!26, !12, i64 0}
!26 = !{!"_ZTSN4absl12lts_2025051213cord_internal13SamplingStateE", !12, i64 0, !12, i64 8}
!27 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!28 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"p1 _ZTSN4absl12lts_2025051213cord_internal7CordRepE", !11, i64 0}
!31 = !{!"branch_weights", i32 2146410443, i32 1073205}
!32 = !{!33, !30, i64 24}
!33 = !{!"_ZTSN4absl12lts_2025051213cord_internal16CordRepSubstringE", !19, i64 0, !12, i64 16, !30, i64 24}
!34 = !{!"branch_weights", !"expected", i32 2146409906, i32 1073742}
!35 = !{!36, !37, i64 0}
!36 = !{!"_ZTSN4absl12lts_2025051213cord_internal16CordzUpdateScopeE", !37, i64 0}
!37 = !{!"p1 _ZTSN4absl12lts_2025051213cord_internal9CordzInfoE", !11, i64 0}
!38 = !{!39, !30, i64 64}
!39 = !{!"_ZTSN4absl12lts_2025051213cord_internal9CordzInfoE", !40, i64 0, !43, i64 32, !44, i64 40, !44, i64 48, !46, i64 56, !30, i64 64, !5, i64 72, !5, i64 584, !12, i64 1096, !12, i64 1104, !49, i64 1112, !49, i64 1116, !50, i64 1120, !51, i64 1320, !12, i64 1336}
!40 = !{!"_ZTSN4absl12lts_2025051213cord_internal11CordzHandleE", !41, i64 8, !42, i64 16, !42, i64 24}
!41 = !{!"bool", !5, i64 0}
!42 = !{!"p1 _ZTSN4absl12lts_2025051213cord_internal11CordzHandleE", !11, i64 0}
!43 = !{!"p1 _ZTSN4absl12lts_2025051213cord_internal9CordzInfo4ListE", !11, i64 0}
!44 = !{!"_ZTSSt6atomicIPN4absl12lts_2025051213cord_internal9CordzInfoEE", !45, i64 0}
!45 = !{!"_ZTSSt13__atomic_baseIPN4absl12lts_2025051213cord_internal9CordzInfoEE", !37, i64 0}
!46 = !{!"_ZTSN4absl12lts_202505125MutexE", !47, i64 0}
!47 = !{!"_ZTSSt6atomicIlE", !48, i64 0}
!48 = !{!"_ZTSSt13__atomic_baseIlE", !12, i64 0}
!49 = !{!"_ZTSN4absl12lts_2025051213cord_internal18CordzUpdateTracker16MethodIdentifierE", !5, i64 0}
!50 = !{!"_ZTSN4absl12lts_2025051213cord_internal18CordzUpdateTrackerE", !5, i64 0}
!51 = !{!"_ZTSN4absl12lts_202505124TimeE", !52, i64 0}
!52 = !{!"_ZTSN4absl12lts_202505128DurationE", !53, i64 0, !4, i64 8}
!53 = !{!"_ZTSN4absl12lts_202505128Duration5HiRepE", !4, i64 0, !4, i64 4}
!54 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!55 = !{!56, !30, i64 16}
!56 = !{!"_ZTSN4absl12lts_2025051213cord_internal10CordRepCrcE", !19, i64 0, !30, i64 16, !57, i64 24}
!57 = !{!"_ZTSN4absl12lts_2025051212crc_internal12CrcCordStateE", !58, i64 0}
!58 = !{!"p1 _ZTSN4absl12lts_2025051212crc_internal12CrcCordState13RefcountedRepE", !11, i64 0}
!59 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!60 = !{}
!61 = !{i64 0, i64 16, !14}
!62 = !{!"branch_weights", !"expected", i32 2146410444, i32 1073204}
!63 = !{!64, !65, i64 0}
!64 = !{!"_ZTSN4absl12lts_2025051210CordBuffer3Rep4LongE", !65, i64 0, !11, i64 8}
!65 = !{!"p1 _ZTSN4absl12lts_2025051213cord_internal11CordRepFlatE", !11, i64 0}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZN4absl12lts_2025051210CordBuffer21CreateWithCustomLimitEmm: argument 0"}
!68 = distinct !{!68, !"_ZN4absl12lts_2025051210CordBuffer21CreateWithCustomLimitEmm"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZN4absl12lts_2025051210CordBuffer25CreateWithCustomLimitImplIJEEES1_mmDpT_: argument 0"}
!71 = distinct !{!71, !"_ZN4absl12lts_2025051210CordBuffer25CreateWithCustomLimitImplIJEEES1_mmDpT_"}
!72 = !{!70, !67}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZN4absl12lts_2025051210CordBuffer22CreateWithDefaultLimitEm: argument 0"}
!75 = distinct !{!75, !"_ZN4absl12lts_2025051210CordBuffer22CreateWithDefaultLimitEm"}
!76 = !{!77, !5, i64 0}
!77 = !{!"_ZTSN4absl12lts_2025051210CordBuffer3Rep5ShortE", !5, i64 0, !5, i64 1}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZN4absl12lts_20250512L18CreateAppendBufferERNS0_13cord_internal10InlineDataEmm: argument 0"}
!80 = distinct !{!80, !"_ZN4absl12lts_20250512L18CreateAppendBufferERNS0_13cord_internal10InlineDataEmm"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZN4absl12lts_2025051210CordBuffer21CreateWithCustomLimitEmm: argument 0"}
!83 = distinct !{!83, !"_ZN4absl12lts_2025051210CordBuffer21CreateWithCustomLimitEmm"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZN4absl12lts_2025051210CordBuffer25CreateWithCustomLimitImplIJEEES1_mmDpT_: argument 0"}
!86 = distinct !{!86, !"_ZN4absl12lts_2025051210CordBuffer25CreateWithCustomLimitImplIJEEES1_mmDpT_"}
!87 = !{!85, !82, !79}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZN4absl12lts_2025051210CordBuffer22CreateWithDefaultLimitEm: argument 0"}
!90 = distinct !{!90, !"_ZN4absl12lts_2025051210CordBuffer22CreateWithDefaultLimitEm"}
!91 = !{!89, !79}
!92 = !{ptr @_ZN4absl12lts_202505124Cord6AppendEOS1_}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv: argument 0"}
!95 = distinct !{!95, !"_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZNK4absl12lts_202505124Cord11chunk_beginEv: argument 0"}
!98 = distinct !{!98, !"_ZNK4absl12lts_202505124Cord11chunk_beginEv"}
!99 = !{!97, !94}
!100 = !{!101, !4, i64 0}
!101 = !{!"_ZTSN4absl12lts_2025051213cord_internal21CordRepBtreeNavigatorE", !4, i64 0, !5, i64 4, !5, i64 16}
!102 = !{!103, !12, i64 24}
!103 = !{!"_ZTSN4absl12lts_202505124Cord13ChunkIteratorE", !104, i64 0, !30, i64 16, !12, i64 24, !105, i64 32}
!104 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !12, i64 0, !10, i64 8}
!105 = !{!"_ZTSN4absl12lts_2025051213cord_internal18CordRepBtreeReaderE", !12, i64 0, !101, i64 8}
!106 = !{!107, !107, i64 0}
!107 = !{!"p1 _ZTSN4absl12lts_2025051213cord_internal12CordRepBtreeE", !11, i64 0}
!108 = distinct !{!108, !109}
!109 = !{!"llvm.loop.mustprogress"}
!110 = !{!105, !12, i64 0}
!111 = !{!33, !12, i64 16}
!112 = distinct !{!112, !109}
!113 = distinct !{!113, !109}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv: argument 0"}
!116 = distinct !{!116, !"_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv"}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZNK4absl12lts_202505124Cord11chunk_beginEv: argument 0"}
!119 = distinct !{!119, !"_ZNK4absl12lts_202505124Cord11chunk_beginEv"}
!120 = !{!118, !115}
!121 = !{!104, !12, i64 0}
!122 = !{!104, !10, i64 8}
!123 = distinct !{null}
!124 = !{!9, !10, i64 0}
!125 = !{!12, !12, i64 0}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZNK4absl12lts_202505124Cord11chunk_beginEv: argument 0"}
!128 = distinct !{!128, !"_ZNK4absl12lts_202505124Cord11chunk_beginEv"}
!129 = !{!103, !30, i64 16}
!130 = !{!10, !10, i64 0}
!131 = !{!132, !12, i64 0}
!132 = !{!"_ZTSN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcE", !12, i64 0, !133, i64 8}
!133 = !{!"_ZTSN4absl12lts_202505128crc32c_tE", !4, i64 0}
!134 = !{!135, !139, i64 48}
!135 = !{!"_ZTSNSt11_Deque_baseIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE16_Deque_impl_dataE", !136, i64 0, !12, i64 8, !138, i64 16, !138, i64 48}
!136 = !{!"p2 _ZTSN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcE", !137, i64 0}
!137 = !{!"any p2 pointer", !11, i64 0}
!138 = !{!"_ZTSSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_E", !139, i64 0, !139, i64 8, !139, i64 16, !136, i64 24}
!139 = !{!"p1 _ZTSN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcE", !11, i64 0}
!140 = !{!135, !139, i64 64}
!141 = !{i64 0, i64 8, !125, i64 8, i64 4, !3}
!142 = !{!57, !58, i64 0}
!143 = !{!133, !4, i64 0}
!144 = !{!135, !136, i64 0}
!145 = !{!135, !136, i64 40}
!146 = !{!135, !136, i64 72}
!147 = !{!139, !139, i64 0}
!148 = distinct !{!148, !109}
!149 = !{!135, !12, i64 8}
end_hunk_1
