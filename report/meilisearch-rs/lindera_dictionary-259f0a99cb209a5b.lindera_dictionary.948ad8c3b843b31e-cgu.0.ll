Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/lindera_dictionary-259f0a99cb209a5b.lindera_dictionary.948ad8c3b843b31e-cgu.0?download=true
inline.NumInlined: 4519
inline.NumDeleted: 2001
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4core5slice4sort6stable9quicksort9quicksort17h7ddf27d5d9d76b2fE:bb.a
  br i1 %i.mz, label %.lr.ph137.i.preheader, label %._crit_edge138.i

.lr.ph137.i.preheader:                            ; preds = %._crit_edge.i
  %.val27.i = load ptr, ptr %i.iu, align 8, !alias.scope !9417 ; 6 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.val27.i, i64 80
  %i.nb = getelementptr inbounds nuw i8, ptr %.val27.i, i64 72
  %i.nc = getelementptr inbounds nuw i8, ptr %.val27.i, i64 64
  %i.nd = getelementptr inbounds nuw i8, ptr %.val27.i, i64 48
  %i.ne = getelementptr inbounds nuw i8, ptr %.val27.i, i64 40
  br label %.lr.ph137.i

._crit_edge138.i:                                 ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit74.i", %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.of, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit74.i" ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.oh, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit74.i" ] ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.oi, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit74.i" ] ; 2 uses
  %i.nf = icmp eq i64 %.sroa.02.0.i, %.sroa.15.04371731
  br i1 %i.nf, label %bb.bf, label %bb.be

.lr.ph137.i:                                      ; preds = %.lr.ph137.i.preheader, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit74.i"
  %.sroa.9.2135.i = phi ptr [ %i.oi, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit74.i" ], [ %.sroa.9.1.lcssa.i, %.lr.ph137.i.preheader ] ; 2 uses
  %.sroa.27.2134.i = phi i64 [ %i.oh, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit74.i" ], [ %.sroa.27.1.lcssa.i, %.lr.ph137.i.preheader ] ; 2 uses
  %.sroa.43.2133.i = phi ptr [ %i.of, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit74.i" ], [ %.sroa.43.1.lcssa.i, %.lr.ph137.i.preheader ]
  %.val.i = load ptr, ptr %.sroa.9.2135.i, align 8, !alias.scope !9417, !nonnull !6, !align !8, !noundef !6 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9434)
  %i.ng = getelementptr inbounds nuw i8, ptr %.val.i, i64 80
  %i.nh = load i64, ptr %i.ng, align 8, !alias.scope !9434, !noalias !9420, !noundef !6
  %.not.i.i.i.i66.i = icmp ne i64 %i.nh, 0
  %i.ni = getelementptr inbounds nuw i8, ptr %.val.i, i64 72
  %i.nj = load i64, ptr %i.ni, align 8, !alias.scope !9434, !noalias !9420
  %i.nk = icmp ne i64 %i.nj, 0
  %or.cond.i.i.i.i67.i = select i1 %.not.i.i.i.i66.i, i1 %i.nk, i1 false
  %i.nl = ptrtoint ptr %.val.i to i64
  br i1 %or.cond.i.i.i.i67.i, label %bb.ax, label %bb.bc

bb.ax:                                            ; preds = %.lr.ph137.i
  %i.nm = getelementptr inbounds nuw i8, ptr %.val.i, i64 64
  %i.nn = load ptr, ptr %i.nm, align 8, !alias.scope !9434, !noalias !9420, !nonnull !6, !noundef !6
  %i.no = load i64, ptr %i.nn, align 8, !noalias !9435, !noundef !6 ; 4 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.val.i, i64 48
  %i.nq = load i64, ptr %i.np, align 8, !noalias !9420, !noundef !6 ; 2 uses
  %.not.i.i.i68.i = icmp ugt i64 %i.no, %i.nq
  br i1 %.not.i.i.i68.i, label %bb.ay, label %bb.az, !prof !9

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.no, i64 noundef %i.nq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279) #46, !noalias !9420
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.nr = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  %i.ns = load ptr, ptr %i.nr, align 8, !noalias !9420, !nonnull !6, !noundef !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !9436)
  %i.nt = load i64, ptr %i.na, align 8, !alias.scope !9436, !noalias !9420, !noundef !6
  %.not.i.i14.i.i69.i = icmp ne i64 %i.nt, 0
  %i.nu = load i64, ptr %i.nb, align 8, !alias.scope !9436, !noalias !9420
  %i.nv = icmp ne i64 %i.nu, 0
  %or.cond.i.i15.i.i70.i = select i1 %.not.i.i14.i.i69.i, i1 %i.nv, i1 false
  br i1 %or.cond.i.i15.i.i70.i, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.nw = load ptr, ptr %i.nc, align 8, !alias.scope !9436, !noalias !9420, !nonnull !6, !noundef !6
  %i.nx = load i64, ptr %i.nw, align 8, !noalias !9437, !noundef !6 ; 4 uses
  %i.ny = load i64, ptr %i.nd, align 8, !noalias !9420, !noundef !6 ; 2 uses
  %.not.i18.i.i71.i = icmp ugt i64 %i.nx, %i.ny
  br i1 %.not.i18.i.i71.i, label %bb.bb, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit74.i", !prof !9

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.nx, i64 noundef %i.ny, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279) #46, !noalias !9420
  unreachable

bb.bc:                                            ; preds = %.lr.ph137.i
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #46, !noalias !9420
  unreachable

bb.bd:                                            ; preds = %bb.az
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @182) #46, !noalias !9420
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit74.i": ; preds = %bb.ba
  %i.nz = load ptr, ptr %i.ne, align 8, !noalias !9420, !nonnull !6, !noundef !6
  %..i.i72.i = call i64 @llvm.umin.i64(i64 %i.no, i64 %i.nx)
  %i.oa = sub i64 %i.no, %i.nx
  %i.ob = call i32 @memcmp(ptr nonnull %i.ns, ptr nonnull %i.nz, i64 %..i.i72.i), !noalias !9420 ; 2 uses
  %i.oc = sext i32 %i.ob to i64
  %i.od = icmp eq i32 %i.ob, 0
  %spec.store.select.i.i73.i = select i1 %i.od, i64 %i.oa, i64 %i.oc ; 2 uses
  %i.oe = icmp slt i64 %spec.store.select.i.i73.i, 0
  %i.of = getelementptr inbounds i8, ptr %.sroa.43.2133.i, i64 -8 ; 3 uses
  %.sroa.01.0.i75.i = select i1 %i.oe, ptr %2, ptr %i.of
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i75.i, i64 %.sroa.27.2134.i
  store i64 %i.nl, ptr %i.og, align 8, !alias.scope !9418, !noalias !9438
  %spec.store.select.i.i73.lobit.i = lshr i64 %spec.store.select.i.i73.i, 63
  %i.oh = add i64 %spec.store.select.i.i73.lobit.i, %.sroa.27.2134.i ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.9.2135.i, i64 8 ; 3 uses
  %i.oj = icmp ult ptr %i.oi, %i.my
  br i1 %i.oj, label %.lr.ph137.i, label %._crit_edge138.i

