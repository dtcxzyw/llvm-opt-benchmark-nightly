Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/OptimizeDeadStore?download=true
inline.NumInlined: 1559
inline.NumDeleted: 597
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4Luau7CodeGen27markDeadStoresInBlockChainsERNS0_9IrBuilderE:bb.a
  %i.nu = load i32, ptr %.sroa.0498.0792.i, align 4, !tbaa !34 ; 8 uses
  %i.nv = load i64, ptr %i.mp, align 8, !tbaa !56 ; 2 uses
  %i.nw = load i64, ptr %i.mq, align 8, !tbaa !57 ; 4 uses
  %i.nx = mul i64 %i.nw, 3
  %i.ny = lshr i64 %i.nx, 2
  %.not.i.i233.i = icmp ult i64 %i.nv, %i.ny
  br i1 %.not.i.i233.i, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_7CodeGen14VmExitSyncInfoEES2_IKjS4_ENS0_16ItemInterfaceMapIjS4_EESt4hashIjESt8equal_toIjEE14rehash_if_fullERS6_.exit.i239.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.nz = icmp eq i64 %i.nv, 0
  br i1 %i.nz, label %.loopexit.i.i237.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.oa = load i32, ptr %i.mr, align 8, !tbaa !34 ; 2 uses
  %i.ob = icmp eq i32 %i.nu, %i.oa
  br i1 %i.ob, label %.loopexit.i.i237.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.oc = add i64 %i.nw, -1                       ; 3 uses
  %i.od = zext i32 %i.nu to i64
  %i.oe = and i64 %i.oc, %i.od
  %i.of = load ptr, ptr %i.mo, align 8, !tbaa !58
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bi, %bb.bf
  %.01828.i.i.i234.i = phi i64 [ 0, %bb.bf ], [ %i.ok, %bb.bi ]
  %.01927.i.i.i235.i = phi i64 [ %i.oe, %bb.bf ], [ %i.om, %bb.bi ] ; 2 uses
  %i.og = getelementptr inbounds nuw [64 x i8], ptr %i.of, i64 %.01927.i.i.i235.i
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !34 ; 2 uses
  %i.oi = icmp eq i32 %i.oh, %i.nu
  br i1 %i.oi, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_7CodeGen14VmExitSyncInfoEES2_IKjS4_ENS0_16ItemInterfaceMapIjS4_EESt4hashIjESt8equal_toIjEE14rehash_if_fullERS6_.exit.i239.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.oj = icmp eq i32 %i.oh, %i.oa
  br i1 %i.oj, label %.loopexit.i.i237.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ok = add i64 %.01828.i.i.i234.i, 1           ; 3 uses
  %i.ol = add i64 %i.ok, %.01927.i.i.i235.i
  %i.om = and i64 %i.ol, %i.oc
  %.not.i.i.i236.i = icmp ugt i64 %i.ok, %i.oc
  br i1 %.not.i.i.i236.i, label %.loopexit.i.i237.i, label %bb.bg, !llvm.loop !0

.loopexit.i.i237.i:                               ; preds = %bb.bi, %bb.bh, %bb.be, %bb.bd
  invoke void @_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_7CodeGen14VmExitSyncInfoEES2_IKjS4_ENS0_16ItemInterfaceMapIjS4_EESt4hashIjESt8equal_toIjEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(32) %i.mo)
          to label %.noexc246.i unwind label %bb.bj

.noexc246.i:                                      ; preds = %.loopexit.i.i237.i
  %.pre.i238.i = load i64, ptr %i.mq, align 8, !tbaa !57
  br label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_7CodeGen14VmExitSyncInfoEES2_IKjS4_ENS0_16ItemInterfaceMapIjS4_EESt4hashIjESt8equal_toIjEE14rehash_if_fullERS6_.exit.i239.i

_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_7CodeGen14VmExitSyncInfoEES2_IKjS4_ENS0_16ItemInterfaceMapIjS4_EESt4hashIjESt8equal_toIjEE14rehash_if_fullERS6_.exit.i239.i: ; preds = %bb.bg, %.noexc246.i, %bb.bc
  %i.on = phi i64 [ %.pre.i238.i, %.noexc246.i ], [ %i.nw, %bb.bc ], [ %i.nw, %bb.bg ]
  %i.oo = add i64 %i.on, -1                       ; 3 uses
  %i.op = zext i32 %i.nu to i64                   ; 2 uses
  %i.oq = and i64 %i.oo, %i.op                    ; 2 uses
  %i.or = load ptr, ptr %i.mo, align 8, !tbaa !58 ; 2 uses
  %i.os = load i32, ptr %i.mr, align 8, !tbaa !34 ; 2 uses
  %i.ot = getelementptr inbounds nuw [64 x i8], ptr %i.or, i64 %i.oq ; 3 uses
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !34 ; 2 uses
  %i.ov = icmp eq i32 %i.ou, %i.os
  br i1 %i.ov, label %._crit_edge.i244.i, label %.lr.ph.i240.preheader.i

