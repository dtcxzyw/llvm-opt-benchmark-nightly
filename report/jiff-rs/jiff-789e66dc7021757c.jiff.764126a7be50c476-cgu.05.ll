Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.05?download=true
inline.NumInlined: 397
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser5parse:bb.a
  %i.lp = icmp eq ptr %i.lm, null
  br i1 %i.lp, label %common.resume, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.lq = atomicrmw sub ptr %i.lm, i64 1 release, align 8, !noalias !1344
  %i.lr = icmp eq i64 %i.lq, 1
  br i1 %i.lr, label %bb.ar, label %common.resume

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fx) #13
          to label %common.resume unwind label %bb.as, !noalias !1343

bb.as:                                            ; preds = %bb.ar
  %i.ls = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1343
  unreachable

bb.at:                                            ; preds = %bb.an
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !1342
  %i.lt = ptrtoint ptr %i.lm to i64               ; 2 uses
  %.sroa.01.0.extract.trunc.i = trunc i64 %i.lt to i8
  store ptr %i.lk, ptr %i.ha, align 8, !alias.scope !1342, !captures !5
  store i64 %.sroa.55.0.copyload.i, ptr %i.hb, align 8, !alias.scope !1342
  %i.lu = icmp ult i8 %.sroa.01.0.extract.trunc.i, 7
  br i1 %i.lu, label %switch.lookup, label %bb.au, !prof !1345

bb.au:                                            ; preds = %bb.at
  %i.lv = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 7935) #13, !noalias !1346
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fy), !noalias !1347
  store ptr %i.lv, ptr %i.fy, align 8, !noalias !1347
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 43, ptr noundef nonnull %i.fy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #16
          to label %bb.ay unwind label %bb.av, !noalias !1348

bb.av:                                            ; preds = %bb.au
  %i.lw = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  call void @llvm.experimental.noalias.scope.decl(metadata !1350), !noalias !1351
  %i.lx = load ptr, ptr %i.fy, align 8, !alias.scope !1352, !noalias !1348, !noundef !4 ; 2 uses
  %i.ly = icmp eq ptr %i.lx, null
  br i1 %i.ly, label %common.resume, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.lz = atomicrmw sub ptr %i.lx, i64 1 release, align 8, !noalias !1353
  %i.ma = icmp eq i64 %i.lz, 1
  br i1 %i.ma, label %bb.ax, label %common.resume

bb.ax:                                            ; preds = %bb.aw
  fence acquire, !noalias !1351
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fy) #13
          to label %common.resume unwind label %bb.az, !noalias !1342

bb.ay:                                            ; preds = %bb.au
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.mb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1348
  unreachable

bb.ba:                                            ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser1f.exit533
  call void @llvm.experimental.noalias.scope.decl(metadata !1354)
  %i.mc = icmp samesign ult i64 %i.jd, 3
  br i1 %i.mc, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fv), !noalias !1355
  store i8 7, ptr %i.fv, align 8, !noalias !1355
  %i.md = call noundef ptr @_RNvXs3_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_10ParseErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.fv) #13, !noalias !1355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fv), !noalias !1355
  br label %bb.py

bb.bc:                                            ; preds = %bb.ba
  %i.me = load ptr, ptr %i.ha, align 8, !alias.scope !1354, !nonnull !4, !noundef !4 ; 4 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 3
  %i.mg = add nsw i64 %i.jd, -3
  %i.mh = load i8, ptr %i.me, align 1, !noalias !1356, !noundef !4 ; 2 uses
  %i.mi = add i8 %i.mh, -65
  %i.mj = icmp ult i8 %i.mi, 26
  %i.mk = select i1 %i.mj, i8 32, i8 0
  %.sroa.04.0.i.i = or i8 %i.mk, %i.mh
  %i.ml = getelementptr inbounds nuw i8, ptr %i.me, i64 1
  %i.mm = load i8, ptr %i.ml, align 1, !noalias !1356, !noundef !4 ; 2 uses
  %i.mn = add i8 %i.mm, -65
  %i.mo = icmp ult i8 %i.mn, 26
  %i.mp = select i1 %i.mo, i8 32, i8 0
  %.sroa.05.0.i.i = or i8 %i.mp, %i.mm            ; 5 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.me, i64 2
  %i.mr = load i8, ptr %i.mq, align 1, !noalias !1356, !noundef !4 ; 2 uses
  %i.ms = add i8 %i.mr, -65
  %i.mt = icmp ult i8 %i.ms, 26
  %i.mu = select i1 %i.mt, i8 32, i8 0
  %.sroa.06.0.i.i = or i8 %i.mu, %i.mr            ; 7 uses
  switch i8 %.sroa.04.0.i.i, label %bb.bd [
    i8 115, label %bb.be
    i8 109, label %bb.bf
    i8 116, label %bb.bg
    i8 119, label %bb.bh
    i8 102, label %bb.bi
  ]

bb.bd:                                            ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fu), !noalias !1355
  store i8 6, ptr %i.fu, align 8, !noalias !1355
  %i.mv = call noundef ptr @_RNvXs3_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_10ParseErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.fu) #13, !noalias !1356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fu), !noalias !1355
  br label %bb.py

bb.be:                                            ; preds = %bb.bc
  switch i8 %.sroa.05.0.i.i, label %bb.bd [
    i8 117, label %bb.bj
    i8 97, label %bb.bk
  ]

bb.bf:                                            ; preds = %bb.bc
  %i.mw = icmp eq i8 %.sroa.05.0.i.i, 111
  %i.mx = icmp eq i8 %.sroa.06.0.i.i, 110
  %or.cond.i.i545 = and i1 %i.mw, %i.mx
  br i1 %or.cond.i.i545, label %bb.qd, label %bb.bd

bb.bg:                                            ; preds = %bb.bc
  switch i8 %.sroa.05.0.i.i, label %bb.bd [
    i8 117, label %bb.bl
    i8 104, label %bb.bm
  ]

bb.bh:                                            ; preds = %bb.bc
  %i.my = icmp eq i8 %.sroa.05.0.i.i, 101
  %i.mz = icmp eq i8 %.sroa.06.0.i.i, 100
  %or.cond1.i.i = and i1 %i.my, %i.mz
  br i1 %or.cond1.i.i, label %bb.qd, label %bb.bd

bb.bi:                                            ; preds = %bb.bc
  %i.na = icmp eq i8 %.sroa.05.0.i.i, 114
  %i.nb = icmp eq i8 %.sroa.06.0.i.i, 105
  %or.cond2.i.i = and i1 %i.na, %i.nb
  br i1 %or.cond2.i.i, label %bb.qd, label %bb.bd

bb.bj:                                            ; preds = %bb.be
  %i.nc = icmp eq i8 %.sroa.06.0.i.i, 110
  br i1 %i.nc, label %bb.qd, label %bb.bd

bb.bk:                                            ; preds = %bb.be
  %i.nd = icmp eq i8 %.sroa.06.0.i.i, 116
  br i1 %i.nd, label %bb.qd, label %bb.bd

bb.bl:                                            ; preds = %bb.bg
  %i.ne = icmp eq i8 %.sroa.06.0.i.i, 101
  br i1 %i.ne, label %bb.qd, label %bb.bd

bb.bm:                                            ; preds = %bb.bg
  %i.nf = icmp eq i8 %.sroa.06.0.i.i, 117
  br i1 %i.nf, label %bb.qd, label %bb.bd

bb.bn:                                            ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser1f.exit533
  call void @llvm.experimental.noalias.scope.decl(metadata !1357)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ft)
  %i.ng = load ptr, ptr %i.ha, align 8, !alias.scope !1357, !nonnull !4, !noundef !4
  call fastcc void @_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse12parse_choice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ft, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ng, i64 noundef %i.jd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @47, i64 noundef 12), !noalias !1357
  %i.nh = load ptr, ptr %i.id, align 8, !noalias !1357, !noundef !4 ; 2 uses
  %i.ni = icmp eq ptr %i.nh, null
  %i.nj = load ptr, ptr %i.ft, align 8, !noalias !1357 ; 5 uses
  br i1 %i.ni, label %bb.bo, label %bb.qj

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs), !noalias !1358
  store ptr %i.nj, ptr %i.fs, align 8, !noalias !1358
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr), !noalias !1358
  store i8 35, ptr %i.fr, align 8, !noalias !1357
  %i.nk = invoke noundef ptr @_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB5_10ParseErrorNtB9_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.fr)
          to label %bb.qe unwind label %bb.bp, !noalias !1358

bb.bp:                                            ; preds = %bb.bo
  %i.nl = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.nm = icmp eq ptr %i.nj, null
  br i1 %i.nm, label %common.resume, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.nn = atomicrmw sub ptr %i.nj, i64 1 release, align 8, !noalias !1359
  %i.no = icmp eq i64 %i.nn, 1
  br i1 %i.no, label %bb.br, label %common.resume

bb.br:                                            ; preds = %bb.bq
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fs) #13
          to label %common.resume unwind label %bb.bs, !noalias !1358

bb.bs:                                            ; preds = %bb.br
  %i.np = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1358
  unreachable

bb.bt:                                            ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser1f.exit533
  call void @llvm.experimental.noalias.scope.decl(metadata !1360)
  %.sroa.2.0.extract.shift.i = lshr i32 %.sroa.032.0.i, 8
  %.sroa.3.0.extract.shift.i = lshr i32 %.sroa.5.3.insert.insert, 16
  %.sroa.3.0.extract.trunc.i = trunc nuw i32 %.sroa.3.0.extract.shift.i to i8
  %i.nq = load ptr, ptr %i.ha, align 8, !alias.scope !1360, !nonnull !4, !noundef !4 ; 5 uses
  br i1 %i.je, label %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.nr = load i8, ptr %i.nq, align 1, !alias.scope !1361, !noalias !1362, !noundef !4
  switch i8 %i.nr, label %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i [
    i8 45, label %bb.bv
    i8 43, label %bb.bw
  ]

bb.bv:                                            ; preds = %bb.bu
  %i.ns = add nsw i64 %i.jd, -1
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nq, i64 1
  br label %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i

bb.bw:                                            ; preds = %bb.bu
  %i.nu = add nsw i64 %i.jd, -1
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nq, i64 1
  br label %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i

_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i: ; preds = %bb.bw, %bb.bv, %bb.bu, %bb.bt
  %.sroa.12.0.i = phi i64 [ %i.nu, %bb.bw ], [ 0, %bb.bt ], [ %i.ns, %bb.bv ], [ %i.jd, %bb.bu ] ; 3 uses
  %.sroa.7.0.i = phi ptr [ %i.nv, %bb.bw ], [ %i.nq, %bb.bt ], [ %i.nt, %bb.bv ], [ %i.nq, %bb.bu ] ; 3 uses
  %.sroa.047.0.i = phi i64 [ 1, %bb.bw ], [ 1, %bb.bt ], [ -1, %bb.bv ], [ 1, %bb.bu ]
  switch i8 %.sroa.3.0.extract.trunc.i, label %bb.bx [
    i8 0, label %bb.by
    i8 2, label %bb.by
    i8 -1, label %bb.by
  ]

bb.bx:                                            ; preds = %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i
  %i.nw = trunc i32 %.sroa.032.0.i to i1
  %narrow.i = select i1 %i.nw, i32 %.sroa.2.0.extract.shift.i, i32 2
  %.sroa.029.1.i.i = zext nneg i32 %narrow.i to i64
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i, %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i, %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i
  %.sroa.029.0.i.i = phi i64 [ %.sroa.029.1.i.i, %bb.bx ], [ 0, %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i ], [ 0, %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i ], [ 0, %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i ] ; 2 uses
  %..i.i = call noundef range(i64 1, 256) i64 @llvm.umax.i64(i64 range(i64 0, 256) %.sroa.029.0.i.i, i64 2)
  %.not65.i68.i = icmp eq i64 %.sroa.12.0.i, 0
  br i1 %.not65.i68.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i, label %.lr.ph.preheader.i552

.lr.ph.preheader.i552:                            ; preds = %bb.by
  %scevgep.i = getelementptr i8, ptr %.sroa.7.0.i, i64 %.sroa.12.0.i
  br label %.lr.ph.i553

.lr.ph.i553:                                      ; preds = %bb.cf, %.lr.ph.preheader.i552
  %.sroa.02.0.i70.i = phi ptr [ %i.op, %bb.cf ], [ %.sroa.7.0.i, %.lr.ph.preheader.i552 ] ; 3 uses
  %.sroa.15.0.i69.i = phi i64 [ %i.oo, %bb.cf ], [ %.sroa.12.0.i, %.lr.ph.preheader.i552 ] ; 2 uses
  %.val.i.i = load i8, ptr %.sroa.02.0.i70.i, align 1, !alias.scope !1363, !noalias !1364, !noundef !4
  switch i8 %.val.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i [
    i8 9, label %bb.cf
    i8 10, label %bb.cf
    i8 12, label %bb.cf
    i8 13, label %bb.cf
    i8 32, label %bb.cf
  ]

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i: ; preds = %bb.cf, %.lr.ph.i553, %bb.by
  %.sroa.15.0.i.lcssa.i = phi i64 [ 0, %bb.by ], [ %.sroa.15.0.i69.i, %.lr.ph.i553 ], [ 0, %bb.cf ] ; 6 uses
  %.sroa.02.0.i.lcssa.i = phi ptr [ %.sroa.7.0.i, %bb.by ], [ %.sroa.02.0.i70.i, %.lr.ph.i553 ], [ %scevgep.i, %bb.cf ] ; 3 uses
  %invariant.umin.i554 = call i64 @llvm.umin.i64(i64 %.sroa.15.0.i.lcssa.i, i64 %.sroa.029.0.i.i) ; 3 uses
  %or.cond66.i75.not.i = icmp eq i64 %invariant.umin.i554, 0
  br i1 %or.cond66.i75.not.i, label %._crit_edge.i555, label %.lr.ph77.i

._crit_edge.i555:                                 ; preds = %bb.bz, %.lr.ph77.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i
  %.sroa.035.0.i.lcssa.i = phi i64 [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i ], [ %invariant.umin.i554, %bb.bz ], [ %.sroa.035.0.i76.i, %.lr.ph77.i ] ; 3 uses
  %invariant.umin81.i = call i64 @llvm.umin.i64(i64 %.sroa.15.0.i.lcssa.i, i64 %..i.i) ; 3 uses
  %or.cond.i82.i = icmp ult i64 %.sroa.035.0.i.lcssa.i, %invariant.umin81.i
  br i1 %or.cond.i82.i, label %.lr.ph86.i, label %._crit_edge87.i