bb.be:                                            ; preds = %._crit_edge138.i
  %i.ok = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -8 ; 2 uses
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.ok, i64 %.sroa.27.2.lcssa.i
  %i.om = load i64, ptr %.sroa.9.2.lcssa.i, align 8, !alias.scope !9417, !noalias !9439
  store i64 %i.om, ptr %i.ol, align 8, !alias.scope !9418, !noalias !9439
  %i.on = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 8
  br label %bb.af

bb.bf:                                            ; preds = %._crit_edge138.i
  %i.oo = shl i64 %.sroa.27.2.lcssa.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph583, ptr nonnull align 8 %2, i64 %i.oo, i1 false), !alias.scope !9420
  %i.op = sub i64 %.sroa.15.04371731, %.sroa.27.2.lcssa.i ; 5 uses
  %.not146.i = icmp eq i64 %.sroa.15.04371731, %.sroa.27.2.lcssa.i
  br i1 %.not146.i, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2345713224015e00E.exit, label %.lr.ph144.i

.lr.ph144.i:                                      ; preds = %bb.bf
  %i.oq = getelementptr [8 x i8], ptr %.sroa.0.0.ph583, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check1750 = icmp ult i64 %i.op, 4
  br i1 %min.iters.check1750, label %scalar.ph1749.preheader, label %vector.ph1751

vector.ph1751:                                    ; preds = %.lr.ph144.i
  %n.vec1752 = and i64 %i.op, -4                  ; 3 uses
  br label %vector.body1753

vector.body1753:                                  ; preds = %vector.body1753, %vector.ph1751
  %index1754 = phi i64 [ 0, %vector.ph1751 ], [ %index.next1759, %vector.body1753 ] ; 3 uses
  %i.or = xor i64 %index1754, -1
  %i.os = getelementptr [8 x i8], ptr %i.ix, i64 %i.or ; 2 uses
  %i.ot = getelementptr [8 x i8], ptr %i.oq, i64 %index1754 ; 2 uses
  %i.ou = getelementptr i8, ptr %i.os, i64 -8
  %i.ov = getelementptr i8, ptr %i.os, i64 -24
  %wide.load1755 = load <2 x i64>, ptr %i.ou, align 8, !alias.scope !9418
  %wide.load1756 = load <2 x i64>, ptr %i.ov, align 8, !alias.scope !9418
  %reverse1757 = shufflevector <2 x i64> %wide.load1755, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse1758 = shufflevector <2 x i64> %wide.load1756, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ow = getelementptr i8, ptr %i.ot, i64 16
  store <2 x i64> %reverse1757, ptr %i.ot, align 8, !alias.scope !9417
  store <2 x i64> %reverse1758, ptr %i.ow, align 8, !alias.scope !9417
  %index.next1759 = add nuw i64 %index1754, 4     ; 2 uses
  %i.ox = icmp eq i64 %index.next1759, %n.vec1752
  br i1 %i.ox, label %middle.block1760, label %vector.body1753, !llvm.loop !9350

middle.block1760:                                 ; preds = %vector.body1753
  %cmp.n1761 = icmp eq i64 %i.op, %n.vec1752
  br i1 %cmp.n1761, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2345713224015e00E.exit, label %scalar.ph1749.preheader

scalar.ph1749.preheader:                          ; preds = %.lr.ph144.i, %middle.block1760
  %.sroa.05.0142.i.ph = phi i64 [ 0, %.lr.ph144.i ], [ %n.vec1752, %middle.block1760 ]
  br label %scalar.ph1749

scalar.ph1749:                                    ; preds = %scalar.ph1749.preheader, %scalar.ph1749
  %.sroa.05.0142.i = phi i64 [ %i.oy, %scalar.ph1749 ], [ %.sroa.05.0142.i.ph, %scalar.ph1749.preheader ] ; 3 uses
  %i.oy = add nuw i64 %.sroa.05.0142.i, 1         ; 2 uses
  %i.oz = xor i64 %.sroa.05.0142.i, -1
  %i.pa = getelementptr [8 x i8], ptr %i.ix, i64 %i.oz
  %i.pb = getelementptr [8 x i8], ptr %i.oq, i64 %.sroa.05.0142.i
  %i.pc = load i64, ptr %i.pa, align 8, !alias.scope !9418
  store i64 %i.pc, ptr %i.pb, align 8, !alias.scope !9417
  %exitcond.not.i = icmp eq i64 %i.oy, %i.op
  br i1 %exitcond.not.i, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2345713224015e00E.exit, label %scalar.ph1749, !llvm.loop !9351

_ZN4core5slice4sort6stable9quicksort16stable_partition17h2345713224015e00E.exit: ; preds = %scalar.ph1749, %middle.block1760, %bb.bf
  %i.pd = icmp eq i64 %.sroa.27.2.lcssa.i, 0
  br i1 %i.pd, label %.critedge35, label %bb.bg

bb.bg:                                            ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2345713224015e00E.exit
  %.not33 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.15.04371731
  br i1 %.not33, label %bb.bw, label %bb.bx, !prof !16

.critedge35:                                      ; preds = %bb.ac, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2345713224015e00E.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !9440)
  call void @llvm.experimental.noalias.scope.decl(metadata !9441)
  %.not90 = icmp ult i64 %3, %.sroa.15.04371731
  br i1 %.not90, label %bb.bi, label %bb.bh, !prof !9

bb.bh:                                            ; preds = %.critedge35
  %i.pe = getelementptr [8 x i8], ptr %2, i64 %.sroa.15.04371731 ; 3 uses
  br label %bb.bj

