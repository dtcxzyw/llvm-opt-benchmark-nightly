Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/OptimizeDeadStore?download=true
inline.NumInlined: 1559
inline.NumDeleted: 597
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4Luau7CodeGen27markDeadStoresInBlockChainsERNS0_9IrBuilderE:bb.a
bb.ay:                                            ; preds = %._crit_edge806.i
  call void @_ZdlPv(ptr noundef nonnull %i.nr) #23
  br label %bb.rb

bb.az:                                            ; preds = %bb.fy, %.lr.ph805.i
  %.sroa.0498.0803.i = phi ptr [ %i.mj, %.lr.ph805.i ], [ %i.atg, %bb.fy ] ; 2 uses
  %i.ns = load i32, ptr %.sroa.0498.0803.i, align 4, !tbaa !34 ; 8 uses
  %i.nt = load i64, ptr %i.mn, align 8, !tbaa !56 ; 2 uses
  %i.nu = load i64, ptr %i.mo, align 8, !tbaa !57 ; 4 uses
  %i.nv = mul i64 %i.nu, 3
  %i.nw = lshr i64 %i.nv, 2
  %.not.i.i233.i = icmp ult i64 %i.nt, %i.nw
  br i1 %.not.i.i233.i, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_7CodeGen14VmExitSyncInfoEES2_IKjS4_ENS0_16ItemInterfaceMapIjS4_EESt4hashIjESt8equal_toIjEE14rehash_if_fullERS6_.exit.i239.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.nx = icmp eq i64 %i.nt, 0
  br i1 %i.nx, label %.loopexit.i.i237.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ny = load i32, ptr %i.mp, align 8, !tbaa !34 ; 2 uses
  %i.nz = icmp eq i32 %i.ns, %i.ny
  br i1 %i.nz, label %.loopexit.i.i237.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.oa = add i64 %i.nu, -1                       ; 3 uses
  %i.ob = zext i32 %i.ns to i64
  %i.oc = and i64 %i.oa, %i.ob
  %i.od = load ptr, ptr %i.mm, align 8, !tbaa !58
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bf, %bb.bc
  %.01828.i.i.i234.i = phi i64 [ 0, %bb.bc ], [ %i.oi, %bb.bf ]
  %.01927.i.i.i235.i = phi i64 [ %i.oc, %bb.bc ], [ %i.ok, %bb.bf ] ; 2 uses
  %i.oe = getelementptr inbounds nuw [64 x i8], ptr %i.od, i64 %.01927.i.i.i235.i
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !34 ; 2 uses
  %i.og = icmp eq i32 %i.of, %i.ns
  br i1 %i.og, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_7CodeGen14VmExitSyncInfoEES2_IKjS4_ENS0_16ItemInterfaceMapIjS4_EESt4hashIjESt8equal_toIjEE14rehash_if_fullERS6_.exit.i239.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.oh = icmp eq i32 %i.of, %i.ny
  br i1 %i.oh, label %.loopexit.i.i237.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.oi = add i64 %.01828.i.i.i234.i, 1           ; 3 uses
  %i.oj = add i64 %i.oi, %.01927.i.i.i235.i
  %i.ok = and i64 %i.oj, %i.oa
  %.not.i.i.i236.i = icmp ugt i64 %i.oi, %i.oa
  br i1 %.not.i.i.i236.i, label %.loopexit.i.i237.i, label %bb.bd, !llvm.loop !0

.loopexit.i.i237.i:                               ; preds = %bb.bf, %bb.be, %bb.bb, %bb.ba
  invoke void @_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_7CodeGen14VmExitSyncInfoEES2_IKjS4_ENS0_16ItemInterfaceMapIjS4_EESt4hashIjESt8equal_toIjEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(32) %i.mm)
          to label %.noexc246.i unwind label %bb.bg

.noexc246.i:                                      ; preds = %.loopexit.i.i237.i
  %.pre.i238.i = load i64, ptr %i.mo, align 8, !tbaa !57
  br label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_7CodeGen14VmExitSyncInfoEES2_IKjS4_ENS0_16ItemInterfaceMapIjS4_EESt4hashIjESt8equal_toIjEE14rehash_if_fullERS6_.exit.i239.i

_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_7CodeGen14VmExitSyncInfoEES2_IKjS4_ENS0_16ItemInterfaceMapIjS4_EESt4hashIjESt8equal_toIjEE14rehash_if_fullERS6_.exit.i239.i: ; preds = %bb.bd, %.noexc246.i, %bb.az
  %i.ol = phi i64 [ %.pre.i238.i, %.noexc246.i ], [ %i.nu, %bb.az ], [ %i.nu, %bb.bd ]
  %i.om = add i64 %i.ol, -1                       ; 3 uses
  %i.on = zext i32 %i.ns to i64                   ; 2 uses
  %i.oo = and i64 %i.om, %i.on                    ; 2 uses
  %i.op = load ptr, ptr %i.mm, align 8, !tbaa !58 ; 2 uses
  %i.oq = load i32, ptr %i.mp, align 8, !tbaa !34 ; 2 uses
  %i.or = getelementptr inbounds nuw [64 x i8], ptr %i.op, i64 %i.oo ; 3 uses
  %i.os = load i32, ptr %i.or, align 4, !tbaa !34 ; 2 uses
  %i.ot = icmp eq i32 %i.os, %i.oq
  br i1 %i.ot, label %._crit_edge.i244.i, label %.lr.ph.i240.preheader.i

.lr.ph.i240.preheader.i:                          ; preds = %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_7CodeGen14VmExitSyncInfoEES2_IKjS4_ENS0_16ItemInterfaceMapIjS4_EESt4hashIjESt8equal_toIjEE14rehash_if_fullERS6_.exit.i239.i
  %i.ou = icmp eq i32 %i.os, %i.ns
  br i1 %i.ou, label %.loopexit582.i, label %.lr.ph731.i

._crit_edge.i244.i:                               ; preds = %.lr.ph731.i, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_7CodeGen14VmExitSyncInfoEES2_IKjS4_ENS0_16ItemInterfaceMapIjS4_EESt4hashIjESt8equal_toIjEE14rehash_if_fullERS6_.exit.i239.i
  %.lcssa.i245.i = phi ptr [ %i.or, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_7CodeGen14VmExitSyncInfoEES2_IKjS4_ENS0_16ItemInterfaceMapIjS4_EESt4hashIjESt8equal_toIjEE14rehash_if_fullERS6_.exit.i239.i ], [ %i.pb, %.lr.ph731.i ] ; 2 uses
  store i32 %i.ns, ptr %.lcssa.i245.i, align 8, !tbaa !71
  %i.ov = load i64, ptr %i.mn, align 8, !tbaa !56
  %i.ow = add i64 %i.ov, 1
  store i64 %i.ow, ptr %i.mn, align 8, !tbaa !56
  br label %.loopexit582.i

.lr.ph.i240.i:                                    ; preds = %.lr.ph731.i
  %i.ox = icmp eq i32 %i.pc, %i.ns
  br i1 %i.ox, label %.loopexit582.i, label %.lr.ph731.i

.lr.ph731.i:                                      ; preds = %.lr.ph.i240.preheader.i, %.lr.ph.i240.i
  %.02030.i5.i242730.i = phi i64 [ %i.oy, %.lr.ph.i240.i ], [ 0, %.lr.ph.i240.preheader.i ]
  %.02129.i6.i241729.i = phi i64 [ %i.pa, %.lr.ph.i240.i ], [ %i.oo, %.lr.ph.i240.preheader.i ]
  %i.oy = add i64 %.02030.i5.i242730.i, 1         ; 3 uses
  %i.oz = add i64 %i.oy, %.02129.i6.i241729.i
  %i.pa = and i64 %i.oz, %i.om                    ; 2 uses
  %.not.i3.i243.i = icmp ule i64 %i.oy, %i.om
  call void @llvm.assume(i1 %.not.i3.i243.i)
  %i.pb = getelementptr inbounds nuw [64 x i8], ptr %i.op, i64 %i.pa ; 3 uses
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !34 ; 2 uses
  %i.pd = icmp eq i32 %i.pc, %i.oq
  br i1 %i.pd, label %._crit_edge.i244.i, label %.lr.ph.i240.i