.lr.ph77.i:                                       ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i, %bb.bz
  %.sroa.035.0.i76.i = phi i64 [ %i.oa, %bb.bz ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i ] ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.lcssa.i, i64 %.sroa.035.0.i76.i
  %i.ny = load i8, ptr %i.nx, align 1, !alias.scope !1365, !noalias !1364, !noundef !4
  %i.nz = icmp eq i8 %i.ny, 48
  br i1 %i.nz, label %bb.bz, label %._crit_edge.i555

bb.bz:                                            ; preds = %.lr.ph77.i
  %i.oa = add nuw nsw i64 %.sroa.035.0.i76.i, 1   ; 2 uses
  %exitcond.not.i561 = icmp eq i64 %i.oa, %invariant.umin.i554
  br i1 %exitcond.not.i561, label %._crit_edge.i555, label %.lr.ph77.i

._crit_edge87.i:                                  ; preds = %.lr.ph86.i, %._crit_edge.i555
  %.sroa.060.0.i.lcssa.i = phi i64 [ 0, %._crit_edge.i555 ], [ %.sroa.060.0.i83.i, %.lr.ph86.i ]
  %.sroa.035.1.i.lcssa.i = phi i64 [ %.sroa.035.0.i.lcssa.i, %._crit_edge.i555 ], [ %.sroa.035.1.i84.i, %.lr.ph86.i ] ; 4 uses
  %i.ob = icmp eq i64 %.sroa.035.1.i.lcssa.i, 0
  br i1 %i.ob, label %_RNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB6_9Extension12parse_number.exit.thread.i, label %bb.ca

.lr.ph86.i:                                       ; preds = %._crit_edge.i555, %bb.ce
  %.sroa.035.1.i84.i = phi i64 [ %i.og, %bb.ce ], [ %.sroa.035.0.i.lcssa.i, %._crit_edge.i555 ] ; 3 uses
  %.sroa.060.0.i83.i = phi i64 [ %i.on, %bb.ce ], [ 0, %._crit_edge.i555 ] ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.lcssa.i, i64 %.sroa.035.1.i84.i
  %i.od = load i8, ptr %i.oc, align 1, !alias.scope !1365, !noalias !1364, !noundef !4
  %i.oe = add i8 %i.od, -48                       ; 2 uses
  %or.cond67.i.i = icmp ult i8 %i.oe, 10
  br i1 %or.cond67.i.i, label %bb.cc, label %._crit_edge87.i

bb.ca:                                            ; preds = %._crit_edge87.i
  %i.of = icmp ugt i64 %.sroa.035.1.i.lcssa.i, %.sroa.15.0.i.lcssa.i
  br i1 %i.of, label %bb.cb, label %_RNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB6_9Extension12parse_number.exit.i, !prof !8

bb.cb:                                            ; preds = %bb.ca
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.035.1.i.lcssa.i, i64 noundef %.sroa.15.0.i.lcssa.i, i64 noundef %.sroa.15.0.i.lcssa.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #14, !noalias !1364
  unreachable

bb.cc:                                            ; preds = %.lr.ph86.i
  %i.og = add nuw nsw i64 %.sroa.035.1.i84.i, 1   ; 2 uses
  %i.oh = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.060.0.i83.i, i64 10) ; 2 uses
  %i.oi = extractvalue { i64, i1 } %i.oh, 1
  br i1 %i.oi, label %_RNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB6_9Extension12parse_number.exit.thread.i, label %bb.cd, !prof !7

bb.cd:                                            ; preds = %bb.cc
  %i.oj = extractvalue { i64, i1 } %i.oh, 0
  %i.ok = zext nneg i8 %i.oe to i64
  %i.ol = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.oj, i64 %i.ok) ; 2 uses
  %i.om = extractvalue { i64, i1 } %i.ol, 1
  br i1 %i.om, label %_RNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB6_9Extension12parse_number.exit.thread.i, label %bb.ce, !prof !7

bb.ce:                                            ; preds = %bb.cd
  %i.on = extractvalue { i64, i1 } %i.ol, 0       ; 2 uses
  %exitcond93.not.i = icmp eq i64 %i.og, %invariant.umin81.i
  br i1 %exitcond93.not.i, label %_RNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB6_9Extension12parse_number.exit.i, label %.lr.ph86.i

bb.cf:                                            ; preds = %.lr.ph.i553, %.lr.ph.i553, %.lr.ph.i553, %.lr.ph.i553, %.lr.ph.i553
  %i.oo = add nsw i64 %.sroa.15.0.i69.i, -1       ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i70.i, i64 1
  %.not65.i.i = icmp eq i64 %i.oo, 0
  br i1 %.not65.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i, label %.lr.ph.i553

_RNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB6_9Extension12parse_number.exit.thread.i: ; preds = %._crit_edge87.i, %bb.cd, %bb.cc
  %.sink.i560 = phi i8 [ 2, %bb.cd ], [ 2, %bb.cc ], [ 0, %._crit_edge87.i ]
  %i.oq = call noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef %.sink.i560, i8 undef) #13, !noalias !1364 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fq), !noalias !1366
  store ptr %i.oq, ptr %i.fq, align 8, !noalias !1366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fp), !noalias !1366
  store i8 20, ptr %i.fp, align 8, !noalias !1360
  %i.or = invoke noundef ptr @_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB5_10ParseErrorNtB9_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.fp)
          to label %bb.ck unwind label %bb.cg, !noalias !1366

bb.cg:                                            ; preds = %_RNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB6_9Extension12parse_number.exit.thread.i
  %i.os = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ot = icmp eq ptr %i.oq, null
  br i1 %i.ot, label %common.resume, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ou = atomicrmw sub ptr %i.oq, i64 1 release, align 8, !noalias !1367
  %i.ov = icmp eq i64 %i.ou, 1
  br i1 %i.ov, label %bb.ci, label %common.resume

bb.ci:                                            ; preds = %bb.ch
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fq) #13
          to label %common.resume unwind label %bb.cj, !noalias !1366

bb.cj:                                            ; preds = %bb.ci
  %i.ow = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1366
  unreachable

bb.ck:                                            ; preds = %_RNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB6_9Extension12parse_number.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fp), !noalias !1366
  %i.ox = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.oq, ptr noundef %i.or), !noalias !1366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fq), !noalias !1366
  br label %bb.qq

_RNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB6_9Extension12parse_number.exit.i: ; preds = %bb.ce, %bb.ca
  %.sroa.060.0.i.lcssa103108.i = phi i64 [ %.sroa.060.0.i.lcssa.i, %bb.ca ], [ %i.on, %bb.ce ] ; 2 uses
  %.sroa.035.1.i.lcssa104107.i = phi i64 [ %.sroa.035.1.i.lcssa.i, %bb.ca ], [ %invariant.umin81.i, %bb.ce ] ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.lcssa.i, i64 %.sroa.035.1.i.lcssa104107.i
  %i.oz = sub nuw nsw i64 %.sroa.15.0.i.lcssa.i, %.sroa.035.1.i.lcssa104107.i
  store ptr %i.oy, ptr %i.ha, align 8, !alias.scope !1360, !captures !5
  store i64 %i.oz, ptr %i.hb, align 8, !alias.scope !1360
  %or.cond.i556 = icmp ugt i64 %.sroa.060.0.i.lcssa103108.i, 99
  br i1 %or.cond.i556, label %bb.cl, label %bb.qv

bb.cl:                                            ; preds = %_RNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB6_9Extension12parse_number.exit.i
  %i.pa = call noundef i8 @_RNvXs4_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_7CenturyNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #13, !noalias !1360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fo), !noalias !1368
  %i.pb = call noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB4_11BoundsErrorNtNtB8_5error9IntoError10into_error(i8 noundef range(i8 0, 52) %i.pa), !noalias !1368 ; 4 uses
  store ptr %i.pb, ptr %i.fo, align 8, !noalias !1368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fn), !noalias !1368
  store i8 20, ptr %i.fn, align 8, !noalias !1360
  %i.pc = invoke noundef ptr @_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB5_10ParseErrorNtB9_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.fn)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt7strtime10ParseErrorE0Ba_.exit.i unwind label %bb.cm, !noalias !1368

bb.cm:                                            ; preds = %bb.cl
  %i.pd = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.pe = icmp eq ptr %i.pb, null
  br i1 %i.pe, label %common.resume, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.pf = atomicrmw sub ptr %i.pb, i64 1 release, align 8, !noalias !1369
  %i.pg = icmp eq i64 %i.pf, 1
  br i1 %i.pg, label %bb.co, label %common.resume

bb.co:                                            ; preds = %bb.cn
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fo) #13
          to label %common.resume unwind label %bb.cp, !noalias !1368

bb.cp:                                            ; preds = %bb.co
  %i.ph = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1368
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt7strtime10ParseErrorE0Ba_.exit.i: ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn), !noalias !1368
  %i.pi = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.pb, ptr noundef %i.pc), !noalias !1368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo), !noalias !1368
  br label %bb.qq

bb.cq:                                            ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser1f.exit533
  call void @llvm.experimental.noalias.scope.decl(metadata !1370)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fm), !noalias !1370
  %i.pj = load ptr, ptr %i.ha, align 8, !alias.scope !1370, !nonnull !4, !noundef !4
  %i.pk = load ptr, ptr %i.hd, align 8, !alias.scope !1370, !nonnull !4, !align !6, !noundef !4
  store ptr @14, ptr %i.fm, align 8, !noalias !1370
  store i64 8, ptr %i.hz, align 8, !noalias !1370
  store ptr %i.pj, ptr %i.ia, align 8, !noalias !1370
  store i64 %i.jd, ptr %i.ib, align 8, !noalias !1370
  store ptr %i.pk, ptr %i.ic, align 8, !noalias !1370
  %i.pl = call { i64, ptr } @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser5parse(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.fm), !noalias !1370, !inline_history !269 ; 2 uses
  %i.pm = extractvalue { i64, ptr } %i.pl, 0
  %i.pn = trunc nuw i64 %i.pm to i1
  br i1 %i.pn, label %bb.qw, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.po = load ptr, ptr %i.ia, align 8, !noalias !1370, !nonnull !4, !noundef !4
  %i.pp = load i64, ptr %i.ib, align 8, !noalias !1370, !noundef !4
  store ptr %i.po, ptr %i.ha, align 8, !alias.scope !1370, !captures !5
  store i64 %i.pp, ptr %i.hb, align 8, !alias.scope !1370
  call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  %i.pq = load i64, ptr %i.gx, align 8, !alias.scope !1371, !noundef !4 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser5parse:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1420)
  %.sroa.3.0.extract.shift.i761 = lshr i32 %.sroa.5.3.insert.insert, 16
  %.sroa.3.0.extract.trunc.i762 = trunc nuw i32 %.sroa.3.0.extract.shift.i761 to i8
  %i.zk = load ptr, ptr %i.ha, align 8, !alias.scope !1420, !nonnull !4, !noundef !4 ; 3 uses
  switch i8 %.sroa.3.0.extract.trunc.i762, label %bb.hk [
    i8 0, label %bb.hl
    i8 2, label %bb.hl
  ]

bb.hk:                                            ; preds = %bb.hj
  %.sroa.2.0.extract.shift.i804 = lshr i32 %.sroa.032.0.i, 8
  %i.zl = trunc i32 %.sroa.032.0.i to i1
  %narrow.i805 = select i1 %i.zl, i32 %.sroa.2.0.extract.shift.i804, i32 2
  %.sroa.029.1.i.i806 = zext nneg i32 %narrow.i805 to i64
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj, %bb.hj
  %.sroa.029.0.i.i763 = phi i64 [ %.sroa.029.1.i.i806, %bb.hk ], [ 0, %bb.hj ], [ 0, %bb.hj ] ; 2 uses
  %..i.i764 = call noundef range(i64 1, 256) i64 @llvm.umax.i64(i64 range(i64 0, 256) %.sroa.029.0.i.i763, i64 2)
  br i1 %i.je, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i773, label %.lr.ph.preheader.i766

.lr.ph.preheader.i766:                            ; preds = %bb.hl
  %scevgep.i767 = getelementptr i8, ptr %i.zk, i64 %i.jd
  br label %.lr.ph.i768

.lr.ph.i768:                                      ; preds = %bb.hs, %.lr.ph.preheader.i766
  %.sroa.02.0.i45.i769 = phi ptr [ %i.aae, %bb.hs ], [ %i.zk, %.lr.ph.preheader.i766 ] ; 3 uses
  %.sroa.15.0.i44.i770 = phi i64 [ %i.aad, %bb.hs ], [ %i.jd, %.lr.ph.preheader.i766 ] ; 2 uses
  %.val.i.i771 = load i8, ptr %.sroa.02.0.i45.i769, align 1, !alias.scope !1421, !noalias !1422, !noundef !4
  switch i8 %.val.i.i771, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i773 [
    i8 9, label %bb.hs
    i8 10, label %bb.hs
    i8 12, label %bb.hs
    i8 13, label %bb.hs
    i8 32, label %bb.hs
  ]

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i773: ; preds = %bb.hs, %.lr.ph.i768, %bb.hl
  %.sroa.15.0.i.lcssa.i774 = phi i64 [ 0, %bb.hl ], [ %.sroa.15.0.i44.i770, %.lr.ph.i768 ], [ 0, %bb.hs ] ; 6 uses
  %.sroa.02.0.i.lcssa.i775 = phi ptr [ %i.zk, %bb.hl ], [ %.sroa.02.0.i45.i769, %.lr.ph.i768 ], [ %scevgep.i767, %bb.hs ] ; 3 uses
  %invariant.umin.i776 = call i64 @llvm.umin.i64(i64 %.sroa.15.0.i.lcssa.i774, i64 %.sroa.029.0.i.i763) ; 3 uses
  %or.cond66.i50.not.i777 = icmp eq i64 %invariant.umin.i776, 0
  br i1 %or.cond66.i50.not.i777, label %._crit_edge.i780, label %.lr.ph52.i778