.lr.ph.i240.preheader.i:                          ; preds = %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_7CodeGen14VmExitSyncInfoEES2_IKjS4_ENS0_16ItemInterfaceMapIjS4_EESt4hashIjESt8equal_toIjEE14rehash_if_fullERS6_.exit.i239.i
  %i.ow = icmp eq i32 %i.ou, %i.nu
  br i1 %i.ow, label %.loopexit563.i, label %.lr.ph719.i

._crit_edge.i244.i:                               ; preds = %.lr.ph719.i, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_7CodeGen14VmExitSyncInfoEES2_IKjS4_ENS0_16ItemInterfaceMapIjS4_EESt4hashIjESt8equal_toIjEE14rehash_if_fullERS6_.exit.i239.i
  %.lcssa.i245.i = phi ptr [ %i.ot, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_7CodeGen14VmExitSyncInfoEES2_IKjS4_ENS0_16ItemInterfaceMapIjS4_EESt4hashIjESt8equal_toIjEE14rehash_if_fullERS6_.exit.i239.i ], [ %i.pd, %.lr.ph719.i ] ; 2 uses
  store i32 %i.nu, ptr %.lcssa.i245.i, align 8, !tbaa !71
  %i.ox = load i64, ptr %i.mp, align 8, !tbaa !56
  %i.oy = add i64 %i.ox, 1
  store i64 %i.oy, ptr %i.mp, align 8, !tbaa !56
  br label %.loopexit563.i

.lr.ph.i240.i:                                    ; preds = %.lr.ph719.i
  %i.oz = icmp eq i32 %i.pe, %i.nu
  br i1 %i.oz, label %.loopexit563.i, label %.lr.ph719.i

.lr.ph719.i:                                      ; preds = %.lr.ph.i240.preheader.i, %.lr.ph.i240.i
  %.02030.i5.i242718.i = phi i64 [ %i.pa, %.lr.ph.i240.i ], [ 0, %.lr.ph.i240.preheader.i ]
  %.02129.i6.i241717.i = phi i64 [ %i.pc, %.lr.ph.i240.i ], [ %i.oq, %.lr.ph.i240.preheader.i ]
  %i.pa = add i64 %.02030.i5.i242718.i, 1         ; 3 uses
  %i.pb = add i64 %i.pa, %.02129.i6.i241717.i
  %i.pc = and i64 %i.pb, %i.oo                    ; 2 uses
  %.not.i3.i243.i = icmp ule i64 %i.pa, %i.oo
  call void @llvm.assume(i1 %.not.i3.i243.i)
  %i.pd = getelementptr inbounds nuw [64 x i8], ptr %i.or, i64 %i.pc ; 3 uses
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !34 ; 2 uses
  %i.pf = icmp eq i32 %i.pe, %i.os
  br i1 %i.pf, label %._crit_edge.i244.i, label %.lr.ph.i240.i

.loopexit563.i:                                   ; preds = %.lr.ph.i240.i, %._crit_edge.i244.i, %.lr.ph.i240.preheader.i
  %i.pg = phi ptr [ %.lcssa.i245.i, %._crit_edge.i244.i ], [ %i.ot, %.lr.ph.i240.preheader.i ], [ %i.pd, %.lr.ph.i240.i ] ; 8 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 8 ; 2 uses
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !72
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pg, i64 16 ; 2 uses
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !72
  %i.pl = icmp eq ptr %i.pi, %i.pk
  br i1 %i.pl, label %bb.gn, label %bb.bk

bb.bj:                                            ; preds = %.loopexit.i.i237.i
  %i.pm = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.bk:                                            ; preds = %.loopexit563.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store i32 0, ptr %i.ms, align 8, !tbaa !229
  store i32 8, ptr %i.mt, align 4, !tbaa !230
  store ptr %i.mu, ptr %11, align 8, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store i32 0, ptr %i.mv, align 8, !tbaa !51
  store i32 8, ptr %i.mw, align 4, !tbaa !52
  store ptr %i.mx, ptr %12, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.my, align 8, !tbaa !226
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.pn = load ptr, ptr %i.ph, align 8, !tbaa !72 ; 2 uses
  %i.po = load ptr, ptr %i.pj, align 8, !tbaa !72 ; 2 uses
  %.not554726.i = icmp eq ptr %i.pn, %i.po
  br i1 %.not554726.i, label %._crit_edge746.i, label %.lr.ph729.i

.preheader562.i:                                  ; preds = %._crit_edge725.i
  %.pre854.i = load ptr, ptr %i.mz, align 8, !tbaa !106 ; 3 uses
  %.pre855.i = load ptr, ptr %14, align 8, !tbaa !107 ; 2 uses
  %.not798.i = icmp eq ptr %.pre854.i, %.pre855.i
  br i1 %.not798.i, label %._crit_edge746.i, label %.lr.ph740.preheader.i

.lr.ph740.preheader.i:                            ; preds = %.preheader562.i
  %i.pp = ptrtoint ptr %.pre854.i to i64
  br label %.lr.ph740.i