.loopexit582.i:                                   ; preds = %.lr.ph.i240.i, %._crit_edge.i244.i, %.lr.ph.i240.preheader.i
  %i.pe = phi ptr [ %.lcssa.i245.i, %._crit_edge.i244.i ], [ %i.or, %.lr.ph.i240.preheader.i ], [ %i.pb, %.lr.ph.i240.i ] ; 8 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 8 ; 2 uses
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !72
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pe, i64 16 ; 2 uses
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !72
  %i.pj = icmp eq ptr %i.pg, %i.pi
  br i1 %i.pj, label %bb.fy, label %bb.bh

bb.bg:                                            ; preds = %.loopexit.i.i237.i
  %i.pk = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.bh:                                            ; preds = %.loopexit582.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store i32 0, ptr %i.mq, align 8, !tbaa !229
  store i32 8, ptr %i.mr, align 4, !tbaa !230
  store ptr %i.ms, ptr %11, align 8, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store i32 0, ptr %i.mt, align 8, !tbaa !51
  store i32 8, ptr %i.mu, align 4, !tbaa !52
  store ptr %i.mv, ptr %12, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.mw, align 8, !tbaa !226
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.pl = load ptr, ptr %i.pf, align 8, !tbaa !72 ; 2 uses
  %i.pm = load ptr, ptr %i.ph, align 8, !tbaa !72 ; 2 uses
  %.not554738.i = icmp eq ptr %i.pl, %i.pm
  br i1 %.not554738.i, label %._crit_edge758.i, label %.lr.ph741.i

.preheader578.i:                                  ; preds = %._crit_edge737.i
  %.pre866.i = load ptr, ptr %i.mx, align 8, !tbaa !106 ; 3 uses
  %.pre867.i = load ptr, ptr %14, align 8, !tbaa !107 ; 2 uses
  %.not809.i = icmp eq ptr %.pre866.i, %.pre867.i
  br i1 %.not809.i, label %._crit_edge758.i, label %.lr.ph752.preheader.i

.lr.ph752.preheader.i:                            ; preds = %.preheader578.i
  %i.pn = ptrtoint ptr %.pre866.i to i64
  br label %.lr.ph752.i

.lr.ph741.i:                                      ; preds = %bb.bh, %._crit_edge737.i
  %.sroa.0488.0739.i = phi ptr [ %i.pu, %._crit_edge737.i ], [ %i.pl, %bb.bh ] ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.0488.0739.i, i64 8
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !75 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.0488.0739.i, i64 16
  %i.pr = load i32, ptr %i.pq, align 8, !tbaa !76 ; 2 uses
  %i.ps = zext i32 %i.pr to i64
  %.idx808.i = mul nuw nsw i64 %i.ps, 72
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pp, i64 %.idx808.i
  %.not184733.i = icmp eq i32 %i.pr, 0
  br i1 %.not184733.i, label %._crit_edge737.i, label %.lr.ph736.i

._crit_edge737.i:                                 ; preds = %"_ZN4Luau7CodeGen14visitArgumentsIRZNS0_L20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEE3$_1EEvRNS0_6IrInstEOT_.exit", %.lr.ph741.i
  %i.pu = getelementptr inbounds nuw i8, ptr %.sroa.0488.0739.i, i64 168 ; 2 uses
  %.not554.i = icmp eq ptr %i.pu, %i.pm
  br i1 %.not554.i, label %.preheader578.i, label %.lr.ph741.i

.lr.ph736.i:                                      ; preds = %.lr.ph741.i, %"_ZN4Luau7CodeGen14visitArgumentsIRZNS0_L20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEE3$_1EEvRNS0_6IrInstEOT_.exit"
  %.0167734.i = phi ptr [ %i.wx, %"_ZN4Luau7CodeGen14visitArgumentsIRZNS0_L20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEE3$_1EEvRNS0_6IrInstEOT_.exit" ], [ %i.pp, %.lr.ph741.i ] ; 5 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.0167734.i, i64 8 ; 2 uses
  %i.pw = load i32, ptr %i.mq, align 8, !tbaa !229 ; 6 uses
  %i.px = load i32, ptr %i.mr, align 4, !tbaa !230
  %i.py = icmp eq i32 %i.pw, %i.px
  br i1 %i.py, label %bb.bi, label %.lr.ph736._crit_edge.i

.lr.ph736._crit_edge.i:                           ; preds = %.lr.ph736.i
  %.pre865.i = load ptr, ptr %11, align 8, !tbaa !231
  br label %bb.bn

bb.bi:                                            ; preds = %.lr.ph736.i
  %i.pz = add i32 %i.pw, 1
  %i.qa = lshr i32 %i.pw, 1
  %i.qb = add i32 %i.qa, %i.pw                    ; 2 uses
  %i.qc = icmp ugt i32 %i.qb, %i.pz
  %i.qd = add i32 %i.pw, 5
  %.010.i.i = select i1 %i.qc, i32 %i.qb, i32 %i.qd ; 2 uses
  %i.qe = zext i32 %.010.i.i to i64
  %i.qf = shl nuw nsw i64 %i.qe, 6
  %i.qg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qf) #24
          to label %.noexc406.i unwind label %.loopexit.split-lp570.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc406.i:                                      ; preds = %bb.bi
  %i.qh = load ptr, ptr %11, align 8, !tbaa !231  ; 4 uses
  %i.qi = load i32, ptr %i.mq, align 8, !tbaa !229 ; 3 uses
  %i.qj = zext i32 %i.qi to i64
  %.idx.i400.i = shl nuw nsw i64 %i.qj, 6
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qh, i64 %.idx.i400.i
  %.not11.i.i.i.i.i.i = icmp eq i32 %i.qi, 0
  br i1 %.not11.i.i.i.i.i.i, label %._crit_edge.i404.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc406.i
  %i.ql = ptrtoaddr ptr %i.qg to i64
  %i.qm = add i64 %i.ql, 24
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %_ZSt10_ConstructIN4Luau7CodeGen6IrInstEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %indvar = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %indvar.next, %_ZSt10_ConstructIN4Luau7CodeGen6IrInstEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i ] ; 2 uses
  %.013.i.i.i.i.i.i = phi ptr [ %i.qg, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.rt, %_ZSt10_ConstructIN4Luau7CodeGen6IrInstEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i ] ; 7 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.qh, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.rs, %_ZSt10_ConstructIN4Luau7CodeGen6IrInstEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i ] ; 8 uses
  %19 = shl nuw nsw i64 %indvar, 6
  %20 = add i64 %i.qm, %19
  %i.qn = load i8, ptr %.sroa.08.012.i.i.i.i.i.i, align 8, !tbaa !85
  store i8 %i.qn, ptr %.013.i.i.i.i.i.i, align 8, !tbaa !85
  %i.qo = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 16 ; 3 uses
  store i32 0, ptr %i.qq, align 8, !tbaa !87
  %i.qr = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 20
  store i32 6, ptr %i.qr, align 4, !tbaa !108
  %i.qs = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 24 ; 4 uses
  store ptr %i.qs, ptr %i.qo, align 8, !tbaa !86
  %i.qt = load ptr, ptr %i.qp, align 8, !tbaa !86 ; 7 uses
  %i.qu = ptrtoaddr ptr %i.qt to i64
  %i.qv = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i26 = icmp eq ptr %i.qt, %i.qv
  br i1 %.not.i.i.i.i.i.i.i.i.i26, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.qw = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.qx = load i32, ptr %i.qw, align 8, !tbaa !87 ; 3 uses
  %i.qy = zext i32 %i.qx to i64
  %.idx.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.qy, 2 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qt, i64 %.idx.i.i.i.i.i.i.i.i.i
  %.not11.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.qx, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN4Luau7CodeGen6IrInstEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %bb.bj
  %i.ra = add nsw i64 %.idx.i.i.i.i.i.i.i.i.i, -4 ; 2 uses
  %i.rb = lshr exact i64 %i.ra, 2
  %i.rc = add nuw nsw i64 %i.rb, 1                ; 2 uses
  %min.iters.check1594 = icmp ult i64 %i.ra, 28
  %21 = sub i64 %i.qu, %20
  %diff.check1592 = icmp ugt i64 %21, -32
  %or.cond1610 = select i1 %min.iters.check1594, i1 true, i1 %diff.check1592
  br i1 %or.cond1610, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader1624, label %vector.ph1595