._crit_edge.i780:                                 ; preds = %bb.hm, %.lr.ph52.i778, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i773
  %.sroa.035.0.i.lcssa.i781 = phi i64 [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i773 ], [ %invariant.umin.i776, %bb.hm ], [ %.sroa.035.0.i51.i779, %.lr.ph52.i778 ] ; 3 uses
  %invariant.umin56.i782 = call i64 @llvm.umin.i64(i64 %.sroa.15.0.i.lcssa.i774, i64 %..i.i764) ; 3 uses
  %or.cond.i57.i783 = icmp ult i64 %.sroa.035.0.i.lcssa.i781, %invariant.umin56.i782
  br i1 %or.cond.i57.i783, label %.lr.ph61.i798, label %._crit_edge62.i784

.lr.ph52.i778:                                    ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i773, %bb.hm
  %.sroa.035.0.i51.i779 = phi i64 [ %i.zp, %bb.hm ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i773 ] ; 3 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.lcssa.i775, i64 %.sroa.035.0.i51.i779
  %i.zn = load i8, ptr %i.zm, align 1, !alias.scope !1423, !noalias !1422, !noundef !4
  %i.zo = icmp eq i8 %i.zn, 48
  br i1 %i.zo, label %bb.hm, label %._crit_edge.i780

bb.hm:                                            ; preds = %.lr.ph52.i778
  %i.zp = add nuw nsw i64 %.sroa.035.0.i51.i779, 1 ; 2 uses
  %exitcond.not.i803 = icmp eq i64 %i.zp, %invariant.umin.i776
  br i1 %exitcond.not.i803, label %._crit_edge.i780, label %.lr.ph52.i778

._crit_edge62.i784:                               ; preds = %.lr.ph61.i798, %._crit_edge.i780
  %.sroa.060.0.i.lcssa.i785 = phi i64 [ 0, %._crit_edge.i780 ], [ %.sroa.060.0.i58.i800, %.lr.ph61.i798 ]
  %.sroa.035.1.i.lcssa.i786 = phi i64 [ %.sroa.035.0.i.lcssa.i781, %._crit_edge.i780 ], [ %.sroa.035.1.i59.i799, %.lr.ph61.i798 ] ; 4 uses
  %i.zq = icmp eq i64 %.sroa.035.1.i.lcssa.i786, 0
  br i1 %i.zq, label %.loopexit2469.a, label %bb.hn

.lr.ph61.i798:                                    ; preds = %._crit_edge.i780, %bb.hr
  %.sroa.035.1.i59.i799 = phi i64 [ %i.zv, %bb.hr ], [ %.sroa.035.0.i.lcssa.i781, %._crit_edge.i780 ] ; 3 uses
  %.sroa.060.0.i58.i800 = phi i64 [ %i.aac, %bb.hr ], [ 0, %._crit_edge.i780 ] ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.lcssa.i775, i64 %.sroa.035.1.i59.i799
  %i.zs = load i8, ptr %i.zr, align 1, !alias.scope !1423, !noalias !1422, !noundef !4
  %i.zt = add i8 %i.zs, -48                       ; 2 uses
  %or.cond67.i.i801 = icmp ult i8 %i.zt, 10
  br i1 %or.cond67.i.i801, label %bb.hp, label %._crit_edge62.i784

bb.hn:                                            ; preds = %._crit_edge62.i784
  %i.zu = icmp ugt i64 %.sroa.035.1.i.lcssa.i786, %.sroa.15.0.i.lcssa.i774
  br i1 %i.zu, label %bb.ho, label %.thread.i787, !prof !8

bb.ho:                                            ; preds = %bb.hn
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.035.1.i.lcssa.i786, i64 noundef %.sroa.15.0.i.lcssa.i774, i64 noundef %.sroa.15.0.i.lcssa.i774, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #14, !noalias !1422
  unreachable

bb.hp:                                            ; preds = %.lr.ph61.i798
  %i.zv = add nuw nsw i64 %.sroa.035.1.i59.i799, 1 ; 2 uses
  %i.zw = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.060.0.i58.i800, i64 10) ; 2 uses
  %i.zx = extractvalue { i64, i1 } %i.zw, 1
  br i1 %i.zx, label %.loopexit2469.a, label %bb.hq, !prof !7

bb.hq:                                            ; preds = %bb.hp
  %i.zy = extractvalue { i64, i1 } %i.zw, 0
  %i.zz = zext nneg i8 %i.zt to i64
  %i.aaa = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.zy, i64 %i.zz) ; 2 uses
  %i.aab = extractvalue { i64, i1 } %i.aaa, 1
  br i1 %i.aab, label %.loopexit2469.a, label %bb.hr, !prof !7

bb.hr:                                            ; preds = %bb.hq
  %i.aac = extractvalue { i64, i1 } %i.aaa, 0     ; 2 uses
  %exitcond68.not.i802 = icmp eq i64 %i.zv, %invariant.umin56.i782
  br i1 %exitcond68.not.i802, label %.thread.i787, label %.lr.ph61.i798

bb.hs:                                            ; preds = %.lr.ph.i768, %.lr.ph.i768, %.lr.ph.i768, %.lr.ph.i768, %.lr.ph.i768
  %i.aad = add nsw i64 %.sroa.15.0.i44.i770, -1   ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i45.i769, i64 1
  %.not65.i.i772 = icmp eq i64 %i.aad, 0
  br i1 %.not65.i.i772, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i773, label %.lr.ph.i768

.loopexit2469.a:                                  ; preds = %._crit_edge62.i784, %bb.hq, %bb.hp
  %.sink.i797 = phi i8 [ 2, %bb.hq ], [ 2, %bb.hp ], [ 0, %._crit_edge62.i784 ]
  %i.aaf = call noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef %.sink.i797, i8 undef) #13, !noalias !1422 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ep), !noalias !1424
  store ptr %i.aaf, ptr %i.ep, align 8, !noalias !1424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo), !noalias !1424
  store i8 29, ptr %i.eo, align 8, !noalias !1420
  %i.aag = invoke noundef ptr @_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB5_10ParseErrorNtB9_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.eo)
          to label %bb.hx unwind label %bb.ht, !noalias !1424

bb.ht:                                            ; preds = %.loopexit2469.a
  %i.aah = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.aai = icmp eq ptr %i.aaf, null
  br i1 %i.aai, label %common.resume, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.aaj = atomicrmw sub ptr %i.aaf, i64 1 release, align 8, !noalias !1425
  %i.aak = icmp eq i64 %i.aaj, 1
  br i1 %i.aak, label %bb.hv, label %common.resume

bb.hv:                                            ; preds = %bb.hu
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ep) #13
          to label %common.resume unwind label %bb.hw, !noalias !1424

bb.hw:                                            ; preds = %bb.hv
  %i.aal = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1424
  unreachable

bb.hx:                                            ; preds = %.loopexit2469.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo), !noalias !1424
  %i.aam = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.aaf, ptr noundef %i.aag), !noalias !1424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep), !noalias !1424
  br label %bb.yd

.thread.i787:                                     ; preds = %bb.hr, %bb.hn
  %.sroa.060.0.i.lcssa7782.i788 = phi i64 [ %.sroa.060.0.i.lcssa.i785, %bb.hn ], [ %i.aac, %bb.hr ] ; 2 uses
  %.sroa.035.1.i.lcssa7881.i789 = phi i64 [ %.sroa.035.1.i.lcssa.i786, %bb.hn ], [ %invariant.umin56.i782, %bb.hr ] ; 2 uses
  %i.aan = sub nuw nsw i64 %.sroa.15.0.i.lcssa.i774, %.sroa.035.1.i.lcssa7881.i789
  %i.aao = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.lcssa.i775, i64 %.sroa.035.1.i.lcssa7881.i789
  store ptr %i.aao, ptr %i.ha, align 8, !alias.scope !1420, !captures !5
  store i64 %i.aan, ptr %i.hb, align 8, !alias.scope !1420
  %i.aap = icmp eq i64 %.sroa.060.0.i.lcssa7782.i788, 60
  %spec.store.select.i = select i1 %i.aap, i64 59, i64 %.sroa.060.0.i.lcssa7782.i788 ; 2 uses
  %or.cond.i790 = icmp ugt i64 %spec.store.select.i, 59
  br i1 %or.cond.i790, label %bb.hy, label %bb.yi

bb.hy:                                            ; preds = %.thread.i787
  %i.aaq = call noundef i8 @_RNvXsM_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_6SecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #13, !noalias !1420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en), !noalias !1426
  %i.aar = call noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB4_11BoundsErrorNtNtB8_5error9IntoError10into_error(i8 noundef range(i8 0, 52) %i.aaq), !noalias !1426 ; 4 uses
  store ptr %i.aar, ptr %i.en, align 8, !noalias !1426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em), !noalias !1426
  store i8 29, ptr %i.em, align 8, !noalias !1420
  %i.aas = invoke noundef ptr @_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB5_10ParseErrorNtB9_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.em)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt7strtime10ParseErrorE0Ba_.exit.i796 unwind label %bb.hz, !noalias !1426

bb.hz:                                            ; preds = %bb.hy
  %i.aat = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.aau = icmp eq ptr %i.aar, null
  br i1 %i.aau, label %common.resume, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.aav = atomicrmw sub ptr %i.aar, i64 1 release, align 8, !noalias !1427
  %i.aaw = icmp eq i64 %i.aav, 1
  br i1 %i.aaw, label %bb.ib, label %common.resume

bb.ib:                                            ; preds = %bb.ia
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.en) #13
          to label %common.resume unwind label %bb.ic, !noalias !1426

bb.ic:                                            ; preds = %bb.ib
  %i.aax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1426
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt7strtime10ParseErrorE0Ba_.exit.i796: ; preds = %bb.hy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em), !noalias !1426
  %i.aay = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.aar, ptr noundef %i.aas), !noalias !1426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en), !noalias !1426
  br label %bb.yd

bb.id:                                            ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser1f.exit533
  call void @llvm.experimental.noalias.scope.decl(metadata !1428)
  %.sroa.2.0.extract.shift.i807 = lshr i32 %.sroa.032.0.i, 8
  %.sroa.3.0.extract.shift.i808 = lshr i32 %.sroa.5.3.insert.insert, 16
  %.sroa.3.0.extract.trunc.i809 = trunc nuw i32 %.sroa.3.0.extract.shift.i808 to i8
  %i.aaz = load ptr, ptr %i.ha, align 8, !alias.scope !1428, !nonnull !4, !noundef !4 ; 5 uses
  br i1 %i.je, label %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i810, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.aba = load i8, ptr %i.aaz, align 1, !alias.scope !1429, !noalias !1430, !noundef !4
  switch i8 %i.aba, label %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i810 [
    i8 45, label %bb.if
    i8 43, label %bb.ig
  ]

bb.if:                                            ; preds = %bb.ie
  %i.abb = add nsw i64 %i.jd, -1
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aaz, i64 1
  br label %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i810

bb.ig:                                            ; preds = %bb.ie
  %i.abd = add nsw i64 %i.jd, -1
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aaz, i64 1
  br label %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i810

_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i810: ; preds = %bb.ig, %bb.if, %bb.ie, %bb.id
  %.sroa.12.0.i811 = phi i64 [ %i.abd, %bb.ig ], [ 0, %bb.id ], [ %i.abb, %bb.if ], [ %i.jd, %bb.ie ] ; 3 uses
  %.sroa.7.0.i812 = phi ptr [ %i.abe, %bb.ig ], [ %i.aaz, %bb.id ], [ %i.abc, %bb.if ], [ %i.aaz, %bb.ie ] ; 3 uses
  %.sroa.050.0.i = phi i64 [ 1, %bb.ig ], [ 1, %bb.id ], [ -1, %bb.if ], [ 1, %bb.ie ]
  switch i8 %.sroa.3.0.extract.trunc.i809, label %bb.ih [
    i8 0, label %bb.ii
    i8 2, label %bb.ii
    i8 -1, label %bb.ii
  ]

bb.ih:                                            ; preds = %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i810
  %i.abf = trunc i32 %.sroa.032.0.i to i1
  %narrow.i843 = select i1 %i.abf, i32 %.sroa.2.0.extract.shift.i807, i32 19
  %.sroa.029.1.i.i844 = zext nneg i32 %narrow.i843 to i64
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i810, %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i810, %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i810
  %.sroa.029.0.i.i813 = phi i64 [ %.sroa.029.1.i.i844, %bb.ih ], [ 0, %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i810 ], [ 0, %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i810 ], [ 0, %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i810 ] ; 2 uses
  %..i.i816 = call noundef range(i64 1, 256) i64 @llvm.umax.i64(i64 range(i64 0, 256) %.sroa.029.0.i.i813, i64 19)
  %.not65.i72.i = icmp eq i64 %.sroa.12.0.i811, 0
  br i1 %.not65.i72.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i822, label %.lr.ph.preheader.i817

.lr.ph.preheader.i817:                            ; preds = %bb.ii
  %scevgep.i818 = getelementptr i8, ptr %.sroa.7.0.i812, i64 %.sroa.12.0.i811
  br label %.lr.ph.i819

.lr.ph.i819:                                      ; preds = %bb.ip, %.lr.ph.preheader.i817
  %.sroa.02.0.i74.i = phi ptr [ %i.abz, %bb.ip ], [ %.sroa.7.0.i812, %.lr.ph.preheader.i817 ] ; 3 uses
  %.sroa.15.0.i73.i = phi i64 [ %i.aby, %bb.ip ], [ %.sroa.12.0.i811, %.lr.ph.preheader.i817 ] ; 2 uses
  %.val.i.i820 = load i8, ptr %.sroa.02.0.i74.i, align 1, !alias.scope !1431, !noalias !1432, !noundef !4
  switch i8 %.val.i.i820, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i822 [
    i8 9, label %bb.ip
    i8 10, label %bb.ip
    i8 12, label %bb.ip
    i8 13, label %bb.ip
    i8 32, label %bb.ip
  ]

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i822: ; preds = %bb.ip, %.lr.ph.i819, %bb.ii
  %.sroa.15.0.i.lcssa.i823 = phi i64 [ 0, %bb.ii ], [ %.sroa.15.0.i73.i, %.lr.ph.i819 ], [ 0, %bb.ip ] ; 6 uses
  %.sroa.02.0.i.lcssa.i824 = phi ptr [ %.sroa.7.0.i812, %bb.ii ], [ %.sroa.02.0.i74.i, %.lr.ph.i819 ], [ %scevgep.i818, %bb.ip ] ; 3 uses
  %invariant.umin.i825 = call i64 @llvm.umin.i64(i64 %.sroa.15.0.i.lcssa.i823, i64 %.sroa.029.0.i.i813) ; 3 uses
  %or.cond66.i79.not.i = icmp eq i64 %invariant.umin.i825, 0
  br i1 %or.cond66.i79.not.i, label %._crit_edge.i826, label %.lr.ph81.i