.lr.ph729.i:                                      ; preds = %bb.bk, %._crit_edge725.i
  %.sroa.0488.0727.i = phi ptr [ %i.pw, %._crit_edge725.i ], [ %i.pn, %bb.bk ] ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.0488.0727.i, i64 8
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !75 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.0488.0727.i, i64 16
  %i.pt = load i32, ptr %i.ps, align 8, !tbaa !76 ; 2 uses
  %i.pu = zext i32 %i.pt to i64
  %.idx797.i = mul nuw nsw i64 %i.pu, 72
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pr, i64 %.idx797.i
  %.not184721.i = icmp eq i32 %i.pt, 0
  br i1 %.not184721.i, label %._crit_edge725.i, label %.lr.ph724.i

._crit_edge725.i:                                 ; preds = %"_ZN4Luau7CodeGen14visitArgumentsIRZNS0_L20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEE3$_1EEvRNS0_6IrInstEOT_.exit", %.lr.ph729.i
  %i.pw = getelementptr inbounds nuw i8, ptr %.sroa.0488.0727.i, i64 168 ; 2 uses
  %.not554.i = icmp eq ptr %i.pw, %i.po
  br i1 %.not554.i, label %.preheader562.i, label %.lr.ph729.i

.lr.ph724.i:                                      ; preds = %.lr.ph729.i, %"_ZN4Luau7CodeGen14visitArgumentsIRZNS0_L20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEE3$_1EEvRNS0_6IrInstEOT_.exit"
  %.0167722.i = phi ptr [ %i.xc, %"_ZN4Luau7CodeGen14visitArgumentsIRZNS0_L20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEE3$_1EEvRNS0_6IrInstEOT_.exit" ], [ %i.pr, %.lr.ph729.i ] ; 5 uses
  %i.px = getelementptr inbounds nuw i8, ptr %.0167722.i, i64 8 ; 2 uses
  %i.py = load i32, ptr %i.ms, align 8, !tbaa !229 ; 6 uses
  %i.pz = load i32, ptr %i.mt, align 4, !tbaa !230
  %i.qa = icmp eq i32 %i.py, %i.pz
  br i1 %i.qa, label %bb.bl, label %.lr.ph724._crit_edge.i

.lr.ph724._crit_edge.i:                           ; preds = %.lr.ph724.i
  %.pre853.i = load ptr, ptr %11, align 8, !tbaa !231
  br label %bb.bq

bb.bl:                                            ; preds = %.lr.ph724.i
  %i.qb = add i32 %i.py, 1
  %i.qc = lshr i32 %i.py, 1
  %i.qd = add i32 %i.qc, %i.py                    ; 2 uses
  %i.qe = icmp ugt i32 %i.qd, %i.qb
  %i.qf = add i32 %i.py, 5
  %.010.i.i = select i1 %i.qe, i32 %i.qd, i32 %i.qf ; 2 uses
  %i.qg = zext i32 %.010.i.i to i64
  %i.qh = shl nuw nsw i64 %i.qg, 6
  %i.qi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qh) #24
          to label %.noexc406.i unwind label %.loopexit.split-lp.loopexit ; 4 uses

.noexc406.i:                                      ; preds = %bb.bl
  %i.qj = load ptr, ptr %11, align 8, !tbaa !231  ; 4 uses
  %i.qk = load i32, ptr %i.ms, align 8, !tbaa !229 ; 3 uses
  %i.ql = zext i32 %i.qk to i64
  %.idx.i400.i = shl nuw nsw i64 %i.ql, 6
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qj, i64 %.idx.i400.i
  %.not11.i.i.i.i.i.i = icmp eq i32 %i.qk, 0
  br i1 %.not11.i.i.i.i.i.i, label %._crit_edge.i404.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc406.i
  %i.qn = ptrtoaddr ptr %i.qi to i64
  %i.qo = add i64 %i.qn, 24
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %_ZSt10_ConstructIN4Luau7CodeGen6IrInstEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %indvar = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %indvar.next, %_ZSt10_ConstructIN4Luau7CodeGen6IrInstEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i ] ; 2 uses
  %.013.i.i.i.i.i.i = phi ptr [ %i.qi, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ry, %_ZSt10_ConstructIN4Luau7CodeGen6IrInstEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i ] ; 7 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.qj, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.rx, %_ZSt10_ConstructIN4Luau7CodeGen6IrInstEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i ] ; 8 uses
  %i.qp = shl nuw nsw i64 %indvar, 6
  %i.qq = add i64 %i.qo, %i.qp
  %i.qr = load i8, ptr %.sroa.08.012.i.i.i.i.i.i, align 8, !tbaa !85
  store i8 %i.qr, ptr %.013.i.i.i.i.i.i, align 8, !tbaa !85
  %i.qs = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 16 ; 3 uses
  store i32 0, ptr %i.qu, align 8, !tbaa !87
  %i.qv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 20
  store i32 6, ptr %i.qv, align 4, !tbaa !108
  %i.qw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 24 ; 4 uses
  store ptr %i.qw, ptr %i.qs, align 8, !tbaa !86
  %i.qx = load ptr, ptr %i.qt, align 8, !tbaa !86 ; 7 uses
  %i.qy = ptrtoaddr ptr %i.qx to i64
  %i.qz = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i26 = icmp eq ptr %i.qx, %i.qz
  br i1 %.not.i.i.i.i.i.i.i.i.i26, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ra = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.rb = load i32, ptr %i.ra, align 8, !tbaa !87 ; 3 uses
  %i.rc = zext i32 %i.rb to i64
  %.idx.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.rc, 2 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qx, i64 %.idx.i.i.i.i.i.i.i.i.i
  %.not11.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.rb, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN4Luau7CodeGen6IrInstEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %bb.bm
  %i.re = add nsw i64 %.idx.i.i.i.i.i.i.i.i.i, -4 ; 2 uses
  %i.rf = lshr exact i64 %i.re, 2
  %i.rg = add nuw nsw i64 %i.rf, 1                ; 2 uses
  %min.iters.check1683 = icmp ult i64 %i.re, 28
  %i.rh = sub i64 %i.qy, %i.qq
  %diff.check1681 = icmp ugt i64 %i.rh, -32
  %or.cond1699 = select i1 %min.iters.check1683, i1 true, i1 %diff.check1681
  br i1 %or.cond1699, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader1713, label %vector.ph1684