vector.ph1595:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec1596 = and i64 %i.rc, 9223372036854775800 ; 3 uses
  %i.rd = shl i64 %n.vec1596, 2                   ; 2 uses
  %i.re = getelementptr i8, ptr %i.qs, i64 %i.rd
  %i.rf = getelementptr i8, ptr %i.qt, i64 %i.rd
  br label %vector.body1597

vector.body1597:                                  ; preds = %vector.body1597, %vector.ph1595
  %index1598 = phi i64 [ 0, %vector.ph1595 ], [ %index.next1603, %vector.body1597 ] ; 2 uses
  %i.rg = shl i64 %index1598, 2                   ; 2 uses
  %next.gep1599 = getelementptr i8, ptr %i.qs, i64 %i.rg ; 2 uses
  %next.gep1600 = getelementptr i8, ptr %i.qt, i64 %i.rg ; 2 uses
  %i.rh = getelementptr i8, ptr %next.gep1600, i64 16
  %wide.load1601 = load <4 x i32>, ptr %next.gep1600, align 4, !tbaa !88
  %wide.load1602 = load <4 x i32>, ptr %i.rh, align 4, !tbaa !88
  %i.ri = getelementptr i8, ptr %next.gep1599, i64 16
  store <4 x i32> %wide.load1601, ptr %next.gep1599, align 4, !tbaa !88
  store <4 x i32> %wide.load1602, ptr %i.ri, align 4, !tbaa !88
  %index.next1603 = add nuw i64 %index1598, 8     ; 2 uses
  %i.rj = icmp eq i64 %index.next1603, %n.vec1596
  br i1 %i.rj, label %middle.block1604, label %vector.body1597, !llvm.loop !177

middle.block1604:                                 ; preds = %vector.body1597
  %cmp.n1605 = icmp eq i64 %i.rc, %n.vec1596
  br i1 %cmp.n1605, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader1624

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader1624:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block1604
  %.013.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.qs, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.re, %middle.block1604 ]
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.qt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.rf, %middle.block1604 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader1624, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.rm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader1624 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.rl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader1624 ] ; 2 uses
  %i.rk = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !88
  store i32 %i.rk, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !88
  %i.rl = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.rl, %i.qz
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !178

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block1604
  store i32 %i.qx, ptr %i.qq, align 8, !tbaa !87
  store i32 0, ptr %i.qw, align 8, !tbaa !87
  br label %_ZSt10_ConstructIN4Luau7CodeGen6IrInstEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.bk:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.qt, ptr %i.qo, align 8, !tbaa !86
  %i.rn = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 20
  %i.ro = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.rp = load <2 x i32>, ptr %i.ro, align 8, !tbaa !34
  store <2 x i32> %i.rp, ptr %i.qq, align 8, !tbaa !34
  store ptr %i.qv, ptr %i.qp, align 8, !tbaa !86
  store i32 6, ptr %i.rn, align 4, !tbaa !108
  store i32 0, ptr %i.ro, align 8, !tbaa !87
  br label %_ZSt10_ConstructIN4Luau7CodeGen6IrInstEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN4Luau7CodeGen6IrInstEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.bk, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i, %bb.bj
  %i.rq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 48
  %i.rr = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.rq, ptr noundef nonnull align 8 dereferenceable(11) %i.rr, i64 11, i1 false)
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 64
  %.not.i.i.i.i.i.i = icmp eq ptr %i.rs, %i.qk
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i401.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !179

._crit_edge.i404.i:                               ; preds = %_ZN4Luau7CodeGen6IrInstD2Ev.exit.i.i, %.noexc406.i
  %.pre.i248864.i = phi i32 [ 0, %.noexc406.i ], [ %i.sc, %_ZN4Luau7CodeGen6IrInstD2Ev.exit.i.i ]
  %i.ru = phi ptr [ %i.qh, %.noexc406.i ], [ %.pre16.i.i, %_ZN4Luau7CodeGen6IrInstD2Ev.exit.i.i ] ; 2 uses
  %.not.i405.i = icmp eq ptr %i.ru, %i.ms
  br i1 %.not.i405.i, label %.noexc249.i, label %bb.bm

.lr.ph.i401.i:                                    ; preds = %_ZSt10_ConstructIN4Luau7CodeGen6IrInstEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %_ZN4Luau7CodeGen6IrInstD2Ev.exit.i.i
  %i.rv = phi ptr [ %.pre16.i.i, %_ZN4Luau7CodeGen6IrInstD2Ev.exit.i.i ], [ %i.qh, %_ZSt10_ConstructIN4Luau7CodeGen6IrInstEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.rw = phi i32 [ %i.sc, %_ZN4Luau7CodeGen6IrInstD2Ev.exit.i.i ], [ %i.qi, %_ZSt10_ConstructIN4Luau7CodeGen6IrInstEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZN4Luau7CodeGen6IrInstD2Ev.exit.i.i ], [ 0, %_ZSt10_ConstructIN4Luau7CodeGen6IrInstEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.rx = getelementptr inbounds nuw [64 x i8], ptr %i.rv, i64 %indvars.iv.i.i ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rx, i64 16 ; 2 uses
  %.promoted.i.i.i.i.i = load i32, ptr %i.rz, align 8, !tbaa !87
  %.not1.i.i.i.i.i = icmp eq i32 %.promoted.i.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.i401.i
  store i32 0, ptr %i.rz, align 8, !tbaa !87
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i, %.lr.ph.i401.i
  %i.sa = load ptr, ptr %i.ry, align 8, !tbaa !86 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rx, i64 24
  %.not.i.i.i402.i = icmp eq ptr %i.sa, %i.sb
  br i1 %.not.i.i.i402.i, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit.i.i, label %bb.bl

bb.bl:                                            ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.sa) #23
  %.pre.i403.i = load i32, ptr %i.mq, align 8, !tbaa !229
  %.pre861.i = load ptr, ptr %11, align 8, !tbaa !231
  br label %_ZN4Luau7CodeGen6IrInstD2Ev.exit.i.i

_ZN4Luau7CodeGen6IrInstD2Ev.exit.i.i:             ; preds = %bb.bl, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i
  %.pre16.i.i = phi ptr [ %i.rv, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i ], [ %.pre861.i, %bb.bl ] ; 2 uses
  %i.sc = phi i32 [ %i.rw, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i ], [ %.pre.i403.i, %bb.bl ] ; 3 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.sd = zext i32 %i.sc to i64
  %i.se = icmp samesign ult i64 %indvars.iv.next.i.i, %i.sd
  br i1 %i.se, label %.lr.ph.i401.i, label %._crit_edge.i404.i, !llvm.loop !180

bb.bm:                                            ; preds = %._crit_edge.i404.i
  call void @_ZdlPv(ptr noundef %i.ru) #23
  %.pre.i248.pre.i = load i32, ptr %i.mq, align 8, !tbaa !229
  br label %.noexc249.i

.noexc249.i:                                      ; preds = %bb.bm, %._crit_edge.i404.i
  %.pre.i248.i = phi i32 [ %.pre.i248.pre.i, %bb.bm ], [ %.pre.i248864.i, %._crit_edge.i404.i ]
  store ptr %i.qg, ptr %11, align 8, !tbaa !231
  store i32 %.010.i.i, ptr %i.mr, align 4, !tbaa !230
  br label %bb.bn

bb.bn:                                            ; preds = %.noexc249.i, %.lr.ph736._crit_edge.i
  %i.sf = phi ptr [ %i.qg, %.noexc249.i ], [ %.pre865.i, %.lr.ph736._crit_edge.i ]
  %i.sg = phi i32 [ %.pre.i248.i, %.noexc249.i ], [ %i.pw, %.lr.ph736._crit_edge.i ]
  %i.sh = zext i32 %i.sg to i64
  %i.si = getelementptr inbounds nuw [64 x i8], ptr %i.sf, i64 %i.sh ; 6 uses
  %i.sj = load i8, ptr %i.pv, align 8, !tbaa !85
  store i8 %i.sj, ptr %i.si, align 8, !tbaa !85
  %i.sk = getelementptr inbounds nuw i8, ptr %i.si, i64 8 ; 4 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %.0167734.i, i64 16 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.si, i64 16 ; 5 uses
  store i32 0, ptr %i.sm, align 8, !tbaa !87
  %i.sn = getelementptr inbounds nuw i8, ptr %i.si, i64 20 ; 2 uses
  store i32 6, ptr %i.sn, align 4, !tbaa !108
  %i.so = getelementptr inbounds nuw i8, ptr %i.si, i64 24 ; 4 uses
  store ptr %i.so, ptr %i.sk, align 8, !tbaa !86
  %i.sp = getelementptr inbounds nuw i8, ptr %.0167734.i, i64 24 ; 4 uses
  %i.sq = load i32, ptr %i.sp, align 8, !tbaa !87 ; 4 uses
  %i.sr = icmp ugt i32 %i.sq, 6
  br i1 %i.sr, label %bb.bo, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.ss = icmp ult i32 %i.sq, 9
  %i.st = add i32 %i.sq, 4
  %.09.i.i.i.i = select i1 %i.ss, i32 9, i32 %i.st ; 2 uses
  %i.su = zext i32 %.09.i.i.i.i to i64
  %i.sv = shl nuw nsw i64 %i.su, 2
  %i.sw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sv) #24
          to label %.noexc.i.i unwind label %bb.bq ; 6 uses