._crit_edge.i826:                                 ; preds = %bb.ij, %.lr.ph81.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i822
  %.sroa.035.0.i.lcssa.i827 = phi i64 [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i822 ], [ %invariant.umin.i825, %bb.ij ], [ %.sroa.035.0.i80.i, %.lr.ph81.i ] ; 3 uses
  %invariant.umin85.i = call i64 @llvm.umin.i64(i64 %.sroa.15.0.i.lcssa.i823, i64 %..i.i816) ; 3 uses
  %or.cond.i86.i = icmp ult i64 %.sroa.035.0.i.lcssa.i827, %invariant.umin85.i
  br i1 %or.cond.i86.i, label %.lr.ph90.i, label %._crit_edge91.i

.lr.ph81.i:                                       ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i822, %bb.ij
  %.sroa.035.0.i80.i = phi i64 [ %i.abj, %bb.ij ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i822 ] ; 3 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.lcssa.i824, i64 %.sroa.035.0.i80.i
  %i.abh = load i8, ptr %i.abg, align 1, !alias.scope !1433, !noalias !1432, !noundef !4
  %i.abi = icmp eq i8 %i.abh, 48
  br i1 %i.abi, label %bb.ij, label %._crit_edge.i826

bb.ij:                                            ; preds = %.lr.ph81.i
  %i.abj = add nuw nsw i64 %.sroa.035.0.i80.i, 1  ; 2 uses
  %exitcond.not.i842 = icmp eq i64 %i.abj, %invariant.umin.i825
  br i1 %exitcond.not.i842, label %._crit_edge.i826, label %.lr.ph81.i

._crit_edge91.loopexit.i:                         ; preds = %bb.io, %.lr.ph90.i
  %.sroa.060.0.i.lcssa.ph.i840 = phi i64 [ %i.abx, %bb.io ], [ %.sroa.060.0.i87.i, %.lr.ph90.i ]
  %.sroa.035.1.i.lcssa.ph.i841 = phi i64 [ %invariant.umin85.i, %bb.io ], [ %.sroa.035.1.i88.i, %.lr.ph90.i ]
  %i.abk = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.060.0.i.lcssa.ph.i840, i64 %.sroa.050.0.i)
  br label %._crit_edge91.i

._crit_edge91.i:                                  ; preds = %._crit_edge91.loopexit.i, %._crit_edge.i826
  %.sroa.060.0.i.lcssa.i828 = phi { i64, i1 } [ zeroinitializer, %._crit_edge.i826 ], [ %i.abk, %._crit_edge91.loopexit.i ] ; 2 uses
  %.sroa.035.1.i.lcssa.i829 = phi i64 [ %.sroa.035.0.i.lcssa.i827, %._crit_edge.i826 ], [ %.sroa.035.1.i.lcssa.ph.i841, %._crit_edge91.loopexit.i ] ; 5 uses
  %i.abl = icmp eq i64 %.sroa.035.1.i.lcssa.i829, 0
  br i1 %i.abl, label %_RNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB6_9Extension12parse_number.exit.thread.i837, label %bb.ik

.lr.ph90.i:                                       ; preds = %._crit_edge.i826, %bb.io
  %.sroa.035.1.i88.i = phi i64 [ %i.abq, %bb.io ], [ %.sroa.035.0.i.lcssa.i827, %._crit_edge.i826 ] ; 3 uses
  %.sroa.060.0.i87.i = phi i64 [ %i.abx, %bb.io ], [ 0, %._crit_edge.i826 ] ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.lcssa.i824, i64 %.sroa.035.1.i88.i
  %i.abn = load i8, ptr %i.abm, align 1, !alias.scope !1433, !noalias !1432, !noundef !4
  %i.abo = add i8 %i.abn, -48                     ; 2 uses
  %or.cond67.i.i839 = icmp ult i8 %i.abo, 10
  br i1 %or.cond67.i.i839, label %bb.im, label %._crit_edge91.loopexit.i

bb.ik:                                            ; preds = %._crit_edge91.i
  %i.abp = icmp ugt i64 %.sroa.035.1.i.lcssa.i829, %.sroa.15.0.i.lcssa.i823
  br i1 %i.abp, label %bb.il, label %_RNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB6_9Extension12parse_number.exit.i830, !prof !7

bb.il:                                            ; preds = %bb.ik
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.035.1.i.lcssa.i829, i64 noundef %.sroa.15.0.i.lcssa.i823, i64 noundef %.sroa.15.0.i.lcssa.i823, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #14, !noalias !1432
  unreachable

bb.im:                                            ; preds = %.lr.ph90.i
  %i.abq = add nuw nsw i64 %.sroa.035.1.i88.i, 1  ; 2 uses
  %i.abr = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.060.0.i87.i, i64 10) ; 2 uses
  %i.abs = extractvalue { i64, i1 } %i.abr, 1
  br i1 %i.abs, label %_RNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB6_9Extension12parse_number.exit.thread.i837, label %bb.in, !prof !7

bb.in:                                            ; preds = %bb.im
  %i.abt = extractvalue { i64, i1 } %i.abr, 0
  %i.abu = zext nneg i8 %i.abo to i64
  %i.abv = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.abt, i64 %i.abu) ; 2 uses
  %i.abw = extractvalue { i64, i1 } %i.abv, 1
  br i1 %i.abw, label %_RNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB6_9Extension12parse_number.exit.thread.i837, label %bb.io, !prof !7

bb.io:                                            ; preds = %bb.in
  %i.abx = extractvalue { i64, i1 } %i.abv, 0     ; 2 uses
  %exitcond97.not.i = icmp eq i64 %i.abq, %invariant.umin85.i
  br i1 %exitcond97.not.i, label %._crit_edge91.loopexit.i, label %.lr.ph90.i

bb.ip:                                            ; preds = %.lr.ph.i819, %.lr.ph.i819, %.lr.ph.i819, %.lr.ph.i819, %.lr.ph.i819
  %i.aby = add nsw i64 %.sroa.15.0.i73.i, -1      ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i74.i, i64 1
  %.not65.i.i821 = icmp eq i64 %i.aby, 0
  br i1 %.not65.i.i821, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i822, label %.lr.ph.i819

_RNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB6_9Extension12parse_number.exit.i830: ; preds = %bb.ik
  %i.aca = sub nuw nsw i64 %.sroa.15.0.i.lcssa.i823, %.sroa.035.1.i.lcssa.i829
  %i.acb = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.lcssa.i824, i64 %.sroa.035.1.i.lcssa.i829
  %i.acc = extractvalue { i64, i1 } %.sroa.060.0.i.lcssa.i828, 1
  br i1 %i.acc, label %bb.iw, label %bb.iv, !prof !7

_RNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB6_9Extension12parse_number.exit.thread.i837: ; preds = %._crit_edge91.i, %bb.in, %bb.im
  %.sink.i838 = phi i8 [ 2, %bb.in ], [ 2, %bb.im ], [ 0, %._crit_edge91.i ]
  %i.acd = call noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef %.sink.i838, i8 undef) #13, !noalias !1432 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek), !noalias !1434
  store ptr %i.acd, ptr %i.ek, align 8, !noalias !1434
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej), !noalias !1434
  store i8 31, ptr %i.ej, align 8, !noalias !1428
  %i.ace = invoke noundef ptr @_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB5_10ParseErrorNtB9_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ej)
          to label %bb.iu unwind label %bb.iq, !noalias !1434

bb.iq:                                            ; preds = %_RNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB6_9Extension12parse_number.exit.thread.i837
  %i.acf = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.acg = icmp eq ptr %i.acd, null
  br i1 %i.acg, label %common.resume, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.ach = atomicrmw sub ptr %i.acd, i64 1 release, align 8, !noalias !1435
  %i.aci = icmp eq i64 %i.ach, 1
  br i1 %i.aci, label %bb.is, label %common.resume

bb.is:                                            ; preds = %bb.ir
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ek) #13
          to label %common.resume unwind label %bb.it, !noalias !1434

bb.it:                                            ; preds = %bb.is
  %i.acj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1434
  unreachable

bb.iu:                                            ; preds = %_RNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB6_9Extension12parse_number.exit.thread.i837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej), !noalias !1434
  %i.ack = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.acd, ptr noundef %i.ace), !noalias !1434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek), !noalias !1434
  br label %bb.yj

bb.iv:                                            ; preds = %_RNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB6_9Extension12parse_number.exit.i830
  %i.acl = extractvalue { i64, i1 } %.sroa.060.0.i.lcssa.i828, 0 ; 2 uses
  %i.acm = add i64 %i.acl, 377705023201
  %or.cond.i48.i = icmp ult i64 %i.acm, 631107230402
  br i1 %or.cond.i48.i, label %bb.yo, label %bb.ix, !prof !1436

bb.iw:                                            ; preds = %_RNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB6_9Extension12parse_number.exit.i830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el), !noalias !1428
  store i8 31, ptr %i.el, align 8, !noalias !1428
  %i.acn = call noundef ptr @_RNvXs3_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_10ParseErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.el) #13, !noalias !1428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el), !noalias !1428
  br label %bb.yj

bb.ix:                                            ; preds = %bb.iv
  %i.aco = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 7167) #13, !noalias !1437 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei), !noalias !1438
  store ptr %i.aco, ptr %i.ei, align 8, !noalias !1438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh), !noalias !1438
  store i8 31, ptr %i.eh, align 8, !noalias !1428
  %i.acp = invoke noundef ptr @_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB5_10ParseErrorNtB9_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.eh)
          to label %bb.jc unwind label %bb.iy, !noalias !1438

bb.iy:                                            ; preds = %bb.ix
  %i.acq = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.acr = icmp eq ptr %i.aco, null
  br i1 %i.acr, label %common.resume, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.acs = atomicrmw sub ptr %i.aco, i64 1 release, align 8, !noalias !1439
  %i.act = icmp eq i64 %i.acs, 1
  br i1 %i.act, label %bb.ja, label %common.resume

bb.ja:                                            ; preds = %bb.iz
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ei) #13
          to label %common.resume unwind label %bb.jb, !noalias !1438

bb.jb:                                            ; preds = %bb.ja
  %i.acu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1438
  unreachable

bb.jc:                                            ; preds = %bb.ix
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh), !noalias !1438
  %i.acv = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.aco, ptr noundef %i.acp), !noalias !1438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei), !noalias !1438
  br label %bb.yj

bb.jd:                                            ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser1f.exit533
  call void @llvm.experimental.noalias.scope.decl(metadata !1440)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg), !noalias !1440
  %i.acw = load ptr, ptr %i.ha, align 8, !alias.scope !1440, !nonnull !4, !noundef !4
  %i.acx = load ptr, ptr %i.hd, align 8, !alias.scope !1440, !nonnull !4, !align !6, !noundef !4
  store ptr @9, ptr %i.eg, align 8, !noalias !1440
  store i64 8, ptr %i.hf, align 8, !noalias !1440
  store ptr %i.acw, ptr %i.hg, align 8, !noalias !1440
  store i64 %i.jd, ptr %i.hh, align 8, !noalias !1440
  store ptr %i.acx, ptr %i.hi, align 8, !noalias !1440
  %i.acy = call { i64, ptr } @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser5parse(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.eg), !noalias !1440, !inline_history !492 ; 2 uses
  %i.acz = extractvalue { i64, ptr } %i.acy, 0
  %i.ada = trunc nuw i64 %i.acz to i1
  br i1 %i.ada, label %bb.yp, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.adb = load ptr, ptr %i.hg, align 8, !noalias !1440, !nonnull !4, !noundef !4
  %i.adc = load i64, ptr %i.hh, align 8, !noalias !1440, !noundef !4
  store ptr %i.adb, ptr %i.ha, align 8, !alias.scope !1440, !captures !5
  store i64 %i.adc, ptr %i.hb, align 8, !alias.scope !1440
  call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  %i.add = load i64, ptr %i.gx, align 8, !alias.scope !1441, !noundef !4 ; 2 uses
  %i.ade = icmp eq i64 %i.add, 0
  br i1 %i.ade, label %bb.jf, label %bb.yu, !prof !7

bb.jf:                                            ; preds = %bb.je
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #14, !noalias !1441
  unreachable

bb.jg:                                            ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser1f.exit533
  call void @llvm.experimental.noalias.scope.decl(metadata !1442)
  br i1 %i.je, label %.loopexit2470, label %.preheader.i847
end_hunk_1
begin_hunk_2_@_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser5parse:bb.a
  br i1 %.not.i850, label %.loopexit2470, label %bb.jh

bb.ji:                                            ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser1f.exit533
  call void @llvm.experimental.noalias.scope.decl(metadata !1444)
  %.sroa.3.0.extract.shift.i854 = lshr i32 %.sroa.5.3.insert.insert, 16
  %.sroa.3.0.extract.trunc.i855 = trunc nuw i32 %.sroa.3.0.extract.shift.i854 to i8
  %i.adk = load ptr, ptr %i.ha, align 8, !alias.scope !1444, !nonnull !4, !noundef !4 ; 3 uses
  switch i8 %.sroa.3.0.extract.trunc.i855, label %bb.jj [
    i8 0, label %bb.jk
    i8 2, label %bb.jk
  ]

bb.jj:                                            ; preds = %bb.ji
  %.sroa.2.0.extract.shift.i897 = lshr i32 %.sroa.032.0.i, 8
  %i.adl = trunc i32 %.sroa.032.0.i to i1
  %narrow.i898 = select i1 %i.adl, i32 %.sroa.2.0.extract.shift.i897, i32 2
  %.sroa.029.1.i.i899 = zext nneg i32 %narrow.i898 to i64
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.ji, %bb.ji
  %.sroa.029.0.i.i856 = phi i64 [ %.sroa.029.1.i.i899, %bb.jj ], [ 0, %bb.ji ], [ 0, %bb.ji ] ; 2 uses
  %..i.i857 = call noundef range(i64 1, 256) i64 @llvm.umax.i64(i64 range(i64 0, 256) %.sroa.029.0.i.i856, i64 2)
  br i1 %i.je, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i866, label %.lr.ph.preheader.i859