bb.bi:                                            ; preds = %.critedge35
  call void @llvm.trap()
  unreachable

bb.bj:                                            ; preds = %bb.bt, %bb.bh
  %.sroa.43.0.i48 = phi ptr [ %i.pe, %bb.bh ], [ %i.uu, %bb.bt ] ; 2 uses
  %.sroa.27.0.i49 = phi i64 [ 0, %bb.bh ], [ %i.ux, %bb.bt ] ; 2 uses
  %.sroa.9.0.i50 = phi ptr [ %.sroa.0.0.ph583, %bb.bh ], [ %i.uy, %bb.bt ] ; 3 uses
  %.sroa.02.0.i51 = phi i64 [ %.sroa.0.0.i36, %bb.bh ], [ %.sroa.15.04371731, %bb.bt ] ; 3 uses
  %i.pf = call i64 @llvm.usub.sat.i64(i64 %.sroa.02.0.i51, i64 3)
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph583, i64 %i.pf ; 2 uses
  %i.ph = icmp ult ptr %.sroa.9.0.i50, %i.pg
  br i1 %i.ph, label %.lr.ph.i70, label %._crit_edge.i52

.lr.ph.i70:                                       ; preds = %bb.bj
  %.val35.i71 = load ptr, ptr %i.iu, align 8, !alias.scope !9440, !nonnull !6, !align !8, !noundef !6 ; 5 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %.val35.i71, i64 80
  %i.pj = getelementptr inbounds nuw i8, ptr %.val35.i71, i64 72
  %i.pk = getelementptr inbounds nuw i8, ptr %.val35.i71, i64 40
  %i.pl = load i64, ptr %i.pi, align 8, !alias.scope !9442, !noalias !9443, !noundef !6
  %.not.i.i.i.i.i76 = icmp ne i64 %i.pl, 0
  %i.pm = load i64, ptr %i.pj, align 8, !alias.scope !9442, !noalias !9443
  %i.pn = icmp ne i64 %i.pm, 0
  %or.cond.i.i.i.i.i77 = select i1 %.not.i.i.i.i.i76, i1 %i.pn, i1 false
  br i1 %or.cond.i.i.i.i.i77, label %.lr.ph.i70.split.us, label %9

.lr.ph.i70.split.us:                              ; preds = %.lr.ph.i70
  %i.po = getelementptr inbounds nuw i8, ptr %.val35.i71, i64 48
  %i.pp = getelementptr inbounds nuw i8, ptr %.val35.i71, i64 64
  %i.pq = load ptr, ptr %i.pp, align 8, !alias.scope !9442, !noalias !9443, !nonnull !6, !noundef !6
  %i.pr = load i64, ptr %i.pq, align 8, !noalias !9444, !noundef !6 ; 10 uses
  %i.ps = load i64, ptr %i.po, align 8, !noalias !9443, !noundef !6 ; 2 uses
  %.not.i.i.i.i78.us = icmp ugt i64 %i.pr, %i.ps
  br i1 %.not.i.i.i.i78.us, label %7, label %.lr.ph.i70.split.us.split, !prof !9

.lr.ph.i70.split.us.split:                        ; preds = %.lr.ph.i70.split.us
  %i.pt = load ptr, ptr %i.pk, align 8, !noalias !9443, !nonnull !6, !noundef !6 ; 4 uses
  br label %bb.bk

bb.bk:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit67.i.us", %.lr.ph.i70.split.us.split
  %.sroa.9.1130.i72.us = phi ptr [ %.sroa.9.0.i50, %.lr.ph.i70.split.us.split ], [ %i.th, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit67.i.us" ] ; 5 uses
  %.sroa.27.1129.i73.us = phi i64 [ %.sroa.27.0.i49, %.lr.ph.i70.split.us.split ], [ %i.tg, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit67.i.us" ] ; 2 uses
  %.sroa.43.1128.i74.us = phi ptr [ %.sroa.43.0.i48, %.lr.ph.i70.split.us.split ], [ %i.td, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit67.i.us" ] ; 4 uses
  %.val34.i75.us = load ptr, ptr %.sroa.9.1130.i72.us, align 8, !alias.scope !9440, !nonnull !6, !noundef !6 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9442)
  %i.pu = ptrtoint ptr %.val34.i75.us to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !9445)
  %i.pv = getelementptr inbounds nuw i8, ptr %.val34.i75.us, i64 80
  %i.pw = load i64, ptr %i.pv, align 8, !alias.scope !9445, !noalias !9443, !noundef !6
  %.not.i.i14.i.i.i79.us = icmp ne i64 %i.pw, 0
  %i.px = getelementptr inbounds nuw i8, ptr %.val34.i75.us, i64 72
  %i.py = load i64, ptr %i.px, align 8, !alias.scope !9445, !noalias !9443
  %i.pz = icmp ne i64 %i.py, 0
  %or.cond.i.i15.i.i.i80.us = select i1 %.not.i.i14.i.i.i79.us, i1 %i.pz, i1 false
  br i1 %or.cond.i.i15.i.i.i80.us, label %bb.bl, label %10

7:                                                ; preds = %.lr.ph.i70.split.us
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.pr, i64 noundef %i.ps, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279) #46, !noalias !9443
  unreachable

bb.bl:                                            ; preds = %bb.bk
  %i.qa = getelementptr inbounds nuw i8, ptr %.val34.i75.us, i64 64
  %i.qb = load ptr, ptr %i.qa, align 8, !alias.scope !9445, !noalias !9443, !nonnull !6, !noundef !6
  %i.qc = load i64, ptr %i.qb, align 8, !noalias !9446, !noundef !6 ; 4 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.val34.i75.us, i64 48
  %i.qe = load i64, ptr %i.qd, align 8, !noalias !9443, !noundef !6 ; 2 uses
  %.not.i18.i.i.i81.us = icmp ugt i64 %i.qc, %i.qe
  br i1 %.not.i18.i.i.i81.us, label %8, label %bb.bm, !prof !9

8:                                                ; preds = %bb.bl
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.qc, i64 noundef %i.qe, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279) #46, !noalias !9443
  unreachable

9:                                                ; preds = %.lr.ph.i70
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #46, !noalias !9443
  unreachable

10:                                               ; preds = %bb.bk
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @182) #46, !noalias !9443
  unreachable