vector.ph1684:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec1685 = and i64 %i.rg, 9223372036854775800 ; 3 uses
  %i.ri = shl i64 %n.vec1685, 2                   ; 2 uses
  %i.rj = getelementptr i8, ptr %i.qw, i64 %i.ri
  %i.rk = getelementptr i8, ptr %i.qx, i64 %i.ri
  br label %vector.body1686

vector.body1686:                                  ; preds = %vector.body1686, %vector.ph1684
  %index1687 = phi i64 [ 0, %vector.ph1684 ], [ %index.next1692, %vector.body1686 ] ; 2 uses
  %i.rl = shl i64 %index1687, 2                   ; 2 uses
  %next.gep1688 = getelementptr i8, ptr %i.qw, i64 %i.rl ; 2 uses
  %next.gep1689 = getelementptr i8, ptr %i.qx, i64 %i.rl ; 2 uses
  %i.rm = getelementptr i8, ptr %next.gep1689, i64 16
  %wide.load1690 = load <4 x i32>, ptr %next.gep1689, align 4, !tbaa !88
  %wide.load1691 = load <4 x i32>, ptr %i.rm, align 4, !tbaa !88
  %i.rn = getelementptr i8, ptr %next.gep1688, i64 16
  store <4 x i32> %wide.load1690, ptr %next.gep1688, align 4, !tbaa !88
  store <4 x i32> %wide.load1691, ptr %i.rn, align 4, !tbaa !88
  %index.next1692 = add nuw i64 %index1687, 8     ; 2 uses
  %i.ro = icmp eq i64 %index.next1692, %n.vec1685
  br i1 %i.ro, label %middle.block1693, label %vector.body1686, !llvm.loop !177

middle.block1693:                                 ; preds = %vector.body1686
  %cmp.n1694 = icmp eq i64 %i.rg, %n.vec1685
  br i1 %cmp.n1694, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader1713

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader1713:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block1693
  %.013.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.qw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.rj, %middle.block1693 ]
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.qx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.rk, %middle.block1693 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader1713, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.rr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader1713 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.rq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader1713 ] ; 2 uses
  %i.rp = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !88
  store i32 %i.rp, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !88
  %i.rq = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.rq, %i.rd
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !178

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block1693
  store i32 %i.rb, ptr %i.qu, align 8, !tbaa !87
  store i32 0, ptr %i.ra, align 8, !tbaa !87
  br label %_ZSt10_ConstructIN4Luau7CodeGen6IrInstEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.bn:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.qx, ptr %i.qs, align 8, !tbaa !86
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 20
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ru = load <2 x i32>, ptr %i.rt, align 8, !tbaa !34
  store <2 x i32> %i.ru, ptr %i.qu, align 8, !tbaa !34
  store ptr %i.qz, ptr %i.qt, align 8, !tbaa !86
  store i32 6, ptr %i.rs, align 4, !tbaa !108
  store i32 0, ptr %i.rt, align 8, !tbaa !87
  br label %_ZSt10_ConstructIN4Luau7CodeGen6IrInstEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN4Luau7CodeGen6IrInstEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.bn, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i, %bb.bm
  %i.rv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 48
  %i.rw = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.rv, ptr noundef nonnull align 8 dereferenceable(11) %i.rw, i64 11, i1 false)
  %i.rx = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 64
  %.not.i.i.i.i.i.i = icmp eq ptr %i.rx, %i.qm
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i401.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !179

._crit_edge.i404.i:                               ; preds = %_ZN4Luau7CodeGen6IrInstD2Ev.exit.i.i, %.noexc406.i
  %.pre.i248852.i = phi i32 [ 0, %.noexc406.i ], [ %i.sh, %_ZN4Luau7CodeGen6IrInstD2Ev.exit.i.i ]
  %i.rz = phi ptr [ %i.qj, %.noexc406.i ], [ %.pre16.i.i, %_ZN4Luau7CodeGen6IrInstD2Ev.exit.i.i ] ; 2 uses
  %.not.i405.i = icmp eq ptr %i.rz, %i.mu
  br i1 %.not.i405.i, label %.noexc249.i, label %bb.bp