.noexc.i.i:                                       ; preds = %bb.bo
  %i.sx = load ptr, ptr %i.sk, align 8, !tbaa !86 ; 7 uses
  %i.sy = load i32, ptr %i.sm, align 8, !tbaa !87 ; 2 uses
  %i.sz = zext i32 %i.sy to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.sz, 2        ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sx, i64 %.idx.i.i.i.i
  %.not11.i.i.i.i.i.i.i.i = icmp eq i32 %i.sy, 0
  br i1 %.not11.i.i.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i397.i.preheader

.lr.ph.i.i.i.i.i.i.i397.i.preheader:              ; preds = %.noexc.i.i
  %i.tb = ptrtoaddr ptr %i.sx to i64
  %i.tc = ptrtoaddr ptr %i.sw to i64
  %i.td = add nsw i64 %.idx.i.i.i.i, -4           ; 2 uses
  %i.te = lshr exact i64 %i.td, 2
  %i.tf = add nuw nsw i64 %i.te, 1                ; 2 uses
  %min.iters.check1577 = icmp ult i64 %i.td, 28
  %i.tg = sub i64 %i.tb, %i.tc
  %diff.check1575 = icmp ugt i64 %i.tg, -32
  %or.cond1611 = select i1 %min.iters.check1577, i1 true, i1 %diff.check1575
  br i1 %or.cond1611, label %.lr.ph.i.i.i.i.i.i.i397.i.preheader1626, label %vector.ph1578

vector.ph1578:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i397.i.preheader
  %n.vec1579 = and i64 %i.tf, 9223372036854775800 ; 3 uses
  %i.th = shl i64 %n.vec1579, 2                   ; 2 uses
  %i.ti = getelementptr i8, ptr %i.sw, i64 %i.th
  %i.tj = getelementptr i8, ptr %i.sx, i64 %i.th
  br label %vector.body1580

vector.body1580:                                  ; preds = %vector.body1580, %vector.ph1578
  %index1581 = phi i64 [ 0, %vector.ph1578 ], [ %index.next1586, %vector.body1580 ] ; 2 uses
  %i.tk = shl i64 %index1581, 2                   ; 2 uses
  %next.gep1582 = getelementptr i8, ptr %i.sw, i64 %i.tk ; 2 uses
  %next.gep1583 = getelementptr i8, ptr %i.sx, i64 %i.tk ; 2 uses
  %i.tl = getelementptr i8, ptr %next.gep1583, i64 16
  %wide.load1584 = load <4 x i32>, ptr %next.gep1583, align 4, !tbaa !88
  %wide.load1585 = load <4 x i32>, ptr %i.tl, align 4, !tbaa !88
  %i.tm = getelementptr i8, ptr %next.gep1582, i64 16
  store <4 x i32> %wide.load1584, ptr %next.gep1582, align 4, !tbaa !88
  store <4 x i32> %wide.load1585, ptr %i.tm, align 4, !tbaa !88
  %index.next1586 = add nuw i64 %index1581, 8     ; 2 uses
  %i.tn = icmp eq i64 %index.next1586, %n.vec1579
  br i1 %i.tn, label %middle.block1587, label %vector.body1580, !llvm.loop !181

middle.block1587:                                 ; preds = %vector.body1580
  %cmp.n1588 = icmp eq i64 %i.tf, %n.vec1579
  br i1 %cmp.n1588, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i397.i.preheader1626

.lr.ph.i.i.i.i.i.i.i397.i.preheader1626:          ; preds = %.lr.ph.i.i.i.i.i.i.i397.i.preheader, %middle.block1587
  %.013.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.sw, %.lr.ph.i.i.i.i.i.i.i397.i.preheader ], [ %i.ti, %middle.block1587 ]
  %.sroa.08.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.sx, %.lr.ph.i.i.i.i.i.i.i397.i.preheader ], [ %i.tj, %middle.block1587 ]
  br label %.lr.ph.i.i.i.i.i.i.i397.i

.lr.ph.i.i.i.i.i.i.i397.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i397.i.preheader1626, %.lr.ph.i.i.i.i.i.i.i397.i
  %.013.i.i.i.i.i.i.i.i = phi ptr [ %i.tq, %.lr.ph.i.i.i.i.i.i.i397.i ], [ %.013.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i397.i.preheader1626 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i.i = phi ptr [ %i.tp, %.lr.ph.i.i.i.i.i.i.i397.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i397.i.preheader1626 ] ; 2 uses
  %i.to = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i.i, align 4, !tbaa !88
  store i32 %i.to, ptr %.013.i.i.i.i.i.i.i.i, align 4, !tbaa !88
  %i.tp = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.tp, %i.ta
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i397.i, !llvm.loop !182

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i397.i, %middle.block1587, %.noexc.i.i
  %.not.i.i.i398.i = icmp eq ptr %i.sx, %i.so
  br i1 %.not.i.i.i398.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.sx) #23
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i.i: ; preds = %bb.bp, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i
  store ptr %i.sw, ptr %i.sk, align 8, !tbaa !86
  store i32 %.09.i.i.i.i, ptr %i.sn, align 4, !tbaa !108
  %.pre.i399.i = load i32, ptr %i.sp, align 8, !tbaa !87
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i.i: ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i.i, %bb.bn
  %i.tr = phi ptr [ %i.sw, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i.i ], [ %i.so, %bb.bn ] ; 4 uses
  %i.ts = phi i32 [ %.pre.i399.i, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i.i ], [ %i.sq, %bb.bn ] ; 2 uses
  %i.tt = load ptr, ptr %i.sl, align 8, !tbaa !86 ; 5 uses
  %i.tu = zext i32 %i.ts to i64
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN4Luau7CodeGen15VmExitStoreInfoESaIS2_EE14_M_move_assignEOS4_St17integral_constantIbLb1EE:bb.a
  store i32 0, ptr %i.r, align 8, !tbaa !87
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i.i.i.i.i.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !86   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.s) #23
  %.pre.i.i.i.i.i.i.i = load i32, ptr %i.j, align 8, !tbaa !76
  br label %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i.i.i.i.i.i.i