.lr.ph.preheader.i859:                            ; preds = %bb.jk
  %scevgep.i860 = getelementptr i8, ptr %i.adk, i64 %i.jd
  br label %.lr.ph.i861

.lr.ph.i861:                                      ; preds = %bb.jr, %.lr.ph.preheader.i859
  %.sroa.02.0.i43.i862 = phi ptr [ %i.aee, %bb.jr ], [ %i.adk, %.lr.ph.preheader.i859 ] ; 3 uses
  %.sroa.15.0.i42.i863 = phi i64 [ %i.aed, %bb.jr ], [ %i.jd, %.lr.ph.preheader.i859 ] ; 2 uses
  %.val.i.i864 = load i8, ptr %.sroa.02.0.i43.i862, align 1, !alias.scope !1445, !noalias !1446, !noundef !4
  switch i8 %.val.i.i864, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i866 [
    i8 9, label %bb.jr
    i8 10, label %bb.jr
    i8 12, label %bb.jr
    i8 13, label %bb.jr
    i8 32, label %bb.jr
  ]

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i866: ; preds = %bb.jr, %.lr.ph.i861, %bb.jk
  %.sroa.15.0.i.lcssa.i867 = phi i64 [ 0, %bb.jk ], [ %.sroa.15.0.i42.i863, %.lr.ph.i861 ], [ 0, %bb.jr ] ; 6 uses
  %.sroa.02.0.i.lcssa.i868 = phi ptr [ %i.adk, %bb.jk ], [ %.sroa.02.0.i43.i862, %.lr.ph.i861 ], [ %scevgep.i860, %bb.jr ] ; 3 uses
  %invariant.umin.i869 = call i64 @llvm.umin.i64(i64 %.sroa.15.0.i.lcssa.i867, i64 %.sroa.029.0.i.i856) ; 3 uses
  %or.cond66.i48.not.i870 = icmp eq i64 %invariant.umin.i869, 0
  br i1 %or.cond66.i48.not.i870, label %._crit_edge.i873, label %.lr.ph50.i871

._crit_edge.i873:                                 ; preds = %bb.jl, %.lr.ph50.i871, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i866
  %.sroa.035.0.i.lcssa.i874 = phi i64 [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i866 ], [ %invariant.umin.i869, %bb.jl ], [ %.sroa.035.0.i49.i872, %.lr.ph50.i871 ] ; 3 uses
  %invariant.umin54.i875 = call i64 @llvm.umin.i64(i64 %.sroa.15.0.i.lcssa.i867, i64 %..i.i857) ; 3 uses
  %or.cond.i55.i876 = icmp ult i64 %.sroa.035.0.i.lcssa.i874, %invariant.umin54.i875
  br i1 %or.cond.i55.i876, label %.lr.ph59.i891, label %._crit_edge60.i877

.lr.ph50.i871:                                    ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i866, %bb.jl
  %.sroa.035.0.i49.i872 = phi i64 [ %i.adp, %bb.jl ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i866 ] ; 3 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.lcssa.i868, i64 %.sroa.035.0.i49.i872
  %i.adn = load i8, ptr %i.adm, align 1, !alias.scope !1447, !noalias !1446, !noundef !4
  %i.ado = icmp eq i8 %i.adn, 48
  br i1 %i.ado, label %bb.jl, label %._crit_edge.i873

bb.jl:                                            ; preds = %.lr.ph50.i871
  %i.adp = add nuw nsw i64 %.sroa.035.0.i49.i872, 1 ; 2 uses
  %exitcond.not.i896 = icmp eq i64 %i.adp, %invariant.umin.i869
  br i1 %exitcond.not.i896, label %._crit_edge.i873, label %.lr.ph50.i871

._crit_edge60.i877:                               ; preds = %.lr.ph59.i891, %._crit_edge.i873
  %.sroa.060.0.i.lcssa.i878 = phi i64 [ 0, %._crit_edge.i873 ], [ %.sroa.060.0.i56.i893, %.lr.ph59.i891 ]
  %.sroa.035.1.i.lcssa.i879 = phi i64 [ %.sroa.035.0.i.lcssa.i874, %._crit_edge.i873 ], [ %.sroa.035.1.i57.i892, %.lr.ph59.i891 ] ; 4 uses
  %i.adq = icmp eq i64 %.sroa.035.1.i.lcssa.i879, 0
  br i1 %i.adq, label %.loopexit2471.a, label %bb.jm

.lr.ph59.i891:                                    ; preds = %._crit_edge.i873, %bb.jq
  %.sroa.035.1.i57.i892 = phi i64 [ %i.adv, %bb.jq ], [ %.sroa.035.0.i.lcssa.i874, %._crit_edge.i873 ] ; 3 uses
  %.sroa.060.0.i56.i893 = phi i64 [ %i.aec, %bb.jq ], [ 0, %._crit_edge.i873 ] ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.lcssa.i868, i64 %.sroa.035.1.i57.i892
  %i.ads = load i8, ptr %i.adr, align 1, !alias.scope !1447, !noalias !1446, !noundef !4
  %i.adt = add i8 %i.ads, -48                     ; 2 uses
  %or.cond67.i.i894 = icmp ult i8 %i.adt, 10
  br i1 %or.cond67.i.i894, label %bb.jo, label %._crit_edge60.i877

bb.jm:                                            ; preds = %._crit_edge60.i877
  %i.adu = icmp ugt i64 %.sroa.035.1.i.lcssa.i879, %.sroa.15.0.i.lcssa.i867
  br i1 %i.adu, label %bb.jn, label %.thread.i880, !prof !8

bb.jn:                                            ; preds = %bb.jm
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.035.1.i.lcssa.i879, i64 noundef %.sroa.15.0.i.lcssa.i867, i64 noundef %.sroa.15.0.i.lcssa.i867, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #14, !noalias !1446
  unreachable

bb.jo:                                            ; preds = %.lr.ph59.i891
  %i.adv = add nuw nsw i64 %.sroa.035.1.i57.i892, 1 ; 2 uses
  %i.adw = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.060.0.i56.i893, i64 10) ; 2 uses
  %i.adx = extractvalue { i64, i1 } %i.adw, 1
  br i1 %i.adx, label %.loopexit2471.a, label %bb.jp, !prof !7

bb.jp:                                            ; preds = %bb.jo
  %i.ady = extractvalue { i64, i1 } %i.adw, 0
  %i.adz = zext nneg i8 %i.adt to i64
  %i.aea = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ady, i64 %i.adz) ; 2 uses
  %i.aeb = extractvalue { i64, i1 } %i.aea, 1
  br i1 %i.aeb, label %.loopexit2471.a, label %bb.jq, !prof !7

bb.jq:                                            ; preds = %bb.jp
  %i.aec = extractvalue { i64, i1 } %i.aea, 0     ; 2 uses
  %exitcond66.not.i895 = icmp eq i64 %i.adv, %invariant.umin54.i875
  br i1 %exitcond66.not.i895, label %.thread.i880, label %.lr.ph59.i891

bb.jr:                                            ; preds = %.lr.ph.i861, %.lr.ph.i861, %.lr.ph.i861, %.lr.ph.i861, %.lr.ph.i861
  %i.aed = add nsw i64 %.sroa.15.0.i42.i863, -1   ; 2 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i43.i862, i64 1
  %.not65.i.i865 = icmp eq i64 %i.aed, 0
  br i1 %.not65.i.i865, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i866, label %.lr.ph.i861

.loopexit2471.a:                                  ; preds = %._crit_edge60.i877, %bb.jp, %bb.jo
  %.sink.i890 = phi i8 [ 2, %bb.jp ], [ 2, %bb.jo ], [ 0, %._crit_edge60.i877 ]
  %i.aef = call noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef %.sink.i890, i8 undef) #13, !noalias !1446 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef), !noalias !1448
  store ptr %i.aef, ptr %i.ef, align 8, !noalias !1448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee), !noalias !1448
  store i8 30, ptr %i.ee, align 8, !noalias !1444
  %i.aeg = invoke noundef ptr @_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB5_10ParseErrorNtB9_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ee)
          to label %bb.jw unwind label %bb.js, !noalias !1448

bb.js:                                            ; preds = %.loopexit2471.a
  %i.aeh = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.aei = icmp eq ptr %i.aef, null
  br i1 %i.aei, label %common.resume, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.aej = atomicrmw sub ptr %i.aef, i64 1 release, align 8, !noalias !1449
  %i.aek = icmp eq i64 %i.aej, 1
  br i1 %i.aek, label %bb.ju, label %common.resume

bb.ju:                                            ; preds = %bb.jt
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ef) #13
          to label %common.resume unwind label %bb.jv, !noalias !1448

bb.jv:                                            ; preds = %bb.ju
  %i.ael = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1448
  unreachable

bb.jw:                                            ; preds = %.loopexit2471.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !noalias !1448
  %i.aem = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.aef, ptr noundef %i.aeg), !noalias !1448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !noalias !1448
  br label %bb.yv

.thread.i880:                                     ; preds = %bb.jq, %bb.jm
  %.sroa.060.0.i.lcssa7580.i881 = phi i64 [ %.sroa.060.0.i.lcssa.i878, %bb.jm ], [ %i.aec, %bb.jq ] ; 2 uses
  %.sroa.035.1.i.lcssa7679.i882 = phi i64 [ %.sroa.035.1.i.lcssa.i879, %bb.jm ], [ %invariant.umin54.i875, %bb.jq ] ; 2 uses
  %i.aen = sub nuw nsw i64 %.sroa.15.0.i.lcssa.i867, %.sroa.035.1.i.lcssa7679.i882
  %i.aeo = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.lcssa.i868, i64 %.sroa.035.1.i.lcssa7679.i882
  store ptr %i.aeo, ptr %i.ha, align 8, !alias.scope !1444, !captures !5
  store i64 %i.aen, ptr %i.hb, align 8, !alias.scope !1444
  %or.cond.i883 = icmp ugt i64 %.sroa.060.0.i.lcssa7580.i881, 53
  br i1 %or.cond.i883, label %bb.jx, label %bb.za

bb.jx:                                            ; preds = %.thread.i880
  %i.aep = call noundef i8 @_RNvXs1o_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB6_7WeekNumNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #13, !noalias !1444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed), !noalias !1450
  %i.aeq = call noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB4_11BoundsErrorNtNtB8_5error9IntoError10into_error(i8 noundef range(i8 0, 52) %i.aep), !noalias !1450 ; 4 uses
  store ptr %i.aeq, ptr %i.ed, align 8, !noalias !1450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec), !noalias !1450
  store i8 30, ptr %i.ec, align 8, !noalias !1444
  %i.aer = invoke noundef ptr @_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB5_10ParseErrorNtB9_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ec)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt7strtime10ParseErrorE0Ba_.exit.i889 unwind label %bb.jy, !noalias !1450

bb.jy:                                            ; preds = %bb.jx
  %i.aes = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.aet = icmp eq ptr %i.aeq, null
  br i1 %i.aet, label %common.resume, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.aeu = atomicrmw sub ptr %i.aeq, i64 1 release, align 8, !noalias !1451
  %i.aev = icmp eq i64 %i.aeu, 1
  br i1 %i.aev, label %bb.ka, label %common.resume

bb.ka:                                            ; preds = %bb.jz
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ed) #13
          to label %common.resume unwind label %bb.kb, !noalias !1450

bb.kb:                                            ; preds = %bb.ka
  %i.aew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1450
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt7strtime10ParseErrorE0Ba_.exit.i889: ; preds = %bb.jx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec), !noalias !1450
  %i.aex = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.aeq, ptr noundef %i.aer), !noalias !1450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !noalias !1450
  br label %bb.yv

bb.kc:                                            ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser1f.exit533
  call void @llvm.experimental.noalias.scope.decl(metadata !1452)
  %.sroa.3.0.extract.shift.i900 = lshr i32 %.sroa.5.3.insert.insert, 16
  %.sroa.3.0.extract.trunc.i901 = trunc nuw i32 %.sroa.3.0.extract.shift.i900 to i8
  %i.aey = load ptr, ptr %i.ha, align 8, !alias.scope !1452, !nonnull !4, !noundef !4 ; 3 uses
  switch i8 %.sroa.3.0.extract.trunc.i901, label %bb.kd [
    i8 0, label %bb.ke
    i8 2, label %bb.ke
    i8 -1, label %bb.ke
  ]

bb.kd:                                            ; preds = %bb.kc
  %.sroa.2.0.extract.shift.i929 = lshr i32 %.sroa.032.0.i, 8
  %i.aez = trunc i32 %.sroa.032.0.i to i1
  %narrow.i930 = select i1 %i.aez, i32 %.sroa.2.0.extract.shift.i929, i32 1
  %.sroa.029.1.i.i931 = zext nneg i32 %narrow.i930 to i64
  br label %bb.ke

bb.ke:                                            ; preds = %bb.kd, %bb.kc, %bb.kc, %bb.kc
  %.sroa.029.0.i.i900 = phi i64 [ %.sroa.029.1.i.i931, %bb.kd ], [ 0, %bb.kc ], [ 0, %bb.kc ], [ 0, %bb.kc ] ; 2 uses
  %..i.i905 = call noundef range(i64 1, 256) i64 @llvm.umax.i64(i64 range(i64 0, 256) %.sroa.029.0.i.i900, i64 1)
  br i1 %i.je, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i911, label %.lr.ph.preheader.i906

.lr.ph.preheader.i906:                            ; preds = %bb.ke
  %scevgep.i907 = getelementptr i8, ptr %i.aey, i64 %i.jd
  br label %.lr.ph.i908