.lr.ph.i401.i:                                    ; preds = %_ZSt10_ConstructIN4Luau7CodeGen6IrInstEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %_ZN4Luau7CodeGen6IrInstD2Ev.exit.i.i
  %i.sa = phi ptr [ %.pre16.i.i, %_ZN4Luau7CodeGen6IrInstD2Ev.exit.i.i ], [ %i.qj, %_ZSt10_ConstructIN4Luau7CodeGen6IrInstEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.sb = phi i32 [ %i.sh, %_ZN4Luau7CodeGen6IrInstD2Ev.exit.i.i ], [ %i.qk, %_ZSt10_ConstructIN4Luau7CodeGen6IrInstEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZN4Luau7CodeGen6IrInstD2Ev.exit.i.i ], [ 0, %_ZSt10_ConstructIN4Luau7CodeGen6IrInstEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.sc = getelementptr inbounds nuw [64 x i8], ptr %i.sa, i64 %indvars.iv.i.i ; 3 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  %i.se = getelementptr inbounds nuw i8, ptr %i.sc, i64 16 ; 2 uses
  %.promoted.i.i.i.i.i = load i32, ptr %i.se, align 8, !tbaa !87
  %.not1.i.i.i.i.i = icmp eq i32 %.promoted.i.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.i401.i
  store i32 0, ptr %i.se, align 8, !tbaa !87
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i, %.lr.ph.i401.i
  %i.sf = load ptr, ptr %i.sd, align 8, !tbaa !86 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sc, i64 24
  %.not.i.i.i402.i = icmp eq ptr %i.sf, %i.sg
  br i1 %.not.i.i.i402.i, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit.i.i, label %bb.bo

bb.bo:                                            ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.sf) #23
  %.pre.i403.i = load i32, ptr %i.ms, align 8, !tbaa !229
  %.pre849.i = load ptr, ptr %11, align 8, !tbaa !231
  br label %_ZN4Luau7CodeGen6IrInstD2Ev.exit.i.i

_ZN4Luau7CodeGen6IrInstD2Ev.exit.i.i:             ; preds = %bb.bo, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i
  %.pre16.i.i = phi ptr [ %i.sa, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i ], [ %.pre849.i, %bb.bo ] ; 2 uses
  %i.sh = phi i32 [ %i.sb, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i ], [ %.pre.i403.i, %bb.bo ] ; 3 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.si = zext i32 %i.sh to i64
  %i.sj = icmp samesign ult i64 %indvars.iv.next.i.i, %i.si
  br i1 %i.sj, label %.lr.ph.i401.i, label %._crit_edge.i404.i, !llvm.loop !180

bb.bp:                                            ; preds = %._crit_edge.i404.i
  call void @_ZdlPv(ptr noundef %i.rz) #23
  %.pre.i248.pre.i = load i32, ptr %i.ms, align 8, !tbaa !229
  br label %.noexc249.i

.noexc249.i:                                      ; preds = %bb.bp, %._crit_edge.i404.i
  %.pre.i248.i = phi i32 [ %.pre.i248.pre.i, %bb.bp ], [ %.pre.i248852.i, %._crit_edge.i404.i ]
  store ptr %i.qi, ptr %11, align 8, !tbaa !231
  store i32 %.010.i.i, ptr %i.mt, align 4, !tbaa !230
  br label %bb.bq

bb.bq:                                            ; preds = %.noexc249.i, %.lr.ph724._crit_edge.i
  %i.sk = phi ptr [ %i.qi, %.noexc249.i ], [ %.pre853.i, %.lr.ph724._crit_edge.i ]
  %i.sl = phi i32 [ %.pre.i248.i, %.noexc249.i ], [ %i.py, %.lr.ph724._crit_edge.i ]
  %i.sm = zext i32 %i.sl to i64
  %i.sn = getelementptr inbounds nuw [64 x i8], ptr %i.sk, i64 %i.sm ; 6 uses
  %i.so = load i8, ptr %i.px, align 8, !tbaa !85
  store i8 %i.so, ptr %i.sn, align 8, !tbaa !85
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sn, i64 8 ; 4 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %.0167722.i, i64 16 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sn, i64 16 ; 5 uses
  store i32 0, ptr %i.sr, align 8, !tbaa !87
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sn, i64 20 ; 2 uses
  store i32 6, ptr %i.ss, align 4, !tbaa !108
  %i.st = getelementptr inbounds nuw i8, ptr %i.sn, i64 24 ; 4 uses
  store ptr %i.st, ptr %i.sp, align 8, !tbaa !86
  %i.su = getelementptr inbounds nuw i8, ptr %.0167722.i, i64 24 ; 4 uses
  %i.sv = load i32, ptr %i.su, align 8, !tbaa !87 ; 4 uses
  %i.sw = icmp ugt i32 %i.sv, 6
  br i1 %i.sw, label %bb.br, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i.i

bb.br:                                            ; preds = %bb.bq
  %i.sx = icmp ult i32 %i.sv, 9
  %i.sy = add i32 %i.sv, 4
  %.09.i.i.i.i = select i1 %i.sx, i32 9, i32 %i.sy ; 2 uses
  %i.sz = zext i32 %.09.i.i.i.i to i64
  %i.ta = shl nuw nsw i64 %i.sz, 2
  %i.tb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ta) #24
          to label %.noexc.i.i unwind label %bb.bt ; 6 uses

