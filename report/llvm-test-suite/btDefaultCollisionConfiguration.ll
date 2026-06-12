inline.NumInlined: 74
inline.NumDeleted: 30
begin_hunk_0_@_ZN31btDefaultCollisionConfigurationC2ERK34btDefaultCollisionConstructionInfo:bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i32 %i.bs, ptr %i.bt, align 8, !tbaa !57
  %i.bu = add nsw i32 %i.bs, -1                   ; 4 uses
  %.not10.i = icmp eq i32 %i.bu, 0
  br i1 %.not10.i, label %.loopexit61, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.bv = load i32, ptr %i.bj, align 8, !tbaa !52
  %i.bw = sext i32 %i.bv to i64                   ; 9 uses
  %i.bx = add i32 %i.bs, -2
  %xtraiter = and i32 %i.bu, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %i.by = phi i32 [ %i.ca, %.prol.preheader ], [ %i.bu, %.lr.ph.i ]
  %.0811.i.prol = phi ptr [ %i.bz, %.prol.preheader ], [ %i.bp, %.lr.ph.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.bz = getelementptr inbounds i8, ptr %.0811.i.prol, i64 %i.bw ; 4 uses
  store ptr %i.bz, ptr %.0811.i.prol, align 8, !tbaa !58
  %i.ca = add nsw i32 %i.by, -1                   ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !59

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %.lcssa76.unr = phi ptr [ poison, %.lr.ph.i ], [ %i.bz, %.prol.preheader ]
  %.unr = phi i32 [ %i.bu, %.lr.ph.i ], [ %i.ca, %.prol.preheader ]
  %.0811.i.unr = phi ptr [ %i.bp, %.lr.ph.i ], [ %i.bz, %.prol.preheader ]
  %i.cb = icmp ult i32 %i.bx, 7
  br i1 %i.cb, label %.loopexit61, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %i.cc = phi i32 [ %i.cl, %.lr.ph.i.new ], [ %.unr, %.prol.loopexit ]
  %.0811.i = phi ptr [ %i.ck, %.lr.ph.i.new ], [ %.0811.i.unr, %.prol.loopexit ] ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %.0811.i, i64 %i.bw ; 3 uses
  store ptr %i.cd, ptr %.0811.i, align 8, !tbaa !58
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 %i.bw ; 3 uses
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !58
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.bw ; 3 uses
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !58
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 %i.bw ; 3 uses
  store ptr %i.cg, ptr %i.cf, align 8, !tbaa !58
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 %i.bw ; 3 uses
  store ptr %i.ch, ptr %i.cg, align 8, !tbaa !58
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 %i.bw ; 3 uses
  store ptr %i.ci, ptr %i.ch, align 8, !tbaa !58
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 %i.bw ; 3 uses
  store ptr %i.cj, ptr %i.ci, align 8, !tbaa !58
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 %i.bw ; 3 uses
  store ptr %i.ck, ptr %i.cj, align 8, !tbaa !58
  %i.cl = add nsw i32 %i.cc, -8                   ; 2 uses
  %.not.i.7 = icmp eq i32 %i.cl, 0
  br i1 %.not.i.7, label %.loopexit61, label %.lr.ph.i.new

.loopexit61:                                      ; preds = %.prol.loopexit, %.lr.ph.i.new, %.noexc
  %.08.lcssa.i = phi ptr [ %i.bp, %.noexc ], [ %.lcssa76.unr, %.prol.loopexit ], [ %i.ck, %.lr.ph.i.new ]
  store ptr null, ptr %.08.lcssa.i, align 8, !tbaa !58
  br label %bb.f

bb.f:                                             ; preds = %.loopexit61, %bb.e
  %.sink71 = phi ptr [ %i.bj, %.loopexit61 ], [ %i.bh, %bb.e ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sink71, ptr %i.cm, align 8, !tbaa !61
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !62 ; 2 uses
  %.not35 = icmp eq ptr %i.co, null
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br i1 %.not35, label %.noexc43, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.cp, align 8, !tbaa !63
  br label %bb.h

.noexc43:                                         ; preds = %bb.f
  store i8 1, ptr %i.cp, align 8, !tbaa !63
  %i.cq = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 32, i32 noundef 16) ; 7 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !64 ; 2 uses
  store i32 %.sroa.speculated58, ptr %i.cq, align 8, !tbaa !52
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 4 ; 2 uses
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !54
  %i.cu = mul nsw i32 %i.cs, %.sroa.speculated58
  %i.cv = zext i32 %i.cu to i64
  %i.cw = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.cv, i32 noundef 16) ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !55
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store ptr %i.cw, ptr %i.cy, align 8, !tbaa !56
  %i.cz = load i32, ptr %i.ct, align 4, !tbaa !54 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i32 %i.cz, ptr %i.da, align 8, !tbaa !57
  %i.db = add nsw i32 %i.cz, -1                   ; 4 uses
  %.not10.i38 = icmp eq i32 %i.db, 0
  br i1 %.not10.i38, label %.loopexit, label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %.noexc43
  %i.dc = load i32, ptr %i.cq, align 8, !tbaa !52
  %i.dd = sext i32 %i.dc to i64                   ; 9 uses
  %i.de = add i32 %i.cz, -2
  %xtraiter79 = and i32 %i.db, 7                  ; 2 uses
  %lcmp.mod80.not = icmp eq i32 %xtraiter79, 0
  br i1 %lcmp.mod80.not, label %.prol.loopexit78, label %.prol.preheader77