_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.b, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.u = phi i32 [ %i.n, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i, %bb.b ] ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !8

_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit.i.i.i.i.i.i: ; preds = %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !75   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %.not.i.i.i.i.i.i = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4Luau7CodeGen15VmExitStoreInfoEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.v) #23
  br label %_ZSt8_DestroyIN4Luau7CodeGen15VmExitStoreInfoEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4Luau7CodeGen15VmExitStoreInfoEEvPT_.exit.i.i.i: ; preds = %bb.c, %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4Luau7CodeGen15VmExitStoreInfoES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !11

_ZSt8_DestroyIPN4Luau7CodeGen15VmExitStoreInfoES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN4Luau7CodeGen15VmExitStoreInfoEEvPT_.exit.i.i.i, %bb.a
  %.not.i.i1.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4Luau7CodeGen15VmExitStoreInfoESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN4Luau7CodeGen15VmExitStoreInfoES2_EvT_S4_RSaIT0_E.exit.i
  %i.y = ptrtoint ptr %i.e to i64
  %i.z = ptrtoint ptr %i.a to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.aa) #25
  br label %_ZNSt6vectorIN4Luau7CodeGen15VmExitStoreInfoESaIS2_EED2Ev.exit

_ZNSt6vectorIN4Luau7CodeGen15VmExitStoreInfoESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4Luau7CodeGen15VmExitStoreInfoES2_EvT_S4_RSaIT0_E.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen14VmExitSyncInfoEE7destroyEPSt4pairIjS3_Em(ptr noundef %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4Luau7CodeGen14VmExitSyncInfoD2Ev.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN4Luau7CodeGen14VmExitSyncInfoD2Ev.exit
  %.04 = phi i64 [ %i.af, %_ZN4Luau7CodeGen14VmExitSyncInfoD2Ev.exit ], [ 0, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.04 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %.promoted.i.i.i = load i32, ptr %i.d, align 8, !tbaa !113
  %.not1.i.i.i = icmp eq i32 %.promoted.i.i.i, 0
  br i1 %.not1.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj2EE5clearEv.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph
  store i32 0, ptr %i.d, align 8, !tbaa !113
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj2EE5clearEv.exit.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj2EE5clearEv.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i, %.lr.ph
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !115  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.not.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj2EE5clearEv.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.e) #23
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj2EED2Ev.exit.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj2EED2Ev.exit.i: ; preds = %bb.b, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj2EE5clearEv.exit.i.i
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !151  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !150  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN4Luau7CodeGen15VmExitStoreInfoES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj2EED2Ev.exit.i, %_ZSt8_DestroyIN4Luau7CodeGen15VmExitStoreInfoEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyIN4Luau7CodeGen15VmExitStoreInfoEEvPT_.exit.i.i.i.i ], [ %i.g, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj2EED2Ev.exit.i ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !76   ; 2 uses
  %.not1.i.i.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not1.i.i.i.i.i.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i, %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i.i.i.i.i.i.i.i
  %i.m = phi i32 [ %i.v, %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i.i.i.i.i.i.i.i ], [ %i.l, %.lr.ph.i.i.i.i ]
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !75
  %i.o = add i32 %i.m, -1                         ; 3 uses
  store i32 %i.o, ptr %i.k, align 8, !tbaa !76
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [72 x i8], ptr %i.n, i64 %i.p ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %.promoted.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.s, align 8, !tbaa !87
  %.not1.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.promoted.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  store i32 0, ptr %i.s, align 8, !tbaa !87
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !86   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.t) #23
  %.pre.i.i.i.i.i.i.i.i = load i32, ptr %i.k, align 8, !tbaa !76
  br label %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i.i.i.i.i.i.i.i

_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.v = phi i32 [ %i.o, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i, %bb.c ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !8

_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !75   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4Luau7CodeGen15VmExitStoreInfoEEvPT_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.w) #23
  br label %_ZSt8_DestroyIN4Luau7CodeGen15VmExitStoreInfoEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN4Luau7CodeGen15VmExitStoreInfoEEvPT_.exit.i.i.i.i: ; preds = %bb.d, %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN4Luau7CodeGen15VmExitStoreInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !11

_ZSt8_DestroyIPN4Luau7CodeGen15VmExitStoreInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN4Luau7CodeGen15VmExitStoreInfoEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !151
  br label %_ZSt8_DestroyIPN4Luau7CodeGen15VmExitStoreInfoES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4Luau7CodeGen15VmExitStoreInfoES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN4Luau7CodeGen15VmExitStoreInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj2EED2Ev.exit.i
  %i.z = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN4Luau7CodeGen15VmExitStoreInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.g, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj2EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i, label %_ZN4Luau7CodeGen14VmExitSyncInfoD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4Luau7CodeGen15VmExitStoreInfoES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !161
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #25
  br label %_ZN4Luau7CodeGen14VmExitSyncInfoD2Ev.exit

_ZN4Luau7CodeGen14VmExitSyncInfoD2Ev.exit:        ; preds = %_ZSt8_DestroyIPN4Luau7CodeGen15VmExitStoreInfoES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.e
  %i.af = add nuw i64 %.04, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !355
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE4growEj(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !158  ; 2 uses
  %i.c = lshr i32 %i.b, 1
  %i.d = add i32 %i.c, %i.b                       ; 2 uses
  %i.e = icmp ugt i32 %i.d, %1
  %i.f = add i32 %1, 4
  %.010 = select i1 %i.e, i32 %i.d, i32 %i.f      ; 2 uses
  %i.g = zext i32 %.010 to i64
  %i.h = mul nuw nsw i64 %i.g, 72
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #24 ; 3 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !75     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !76   ; 3 uses
  %i.m = zext i32 %i.l to i64
  %.idx = mul nuw nsw i64 %i.m, 72
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not11.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.a
  %i.o = ptrtoaddr ptr %i.i to i64
  %i.p = add i64 %i.o, 32
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i
  %indvar = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %indvar.next, %_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i ] ; 2 uses
  %.013.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.az, %_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i ] ; 8 uses
  %.sroa.08.012.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i.preheader ], [ %i.ay, %_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i ] ; 9 uses
  %2 = mul nuw nsw i64 %indvar, 72
  %3 = add i64 %i.p, %2
  %i.q = load i32, ptr %.sroa.08.012.i.i.i.i, align 8, !tbaa !153
  store i32 %i.q, ptr %.013.i.i.i.i, align 8, !tbaa !153
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 8
  %i.t = load i8, ptr %i.s, align 8, !tbaa !85
  store i8 %i.t, ptr %i.r, align 8, !tbaa !85
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 24 ; 3 uses
  store i32 0, ptr %i.w, align 8, !tbaa !87
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 28
  store i32 6, ptr %i.x, align 4, !tbaa !108
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 32 ; 4 uses
  store ptr %i.y, ptr %i.u, align 8, !tbaa !86
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !86   ; 7 uses
  %i.aa = ptrtoaddr ptr %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 24 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !87 ; 3 uses
  %i.ae = zext i32 %i.ad to i64
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ae, 2 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx.i.i.i.i.i.i.i.i
  %.not11.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %bb.b
  %i.ag = add nsw i64 %.idx.i.i.i.i.i.i.i.i, -4   ; 2 uses
  %i.ah = lshr exact i64 %i.ag, 2
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ag, 28
  %4 = sub i64 %i.aa, %3
  %diff.check = icmp ugt i64 %4, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ai, 9223372036854775800     ; 3 uses
  %i.aj = shl i64 %n.vec, 2                       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.y, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.z, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.am ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.z, i64 %i.am ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep23, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep23, align 4, !tbaa !88
  %wide.load24 = load <4 x i32>, ptr %i.an, align 4, !tbaa !88
  %i.ao = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !88
  store <4 x i32> %wide.load24, ptr %i.ao, align 4, !tbaa !88
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !356

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader26

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader26:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader26, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader26 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader26 ] ; 2 uses
  %i.aq = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !88
  store i32 %i.aq, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !88
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ar, %i.af
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !357

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block
  store i32 %i.ad, ptr %i.w, align 8, !tbaa !87
  store i32 0, ptr %i.ac, align 8, !tbaa !87
  br label %_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  store ptr %i.z, ptr %i.u, align 8, !tbaa !86
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 28
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 24 ; 2 uses
  %i.av = load <2 x i32>, ptr %i.au, align 8, !tbaa !34
  store <2 x i32> %i.av, ptr %i.w, align 8, !tbaa !34
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !86
  store i32 6, ptr %i.at, align 4, !tbaa !108
  store i32 0, ptr %i.au, align 8, !tbaa !87
  br label %_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.b, %bb.c, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 56
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.aw, ptr noundef nonnull align 8 dereferenceable(11) %i.ax, i64 11, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 72 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 72
  %.not.i.i.i.i = icmp eq ptr %i.ay, %i.n
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i.i, label %.lr.ph, label %.lr.ph.i.i.i.i, !llvm.loop !12