.lr.ph.i908:                                      ; preds = %bb.kl, %.lr.ph.preheader.i906
  %.sroa.02.0.i60.i = phi ptr [ %i.afs, %bb.kl ], [ %i.aey, %.lr.ph.preheader.i906 ] ; 3 uses
  %.sroa.15.0.i59.i = phi i64 [ %i.afr, %bb.kl ], [ %i.jd, %.lr.ph.preheader.i906 ] ; 2 uses
  %.val.i.i909 = load i8, ptr %.sroa.02.0.i60.i, align 1, !alias.scope !1453, !noalias !1454, !noundef !4
  switch i8 %.val.i.i909, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i911 [
    i8 9, label %bb.kl
    i8 10, label %bb.kl
    i8 12, label %bb.kl
    i8 13, label %bb.kl
    i8 32, label %bb.kl
  ]

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i911: ; preds = %bb.kl, %.lr.ph.i908, %bb.ke
  %.sroa.15.0.i.lcssa.i912 = phi i64 [ 0, %bb.ke ], [ %.sroa.15.0.i59.i, %.lr.ph.i908 ], [ 0, %bb.kl ] ; 6 uses
  %.sroa.02.0.i.lcssa.i913 = phi ptr [ %i.aey, %bb.ke ], [ %.sroa.02.0.i60.i, %.lr.ph.i908 ], [ %scevgep.i907, %bb.kl ] ; 3 uses
  %invariant.umin.i914 = call i64 @llvm.umin.i64(i64 %.sroa.15.0.i.lcssa.i912, i64 %.sroa.029.0.i.i900) ; 3 uses
  %or.cond66.i65.not.i = icmp eq i64 %invariant.umin.i914, 0
  br i1 %or.cond66.i65.not.i, label %._crit_edge.i915, label %.lr.ph67.i

._crit_edge.i915:                                 ; preds = %bb.kf, %.lr.ph67.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i911
  %.sroa.035.0.i.lcssa.i916 = phi i64 [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i911 ], [ %invariant.umin.i914, %bb.kf ], [ %.sroa.035.0.i66.i, %.lr.ph67.i ] ; 3 uses
  %invariant.umin71.i = call i64 @llvm.umin.i64(i64 %.sroa.15.0.i.lcssa.i912, i64 %..i.i905) ; 3 uses
  %or.cond.i72.i = icmp ult i64 %.sroa.035.0.i.lcssa.i916, %invariant.umin71.i
  br i1 %or.cond.i72.i, label %.lr.ph76.i, label %._crit_edge77.i

.lr.ph67.i:                                       ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i911, %bb.kf
  %.sroa.035.0.i66.i = phi i64 [ %i.afd, %bb.kf ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i911 ] ; 3 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.lcssa.i913, i64 %.sroa.035.0.i66.i
  %i.afb = load i8, ptr %i.afa, align 1, !alias.scope !1455, !noalias !1454, !noundef !4
  %i.afc = icmp eq i8 %i.afb, 48
  br i1 %i.afc, label %bb.kf, label %._crit_edge.i915

bb.kf:                                            ; preds = %.lr.ph67.i
  %i.afd = add nuw nsw i64 %.sroa.035.0.i66.i, 1  ; 2 uses
  %exitcond.not.i928 = icmp eq i64 %i.afd, %invariant.umin.i914
  br i1 %exitcond.not.i928, label %._crit_edge.i915, label %.lr.ph67.i

._crit_edge77.i:                                  ; preds = %.lr.ph76.i, %._crit_edge.i915
  %.sroa.060.0.i.lcssa.i917 = phi i64 [ 0, %._crit_edge.i915 ], [ %.sroa.060.0.i73.i, %.lr.ph76.i ]
  %.sroa.035.1.i.lcssa.i918 = phi i64 [ %.sroa.035.0.i.lcssa.i916, %._crit_edge.i915 ], [ %.sroa.035.1.i74.i, %.lr.ph76.i ] ; 4 uses
  %i.afe = icmp eq i64 %.sroa.035.1.i.lcssa.i918, 0
  br i1 %i.afe, label %.loopexit2472, label %bb.kg

.lr.ph76.i:                                       ; preds = %._crit_edge.i915, %bb.kk
  %.sroa.035.1.i74.i = phi i64 [ %i.afj, %bb.kk ], [ %.sroa.035.0.i.lcssa.i916, %._crit_edge.i915 ] ; 3 uses
  %.sroa.060.0.i73.i = phi i64 [ %i.afq, %bb.kk ], [ 0, %._crit_edge.i915 ] ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.lcssa.i913, i64 %.sroa.035.1.i74.i
  %i.afg = load i8, ptr %i.aff, align 1, !alias.scope !1455, !noalias !1454, !noundef !4
  %i.afh = add i8 %i.afg, -48                     ; 2 uses
  %or.cond67.i.i927 = icmp ult i8 %i.afh, 10
  br i1 %or.cond67.i.i927, label %bb.ki, label %._crit_edge77.i

bb.kg:                                            ; preds = %._crit_edge77.i
  %i.afi = icmp ugt i64 %.sroa.035.1.i.lcssa.i918, %.sroa.15.0.i.lcssa.i912
  br i1 %i.afi, label %bb.kh, label %.thread.i919, !prof !8

bb.kh:                                            ; preds = %bb.kg
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.035.1.i.lcssa.i918, i64 noundef %.sroa.15.0.i.lcssa.i912, i64 noundef %.sroa.15.0.i.lcssa.i912, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #14, !noalias !1454
  unreachable

bb.ki:                                            ; preds = %.lr.ph76.i
  %i.afj = add nuw nsw i64 %.sroa.035.1.i74.i, 1  ; 2 uses
  %i.afk = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.060.0.i73.i, i64 10) ; 2 uses
  %i.afl = extractvalue { i64, i1 } %i.afk, 1
  br i1 %i.afl, label %.loopexit2472, label %bb.kj, !prof !7

bb.kj:                                            ; preds = %bb.ki
  %i.afm = extractvalue { i64, i1 } %i.afk, 0
  %i.afn = zext nneg i8 %i.afh to i64
  %i.afo = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.afm, i64 %i.afn) ; 2 uses
  %i.afp = extractvalue { i64, i1 } %i.afo, 1
  br i1 %i.afp, label %.loopexit2472, label %bb.kk, !prof !7

bb.kk:                                            ; preds = %bb.kj
  %i.afq = extractvalue { i64, i1 } %i.afo, 0     ; 2 uses
  %exitcond83.not.i = icmp eq i64 %i.afj, %invariant.umin71.i
  br i1 %exitcond83.not.i, label %.thread.i919, label %.lr.ph76.i

bb.kl:                                            ; preds = %.lr.ph.i908, %.lr.ph.i908, %.lr.ph.i908, %.lr.ph.i908, %.lr.ph.i908
  %i.afr = add nsw i64 %.sroa.15.0.i59.i, -1      ; 2 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i60.i, i64 1
  %.not65.i.i910 = icmp eq i64 %i.afr, 0
  br i1 %.not65.i.i910, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i911, label %.lr.ph.i908

.loopexit2472:                                    ; preds = %._crit_edge77.i, %bb.kj, %bb.ki
  %.sink.i926 = phi i8 [ 2, %bb.kj ], [ 2, %bb.ki ], [ 0, %._crit_edge77.i ]
  %i.aft = call noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef %.sink.i926, i8 undef) #13, !noalias !1454 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea), !noalias !1456
  store ptr %i.aft, ptr %i.ea, align 8, !noalias !1456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz), !noalias !1456
  store i8 32, ptr %i.dz, align 8, !noalias !1452
  %i.afu = invoke noundef ptr @_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB5_10ParseErrorNtB9_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.dz)
          to label %bb.kq unwind label %bb.km, !noalias !1456

bb.km:                                            ; preds = %.loopexit2472
  %i.afv = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.afw = icmp eq ptr %i.aft, null
  br i1 %i.afw, label %common.resume, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.afx = atomicrmw sub ptr %i.aft, i64 1 release, align 8, !noalias !1457
  %i.afy = icmp eq i64 %i.afx, 1
  br i1 %i.afy, label %bb.ko, label %common.resume

bb.ko:                                            ; preds = %bb.kn
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ea) #13
          to label %common.resume unwind label %bb.kp, !noalias !1456

bb.kp:                                            ; preds = %bb.ko
  %i.afz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1456
  unreachable

bb.kq:                                            ; preds = %.loopexit2472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !1456
  %i.aga = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.aft, ptr noundef %i.afu), !noalias !1456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea), !noalias !1456
  br label %bb.zb

.thread.i919:                                     ; preds = %bb.kk, %bb.kg
  %.sroa.060.0.i.lcssa9297.i = phi i64 [ %.sroa.060.0.i.lcssa.i917, %bb.kg ], [ %i.afq, %bb.kk ] ; 2 uses
  %.sroa.035.1.i.lcssa9396.i = phi i64 [ %.sroa.035.1.i.lcssa.i918, %bb.kg ], [ %invariant.umin71.i, %bb.kk ] ; 2 uses
  %i.agb = sub nuw nsw i64 %.sroa.15.0.i.lcssa.i912, %.sroa.035.1.i.lcssa9396.i
  %i.agc = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.lcssa.i913, i64 %.sroa.035.1.i.lcssa9396.i
  store ptr %i.agc, ptr %i.ha, align 8, !alias.scope !1452, !captures !5
  store i64 %i.agb, ptr %i.hb, align 8, !alias.scope !1452
  %i.agd = add i64 %.sroa.060.0.i.lcssa9297.i, -128
  %or.cond.i920 = icmp ult i64 %i.agd, -256
  br i1 %or.cond.i920, label %bb.ky, label %bb.kr

bb.kr:                                            ; preds = %.thread.i919
  %i.age = trunc nsw i64 %.sroa.060.0.i.lcssa9297.i to i8 ; 2 uses
  %.off.i.i = add i8 %i.age, -1
  %switch.i.i = icmp ult i8 %.off.i.i, 7
  br i1 %switch.i.i, label %bb.zg, label %bb.ks, !prof !1345

bb.ks:                                            ; preds = %bb.kr
  %i.agf = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 7679) #13, !noalias !1458 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy), !noalias !1459
  store ptr %i.agf, ptr %i.dy, align 8, !noalias !1459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx), !noalias !1459
  store i8 32, ptr %i.dx, align 8, !noalias !1452
  %i.agg = invoke noundef ptr @_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB5_10ParseErrorNtB9_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.dx)
          to label %bb.kx unwind label %bb.kt, !noalias !1459

bb.kt:                                            ; preds = %bb.ks
  %i.agh = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.agi = icmp eq ptr %i.agf, null
  br i1 %i.agi, label %common.resume, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.agj = atomicrmw sub ptr %i.agf, i64 1 release, align 8, !noalias !1460
  %i.agk = icmp eq i64 %i.agj, 1
  br i1 %i.agk, label %bb.kv, label %common.resume

bb.kv:                                            ; preds = %bb.ku
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dy) #13
          to label %common.resume unwind label %bb.kw, !noalias !1459

bb.kw:                                            ; preds = %bb.kv
  %i.agl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1459
  unreachable

bb.kx:                                            ; preds = %bb.ks
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !noalias !1459
  %i.agm = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.agf, ptr noundef %i.agg), !noalias !1459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !noalias !1459
  br label %bb.zb

bb.ky:                                            ; preds = %.thread.i919
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb), !noalias !1452
  store i8 32, ptr %i.eb, align 8, !noalias !1452
  %i.agn = call noundef ptr @_RNvXs3_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_10ParseErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.eb) #13, !noalias !1452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !noalias !1452
  br label %bb.zb

bb.kz:                                            ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser1f.exit533
  call void @llvm.experimental.noalias.scope.decl(metadata !1461)
  %.sroa.3.0.extract.shift.i932 = lshr i32 %.sroa.5.3.insert.insert, 16
  %.sroa.3.0.extract.trunc.i933 = trunc nuw i32 %.sroa.3.0.extract.shift.i932 to i8
  %i.ago = load ptr, ptr %i.ha, align 8, !alias.scope !1461, !nonnull !4, !noundef !4 ; 3 uses
  switch i8 %.sroa.3.0.extract.trunc.i933, label %bb.la [
    i8 0, label %bb.lb
    i8 2, label %bb.lb
  ]

bb.la:                                            ; preds = %bb.kz
  %.sroa.2.0.extract.shift.i975 = lshr i32 %.sroa.032.0.i, 8
  %i.agp = trunc i32 %.sroa.032.0.i to i1
  %narrow.i976 = select i1 %i.agp, i32 %.sroa.2.0.extract.shift.i975, i32 2
  %.sroa.029.1.i.i977 = zext nneg i32 %narrow.i976 to i64
  br label %bb.lb

bb.lb:                                            ; preds = %bb.la, %bb.kz, %bb.kz
  %.sroa.029.0.i.i934 = phi i64 [ %.sroa.029.1.i.i977, %bb.la ], [ 0, %bb.kz ], [ 0, %bb.kz ] ; 2 uses
  %..i.i935 = call noundef range(i64 1, 256) i64 @llvm.umax.i64(i64 range(i64 0, 256) %.sroa.029.0.i.i934, i64 2)
  br i1 %i.je, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i944, label %.lr.ph.preheader.i937

.lr.ph.preheader.i937:                            ; preds = %bb.lb
  %scevgep.i938 = getelementptr i8, ptr %i.ago, i64 %i.jd
  br label %.lr.ph.i939