.noexc.i.i:                                       ; preds = %bb.br
  %i.tc = load ptr, ptr %i.sp, align 8, !tbaa !86 ; 7 uses
  %i.td = load i32, ptr %i.sr, align 8, !tbaa !87 ; 2 uses
  %i.te = zext i32 %i.td to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.te, 2        ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tc, i64 %.idx.i.i.i.i
  %.not11.i.i.i.i.i.i.i.i = icmp eq i32 %i.td, 0
  br i1 %.not11.i.i.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i397.i.preheader

.lr.ph.i.i.i.i.i.i.i397.i.preheader:              ; preds = %.noexc.i.i
  %i.tg = ptrtoaddr ptr %i.tc to i64
  %i.th = ptrtoaddr ptr %i.tb to i64
  %i.ti = add nsw i64 %.idx.i.i.i.i, -4           ; 2 uses
  %i.tj = lshr exact i64 %i.ti, 2
  %i.tk = add nuw nsw i64 %i.tj, 1                ; 2 uses
  %min.iters.check1666 = icmp ult i64 %i.ti, 28
  %i.tl = sub i64 %i.tg, %i.th
  %diff.check1664 = icmp ugt i64 %i.tl, -32
  %or.cond1700 = select i1 %min.iters.check1666, i1 true, i1 %diff.check1664
  br i1 %or.cond1700, label %.lr.ph.i.i.i.i.i.i.i397.i.preheader1715, label %vector.ph1667

vector.ph1667:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i397.i.preheader
  %n.vec1668 = and i64 %i.tk, 9223372036854775800 ; 3 uses
  %i.tm = shl i64 %n.vec1668, 2                   ; 2 uses
  %i.tn = getelementptr i8, ptr %i.tb, i64 %i.tm
  %i.to = getelementptr i8, ptr %i.tc, i64 %i.tm
  br label %vector.body1669

vector.body1669:                                  ; preds = %vector.body1669, %vector.ph1667
  %index1670 = phi i64 [ 0, %vector.ph1667 ], [ %index.next1675, %vector.body1669 ] ; 2 uses
  %i.tp = shl i64 %index1670, 2                   ; 2 uses
  %next.gep1671 = getelementptr i8, ptr %i.tb, i64 %i.tp ; 2 uses
  %next.gep1672 = getelementptr i8, ptr %i.tc, i64 %i.tp ; 2 uses
  %i.tq = getelementptr i8, ptr %next.gep1672, i64 16
  %wide.load1673 = load <4 x i32>, ptr %next.gep1672, align 4, !tbaa !88
  %wide.load1674 = load <4 x i32>, ptr %i.tq, align 4, !tbaa !88
  %i.tr = getelementptr i8, ptr %next.gep1671, i64 16
  store <4 x i32> %wide.load1673, ptr %next.gep1671, align 4, !tbaa !88
  store <4 x i32> %wide.load1674, ptr %i.tr, align 4, !tbaa !88
  %index.next1675 = add nuw i64 %index1670, 8     ; 2 uses
  %i.ts = icmp eq i64 %index.next1675, %n.vec1668
  br i1 %i.ts, label %middle.block1676, label %vector.body1669, !llvm.loop !181

middle.block1676:                                 ; preds = %vector.body1669
  %cmp.n1677 = icmp eq i64 %i.tk, %n.vec1668
  br i1 %cmp.n1677, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i397.i.preheader1715

.lr.ph.i.i.i.i.i.i.i397.i.preheader1715:          ; preds = %.lr.ph.i.i.i.i.i.i.i397.i.preheader, %middle.block1676
  %.013.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.tb, %.lr.ph.i.i.i.i.i.i.i397.i.preheader ], [ %i.tn, %middle.block1676 ]
  %.sroa.08.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.tc, %.lr.ph.i.i.i.i.i.i.i397.i.preheader ], [ %i.to, %middle.block1676 ]
  br label %.lr.ph.i.i.i.i.i.i.i397.i