._crit_edge.loopexit:                             ; preds = %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !75
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit
  %i.ba = phi ptr [ %.pre16, %._crit_edge.loopexit ], [ %i.j, %bb.a ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not = icmp eq ptr %i.ba, %i.bb
  br i1 %.not, label %bb.f, label %bb.e

.lr.ph:                                           ; preds = %_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i, %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit
  %i.bc = phi i32 [ %i.bj, %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit ], [ %i.l, %_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit ], [ 0, %_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i ] ; 2 uses
  %i.bd = load ptr, ptr %0, align 8, !tbaa !75
  %i.be = getelementptr inbounds nuw [72 x i8], ptr %i.bd, i64 %indvars.iv ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  %.promoted.i.i.i.i = load i32, ptr %i.bg, align 8, !tbaa !87
  %.not1.i.i.i.i = icmp eq i32 %.promoted.i.i.i.i, 0
  br i1 %.not1.i.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.lr.ph
  store i32 0, ptr %i.bg, align 8, !tbaa !87
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i, %.lr.ph
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !86 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %.not.i.i.i = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i.i.i, label %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.bh) #23
  %.pre = load i32, ptr %i.k, align 8, !tbaa !76
  br label %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit

_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit:     ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i, %bb.d
  %i.bj = phi i32 [ %i.bc, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i ], [ %.pre, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = icmp samesign ult i64 %indvars.iv.next, %i.bk
  br i1 %i.bl, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !358

bb.e:                                             ; preds = %._crit_edge
  tail call void @_ZdlPv(ptr noundef %i.ba) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  store ptr %i.i, ptr %0, align 8, !tbaa !75
  store i32 %.010, ptr %i.a, align 4, !tbaa !158
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN4Luau7CodeGen17VmExitStoreRecordEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN4Luau7CodeGen17VmExitStoreRecordEEEvT_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN4Luau7CodeGen17VmExitStoreRecordEEvPT_.exit.i
  %.05.i = phi ptr [ %i.e, %_ZSt8_DestroyIN4Luau7CodeGen17VmExitStoreRecordEEvPT_.exit.i ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 2 uses
  %.promoted.i.i.i.i.i.i = load i32, ptr %i.b, align 8, !tbaa !87
  %.not1.i.i.i.i.i.i = icmp eq i32 %.promoted.i.i.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.lr.ph.i
  store i32 0, ptr %i.b, align 8, !tbaa !87
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %.lr.ph.i
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !86   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i, i64 32
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN4Luau7CodeGen17VmExitStoreRecordEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.c) #23
  br label %_ZSt8_DestroyIN4Luau7CodeGen17VmExitStoreRecordEEvPT_.exit.i

_ZSt8_DestroyIN4Luau7CodeGen17VmExitStoreRecordEEvPT_.exit.i: ; preds = %bb.b, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i, i64 72 ; 2 uses
  %.not.i = icmp eq ptr %i.e, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN4Luau7CodeGen17VmExitStoreRecordEEEvT_S6_.exit, label %.lr.ph.i, !llvm.loop !359

_ZNSt12_Destroy_auxILb0EE9__destroyIPN4Luau7CodeGen17VmExitStoreRecordEEEvT_S6_.exit: ; preds = %_ZSt8_DestroyIN4Luau7CodeGen17VmExitStoreRecordEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i32 0, ptr %i.a, align 8, !tbaa !87
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 6, ptr %i.b, align 4, !tbaa !108
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !86
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !87   ; 4 uses
  %i.f = icmp ugt i32 %i.e, 6
  br i1 %i.f, label %bb.b, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ult i32 %i.e, 9
  %i.h = add i32 %i.e, 4
  %.09.i.i = select i1 %i.g, i32 9, i32 %i.h      ; 2 uses
  %i.i = zext i32 %.09.i.i to i64
  %i.j = shl nuw nsw i64 %i.i, 2
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #24
          to label %.noexc unwind label %bb.d     ; 5 uses

.noexc:                                           ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !86     ; 6 uses
  %i.m = load i32, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %i.n = zext i32 %i.m to i64
  %.idx.i.i = shl nuw nsw i64 %i.n, 2             ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i
  %.not11.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not11.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc
  %i.p = add nsw i64 %.idx.i.i, -4                ; 2 uses
  %i.q = lshr exact i64 %i.p, 2
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.p, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader28, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.r, 9223372036854775800      ; 3 uses
  %i.s = shl i64 %n.vec, 2                        ; 2 uses
  %i.t = getelementptr i8, ptr %i.k, i64 %i.s
  %i.u = getelementptr i8, ptr %i.l, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.v ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.l, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep9, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep9, align 4, !tbaa !88
  %wide.load10 = load <4 x i32>, ptr %i.w, align 4, !tbaa !88
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !88
  store <4 x i32> %wide.load10, ptr %i.x, align 4, !tbaa !88
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !360

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader28

.lr.ph.i.i.i.i.i.i.preheader28:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.t, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.ph = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader28, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader28 ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN4Luau7CodeGen15VmExitStoreInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a
  %i.bd = load ptr, ptr %i.aq, align 8, !tbaa !75, !alias.scope !374 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 24
  %.not.i.i.i.i.i.i41 = icmp eq ptr %i.bd, %i.be
  br i1 %.not.i.i.i.i.i.i41, label %_ZSt19__relocate_object_aIN4Luau7CodeGen15VmExitStoreInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i42, label %bb.f

bb.f:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit.i.i.i.i.i.i40
  tail call void @_ZdlPv(ptr noundef %i.bd) #23
  br label %_ZSt19__relocate_object_aIN4Luau7CodeGen15VmExitStoreInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i42

_ZSt19__relocate_object_aIN4Luau7CodeGen15VmExitStoreInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i42: ; preds = %bb.f, %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit.i.i.i.i.i.i40
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 168 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 168 ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %i.bf, %i.b
  br i1 %.not.i.i.i43, label %_ZNSt6vectorIN4Luau7CodeGen15VmExitStoreInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit45, label %.lr.ph.i.i.i27, !llvm.loop !367

_ZNSt6vectorIN4Luau7CodeGen15VmExitStoreInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit45: ; preds = %_ZSt19__relocate_object_aIN4Luau7CodeGen15VmExitStoreInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i42, %_ZNSt6vectorIN4Luau7CodeGen15VmExitStoreInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i44 = phi ptr [ %i.an, %_ZNSt6vectorIN4Luau7CodeGen15VmExitStoreInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bg, %_ZSt19__relocate_object_aIN4Luau7CodeGen15VmExitStoreInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i42 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i46 = icmp eq ptr %i.c, null
  br i1 %.not.i46, label %_ZNSt12_Vector_baseIN4Luau7CodeGen15VmExitStoreInfoESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4Luau7CodeGen15VmExitStoreInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit45
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !161
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bk) #25
  br label %_ZNSt12_Vector_baseIN4Luau7CodeGen15VmExitStoreInfoESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4Luau7CodeGen15VmExitStoreInfoESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN4Luau7CodeGen15VmExitStoreInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit45, %bb.g
  store ptr %i.p, ptr %0, align 8, !tbaa !151
  store ptr %.0.lcssa.i.i.i44, ptr %i.a, align 8, !tbaa !150
  %i.bl = getelementptr inbounds nuw [168 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !161
  ret void

bb.h:                                             ; preds = %bb.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %_ZNKSt6vectorIN4Luau7CodeGen15VmExitStoreInfoESaIS2_EE12_M_check_lenEmPKc.exit
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  %i.bp = tail call ptr @__cxa_begin_catch(ptr %i.bo) #23 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #25
  invoke void @__cxa_rethrow() #21
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.bm

bb.k:                                             ; preds = %bb.h
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  tail call void @__clang_call_terminate(ptr %i.br) #26
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !76
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 2, ptr %i.b, align 4, !tbaa !158
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !75
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !76   ; 3 uses
  %i.f = icmp ugt i32 %i.e, 2
  br i1 %i.f, label %bb.b, label %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE7reserveEj.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE4growEj(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %i.e)
          to label %._ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE7reserveEj.exit_crit_edge unwind label %bb.i

._ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE7reserveEj.exit_crit_edge: ; preds = %bb.b
  %.pre = load i32, ptr %i.d, align 8, !tbaa !76
  %.pre8 = load ptr, ptr %0, align 8, !tbaa !75
  br label %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE7reserveEj.exit

_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE7reserveEj.exit: ; preds = %._ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE7reserveEj.exit_crit_edge, %bb.a
  %i.g = phi ptr [ %.pre8, %._ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE7reserveEj.exit_crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = phi i32 [ %.pre, %._ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE7reserveEj.exit_crit_edge ], [ %i.e, %bb.a ] ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !75     ; 2 uses
  %i.j = zext i32 %i.h to i64
  %.idx = mul nuw nsw i64 %i.j, 72
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %.not14.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not14.i.i.i, label %_ZSt18uninitialized_copyIPKN4Luau7CodeGen17VmExitStoreRecordEPS2_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE7reserveEj.exit, %bb.c
  %.016.i.i.i = phi ptr [ %i.u, %bb.c ], [ %i.g, %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE7reserveEj.exit ] ; 6 uses
  %.01215.i.i.i = phi ptr [ %i.t, %bb.c ], [ %i.i, %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE7reserveEj.exit ] ; 5 uses
  %i.l = load i32, ptr %.01215.i.i.i, align 8, !tbaa !153
  store i32 %i.l, ptr %.016.i.i.i, align 8, !tbaa !153
  %i.m = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 8
  %i.o = load i8, ptr %i.n, align 8, !tbaa !85
  store i8 %i.o, ptr %i.m, align 8, !tbaa !85
  %i.p = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 16
  invoke void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %i.q)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.r, ptr noundef nonnull align 8 dereferenceable(11) %i.s, i64 11, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 72 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 72
  %.not.i.i.i = icmp eq ptr %i.t, %i.k
  br i1 %.not.i.i.i, label %_ZSt18uninitialized_copyIPKN4Luau7CodeGen17VmExitStoreRecordEPS2_ET0_T_S7_S6_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !13

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  %i.x = tail call ptr @__cxa_begin_catch(ptr %i.w) #23 ; 0 uses
  invoke void @_ZSt8_DestroyIPN4Luau7CodeGen17VmExitStoreRecordEEvT_S4_(ptr noundef %i.g, ptr noundef nonnull %.016.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_rethrow() #21
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #26
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

_ZSt18uninitialized_copyIPKN4Luau7CodeGen17VmExitStoreRecordEPS2_ET0_T_S7_S6_.exit.loopexit: ; preds = %bb.c
  %.pre9 = load i32, ptr %i.d, align 8, !tbaa !76
  br label %_ZSt18uninitialized_copyIPKN4Luau7CodeGen17VmExitStoreRecordEPS2_ET0_T_S7_S6_.exit

_ZSt18uninitialized_copyIPKN4Luau7CodeGen17VmExitStoreRecordEPS2_ET0_T_S7_S6_.exit: ; preds = %_ZSt18uninitialized_copyIPKN4Luau7CodeGen17VmExitStoreRecordEPS2_ET0_T_S7_S6_.exit.loopexit, %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE7reserveEj.exit
  %i.ab = phi i32 [ %.pre9, %_ZSt18uninitialized_copyIPKN4Luau7CodeGen17VmExitStoreRecordEPS2_ET0_T_S7_S6_.exit.loopexit ], [ 0, %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE7reserveEj.exit ]
  store i32 %i.ab, ptr %i.a, align 8, !tbaa !76
  ret void

bb.i:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.i ], [ %i.y, %bb.f ]
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) #23
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EEC2EOS3_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !76
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 2, ptr %i.c, align 4, !tbaa !158
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !75
  %i.e = load ptr, ptr %1, align 8, !tbaa !75     ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !76   ; 2 uses
  %i.i = zext i32 %i.h to i64
  %.idx = mul nuw nsw i64 %i.i, 72
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %.not11.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not11.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen17VmExitStoreRecordES3_ET0_T_S5_S4_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %i.k = add nuw i64 %i.a, 48
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i
  %indvar = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %indvar.next, %_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i ] ; 2 uses
  %.013.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.av, %_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i ] ; 8 uses
  %.sroa.08.012.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i ] ; 9 uses
  %2 = mul nuw nsw i64 %indvar, 72
  %3 = add i64 %i.k, %2
  %i.l = load i32, ptr %.sroa.08.012.i.i.i.i, align 8, !tbaa !153
  store i32 %i.l, ptr %.013.i.i.i.i, align 8, !tbaa !153
  %i.m = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 8
  %i.o = load i8, ptr %i.n, align 8, !tbaa !85
  store i8 %i.o, ptr %i.m, align 8, !tbaa !85
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 24 ; 3 uses
  store i32 0, ptr %i.r, align 8, !tbaa !87
  %i.s = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 28
  store i32 6, ptr %i.s, align 4, !tbaa !108
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 32 ; 4 uses
  store ptr %i.t, ptr %i.p, align 8, !tbaa !86
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !86   ; 7 uses
  %i.v = ptrtoaddr ptr %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 24 ; 4 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !87   ; 2 uses
  %i.z = zext i32 %i.y to i64
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.z, 2 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i.i.i.i.i.i.i.i
  %.not11.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %bb.c
  %i.ab = add nsw i64 %.idx.i.i.i.i.i.i.i.i, -4   ; 2 uses
  %i.ac = lshr exact i64 %i.ab, 2
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 28
  %4 = sub i64 %i.v, %3
  %diff.check = icmp ugt i64 %4, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader25, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ad, 9223372036854775800     ; 3 uses
  %i.ae = shl i64 %n.vec, 2                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.t, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.u, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ah ; 2 uses
  %next.gep22 = getelementptr i8, ptr %i.u, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep22, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep22, align 4, !tbaa !88
  %wide.load23 = load <4 x i32>, ptr %i.ai, align 4, !tbaa !88
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !88
  store <4 x i32> %wide.load23, ptr %i.aj, align 4, !tbaa !88
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !375

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader25

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader25:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader25, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader25 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader25 ] ; 2 uses
  %i.al = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !88
  store i32 %i.al, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !88
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.am, %i.aa
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !376

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block
  %.pre.i.i.i.i.i.i.i.i = load i32, ptr %i.x, align 8, !tbaa !87
  br label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i.i.i.i.i

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i.i.i.i.i.i, %bb.c
  %i.ao = phi i32 [ %.pre.i.i.i.i.i.i.i.i, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  store i32 %i.ao, ptr %i.r, align 8, !tbaa !87
  %.promoted.i.i.i.i.i.i.i.i.i = load i32, ptr %i.x, align 8, !tbaa !87
  %.not1.i.i.i.i.i.i.i.i.i = icmp eq i32 %.promoted.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i.i.i.i.i
  store i32 0, ptr %i.x, align 8, !tbaa !87
  br label %_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  store ptr %i.u, ptr %i.p, align 8, !tbaa !86
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 28
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 24 ; 2 uses
  %i.ar = load <2 x i32>, ptr %i.aq, align 8, !tbaa !34
  store <2 x i32> %i.ar, ptr %i.r, align 8, !tbaa !34
  store ptr %i.w, ptr %i.q, align 8, !tbaa !86
  store i32 6, ptr %i.ap, align 4, !tbaa !108
  store i32 0, ptr %i.aq, align 8, !tbaa !87
  br label %_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.as, ptr noundef nonnull align 8 dereferenceable(11) %i.at, i64 11, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 72 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 72
  %.not.i.i.i.i = icmp eq ptr %i.au, %i.j
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen17VmExitStoreRecordES3_ET0_T_S5_S4_.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !12

_ZSt18uninitialized_moveIPN4Luau7CodeGen17VmExitStoreRecordES3_ET0_T_S5_S4_.exit.loopexit: ; preds = %_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.pre = load i32, ptr %i.g, align 8, !tbaa !76
  br label %_ZSt18uninitialized_moveIPN4Luau7CodeGen17VmExitStoreRecordES3_ET0_T_S5_S4_.exit

_ZSt18uninitialized_moveIPN4Luau7CodeGen17VmExitStoreRecordES3_ET0_T_S5_S4_.exit: ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen17VmExitStoreRecordES3_ET0_T_S5_S4_.exit.loopexit, %bb.b
  %i.aw = phi i32 [ %.pre, %_ZSt18uninitialized_moveIPN4Luau7CodeGen17VmExitStoreRecordES3_ET0_T_S5_S4_.exit.loopexit ], [ 0, %bb.b ]
  store i32 %i.aw, ptr %i.b, align 8, !tbaa !76
  %i.ax = load i32, ptr %i.g, align 8, !tbaa !76  ; 2 uses
  %.not1.i = icmp eq i32 %i.ax, 0
  br i1 %.not1.i, label %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen17VmExitStoreRecordES3_ET0_T_S5_S4_.exit, %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i
  %i.ay = phi i32 [ %i.bh, %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i ], [ %i.ax, %_ZSt18uninitialized_moveIPN4Luau7CodeGen17VmExitStoreRecordES3_ET0_T_S5_S4_.exit ]
  %i.az = load ptr, ptr %1, align 8, !tbaa !75
  %i.ba = add i32 %i.ay, -1                       ; 3 uses
  store i32 %i.ba, ptr %i.g, align 8, !tbaa !76
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [72 x i8], ptr %i.az, i64 %i.bb ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  %.promoted.i.i.i.i.i = load i32, ptr %i.be, align 8, !tbaa !87
  %.not1.i.i.i.i.i = icmp eq i32 %.promoted.i.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.i
  store i32 0, ptr %i.be, align 8, !tbaa !87
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i, %.lr.ph.i
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !86 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %.not.i.i.i.i13 = icmp eq ptr %i.bf, %i.bg
  br i1 %.not.i.i.i.i13, label %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.bf) #23
  %.pre.i = load i32, ptr %i.g, align 8, !tbaa !76
  br label %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i