.lr.ph.i939:                                      ; preds = %bb.li, %.lr.ph.preheader.i937
  %.sroa.02.0.i43.i940 = phi ptr [ %i.ahi, %bb.li ], [ %i.ago, %.lr.ph.preheader.i937 ] ; 3 uses
  %.sroa.15.0.i42.i941 = phi i64 [ %i.ahh, %bb.li ], [ %i.jd, %.lr.ph.preheader.i937 ] ; 2 uses
  %.val.i.i942 = load i8, ptr %.sroa.02.0.i43.i940, align 1, !alias.scope !1462, !noalias !1463, !noundef !4
  switch i8 %.val.i.i942, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i944 [
    i8 9, label %bb.li
    i8 10, label %bb.li
end_hunk_2
begin_hunk_3_@_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser5parse:bb.a
  br label %bb.zh

bb.lt:                                            ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser1f.exit533
  call void @llvm.experimental.noalias.scope.decl(metadata !1469)
  %.sroa.3.0.extract.shift.i978 = lshr i32 %.sroa.5.3.insert.insert, 16
  %.sroa.3.0.extract.trunc.i979 = trunc nuw i32 %.sroa.3.0.extract.shift.i978 to i8
  %i.aid = load ptr, ptr %i.ha, align 8, !alias.scope !1469, !nonnull !4, !noundef !4 ; 3 uses
  switch i8 %.sroa.3.0.extract.trunc.i979, label %bb.lu [
    i8 0, label %bb.lv
    i8 2, label %bb.lv
  ]

bb.lu:                                            ; preds = %bb.lt
  %.sroa.2.0.extract.shift.i1021 = lshr i32 %.sroa.032.0.i, 8
  %i.aie = trunc i32 %.sroa.032.0.i to i1
  %narrow.i1022 = select i1 %i.aie, i32 %.sroa.2.0.extract.shift.i1021, i32 2
  %.sroa.029.1.i.i1023 = zext nneg i32 %narrow.i1022 to i64
  br label %bb.lv

bb.lv:                                            ; preds = %bb.lu, %bb.lt, %bb.lt
  %.sroa.029.0.i.i980 = phi i64 [ %.sroa.029.1.i.i1023, %bb.lu ], [ 0, %bb.lt ], [ 0, %bb.lt ] ; 2 uses
  %..i.i981 = call noundef range(i64 1, 256) i64 @llvm.umax.i64(i64 range(i64 0, 256) %.sroa.029.0.i.i980, i64 2)
  br i1 %i.je, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i990, label %.lr.ph.preheader.i983

.lr.ph.preheader.i983:                            ; preds = %bb.lv
  %scevgep.i984 = getelementptr i8, ptr %i.aid, i64 %i.jd
  br label %.lr.ph.i985

.lr.ph.i985:                                      ; preds = %bb.mc, %.lr.ph.preheader.i983
  %.sroa.02.0.i43.i986 = phi ptr [ %i.aix, %bb.mc ], [ %i.aid, %.lr.ph.preheader.i983 ] ; 3 uses
  %.sroa.15.0.i42.i987 = phi i64 [ %i.aiw, %bb.mc ], [ %i.jd, %.lr.ph.preheader.i983 ] ; 2 uses
  %.val.i.i988 = load i8, ptr %.sroa.02.0.i43.i986, align 1, !alias.scope !1470, !noalias !1471, !noundef !4
  switch i8 %.val.i.i988, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i990 [
    i8 9, label %bb.mc
    i8 10, label %bb.mc
    i8 12, label %bb.mc
    i8 13, label %bb.mc
    i8 32, label %bb.mc
  ]

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i990: ; preds = %bb.mc, %.lr.ph.i985, %bb.lv
  %.sroa.15.0.i.lcssa.i991 = phi i64 [ 0, %bb.lv ], [ %.sroa.15.0.i42.i987, %.lr.ph.i985 ], [ 0, %bb.mc ] ; 6 uses
  %.sroa.02.0.i.lcssa.i992 = phi ptr [ %i.aid, %bb.lv ], [ %.sroa.02.0.i43.i986, %.lr.ph.i985 ], [ %scevgep.i984, %bb.mc ] ; 3 uses
  %invariant.umin.i993 = call i64 @llvm.umin.i64(i64 %.sroa.15.0.i.lcssa.i991, i64 %.sroa.029.0.i.i980) ; 3 uses
  %or.cond66.i48.not.i994 = icmp eq i64 %invariant.umin.i993, 0
  br i1 %or.cond66.i48.not.i994, label %._crit_edge.i997, label %.lr.ph50.i995

._crit_edge.i997:                                 ; preds = %bb.lw, %.lr.ph50.i995, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i990
  %.sroa.035.0.i.lcssa.i998 = phi i64 [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i990 ], [ %invariant.umin.i993, %bb.lw ], [ %.sroa.035.0.i49.i996, %.lr.ph50.i995 ] ; 3 uses
  %invariant.umin54.i999 = call i64 @llvm.umin.i64(i64 %.sroa.15.0.i.lcssa.i991, i64 %..i.i981) ; 3 uses
  %or.cond.i55.i1000 = icmp ult i64 %.sroa.035.0.i.lcssa.i998, %invariant.umin54.i999
  br i1 %or.cond.i55.i1000, label %.lr.ph59.i1015, label %._crit_edge60.i1001

.lr.ph50.i995:                                    ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i990, %bb.lw
  %.sroa.035.0.i49.i996 = phi i64 [ %i.aii, %bb.lw ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i990 ] ; 3 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.lcssa.i992, i64 %.sroa.035.0.i49.i996
  %i.aig = load i8, ptr %i.aif, align 1, !alias.scope !1472, !noalias !1471, !noundef !4
  %i.aih = icmp eq i8 %i.aig, 48
  br i1 %i.aih, label %bb.lw, label %._crit_edge.i997

bb.lw:                                            ; preds = %.lr.ph50.i995
  %i.aii = add nuw nsw i64 %.sroa.035.0.i49.i996, 1 ; 2 uses
  %exitcond.not.i1020 = icmp eq i64 %i.aii, %invariant.umin.i993
  br i1 %exitcond.not.i1020, label %._crit_edge.i997, label %.lr.ph50.i995

._crit_edge60.i1001:                              ; preds = %.lr.ph59.i1015, %._crit_edge.i997
  %.sroa.060.0.i.lcssa.i1002 = phi i64 [ 0, %._crit_edge.i997 ], [ %.sroa.060.0.i56.i1017, %.lr.ph59.i1015 ]
  %.sroa.035.1.i.lcssa.i1003 = phi i64 [ %.sroa.035.0.i.lcssa.i998, %._crit_edge.i997 ], [ %.sroa.035.1.i57.i1016, %.lr.ph59.i1015 ] ; 4 uses
  %i.aij = icmp eq i64 %.sroa.035.1.i.lcssa.i1003, 0
  br i1 %i.aij, label %.loopexit2474, label %bb.lx

.lr.ph59.i1015:                                   ; preds = %._crit_edge.i997, %bb.mb
  %.sroa.035.1.i57.i1016 = phi i64 [ %i.aio, %bb.mb ], [ %.sroa.035.0.i.lcssa.i998, %._crit_edge.i997 ] ; 3 uses
  %.sroa.060.0.i56.i1017 = phi i64 [ %i.aiv, %bb.mb ], [ 0, %._crit_edge.i997 ] ; 2 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.lcssa.i992, i64 %.sroa.035.1.i57.i1016
  %i.ail = load i8, ptr %i.aik, align 1, !alias.scope !1472, !noalias !1471, !noundef !4
  %i.aim = add i8 %i.ail, -48                     ; 2 uses
  %or.cond67.i.i1018 = icmp ult i8 %i.aim, 10
  br i1 %or.cond67.i.i1018, label %bb.lz, label %._crit_edge60.i1001

bb.lx:                                            ; preds = %._crit_edge60.i1001
  %i.ain = icmp ugt i64 %.sroa.035.1.i.lcssa.i1003, %.sroa.15.0.i.lcssa.i991
  br i1 %i.ain, label %bb.ly, label %.thread.i1004, !prof !8

bb.ly:                                            ; preds = %bb.lx
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.035.1.i.lcssa.i1003, i64 noundef %.sroa.15.0.i.lcssa.i991, i64 noundef %.sroa.15.0.i.lcssa.i991, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #14, !noalias !1471
  unreachable

bb.lz:                                            ; preds = %.lr.ph59.i1015
  %i.aio = add nuw nsw i64 %.sroa.035.1.i57.i1016, 1 ; 2 uses
  %i.aip = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.060.0.i56.i1017, i64 10) ; 2 uses
  %i.aiq = extractvalue { i64, i1 } %i.aip, 1
  br i1 %i.aiq, label %.loopexit2474, label %bb.ma, !prof !7

bb.ma:                                            ; preds = %bb.lz
  %i.air = extractvalue { i64, i1 } %i.aip, 0
  %i.ais = zext nneg i8 %i.aim to i64
  %i.ait = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.air, i64 %i.ais) ; 2 uses
  %i.aiu = extractvalue { i64, i1 } %i.ait, 1
  br i1 %i.aiu, label %.loopexit2474, label %bb.mb, !prof !7

bb.mb:                                            ; preds = %bb.ma
  %i.aiv = extractvalue { i64, i1 } %i.ait, 0     ; 2 uses
  %exitcond66.not.i1019 = icmp eq i64 %i.aio, %invariant.umin54.i999
  br i1 %exitcond66.not.i1019, label %.thread.i1004, label %.lr.ph59.i1015

bb.mc:                                            ; preds = %.lr.ph.i985, %.lr.ph.i985, %.lr.ph.i985, %.lr.ph.i985, %.lr.ph.i985
  %i.aiw = add nsw i64 %.sroa.15.0.i42.i987, -1   ; 2 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i43.i986, i64 1
  %.not65.i.i989 = icmp eq i64 %i.aiw, 0
  br i1 %.not65.i.i989, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i990, label %.lr.ph.i985

.loopexit2474:                                    ; preds = %._crit_edge60.i1001, %bb.ma, %bb.lz
  %.sink.i1014 = phi i8 [ 2, %bb.ma ], [ 2, %bb.lz ], [ 0, %._crit_edge60.i1001 ]
  %i.aiy = call noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef %.sink.i1014, i8 undef) #13, !noalias !1471 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds), !noalias !1473
  store ptr %i.aiy, ptr %i.ds, align 8, !noalias !1473
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr), !noalias !1473
  store i8 27, ptr %i.dr, align 8, !noalias !1469
  %i.aiz = invoke noundef ptr @_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB5_10ParseErrorNtB9_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.dr)
          to label %bb.mh unwind label %bb.md, !noalias !1473

bb.md:                                            ; preds = %.loopexit2474
  %i.aja = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ajb = icmp eq ptr %i.aiy, null
  br i1 %i.ajb, label %common.resume, label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.ajc = atomicrmw sub ptr %i.aiy, i64 1 release, align 8, !noalias !1474
  %i.ajd = icmp eq i64 %i.ajc, 1
  br i1 %i.ajd, label %bb.mf, label %common.resume

bb.mf:                                            ; preds = %bb.me
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ds) #13
          to label %common.resume unwind label %bb.mg, !noalias !1473

bb.mg:                                            ; preds = %bb.mf
  %i.aje = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1473
  unreachable

bb.mh:                                            ; preds = %.loopexit2474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr), !noalias !1473
  %i.ajf = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.aiy, ptr noundef %i.aiz), !noalias !1473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds), !noalias !1473
  br label %bb.zn

.thread.i1004:                                    ; preds = %bb.mb, %bb.lx
  %.sroa.060.0.i.lcssa7580.i1005 = phi i64 [ %.sroa.060.0.i.lcssa.i1002, %bb.lx ], [ %i.aiv, %bb.mb ] ; 2 uses
  %.sroa.035.1.i.lcssa7679.i1006 = phi i64 [ %.sroa.035.1.i.lcssa.i1003, %bb.lx ], [ %invariant.umin54.i999, %bb.mb ] ; 2 uses
  %i.ajg = sub nuw nsw i64 %.sroa.15.0.i.lcssa.i991, %.sroa.035.1.i.lcssa7679.i1006
  %i.ajh = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.lcssa.i992, i64 %.sroa.035.1.i.lcssa7679.i1006
  store ptr %i.ajh, ptr %i.ha, align 8, !alias.scope !1469, !captures !5
  store i64 %i.ajg, ptr %i.hb, align 8, !alias.scope !1469
  %or.cond.i1007 = icmp ugt i64 %.sroa.060.0.i.lcssa7580.i1005, 53
  br i1 %or.cond.i1007, label %bb.mi, label %bb.zs

bb.mi:                                            ; preds = %.thread.i1004
  %i.aji = call noundef i8 @_RNvXs1o_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB6_7WeekNumNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #13, !noalias !1469
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq), !noalias !1475
  %i.ajj = call noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB4_11BoundsErrorNtNtB8_5error9IntoError10into_error(i8 noundef range(i8 0, 52) %i.aji), !noalias !1475 ; 4 uses
  store ptr %i.ajj, ptr %i.dq, align 8, !noalias !1475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp), !noalias !1475
  store i8 27, ptr %i.dp, align 8, !noalias !1469
  %i.ajk = invoke noundef ptr @_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB5_10ParseErrorNtB9_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.dp)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt7strtime10ParseErrorE0Ba_.exit.i1013 unwind label %bb.mj, !noalias !1475

bb.mj:                                            ; preds = %bb.mi
  %i.ajl = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ajm = icmp eq ptr %i.ajj, null
  br i1 %i.ajm, label %common.resume, label %bb.mk

bb.mk:                                            ; preds = %bb.mj
  %i.ajn = atomicrmw sub ptr %i.ajj, i64 1 release, align 8, !noalias !1476
  %i.ajo = icmp eq i64 %i.ajn, 1
  br i1 %i.ajo, label %bb.ml, label %common.resume

bb.ml:                                            ; preds = %bb.mk
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dq) #13
          to label %common.resume unwind label %bb.mm, !noalias !1475

bb.mm:                                            ; preds = %bb.ml
  %i.ajp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1475
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt7strtime10ParseErrorE0Ba_.exit.i1013: ; preds = %bb.mi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp), !noalias !1475
  %i.ajq = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.ajj, ptr noundef %i.ajk), !noalias !1475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq), !noalias !1475
  br label %bb.zn

bb.mn:                                            ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser1f.exit533
  call void @llvm.experimental.noalias.scope.decl(metadata !1477)
  %.sroa.3.0.extract.shift.i1024 = lshr i32 %.sroa.5.3.insert.insert, 16
  %.sroa.3.0.extract.trunc.i1025 = trunc nuw i32 %.sroa.3.0.extract.shift.i1024 to i8
  %i.ajr = load ptr, ptr %i.ha, align 8, !alias.scope !1477, !nonnull !4, !noundef !4 ; 3 uses
  switch i8 %.sroa.3.0.extract.trunc.i1025, label %bb.mo [
    i8 0, label %bb.mp
    i8 2, label %bb.mp
    i8 -1, label %bb.mp
  ]

bb.mo:                                            ; preds = %bb.mn
  %.sroa.2.0.extract.shift.i1053 = lshr i32 %.sroa.032.0.i, 8
  %i.ajs = trunc i32 %.sroa.032.0.i to i1
  %narrow.i1054 = select i1 %i.ajs, i32 %.sroa.2.0.extract.shift.i1053, i32 1
  %.sroa.029.1.i.i1055 = zext nneg i32 %narrow.i1054 to i64
  br label %bb.mp

bb.mp:                                            ; preds = %bb.mo, %bb.mn, %bb.mn, %bb.mn
  %.sroa.029.0.i.i1022 = phi i64 [ %.sroa.029.1.i.i1055, %bb.mo ], [ 0, %bb.mn ], [ 0, %bb.mn ], [ 0, %bb.mn ] ; 2 uses
  %..i.i1029 = call noundef range(i64 1, 256) i64 @llvm.umax.i64(i64 range(i64 0, 256) %.sroa.029.0.i.i1022, i64 1)
  br i1 %i.je, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i1035, label %.lr.ph.preheader.i1030