.prol.preheader77:                                ; preds = %.lr.ph.i39, %.prol.preheader77
  %i.df = phi i32 [ %i.dh, %.prol.preheader77 ], [ %i.db, %.lr.ph.i39 ]
  %.0811.i40.prol = phi ptr [ %i.dg, %.prol.preheader77 ], [ %i.cw, %.lr.ph.i39 ] ; 2 uses
  %prol.iter81 = phi i32 [ %prol.iter81.next, %.prol.preheader77 ], [ 0, %.lr.ph.i39 ]
  %i.dg = getelementptr inbounds i8, ptr %.0811.i40.prol, i64 %i.dd ; 4 uses
  store ptr %i.dg, ptr %.0811.i40.prol, align 8, !tbaa !58
  %i.dh = add nsw i32 %i.df, -1                   ; 2 uses
  %prol.iter81.next = add i32 %prol.iter81, 1     ; 2 uses
  %prol.iter81.cmp.not = icmp eq i32 %prol.iter81.next, %xtraiter79
  br i1 %prol.iter81.cmp.not, label %.prol.loopexit78, label %.prol.preheader77, !llvm.loop !65

.prol.loopexit78:                                 ; preds = %.prol.preheader77, %.lr.ph.i39
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i39 ], [ %i.dg, %.prol.preheader77 ]
  %.unr82 = phi i32 [ %i.db, %.lr.ph.i39 ], [ %i.dh, %.prol.preheader77 ]
  %.0811.i40.unr = phi ptr [ %i.cw, %.lr.ph.i39 ], [ %i.dg, %.prol.preheader77 ]
  %i.di = icmp ult i32 %i.de, 7
  br i1 %i.di, label %.loopexit, label %.lr.ph.i39.new

.lr.ph.i39.new:                                   ; preds = %.prol.loopexit78, %.lr.ph.i39.new
  %i.dj = phi i32 [ %i.ds, %.lr.ph.i39.new ], [ %.unr82, %.prol.loopexit78 ]
  %.0811.i40 = phi ptr [ %i.dr, %.lr.ph.i39.new ], [ %.0811.i40.unr, %.prol.loopexit78 ] ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %.0811.i40, i64 %i.dd ; 3 uses
  store ptr %i.dk, ptr %.0811.i40, align 8, !tbaa !58
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 %i.dd ; 3 uses
  store ptr %i.dl, ptr %i.dk, align 8, !tbaa !58
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 %i.dd ; 3 uses
  store ptr %i.dm, ptr %i.dl, align 8, !tbaa !58
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 %i.dd ; 3 uses
  store ptr %i.dn, ptr %i.dm, align 8, !tbaa !58
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 %i.dd ; 3 uses
  store ptr %i.do, ptr %i.dn, align 8, !tbaa !58
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 %i.dd ; 3 uses
  store ptr %i.dp, ptr %i.do, align 8, !tbaa !58
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 %i.dd ; 3 uses
  store ptr %i.dq, ptr %i.dp, align 8, !tbaa !58
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 %i.dd ; 3 uses
  store ptr %i.dr, ptr %i.dq, align 8, !tbaa !58
  %i.ds = add nsw i32 %i.dj, -8                   ; 2 uses
  %.not.i41.7 = icmp eq i32 %i.ds, 0
  br i1 %.not.i41.7, label %.loopexit, label %.lr.ph.i39.new

.loopexit:                                        ; preds = %.prol.loopexit78, %.lr.ph.i39.new, %.noexc43
  %.08.lcssa.i42 = phi ptr [ %i.cw, %.noexc43 ], [ %.lcssa.unr, %.prol.loopexit78 ], [ %i.dr, %.lr.ph.i39.new ]
  store ptr null, ptr %.08.lcssa.i42, align 8, !tbaa !58
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %bb.g
  %.sink73 = phi ptr [ %i.cq, %.loopexit ], [ %i.co, %bb.g ]
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sink73, ptr %i.dt, align 8, !tbaa !66
  ret void
}

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare void @_ZN23btConvexConvexAlgorithm10CreateFuncC1EP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN31btDefaultCollisionConfigurationD2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV31btDefaultCollisionConfiguration, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !41, !range !67, !noundef !68
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !69
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN12btStackAllocD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.j = load i8, ptr %i.i, align 8, !tbaa !70, !range !67, !noundef !68
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN12btStackAlloc7destroyEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !43   ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZN12btStackAlloc7destroyEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.l)
  %.pre.pre = load ptr, ptr %i.d, align 8, !tbaa !48
  br label %_ZN12btStackAlloc7destroyEv.exit