_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i:   ; preds = %bb.e, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i
  %i.bh = phi i32 [ %i.ba, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i ], [ %.pre.i, %bb.e ] ; 2 uses
  %.not.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i, label %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit, label %.lr.ph.i, !llvm.loop !8

bb.f:                                             ; preds = %bb.a
  store ptr %i.e, ptr %0, align 8, !tbaa !75
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bk = load <2 x i32>, ptr %i.bj, align 8, !tbaa !34
  store <2 x i32> %i.bk, ptr %i.b, align 8, !tbaa !34
  store ptr %i.f, ptr %1, align 8, !tbaa !75
  store i32 2, ptr %i.bi, align 4, !tbaa !158
  store i32 0, ptr %i.bj, align 8, !tbaa !76
  br label %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit

_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit: ; preds = %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i, %_ZSt18uninitialized_moveIPN4Luau7CodeGen17VmExitStoreRecordES3_ET0_T_S5_S4_.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %.not1.i = icmp eq i32 %i.b, 0
  br i1 %.not1.i, label %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i
  %i.c = phi i32 [ %i.l, %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i ], [ %i.b, %bb.a ]
  %i.d = load ptr, ptr %0, align 8, !tbaa !75
  %i.e = add i32 %i.c, -1                         ; 3 uses
  store i32 %i.e, ptr %i.a, align 8, !tbaa !76
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %.promoted.i.i.i.i.i = load i32, ptr %i.i, align 8, !tbaa !87
  %.not1.i.i.i.i.i = icmp eq i32 %.promoted.i.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.i
  store i32 0, ptr %i.i, align 8, !tbaa !87
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i, %.lr.ph.i
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !86   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not.i.i.i.i, label %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.j) #23
  %.pre.i = load i32, ptr %i.a, align 8, !tbaa !76
  br label %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i