.lr.ph.preheader.i1030:                           ; preds = %bb.mp
  %scevgep.i1031 = getelementptr i8, ptr %i.ajr, i64 %i.jd
  br label %.lr.ph.i1032

.lr.ph.i1032:                                     ; preds = %bb.mw, %.lr.ph.preheader.i1030
  %.sroa.02.0.i62.i = phi ptr [ %i.akl, %bb.mw ], [ %i.ajr, %.lr.ph.preheader.i1030 ] ; 3 uses
  %.sroa.15.0.i61.i = phi i64 [ %i.akk, %bb.mw ], [ %i.jd, %.lr.ph.preheader.i1030 ] ; 2 uses
  %.val.i.i1033 = load i8, ptr %.sroa.02.0.i62.i, align 1, !alias.scope !1478, !noalias !1479, !noundef !4
  switch i8 %.val.i.i1033, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i1035 [
    i8 9, label %bb.mw
    i8 10, label %bb.mw
    i8 12, label %bb.mw
    i8 13, label %bb.mw
    i8 32, label %bb.mw
  ]

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i1035: ; preds = %bb.mw, %.lr.ph.i1032, %bb.mp
  %.sroa.15.0.i.lcssa.i1036 = phi i64 [ 0, %bb.mp ], [ %.sroa.15.0.i61.i, %.lr.ph.i1032 ], [ 0, %bb.mw ] ; 6 uses
  %.sroa.02.0.i.lcssa.i1037 = phi ptr [ %i.ajr, %bb.mp ], [ %.sroa.02.0.i62.i, %.lr.ph.i1032 ], [ %scevgep.i1031, %bb.mw ] ; 3 uses
  %invariant.umin.i1038 = call i64 @llvm.umin.i64(i64 %.sroa.15.0.i.lcssa.i1036, i64 %.sroa.029.0.i.i1022) ; 3 uses
  %or.cond66.i67.not.i = icmp eq i64 %invariant.umin.i1038, 0
  br i1 %or.cond66.i67.not.i, label %._crit_edge.i1039, label %.lr.ph69.i

._crit_edge.i1039:                                ; preds = %bb.mq, %.lr.ph69.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i1035
  %.sroa.035.0.i.lcssa.i1040 = phi i64 [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i1035 ], [ %invariant.umin.i1038, %bb.mq ], [ %.sroa.035.0.i68.i, %.lr.ph69.i ] ; 3 uses
  %invariant.umin73.i = call i64 @llvm.umin.i64(i64 %.sroa.15.0.i.lcssa.i1036, i64 %..i.i1029) ; 3 uses
  %or.cond.i74.i = icmp ult i64 %.sroa.035.0.i.lcssa.i1040, %invariant.umin73.i
  br i1 %or.cond.i74.i, label %.lr.ph78.i, label %._crit_edge79.i

.lr.ph69.i:                                       ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i1035, %bb.mq
  %.sroa.035.0.i68.i = phi i64 [ %i.ajw, %bb.mq ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i1035 ] ; 3 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.lcssa.i1037, i64 %.sroa.035.0.i68.i
  %i.aju = load i8, ptr %i.ajt, align 1, !alias.scope !1480, !noalias !1479, !noundef !4
  %i.ajv = icmp eq i8 %i.aju, 48
  br i1 %i.ajv, label %bb.mq, label %._crit_edge.i1039

bb.mq:                                            ; preds = %.lr.ph69.i
  %i.ajw = add nuw nsw i64 %.sroa.035.0.i68.i, 1  ; 2 uses
  %exitcond.not.i1052 = icmp eq i64 %i.ajw, %invariant.umin.i1038
  br i1 %exitcond.not.i1052, label %._crit_edge.i1039, label %.lr.ph69.i

._crit_edge79.i:                                  ; preds = %.lr.ph78.i, %._crit_edge.i1039
  %.sroa.060.0.i.lcssa.i1041 = phi i64 [ 0, %._crit_edge.i1039 ], [ %.sroa.060.0.i75.i, %.lr.ph78.i ]
  %.sroa.035.1.i.lcssa.i1042 = phi i64 [ %.sroa.035.0.i.lcssa.i1040, %._crit_edge.i1039 ], [ %.sroa.035.1.i76.i, %.lr.ph78.i ] ; 4 uses
  %i.ajx = icmp eq i64 %.sroa.035.1.i.lcssa.i1042, 0
  br i1 %i.ajx, label %.loopexit2475, label %bb.mr

.lr.ph78.i:                                       ; preds = %._crit_edge.i1039, %bb.mv
  %.sroa.035.1.i76.i = phi i64 [ %i.akc, %bb.mv ], [ %.sroa.035.0.i.lcssa.i1040, %._crit_edge.i1039 ] ; 3 uses
  %.sroa.060.0.i75.i = phi i64 [ %i.akj, %bb.mv ], [ 0, %._crit_edge.i1039 ] ; 2 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.lcssa.i1037, i64 %.sroa.035.1.i76.i
  %i.ajz = load i8, ptr %i.ajy, align 1, !alias.scope !1480, !noalias !1479, !noundef !4
  %i.aka = add i8 %i.ajz, -48                     ; 2 uses
  %or.cond67.i.i1051 = icmp ult i8 %i.aka, 10
  br i1 %or.cond67.i.i1051, label %bb.mt, label %._crit_edge79.i

bb.mr:                                            ; preds = %._crit_edge79.i
  %i.akb = icmp ugt i64 %.sroa.035.1.i.lcssa.i1042, %.sroa.15.0.i.lcssa.i1036
  br i1 %i.akb, label %bb.ms, label %.thread.i1043, !prof !8

bb.ms:                                            ; preds = %bb.mr
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.035.1.i.lcssa.i1042, i64 noundef %.sroa.15.0.i.lcssa.i1036, i64 noundef %.sroa.15.0.i.lcssa.i1036, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #14, !noalias !1479
  unreachable

bb.mt:                                            ; preds = %.lr.ph78.i
  %i.akc = add nuw nsw i64 %.sroa.035.1.i76.i, 1  ; 2 uses
  %i.akd = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.060.0.i75.i, i64 10) ; 2 uses
  %i.ake = extractvalue { i64, i1 } %i.akd, 1
  br i1 %i.ake, label %.loopexit2475, label %bb.mu, !prof !7

bb.mu:                                            ; preds = %bb.mt
  %i.akf = extractvalue { i64, i1 } %i.akd, 0
  %i.akg = zext nneg i8 %i.aka to i64
  %i.akh = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.akf, i64 %i.akg) ; 2 uses
  %i.aki = extractvalue { i64, i1 } %i.akh, 1
  br i1 %i.aki, label %.loopexit2475, label %bb.mv, !prof !7

bb.mv:                                            ; preds = %bb.mu
  %i.akj = extractvalue { i64, i1 } %i.akh, 0     ; 2 uses
  %exitcond85.not.i = icmp eq i64 %i.akc, %invariant.umin73.i
  br i1 %exitcond85.not.i, label %.thread.i1043, label %.lr.ph78.i

bb.mw:                                            ; preds = %.lr.ph.i1032, %.lr.ph.i1032, %.lr.ph.i1032, %.lr.ph.i1032, %.lr.ph.i1032
  %i.akk = add nsw i64 %.sroa.15.0.i61.i, -1      ; 2 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i62.i, i64 1
  %.not65.i.i1034 = icmp eq i64 %i.akk, 0
  br i1 %.not65.i.i1034, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i1035, label %.lr.ph.i1032

.loopexit2475:                                    ; preds = %._crit_edge79.i, %bb.mu, %bb.mt
  %.sink.i1050 = phi i8 [ 2, %bb.mu ], [ 2, %bb.mt ], [ 0, %._crit_edge79.i ]
  %i.akm = call noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef %.sink.i1050, i8 undef) #13, !noalias !1479 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !noalias !1481
  store ptr %i.akm, ptr %i.dn, align 8, !noalias !1481
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm), !noalias !1481
  store i8 32, ptr %i.dm, align 8, !noalias !1477
  %i.akn = invoke noundef ptr @_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB5_10ParseErrorNtB9_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.dm)
          to label %bb.nb unwind label %bb.mx, !noalias !1481

bb.mx:                                            ; preds = %.loopexit2475
  %i.ako = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.akp = icmp eq ptr %i.akm, null
  br i1 %i.akp, label %common.resume, label %bb.my

bb.my:                                            ; preds = %bb.mx
  %i.akq = atomicrmw sub ptr %i.akm, i64 1 release, align 8, !noalias !1482
  %i.akr = icmp eq i64 %i.akq, 1
  br i1 %i.akr, label %bb.mz, label %common.resume

bb.mz:                                            ; preds = %bb.my
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dn) #13
          to label %common.resume unwind label %bb.na, !noalias !1481

bb.na:                                            ; preds = %bb.mz
  %i.aks = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1481
  unreachable

bb.nb:                                            ; preds = %.loopexit2475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !noalias !1481
  %i.akt = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.akm, ptr noundef %i.akn), !noalias !1481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !noalias !1481
  br label %bb.zt

.thread.i1043:                                    ; preds = %bb.mv, %bb.mr
  %.sroa.060.0.i.lcssa9499.i = phi i64 [ %.sroa.060.0.i.lcssa.i1041, %bb.mr ], [ %i.akj, %bb.mv ] ; 3 uses
  %.sroa.035.1.i.lcssa9598.i = phi i64 [ %.sroa.035.1.i.lcssa.i1042, %bb.mr ], [ %invariant.umin73.i, %bb.mv ] ; 2 uses
  %i.aku = sub nuw nsw i64 %.sroa.15.0.i.lcssa.i1036, %.sroa.035.1.i.lcssa9598.i
  %i.akv = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.lcssa.i1037, i64 %.sroa.035.1.i.lcssa9598.i
  store ptr %i.akv, ptr %i.ha, align 8, !alias.scope !1477, !captures !5
  store i64 %i.aku, ptr %i.hb, align 8, !alias.scope !1477
  %i.akw = add i64 %.sroa.060.0.i.lcssa9499.i, -128
  %or.cond.i1044 = icmp ult i64 %i.akw, -256
  br i1 %or.cond.i1044, label %bb.nj, label %bb.nc

bb.nc:                                            ; preds = %.thread.i1043
  %i.akx = icmp ult i64 %.sroa.060.0.i.lcssa9499.i, 7
  br i1 %i.akx, label %switch.lookup5914, label %bb.nd, !prof !1345

bb.nd:                                            ; preds = %bb.nc
  %i.aky = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 7935) #13, !noalias !1483 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !noalias !1484
  store ptr %i.aky, ptr %i.dl, align 8, !noalias !1484
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !noalias !1484
  store i8 32, ptr %i.dk, align 8, !noalias !1477
  %i.akz = invoke noundef ptr @_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB5_10ParseErrorNtB9_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.dk)
          to label %bb.ni unwind label %bb.ne, !noalias !1484

bb.ne:                                            ; preds = %bb.nd
  %i.ala = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.alb = icmp eq ptr %i.aky, null
  br i1 %i.alb, label %common.resume, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  %i.alc = atomicrmw sub ptr %i.aky, i64 1 release, align 8, !noalias !1485
  %i.ald = icmp eq i64 %i.alc, 1
  br i1 %i.ald, label %bb.ng, label %common.resume

bb.ng:                                            ; preds = %bb.nf
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dl) #13
          to label %common.resume unwind label %bb.nh, !noalias !1484

bb.nh:                                            ; preds = %bb.ng
  %i.ale = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1484
  unreachable

bb.ni:                                            ; preds = %bb.nd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !1484
  %i.alf = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.aky, ptr noundef %i.akz), !noalias !1484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !noalias !1484
  br label %bb.zt

bb.nj:                                            ; preds = %.thread.i1043
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do), !noalias !1477
  store i8 32, ptr %i.do, align 8, !noalias !1477
  %i.alg = call noundef ptr @_RNvXs3_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_10ParseErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.do) #13, !noalias !1477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !noalias !1477
  br label %bb.zt

bb.nk:                                            ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser1f.exit533
  call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  %.sroa.2.0.extract.shift.i1056 = lshr i32 %.sroa.032.0.i, 8
  %.sroa.3.0.extract.shift.i1057 = lshr i32 %.sroa.5.3.insert.insert, 16
  %.sroa.3.0.extract.trunc.i1058 = trunc nuw i32 %.sroa.3.0.extract.shift.i1057 to i8
  %i.alh = load ptr, ptr %i.ha, align 8, !alias.scope !1486, !nonnull !4, !noundef !4 ; 5 uses
  br i1 %i.je, label %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i1059, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  %i.ali = load i8, ptr %i.alh, align 1, !alias.scope !1487, !noalias !1488, !noundef !4
  switch i8 %i.ali, label %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i1059 [
    i8 45, label %bb.nm
    i8 43, label %bb.nn
  ]

bb.nm:                                            ; preds = %bb.nl
  %i.alj = add nsw i64 %i.jd, -1
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alh, i64 1
  br label %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i1059

bb.nn:                                            ; preds = %bb.nl
  %i.all = add nsw i64 %i.jd, -1
  %i.alm = getelementptr inbounds nuw i8, ptr %i.alh, i64 1
  br label %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i1059

_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i1059: ; preds = %bb.nn, %bb.nm, %bb.nl, %bb.nk
  %.sroa.12.0.i1060 = phi i64 [ %i.all, %bb.nn ], [ 0, %bb.nk ], [ %i.alj, %bb.nm ], [ %i.jd, %bb.nl ] ; 3 uses
  %.sroa.7.0.i1061 = phi ptr [ %i.alm, %bb.nn ], [ %i.alh, %bb.nk ], [ %i.alk, %bb.nm ], [ %i.alh, %bb.nl ] ; 3 uses
  %.sroa.028.0.i1062 = phi i64 [ 1, %bb.nn ], [ 1, %bb.nk ], [ -1, %bb.nm ], [ 1, %bb.nl ]
  switch i8 %.sroa.3.0.extract.trunc.i1058, label %bb.no [
    i8 0, label %bb.np
    i8 2, label %bb.np
  ]

bb.no:                                            ; preds = %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i1059
end_hunk_3