bb.bm:                                            ; preds = %bb.bl
  %i.qf = getelementptr inbounds nuw i8, ptr %.val34.i75.us, i64 40
  %i.qg = load ptr, ptr %i.qf, align 8, !noalias !9443, !nonnull !6, !noundef !6
  %..i.i.i82.us = call i64 @llvm.umin.i64(i64 %i.pr, i64 %i.qc)
  %i.qh = sub i64 %i.pr, %i.qc
  %i.qi = call i32 @memcmp(ptr nonnull %i.pt, ptr nonnull %i.qg, i64 %..i.i.i82.us), !noalias !9443 ; 2 uses
  %i.qj = sext i32 %i.qi to i64
  %i.qk = icmp eq i32 %i.qi, 0
  %spec.store.select.i.i.i83.us = select i1 %i.qk, i64 %i.qh, i64 %i.qj
  %i.ql = icmp sgt i64 %spec.store.select.i.i.i83.us, -1 ; 2 uses
  %i.qm = getelementptr inbounds i8, ptr %.sroa.43.1128.i74.us, i64 -8
  %.sroa.01.0.i.i84.us = select i1 %i.ql, ptr %2, ptr %i.qm
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i84.us, i64 %.sroa.27.1129.i73.us
  store i64 %i.pu, ptr %i.qn, align 8, !alias.scope !9441, !noalias !9447
  %i.qo = zext i1 %i.ql to i64
  %i.qp = add i64 %.sroa.27.1129.i73.us, %i.qo    ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.sroa.9.1130.i72.us, i64 8
  %.val32.i85.us = load ptr, ptr %i.qq, align 8, !alias.scope !9440, !nonnull !6, !noundef !6 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9448)
  %i.qr = getelementptr inbounds nuw i8, ptr %.val32.i85.us, i64 80
  %i.qs = load i64, ptr %i.qr, align 8, !alias.scope !9448, !noalias !9443, !noundef !6
  %.not.i.i14.i.i44.i.us = icmp ne i64 %i.qs, 0
  %i.qt = getelementptr inbounds nuw i8, ptr %.val32.i85.us, i64 72
  %i.qu = load i64, ptr %i.qt, align 8, !alias.scope !9448, !noalias !9443
  %i.qv = icmp ne i64 %i.qu, 0
  %or.cond.i.i15.i.i45.i.us = select i1 %.not.i.i14.i.i44.i.us, i1 %i.qv, i1 false
  %i.qw = ptrtoint ptr %.val32.i85.us to i64
  br i1 %or.cond.i.i15.i.i45.i.us, label %bb.bn, label %12

bb.bn:                                            ; preds = %bb.bm
  %i.qx = getelementptr inbounds nuw i8, ptr %.val32.i85.us, i64 64
  %i.qy = load ptr, ptr %i.qx, align 8, !alias.scope !9448, !noalias !9443, !nonnull !6, !noundef !6
  %i.qz = load i64, ptr %i.qy, align 8, !noalias !9449, !noundef !6 ; 4 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.val32.i85.us, i64 48
  %i.rb = load i64, ptr %i.ra, align 8, !noalias !9443, !noundef !6 ; 2 uses
  %.not.i18.i.i46.i.us = icmp ugt i64 %i.qz, %i.rb
  br i1 %.not.i18.i.i46.i.us, label %11, label %bb.bo, !prof !9

11:                                               ; preds = %bb.bn
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.qz, i64 noundef %i.rb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279) #46, !noalias !9443
  unreachable

12:                                               ; preds = %bb.bm
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @182) #46, !noalias !9443
  unreachable

bb.bo:                                            ; preds = %bb.bn
  %i.rc = getelementptr inbounds nuw i8, ptr %.val32.i85.us, i64 40
  %i.rd = load ptr, ptr %i.rc, align 8, !noalias !9443, !nonnull !6, !noundef !6
  %..i.i47.i.us = call i64 @llvm.umin.i64(i64 %i.pr, i64 %i.qz)
  %i.re = sub i64 %i.pr, %i.qz
  %i.rf = call i32 @memcmp(ptr nonnull %i.pt, ptr nonnull %i.rd, i64 %..i.i47.i.us), !noalias !9443 ; 2 uses
  %i.rg = sext i32 %i.rf to i64
  %i.rh = icmp eq i32 %i.rf, 0
  %spec.store.select.i.i48.i.us = select i1 %i.rh, i64 %i.re, i64 %i.rg
  %i.ri = icmp sgt i64 %spec.store.select.i.i48.i.us, -1 ; 2 uses
  %i.rj = getelementptr inbounds i8, ptr %.sroa.43.1128.i74.us, i64 -16
  %.sroa.01.0.i36.i.us = select i1 %i.ri, ptr %2, ptr %i.rj
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i36.i.us, i64 %i.qp
  store i64 %i.qw, ptr %i.rk, align 8, !alias.scope !9441, !noalias !9450
  %i.rl = zext i1 %i.ri to i64
  %i.rm = add i64 %i.qp, %i.rl                    ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %.sroa.9.1130.i72.us, i64 16
  %.val30.i86.us = load ptr, ptr %i.rn, align 8, !alias.scope !9440, !nonnull !6, !noundef !6 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9451)
  %i.ro = getelementptr inbounds nuw i8, ptr %.val30.i86.us, i64 80
  %i.rp = load i64, ptr %i.ro, align 8, !alias.scope !9451, !noalias !9443, !noundef !6
  %.not.i.i14.i.i53.i.us = icmp ne i64 %i.rp, 0
  %i.rq = getelementptr inbounds nuw i8, ptr %.val30.i86.us, i64 72
  %i.rr = load i64, ptr %i.rq, align 8, !alias.scope !9451, !noalias !9443
  %i.rs = icmp ne i64 %i.rr, 0
  %or.cond.i.i15.i.i54.i.us = select i1 %.not.i.i14.i.i53.i.us, i1 %i.rs, i1 false
  %i.rt = ptrtoint ptr %.val30.i86.us to i64
  br i1 %or.cond.i.i15.i.i54.i.us, label %bb.bp, label %14

bb.bp:                                            ; preds = %bb.bo
  %i.ru = getelementptr inbounds nuw i8, ptr %.val30.i86.us, i64 64
  %i.rv = load ptr, ptr %i.ru, align 8, !alias.scope !9451, !noalias !9443, !nonnull !6, !noundef !6
  %i.rw = load i64, ptr %i.rv, align 8, !noalias !9452, !noundef !6 ; 4 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %.val30.i86.us, i64 48
  %i.ry = load i64, ptr %i.rx, align 8, !noalias !9443, !noundef !6 ; 2 uses
  %.not.i18.i.i55.i.us = icmp ugt i64 %i.rw, %i.ry
  br i1 %.not.i18.i.i55.i.us, label %13, label %bb.bq, !prof !9