_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i:   ; preds = %bb.b, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i
  %i.l = phi i32 [ %i.e, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i ], [ %.pre.i, %bb.b ] ; 2 uses
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit, label %.lr.ph.i, !llvm.loop !8

_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit: ; preds = %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i, %bb.a
  %i.m = load ptr, ptr %0, align 8, !tbaa !75     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not = icmp eq ptr %i.m, %i.n
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit
  tail call void @_ZdlPv(ptr noundef %i.m) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7CodeGen20RemoveDeadStoreState8useRangeEii(ptr noundef nonnull align 8 dereferenceable(4176) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %2, -1
  br i1 %i.a, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = add nsw i32 %2, %1
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph, label %_ZN4Luau7CodeGen20RemoveDeadStoreState10useVarargsEh.exit

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %1, 255                          ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4112
  %i.g = load i32, ptr %i.f, align 8, !tbaa !141  ; 4 uses
  %.not4.i = icmp slt i32 %i.g, %i.e
  br i1 %.not4.i, label %_ZN4Luau7CodeGen20RemoveDeadStoreState10useVarargsEh.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = add i32 %i.g, %1
  %i.j = and i32 %i.i, 1
  %lcmp.mod.not.not = icmp eq i32 %i.j, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i
  %i.k = zext nneg i32 %i.e to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.k ; 4 uses
  store i32 -1, ptr %i.l, align 8, !tbaa !119
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 -1, ptr %i.m, align 4, !tbaa !120
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 -1, ptr %i.n, align 8, !tbaa !121
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 12
end_hunk_2