.lr.ph.i.i.i.i.i.i.i397.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i397.i.preheader1715, %.lr.ph.i.i.i.i.i.i.i397.i
  %.013.i.i.i.i.i.i.i.i = phi ptr [ %i.tv, %.lr.ph.i.i.i.i.i.i.i397.i ], [ %.013.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i397.i.preheader1715 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i.i = phi ptr [ %i.tu, %.lr.ph.i.i.i.i.i.i.i397.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i397.i.preheader1715 ] ; 2 uses
  %i.tt = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i.i, align 4, !tbaa !88
  store i32 %i.tt, ptr %.013.i.i.i.i.i.i.i.i, align 4, !tbaa !88
  %i.tu = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.tu, %i.tf
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i397.i, !llvm.loop !182

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i397.i, %middle.block1676, %.noexc.i.i
  %.not.i.i.i398.i = icmp eq ptr %i.tc, %i.st
  br i1 %.not.i.i.i398.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.tc) #23
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i.i: ; preds = %bb.bs, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i
  store ptr %i.tb, ptr %i.sp, align 8, !tbaa !86
  store i32 %.09.i.i.i.i, ptr %i.ss, align 4, !tbaa !108
  %.pre.i399.i = load i32, ptr %i.su, align 8, !tbaa !87
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i.i: ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i.i, %bb.bq
  %i.tw = phi ptr [ %i.tb, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i.i ], [ %i.st, %bb.bq ] ; 4 uses
  %i.tx = phi i32 [ %.pre.i399.i, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i.i ], [ %i.sv, %bb.bq ] ; 2 uses
  %i.ty = load ptr, ptr %i.sq, align 8, !tbaa !86 ; 5 uses
  %i.tz = zext i32 %i.tx to i64
  %.idx.i389.i = shl nuw nsw i64 %i.tz, 2         ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.ty, i64 %.idx.i389.i
  %.not9.i.i.i.i.i = icmp eq i32 %i.tx, 0
  br i1 %.not9.i.i.i.i.i, label %bb.bv, label %.lr.ph.i.i.i.i390.i.preheader

.lr.ph.i.i.i.i390.i.preheader:                    ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i.i
  %i.ub = ptrtoaddr ptr %i.ty to i64
  %i.uc = ptrtoaddr ptr %i.tw to i64
  %i.ud = add nsw i64 %.idx.i389.i, -4            ; 2 uses
  %i.ue = lshr exact i64 %i.ud, 2
  %i.uf = add nuw nsw i64 %i.ue, 1                ; 2 uses
  %min.iters.check1649 = icmp ult i64 %i.ud, 28
  %i.ug = sub i64 %i.ub, %i.uc
  %diff.check1647 = icmp ugt i64 %i.ug, -32
  %or.cond1701 = select i1 %min.iters.check1649, i1 true, i1 %diff.check1647
  br i1 %or.cond1701, label %.lr.ph.i.i.i.i390.i.preheader1714, label %vector.ph1650

vector.ph1650:                                    ; preds = %.lr.ph.i.i.i.i390.i.preheader
  %n.vec1651 = and i64 %i.uf, 9223372036854775800 ; 3 uses
  %i.uh = shl i64 %n.vec1651, 2                   ; 2 uses
  %i.ui = getelementptr i8, ptr %i.tw, i64 %i.uh
  %i.uj = getelementptr i8, ptr %i.ty, i64 %i.uh
  br label %vector.body1652

vector.body1652:                                  ; preds = %vector.body1652, %vector.ph1650
  %index1653 = phi i64 [ 0, %vector.ph1650 ], [ %index.next1658, %vector.body1652 ] ; 2 uses
  %i.uk = shl i64 %index1653, 2                   ; 2 uses
  %next.gep1654 = getelementptr i8, ptr %i.tw, i64 %i.uk ; 2 uses
  %next.gep1655 = getelementptr i8, ptr %i.ty, i64 %i.uk ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN4Luau7CodeGen15VmExitStoreInfoESaIS2_EE14_M_move_assignEOS4_St17integral_constantIbLb1EE:bb.a
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
  %.013.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.bc, %_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i ] ; 8 uses
  %.sroa.08.012.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i.preheader ], [ %i.bb, %_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i ] ; 9 uses
  %i.q = mul nuw nsw i64 %indvar, 72
  %i.r = add i64 %i.p, %i.q
  %i.s = load i32, ptr %.sroa.08.012.i.i.i.i, align 8, !tbaa !153
  store i32 %i.s, ptr %.013.i.i.i.i, align 8, !tbaa !153
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 8
  %i.v = load i8, ptr %i.u, align 8, !tbaa !85
  store i8 %i.v, ptr %i.t, align 8, !tbaa !85
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 24 ; 3 uses
  store i32 0, ptr %i.y, align 8, !tbaa !87
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 28
  store i32 6, ptr %i.z, align 4, !tbaa !108
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 32 ; 4 uses
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !86
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !86  ; 7 uses
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 24 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !87 ; 3 uses
  %i.ag = zext i32 %i.af to i64
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ag, 2 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i.i.i.i.i.i.i
  %.not11.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %bb.b
  %i.ai = add nsw i64 %.idx.i.i.i.i.i.i.i.i, -4   ; 2 uses
  %i.aj = lshr exact i64 %i.ai, 2
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ai, 28
  %i.al = sub i64 %i.ac, %i.r
  %diff.check = icmp ugt i64 %i.al, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ak, 9223372036854775800     ; 3 uses
  %i.am = shl i64 %n.vec, 2                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.aa, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.ab, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.ap ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ab, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep23, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep23, align 4, !tbaa !88
  %wide.load24 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !88
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !88
  store <4 x i32> %wide.load24, ptr %i.ar, align 4, !tbaa !88
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !356

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader26

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader26:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader26, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader26 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader26 ] ; 2 uses
  %i.at = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !88
  store i32 %i.at, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !88
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.au, %i.ah
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !357

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block
  store i32 %i.af, ptr %i.y, align 8, !tbaa !87
  store i32 0, ptr %i.ae, align 8, !tbaa !87
  br label %_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  store ptr %i.ab, ptr %i.w, align 8, !tbaa !86
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 28
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 24 ; 2 uses
  %i.ay = load <2 x i32>, ptr %i.ax, align 8, !tbaa !34
  store <2 x i32> %i.ay, ptr %i.y, align 8, !tbaa !34
  store ptr %i.ad, ptr %i.x, align 8, !tbaa !86
  store i32 6, ptr %i.aw, align 4, !tbaa !108
  store i32 0, ptr %i.ax, align 8, !tbaa !87
  br label %_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.b, %bb.c, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 56
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.az, ptr noundef nonnull align 8 dereferenceable(11) %i.ba, i64 11, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 72 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 72
  %.not.i.i.i.i = icmp eq ptr %i.bb, %i.n
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i.i, label %.lr.ph, label %.lr.ph.i.i.i.i, !llvm.loop !12