13:                                               ; preds = %bb.bp
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.rw, i64 noundef %i.ry, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279) #46, !noalias !9443
  unreachable

14:                                               ; preds = %bb.bo
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @182) #46, !noalias !9443
  unreachable

bb.bq:                                            ; preds = %bb.bp
  %i.rz = getelementptr inbounds nuw i8, ptr %.val30.i86.us, i64 40
  %i.sa = load ptr, ptr %i.rz, align 8, !noalias !9443, !nonnull !6, !noundef !6
  %..i.i56.i.us = call i64 @llvm.umin.i64(i64 %i.pr, i64 %i.rw)
  %i.sb = sub i64 %i.pr, %i.rw
  %i.sc = call i32 @memcmp(ptr nonnull %i.pt, ptr nonnull %i.sa, i64 %..i.i56.i.us), !noalias !9443 ; 2 uses
  %i.sd = sext i32 %i.sc to i64
  %i.se = icmp eq i32 %i.sc, 0
  %spec.store.select.i.i57.i.us = select i1 %i.se, i64 %i.sb, i64 %i.sd
  %i.sf = icmp sgt i64 %spec.store.select.i.i57.i.us, -1 ; 2 uses
  %i.sg = getelementptr inbounds i8, ptr %.sroa.43.1128.i74.us, i64 -24
  %.sroa.01.0.i37.i.us = select i1 %i.sf, ptr %2, ptr %i.sg
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i37.i.us, i64 %i.rm
  store i64 %i.rt, ptr %i.sh, align 8, !alias.scope !9441, !noalias !9453
  %i.si = zext i1 %i.sf to i64
  %i.sj = add i64 %i.rm, %i.si                    ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.sroa.9.1130.i72.us, i64 24
  %.val28.i87.us = load ptr, ptr %i.sk, align 8, !alias.scope !9440, !nonnull !6, !noundef !6 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9454)
  %i.sl = getelementptr inbounds nuw i8, ptr %.val28.i87.us, i64 80
  %i.sm = load i64, ptr %i.sl, align 8, !alias.scope !9454, !noalias !9443, !noundef !6
  %.not.i.i14.i.i62.i.us = icmp ne i64 %i.sm, 0
  %i.sn = getelementptr inbounds nuw i8, ptr %.val28.i87.us, i64 72
  %i.so = load i64, ptr %i.sn, align 8, !alias.scope !9454, !noalias !9443
  %i.sp = icmp ne i64 %i.so, 0
  %or.cond.i.i15.i.i63.i.us = select i1 %.not.i.i14.i.i62.i.us, i1 %i.sp, i1 false
  %i.sq = ptrtoint ptr %.val28.i87.us to i64
  br i1 %or.cond.i.i15.i.i63.i.us, label %bb.br, label %16

bb.br:                                            ; preds = %bb.bq
  %i.sr = getelementptr inbounds nuw i8, ptr %.val28.i87.us, i64 64
  %i.ss = load ptr, ptr %i.sr, align 8, !alias.scope !9454, !noalias !9443, !nonnull !6, !noundef !6
  %i.st = load i64, ptr %i.ss, align 8, !noalias !9455, !noundef !6 ; 4 uses
  %i.su = getelementptr inbounds nuw i8, ptr %.val28.i87.us, i64 48
  %i.sv = load i64, ptr %i.su, align 8, !noalias !9443, !noundef !6 ; 2 uses
  %.not.i18.i.i64.i.us = icmp ugt i64 %i.st, %i.sv
  br i1 %.not.i18.i.i64.i.us, label %15, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit67.i.us", !prof !9

15:                                               ; preds = %bb.br
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.st, i64 noundef %i.sv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279) #46, !noalias !9443
  unreachable

16:                                               ; preds = %bb.bq
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @182) #46, !noalias !9443
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit67.i.us": ; preds = %bb.br
  %i.sw = getelementptr inbounds nuw i8, ptr %.val28.i87.us, i64 40
  %i.sx = load ptr, ptr %i.sw, align 8, !noalias !9443, !nonnull !6, !noundef !6
  %..i.i65.i.us = call i64 @llvm.umin.i64(i64 %i.pr, i64 %i.st)
  %i.sy = sub i64 %i.pr, %i.st
  %i.sz = call i32 @memcmp(ptr nonnull %i.pt, ptr nonnull %i.sx, i64 %..i.i65.i.us), !noalias !9443 ; 2 uses
  %i.ta = sext i32 %i.sz to i64
  %i.tb = icmp eq i32 %i.sz, 0
  %spec.store.select.i.i66.i.us = select i1 %i.tb, i64 %i.sy, i64 %i.ta
  %i.tc = icmp sgt i64 %spec.store.select.i.i66.i.us, -1 ; 2 uses
  %i.td = getelementptr inbounds i8, ptr %.sroa.43.1128.i74.us, i64 -32 ; 3 uses
  %.sroa.01.0.i38.i.us = select i1 %i.tc, ptr %2, ptr %i.td
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i38.i.us, i64 %i.sj
  store i64 %i.sq, ptr %i.te, align 8, !alias.scope !9441, !noalias !9456
  %i.tf = zext i1 %i.tc to i64
  %i.tg = add i64 %i.sj, %i.tf                    ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %.sroa.9.1130.i72.us, i64 32 ; 3 uses
  %i.ti = icmp ult ptr %i.th, %i.pg
  br i1 %i.ti, label %bb.bk, label %._crit_edge.i52