_ZN12btStackAlloc7destroyEv.exit:                 ; preds = %bb.c, %bb.d, %bb.e
  %.pre = phi ptr [ %.pre.pre, %bb.e ], [ %i.e, %bb.d ], [ %i.e, %bb.c ] ; 5 uses
  store ptr null, ptr %i.e, align 8, !tbaa !43
  store i32 0, ptr %i.f, align 4, !tbaa !69
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  %.pre6 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !69
  %1 = icmp ne i32 %.pre6, 0
  %2 = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %3 = load i8, ptr %2, align 8, !range !67
  %4 = trunc nuw i8 %3 to i1
  %or.cond.i = select i1 %1, i1 true, i1 %4
  br i1 %or.cond.i, label %_ZN12btStackAllocD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN12btStackAlloc7destroyEv.exit
  %i.m = load ptr, ptr %.pre, align 8, !tbaa !43  ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZN12btStackAllocD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.m)
  %.pre7 = load ptr, ptr %i.d, align 8, !tbaa !48
  br label %_ZN12btStackAllocD2Ev.exit

_ZN12btStackAllocD2Ev.exit:                       ; preds = %bb.b, %bb.g, %bb.f, %_ZN12btStackAlloc7destroyEv.exit
  %5 = phi ptr [ %.pre7, %bb.g ], [ %.pre, %bb.f ], [ %.pre, %_ZN12btStackAlloc7destroyEv.exit ], [ %i.e, %bb.b ]
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef %5)
  br label %bb.h

bb.h:                                             ; preds = %_ZN12btStackAllocD2Ev.exit, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load i8, ptr %i.n, align 8, !tbaa !63, !range !67, !noundef !68
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZN15btPoolAllocatorD2Ev.exit, label %bb.i

_ZN15btPoolAllocatorD2Ev.exit:                    ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !66
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !55
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef %i.t)
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !66
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef %i.u)
  br label %bb.i

bb.i:                                             ; preds = %_ZN15btPoolAllocatorD2Ev.exit, %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load i8, ptr %i.v, align 8, !tbaa !50, !range !67, !noundef !68
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_ZN15btPoolAllocatorD2Ev.exit5, label %bb.j

_ZN15btPoolAllocatorD2Ev.exit5:                   ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !61
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !55
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef %i.ab)
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !61
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef %i.ac)
  br label %bb.j

bb.j:                                             ; preds = %_ZN15btPoolAllocatorD2Ev.exit5, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !23 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !8
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.ae)
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !23
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !26 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !8
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.aj)
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !26
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef %i.am)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !27 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !8
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.ao)
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !27
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !28 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !8
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.at)
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !28
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !29 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !8
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.ay)
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !29
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !30 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !8
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void %i.bf(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.bd)
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !30
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef %i.bg)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !31 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !8
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.bi)
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !31
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef %i.bl)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !32 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !8
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.bn)
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !32
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef %i.bq)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !33 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !8
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.bs)
  %i.bv = load ptr, ptr %i.br, align 8, !tbaa !33
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef %i.bv)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !34 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !8
  %i.bz = load ptr, ptr %i.by, align 8
  tail call void %i.bz(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.bx)
  %i.ca = load ptr, ptr %i.bw, align 8, !tbaa !34
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef %i.ca)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !38 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !8
  %i.ce = load ptr, ptr %i.cd, align 8
  tail call void %i.ce(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.cc)
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !38
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef %i.cf)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !39 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !8
  %i.cj = load ptr, ptr %i.ci, align 8
  tail call void %i.cj(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.ch)
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !39
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef %i.ck)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !10
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef %i.cm)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !22 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !8
  %i.cq = load ptr, ptr %i.cp, align 8
  tail call void %i.cq(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.co)
  %i.cr = load ptr, ptr %i.cn, align 8, !tbaa !22
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef %i.cr)
  ret void
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN31btDefaultCollisionConfigurationD0Ev(ptr noundef nonnull align 8 dereferenceable(176) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN31btDefaultCollisionConfigurationD2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %0) #9
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %0) #9
  resume { ptr, i32 } %i.a
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN31btDefaultCollisionConfiguration31getCollisionAlgorithmCreateFuncEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 8                        ; 2 uses
  %i.b = icmp eq i32 %2, 8                        ; 2 uses
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %2, 1
  %or.cond3 = and i1 %i.a, %i.c
  br i1 %or.cond3, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i32 %1, 1
  %or.cond5 = and i1 %i.d, %i.b
  br i1 %or.cond5, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = or i32 %2, %1
  %or.cond7 = icmp eq i32 %i.e, 0
  br i1 %or.cond7, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = icmp slt i32 %1, 20                      ; 2 uses
  %i.g = icmp eq i32 %2, 28
  %or.cond9 = and i1 %i.f, %i.g
  br i1 %or.cond9, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = icmp slt i32 %2, 20                      ; 3 uses
  %i.i = icmp eq i32 %1, 28
  %or.cond11 = and i1 %i.i, %i.h
  br i1 %or.cond11, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.f, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  br i1 %i.h, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = add nsw i32 %2, -21
  %i.k = icmp ult i32 %i.j, 9
  br i1 %i.k, label %bb.l, label %.thread33

end_hunk_0