._crit_edge.loopexit:                             ; preds = %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !75
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit
  %i.bd = phi ptr [ %.pre16, %._crit_edge.loopexit ], [ %i.j, %bb.a ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not = icmp eq ptr %i.bd, %i.be
  br i1 %.not, label %bb.f, label %bb.e

.lr.ph:                                           ; preds = %_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i, %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit
  %i.bf = phi i32 [ %i.bm, %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit ], [ %i.l, %_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit ], [ 0, %_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i ] ; 2 uses
  %i.bg = load ptr, ptr %0, align 8, !tbaa !75
  %i.bh = getelementptr inbounds nuw [72 x i8], ptr %i.bg, i64 %indvars.iv ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  %.promoted.i.i.i.i = load i32, ptr %i.bj, align 8, !tbaa !87
  %.not1.i.i.i.i = icmp eq i32 %.promoted.i.i.i.i, 0
  br i1 %.not1.i.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.lr.ph
  store i32 0, ptr %i.bj, align 8, !tbaa !87
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i, %.lr.ph
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !86 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %.not.i.i.i = icmp eq ptr %i.bk, %i.bl
  br i1 %.not.i.i.i, label %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.bk) #23
  %.pre = load i32, ptr %i.k, align 8, !tbaa !76
  br label %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit

_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit:     ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i, %bb.d
  %i.bm = phi i32 [ %i.bf, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i ], [ %.pre, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = icmp samesign ult i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !358

bb.e:                                             ; preds = %._crit_edge
  tail call void @_ZdlPv(ptr noundef %i.bd) #23
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
          to label %.noexc unwind label %bb.d     ; 6 uses

.noexc:                                           ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !86     ; 7 uses
  %i.m = load i32, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %i.n = zext i32 %i.m to i64
  %.idx.i.i = shl nuw nsw i64 %i.n, 2             ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i
  %.not11.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not11.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc
  %i.p = ptrtoaddr ptr %i.l to i64
  %i.q = ptrtoaddr ptr %i.k to i64
  %i.r = add nsw i64 %.idx.i.i, -4                ; 2 uses
  %i.s = lshr exact i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 44
  %i.u = sub i64 %i.p, %i.q
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.v = shl i64 %n.vec, 2                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.k, i64 %i.v
  %i.x = getelementptr i8, ptr %i.l, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.y ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.l, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep9, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep9, align 4, !tbaa !88
  %wide.load10 = load <4 x i32>, ptr %i.z, align 4, !tbaa !88
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !88
  store <4 x i32> %wide.load10, ptr %i.aa, align 4, !tbaa !88
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !360

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader31

.lr.ph.i.i.i.i.i.i.preheader31:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.ph = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader31, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader31 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader31 ] ; 2 uses
  %i.ac = load i32, ptr %.sroa.08.012.i.i.i.i.i.i, align 4, !tbaa !88
  store i32 %i.ac, ptr %.013.i.i.i.i.i.i, align 4, !tbaa !88
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.o
  br i1 %.not.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !361

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc
  %.not.i.i = icmp eq ptr %i.l, %i.c
  br i1 %.not.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.l) #23
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i: ; preds = %bb.c, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i
  store ptr %i.k, ptr %0, align 8, !tbaa !86
  store i32 %.09.i.i, ptr %i.b, align 4, !tbaa !108
  %.pre = load i32, ptr %i.d, align 8, !tbaa !87
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit: ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i, %bb.a
  %i.af = phi ptr [ %i.k, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i ], [ %i.c, %bb.a ] ; 4 uses
end_hunk_1