._crit_edge.i52:                                  ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit67.i.us", %bb.bj
  %.sroa.43.1.lcssa.i53 = phi ptr [ %.sroa.43.0.i48, %bb.bj ], [ %i.td, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit67.i.us" ] ; 2 uses
  %.sroa.27.1.lcssa.i54 = phi i64 [ %.sroa.27.0.i49, %bb.bj ], [ %i.tg, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit67.i.us" ] ; 2 uses
  %.sroa.9.1.lcssa.i55 = phi ptr [ %.sroa.9.0.i50, %bb.bj ], [ %i.th, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit67.i.us" ] ; 3 uses
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph583, i64 %.sroa.02.0.i51 ; 2 uses
  %i.tk = icmp ult ptr %.sroa.9.1.lcssa.i55, %i.tj
  br i1 %i.tk, label %.lr.ph137.i64.preheader, label %.lr.ph137.i64.preheader.split.us.split

.lr.ph137.i64.preheader:                          ; preds = %._crit_edge.i52
  %.val27.i69 = load ptr, ptr %i.iu, align 8, !alias.scope !9440, !nonnull !6, !align !8, !noundef !6 ; 5 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %.val27.i69, i64 80
  %i.tm = load i64, ptr %i.tl, align 8, !alias.scope !9457, !noalias !9443, !noundef !6
  %.not.i.i.i.i68.i = icmp ne i64 %i.tm, 0
  %i.tn = getelementptr inbounds nuw i8, ptr %.val27.i69, i64 72
  %i.to = load i64, ptr %i.tn, align 8, !alias.scope !9457, !noalias !9443
  %i.tp = icmp ne i64 %i.to, 0
  %or.cond.i.i.i.i69.i = select i1 %.not.i.i.i.i68.i, i1 %i.tp, i1 false
  %i.tq = getelementptr inbounds nuw i8, ptr %.val27.i69, i64 40
  br i1 %or.cond.i.i.i.i69.i, label %.lr.ph137.i64.preheader.split.us, label %21

.lr.ph137.i64.preheader.split.us:                 ; preds = %.lr.ph137.i64.preheader
  %i.tr = getelementptr inbounds nuw i8, ptr %.val27.i69, i64 48
  %i.ts = getelementptr inbounds nuw i8, ptr %.val27.i69, i64 64
  %i.tt = load ptr, ptr %i.ts, align 8, !alias.scope !9457, !noalias !9443, !nonnull !6, !noundef !6
  %i.tu = load i64, ptr %i.tt, align 8, !noalias !9458, !noundef !6 ; 4 uses
  %i.tv = load i64, ptr %i.tr, align 8, !noalias !9443, !noundef !6 ; 2 uses
  %.not.i.i.i70.i.us = icmp ugt i64 %i.tu, %i.tv
  br i1 %.not.i.i.i70.i.us, label %19, label %.lr.ph137.i64.us.us, !prof !9

.lr.ph137.i64.us.us:                              ; preds = %.lr.ph137.i64.preheader.split.us
  %17 = load ptr, ptr %i.tq, align 8, !noalias !9443, !nonnull !6, !noundef !6
  br label %.lr.ph137.i64.us

.lr.ph137.i64.preheader.split.us.split:           ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit76.i.us", %._crit_edge.i52
  %.sroa.43.2.lcssa.i57 = phi ptr [ %.sroa.43.1.lcssa.i53, %._crit_edge.i52 ], [ %i.uo, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit76.i.us" ]
  %.sroa.27.2.lcssa.i58 = phi i64 [ %.sroa.27.1.lcssa.i54, %._crit_edge.i52 ], [ %i.ur, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit76.i.us" ] ; 9 uses
  %.sroa.9.2.lcssa.i59 = phi ptr [ %.sroa.9.1.lcssa.i55, %._crit_edge.i52 ], [ %i.us, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit76.i.us" ] ; 2 uses
  %18 = icmp eq i64 %.sroa.02.0.i51, %.sroa.15.04371731
  br i1 %18, label %bb.bu, label %bb.bt

.lr.ph137.i64.us:                                 ; preds = %.lr.ph137.i64.us.us, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit76.i.us"
  %.sroa.9.2135.i65.us = phi ptr [ %i.us, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit76.i.us" ], [ %.sroa.9.1.lcssa.i55, %.lr.ph137.i64.us.us ] ; 2 uses
  %.sroa.27.2134.i66.us = phi i64 [ %i.ur, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit76.i.us" ], [ %.sroa.27.1.lcssa.i54, %.lr.ph137.i64.us.us ] ; 2 uses
  %.sroa.43.2133.i67.us = phi ptr [ %i.uo, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit76.i.us" ], [ %.sroa.43.1.lcssa.i53, %.lr.ph137.i64.us.us ]
  %.val.i68.us = load ptr, ptr %.sroa.9.2135.i65.us, align 8, !alias.scope !9440, !nonnull !6, !noundef !6 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9457)
  %i.tw = ptrtoint ptr %.val.i68.us to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !9459)
  %i.tx = getelementptr inbounds nuw i8, ptr %.val.i68.us, i64 80
  %i.ty = load i64, ptr %i.tx, align 8, !alias.scope !9459, !noalias !9443, !noundef !6
  %.not.i.i14.i.i71.i.us = icmp ne i64 %i.ty, 0
  %i.tz = getelementptr inbounds nuw i8, ptr %.val.i68.us, i64 72
  %i.ua = load i64, ptr %i.tz, align 8, !alias.scope !9459, !noalias !9443
  %i.ub = icmp ne i64 %i.ua, 0
  %or.cond.i.i15.i.i72.i.us = select i1 %.not.i.i14.i.i71.i.us, i1 %i.ub, i1 false
  br i1 %or.cond.i.i15.i.i72.i.us, label %bb.bs, label %22

19:                                               ; preds = %.lr.ph137.i64.preheader.split.us
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.tu, i64 noundef %i.tv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279) #46, !noalias !9443
  unreachable

bb.bs:                                            ; preds = %.lr.ph137.i64.us
  %i.uc = getelementptr inbounds nuw i8, ptr %.val.i68.us, i64 64
  %i.ud = load ptr, ptr %i.uc, align 8, !alias.scope !9459, !noalias !9443, !nonnull !6, !noundef !6
  %i.ue = load i64, ptr %i.ud, align 8, !noalias !9460, !noundef !6 ; 4 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %.val.i68.us, i64 48
  %i.ug = load i64, ptr %i.uf, align 8, !noalias !9443, !noundef !6 ; 2 uses
  %.not.i18.i.i73.i.us = icmp ugt i64 %i.ue, %i.ug
  br i1 %.not.i18.i.i73.i.us, label %20, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit76.i.us", !prof !9

20:                                               ; preds = %bb.bs
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.ue, i64 noundef %i.ug, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279) #46, !noalias !9443
  unreachable

21:                                               ; preds = %.lr.ph137.i64.preheader
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #46, !noalias !9443
  unreachable

22:                                               ; preds = %.lr.ph137.i64.us
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @182) #46, !noalias !9443
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit76.i.us": ; preds = %bb.bs
  %i.uh = getelementptr inbounds nuw i8, ptr %.val.i68.us, i64 40
  %i.ui = load ptr, ptr %i.uh, align 8, !noalias !9443, !nonnull !6, !noundef !6
  %..i.i74.i.us = call i64 @llvm.umin.i64(i64 %i.tu, i64 %i.ue)
  %i.uj = sub i64 %i.tu, %i.ue
  %i.uk = call i32 @memcmp(ptr nonnull %17, ptr nonnull %i.ui, i64 %..i.i74.i.us), !noalias !9443 ; 2 uses
  %i.ul = sext i32 %i.uk to i64
  %i.um = icmp eq i32 %i.uk, 0
  %spec.store.select.i.i75.i.us = select i1 %i.um, i64 %i.uj, i64 %i.ul
  %i.un = icmp sgt i64 %spec.store.select.i.i75.i.us, -1 ; 2 uses
  %i.uo = getelementptr inbounds i8, ptr %.sroa.43.2133.i67.us, i64 -8 ; 3 uses
  %.sroa.01.0.i39.i.us = select i1 %i.un, ptr %2, ptr %i.uo
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i39.i.us, i64 %.sroa.27.2134.i66.us
  store i64 %i.tw, ptr %i.up, align 8, !alias.scope !9441, !noalias !9461
  %i.uq = zext i1 %i.un to i64
  %i.ur = add i64 %.sroa.27.2134.i66.us, %i.uq    ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %.sroa.9.2135.i65.us, i64 8 ; 3 uses
  %i.ut = icmp ult ptr %i.us, %i.tj
  br i1 %i.ut, label %.lr.ph137.i64.us, label %.lr.ph137.i64.preheader.split.us.split

bb.bt:                                            ; preds = %.lr.ph137.i64.preheader.split.us.split
  %i.uu = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i57, i64 -8
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i58
  %i.uw = load i64, ptr %.sroa.9.2.lcssa.i59, align 8, !alias.scope !9440, !noalias !9462
  store i64 %i.uw, ptr %i.uv, align 8, !alias.scope !9441, !noalias !9462
  %i.ux = add i64 %.sroa.27.2.lcssa.i58, 1
  %i.uy = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i59, i64 8
  br label %bb.bj

bb.bu:                                            ; preds = %.lr.ph137.i64.preheader.split.us.split
  %i.uz = shl i64 %.sroa.27.2.lcssa.i58, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph583, ptr nonnull align 8 %2, i64 %i.uz, i1 false), !alias.scope !9443
  %i.va = sub i64 %.sroa.15.04371731, %.sroa.27.2.lcssa.i58 ; 7 uses
  %.not146.i60 = icmp eq i64 %.sroa.15.04371731, %.sroa.27.2.lcssa.i58
  br i1 %.not146.i60, label %.outer._crit_edge.thread, label %.lr.ph144.i61

.lr.ph144.i61:                                    ; preds = %bb.bu
  %i.vb = getelementptr [8 x i8], ptr %.sroa.0.0.ph583, i64 %.sroa.27.2.lcssa.i58 ; 2 uses
  %min.iters.check = icmp ult i64 %i.va, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph144.i61
  %n.vec = and i64 %i.va, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.vc = xor i64 %index, -1
  %i.vd = getelementptr [8 x i8], ptr %i.pe, i64 %i.vc ; 2 uses
  %i.ve = getelementptr [8 x i8], ptr %i.vb, i64 %index ; 2 uses
  %i.vf = getelementptr i8, ptr %i.vd, i64 -8
  %i.vg = getelementptr i8, ptr %i.vd, i64 -24
  %wide.load = load <2 x i64>, ptr %i.vf, align 8, !alias.scope !9441
  %wide.load1747 = load <2 x i64>, ptr %i.vg, align 8, !alias.scope !9441
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse1748 = shufflevector <2 x i64> %wide.load1747, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.vh = getelementptr i8, ptr %i.ve, i64 16
  store <2 x i64> %reverse, ptr %i.ve, align 8, !alias.scope !9440
  store <2 x i64> %reverse1748, ptr %i.vh, align 8, !alias.scope !9440
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.vi = icmp eq i64 %index.next, %n.vec
  br i1 %i.vi, label %middle.block, label %vector.body, !llvm.loop !9388

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.va, %n.vec
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hd6a4eb0e1525301fE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph144.i61, %middle.block
  %.sroa.05.0142.i62.ph = phi i64 [ 0, %.lr.ph144.i61 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.05.0142.i62 = phi i64 [ %i.vj, %scalar.ph ], [ %.sroa.05.0142.i62.ph, %scalar.ph.preheader ] ; 3 uses
  %i.vj = add nuw i64 %.sroa.05.0142.i62, 1       ; 2 uses
  %i.vk = xor i64 %.sroa.05.0142.i62, -1
  %i.vl = getelementptr [8 x i8], ptr %i.pe, i64 %i.vk
  %i.vm = getelementptr [8 x i8], ptr %i.vb, i64 %.sroa.05.0142.i62
  %i.vn = load i64, ptr %i.vl, align 8, !alias.scope !9441
  store i64 %i.vn, ptr %i.vm, align 8, !alias.scope !9440
  %exitcond.not.i63 = icmp eq i64 %i.vj, %i.va
  br i1 %exitcond.not.i63, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hd6a4eb0e1525301fE.exit, label %scalar.ph, !llvm.loop !9389

_ZN4core5slice4sort6stable9quicksort16stable_partition17hd6a4eb0e1525301fE.exit: ; preds = %scalar.ph, %middle.block
  %i.vo = icmp ugt i64 %.sroa.27.2.lcssa.i58, %.sroa.15.04371731
  br i1 %i.vo, label %bb.bv, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit", !prof !16

.outer._crit_edge.thread:                         ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17ha89621a5d2a9a15cE.exit

bb.bv:                                            ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hd6a4eb0e1525301fE.exit
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.27.2.lcssa.i58, i64 noundef %.sroa.15.04371731, i64 noundef %.sroa.15.04371731, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #46, !noalias !9463
  unreachable

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit": ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hd6a4eb0e1525301fE.exit
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph583, i64 %.sroa.27.2.lcssa.i58 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.vq = icmp ult i64 %i.va, 33
  br i1 %i.vq, label %.outer._crit_edge, label %.lr.ph

bb.bw:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @302, ptr %i.a, align 8
  %i.vr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.vr, align 8
  %i.vs = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.vs, align 8
  %i.vt = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.vt, align 8
  %i.vu = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.vu, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @344) #46
  unreachable

bb.bx:                                            ; preds = %bb.bg
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph583, i64 %.sroa.27.2.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph583) ]
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7ddf27d5d9d76b2fE(ptr noalias noundef nonnull align 8 %i.vv, i64 noundef %i.op, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ig, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.vw = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.vw, label %.outer._crit_edge, label %bb.b
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h8f22d88c1dd45868E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(8) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = icmp ult i64 %1, 33
  br i1 %i.c, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit"
  %.sroa.0.0.ph135 = phi ptr [ %i.kf, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit" ], [ %0, %bb.a ] ; 22 uses
  %.sroa.15.0.ph134 = phi i64 [ %i.jq, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit" ], [ %1, %bb.a ] ; 2 uses
  %.sroa.023.0.ph133 = phi i32 [ %i.eu, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit" ], [ %4, %bb.a ] ; 2 uses
  %.sroa.026.0.ph132 = phi ptr [ null, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit" ], [ %5, %bb.a ] ; 2 uses
  %i.d = ptrtoint ptr %.sroa.0.0.ph135 to i64
  %.not = icmp eq ptr %.sroa.026.0.ph132, null
  %i.e = icmp eq i32 %.sroa.023.0.ph133, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph323

bb.b:                                             ; preds = %bb.ak
  %i.f = icmp eq i32 %i.eu, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph323

.outer._crit_edge:                                ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit", %bb.ak, %bb.a
  %.sroa.0.0.ph.lcssa126 = phi ptr [ %.sroa.0.0.ph135, %bb.ak ], [ %0, %bb.a ], [ %i.kf, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit" ] ; 18 uses
  %.sroa.15.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.ak ], [ %1, %bb.a ], [ %i.jq, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit" ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9525)
  call void @llvm.experimental.noalias.scope.decl(metadata !9526)
  %i.g = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.g, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hd09660543607871cE.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.h = add nuw nsw i64 %.sroa.15.0.lcssa, 16
  %i.i = icmp ult i64 %3, %i.h
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i64 %.sroa.15.0.lcssa, 1            ; 12 uses
  %i.k = icmp samesign ugt i64 %.sroa.15.0.lcssa, 15
  br i1 %i.k, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7
  br i1 %i.l, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.15.0.lcssa ; 2 uses
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h90a28d57fdb78b76E(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa126, ptr noundef nonnull align 8 %2, ptr noundef %i.m)
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa126, i64 %i.j
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h90a28d57fdb78b76E(ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.p)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa126, i64 8
  %.val12.i.i = load ptr, ptr %i.q, align 8, !alias.scope !9525, !nonnull !6, !align !8, !noundef !6
  %.val13.i.i = load ptr, ptr %.sroa.0.0.ph.lcssa126, align 8, !alias.scope !9525
  %i.r = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.val12.i.i, ptr %.val13.i.i), !noalias !9527 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa126, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa126, i64 16
  %.val10.i.i = load ptr, ptr %i.s, align 8, !alias.scope !9525, !nonnull !6, !align !8, !noundef !6
  %.val11.i.i = load ptr, ptr %i.t, align 8, !alias.scope !9525
  %i.u = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.val10.i.i, ptr %.val11.i.i), !noalias !9527 ; 2 uses
  %i.v = zext i1 %i.r to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa126, i64 %i.v ; 3 uses
  %i.x = xor i1 %i.r, true
  %i.y = zext i1 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa126, i64 %i.y ; 4 uses
  %i.aa = select i1 %i.u, i64 3, i64 2
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa126, i64 %i.aa ; 4 uses
  %i.ac = select i1 %i.u, i64 2, i64 3
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa126, i64 %i.ac ; 3 uses
  %.val8.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !9525, !nonnull !6, !align !8, !noundef !6
  %.val9.i.i = load ptr, ptr %i.w, align 8, !alias.scope !9525
  %i.ae = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.val8.i.i, ptr %.val9.i.i), !noalias !9527 ; 3 uses
  %.val6.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !9525, !nonnull !6, !align !8, !noundef !6
  %.val7.i.i = load ptr, ptr %i.z, align 8, !alias.scope !9525
  %i.af = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.val6.i.i, ptr %.val7.i.i), !noalias !9527 ; 3 uses
  %i.ag = select i1 %i.ae, ptr %i.ab, ptr %i.w, !unpredictable !6
  %i.ah = select i1 %i.af, ptr %i.z, ptr %i.ad, !unpredictable !6
  %i.ai = select i1 %i.af, ptr %i.ab, ptr %i.z, !unpredictable !6
  %i.aj = select i1 %i.ae, ptr %i.w, ptr %i.ai, !unpredictable !6 ; 3 uses
  %i.ak = select i1 %i.ae, ptr %i.z, ptr %i.ab, !unpredictable !6
  %i.al = select i1 %i.af, ptr %i.ad, ptr %i.ak, !unpredictable !6 ; 3 uses
  %.val.i.i = load ptr, ptr %i.al, align 8, !alias.scope !9525, !nonnull !6, !align !8, !noundef !6
  %.val5.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !9525
  %i.am = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.val.i.i, ptr %.val5.i.i), !noalias !9527 ; 2 uses
  %i.an = select i1 %i.am, ptr %i.al, ptr %i.aj, !unpredictable !6
  %i.ao = select i1 %i.am, ptr %i.aj, ptr %i.al, !unpredictable !6
  %i.ap = load i64, ptr %i.ag, align 8, !alias.scope !9525
  store i64 %i.ap, ptr %2, align 8, !alias.scope !9526
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load i64, ptr %i.an, align 8, !alias.scope !9525
  store i64 %i.ar, ptr %i.aq, align 8, !alias.scope !9526
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = load i64, ptr %i.ao, align 8, !alias.scope !9525
  store i64 %i.at, ptr %i.as, align 8, !alias.scope !9526
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.av = load i64, ptr %i.ah, align 8, !alias.scope !9525
  store i64 %i.av, ptr %i.au, align 8, !alias.scope !9526
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa126, i64 %i.j ; 8 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
end_hunk_0
