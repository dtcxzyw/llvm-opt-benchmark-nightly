Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.05?download=true
inline.NumInlined: 397
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser5parse:bb.a
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
  %.sroa.3.0.extract.shift.i = lshr i32 %.sroa.5.3.insert.insert, 16 ; 2 uses
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
  %.sroa.047.0.i = phi i16 [ 100, %bb.bw ], [ 100, %bb.bt ], [ -100, %bb.bv ], [ 100, %bb.bu ]
  %.not.i42.i = icmp eq i32 %.sroa.3.0.extract.shift.i, 255
  %spec.select.i.i = select i1 %.not.i42.i, i8 2, i8 %.sroa.3.0.extract.trunc.i
  switch i8 %spec.select.i.i, label %bb.bx [
    i8 0, label %bb.by
    i8 2, label %bb.by
  ]

bb.bx:                                            ; preds = %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i
  %i.nw = trunc i32 %.sroa.032.0.i to i1
  %narrow.i = select i1 %i.nw, i32 %.sroa.2.0.extract.shift.i, i32 2
  %.sroa.029.1.i.i = zext nneg i32 %narrow.i to i64
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i, %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i
  %.sroa.029.0.i.i = phi i64 [ %.sroa.029.1.i.i, %bb.bx ], [ 0, %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i ], [ 0, %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i ] ; 2 uses
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
end_hunk_0
begin_hunk_1_@_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser5parse:bb.a
  %.sroa.52112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  store i8 97, ptr %.sroa.52112.0..sroa_idx, align 1
  %.sroa.62113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  store i8 0, ptr %.sroa.62113.0..sroa_idx, align 2
  %i.aqo = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.cw)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1185 unwind label %bb.pz, !noalias !1512

bb.pz:                                            ; preds = %bb.py
  %i.aqp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.aqq = icmp eq ptr %.sroa.3.0.i540.ph, null
  br i1 %i.aqq, label %common.resume, label %bb.qa

bb.qa:                                            ; preds = %bb.pz
  %i.aqr = atomicrmw sub ptr %.sroa.3.0.i540.ph, i64 1 release, align 8, !noalias !1513
  %i.aqs = icmp eq i64 %i.aqr, 1
  br i1 %i.aqs, label %bb.qb, label %common.resume

bb.qb:                                            ; preds = %bb.qa
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cx) #13
          to label %common.resume unwind label %bb.qc, !noalias !1512

bb.qc:                                            ; preds = %bb.qb
  %i.aqt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1512
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1185: ; preds = %bb.py
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !1512
  %i.aqu = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.3.0.i540.ph, ptr noundef %i.aqo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !1512
  br label %.loopexit2477

bb.qd:                                            ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bf
  %.sroa.4.0.ph.i543 = phi i8 [ 5, %bb.bi ], [ 4, %bb.bm ], [ 3, %bb.bh ], [ 2, %bb.bl ], [ 1, %bb.bf ], [ 7, %bb.bj ], [ 6, %bb.bk ]
  store ptr %i.mf, ptr %i.ha, align 8, !alias.scope !1354, !captures !5
  store i64 %i.mg, ptr %i.hb, align 8, !alias.scope !1354
  %i.aqv = load ptr, ptr %i.hd, align 8, !alias.scope !1354, !nonnull !4, !align !6, !noundef !4
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqv, i64 109
  store i8 %.sroa.4.0.ph.i543, ptr %i.aqw, align 1, !noalias !1354
  %i.aqx = add i64 %i.lc, -1                      ; 2 uses
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.lb, i64 1
  store ptr %i.aqy, ptr %0, align 8, !alias.scope !1514, !captures !5
  store i64 %i.aqx, ptr %i.gx, align 8, !alias.scope !1514
  br label %.backedge

bb.qe:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr), !noalias !1358
  %i.aqz = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.nj, ptr noundef %i.nk), !noalias !1358 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs), !noalias !1358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ft)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !1515
  store ptr %i.aqz, ptr %i.cv, align 8, !noalias !1515
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !noalias !1515
  store i8 1, ptr %i.cu, align 8
  %.sroa.52106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  store i8 66, ptr %.sroa.52106.0..sroa_idx, align 1
  %.sroa.62107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 2
  store i8 0, ptr %.sroa.62107.0..sroa_idx, align 2
  %i.ara = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.cu)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1195 unwind label %bb.qf, !noalias !1515

bb.qf:                                            ; preds = %bb.qe
  %i.arb = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.arc = icmp eq ptr %i.aqz, null
  br i1 %i.arc, label %common.resume, label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  %i.ard = atomicrmw sub ptr %i.aqz, i64 1 release, align 8, !noalias !1516
  %i.are = icmp eq i64 %i.ard, 1
  br i1 %i.are, label %bb.qh, label %common.resume

bb.qh:                                            ; preds = %bb.qg
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cv) #13
          to label %common.resume unwind label %bb.qi, !noalias !1515

bb.qi:                                            ; preds = %bb.qh
  %i.arf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1515
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1195: ; preds = %bb.qe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !1515
  %i.arg = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.aqz, ptr noundef %i.ara)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !1515
  br label %.loopexit2477

bb.qj:                                            ; preds = %bb.bn
  %.sroa.55.0.copyload.i547 = load i64, ptr %.sroa.55.0..sroa_idx.i546, align 8, !noalias !1357
  %i.arh = ptrtoint ptr %i.nj to i64
  %.sroa.01.0.extract.trunc.i548 = trunc i64 %i.arh to i8
  store ptr %i.nh, ptr %i.ha, align 8, !alias.scope !1357, !captures !5
  store i64 %.sroa.55.0.copyload.i547, ptr %i.hb, align 8, !alias.scope !1357
  %i.ari = add i8 %.sroa.01.0.extract.trunc.i548, 1
  %i.arj = load ptr, ptr %i.hd, align 8, !alias.scope !1357, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arj, i64 92
  store i8 1, ptr %i.ark, align 4, !noalias !1357
  %i.arl = getelementptr inbounds nuw i8, ptr %i.arj, i64 93
  store i8 %i.ari, ptr %i.arl, align 1, !noalias !1357
  %i.arm = add i64 %i.lc, -1                      ; 2 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %i.lb, i64 1
  store ptr %i.arn, ptr %0, align 8, !alias.scope !1517, !captures !5
  store i64 %i.arm, ptr %i.gx, align 8, !alias.scope !1517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ft)
  br label %.backedge

bb.qk:                                            ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser1f.exit533
  %i.aro = call fastcc { i64, ptr } @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser23parse_month_name_abbrev(ptr noalias nofree noundef align 8 dereferenceable(40) %0) ; 2 uses
  %i.arp = extractvalue { i64, ptr } %i.aro, 0
  %i.arq = trunc nuw i64 %i.arp to i1
  br i1 %i.arq, label %bb.ql, label %.backedgethread-pre-split

bb.ql:                                            ; preds = %bb.qk
  %i.arr = extractvalue { i64, ptr } %i.aro, 1    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !noalias !1518
  store ptr %i.arr, ptr %i.ct, align 8, !noalias !1518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !1518
  store i8 1, ptr %i.cs, align 8
  %.sroa.52100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  store i8 98, ptr %.sroa.52100.0..sroa_idx, align 1
  %.sroa.62101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  store i8 0, ptr %.sroa.62101.0..sroa_idx, align 2
  %i.ars = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.cs)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1205 unwind label %bb.qm, !noalias !1518

bb.qm:                                            ; preds = %bb.ql
  %i.art = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.aru = icmp eq ptr %i.arr, null
  br i1 %i.aru, label %common.resume, label %bb.qn

bb.qn:                                            ; preds = %bb.qm
  %i.arv = atomicrmw sub ptr %i.arr, i64 1 release, align 8, !noalias !1519
  %i.arw = icmp eq i64 %i.arv, 1
  br i1 %i.arw, label %bb.qo, label %common.resume

bb.qo:                                            ; preds = %bb.qn
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ct) #13
          to label %common.resume unwind label %bb.qp, !noalias !1518

bb.qp:                                            ; preds = %bb.qo
  %i.arx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1518
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1205: ; preds = %bb.ql
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !1518
  %i.ary = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.arr, ptr noundef %i.ars)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !1518
  br label %.loopexit2477

bb.qq:                                            ; preds = %bb.ck, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt7strtime10ParseErrorE0Ba_.exit.i
  %.sroa.5.0.i.ph = phi ptr [ %i.pi, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt7strtime10ParseErrorE0Ba_.exit.i ], [ %i.ox, %bb.ck ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !1520
  store ptr %.sroa.5.0.i.ph, ptr %i.cr, align 8, !noalias !1520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !1520
  store i8 1, ptr %i.cq, align 8
  %.sroa.52094.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  store i8 67, ptr %.sroa.52094.0..sroa_idx, align 1
  %.sroa.62095.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  store i8 0, ptr %.sroa.62095.0..sroa_idx, align 2
  %i.arz = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.cq)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1215 unwind label %bb.qr, !noalias !1520

bb.qr:                                            ; preds = %bb.qq
  %i.asa = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.asb = icmp eq ptr %.sroa.5.0.i.ph, null
  br i1 %i.asb, label %common.resume, label %bb.qs

bb.qs:                                            ; preds = %bb.qr
  %i.asc = atomicrmw sub ptr %.sroa.5.0.i.ph, i64 1 release, align 8, !noalias !1521
  %i.asd = icmp eq i64 %i.asc, 1
  br i1 %i.asd, label %bb.qt, label %common.resume

bb.qt:                                            ; preds = %bb.qs
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cr) #13
          to label %common.resume unwind label %bb.qu, !noalias !1520

bb.qu:                                            ; preds = %bb.qt
  %i.ase = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1520
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1215: ; preds = %bb.qq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !1520
  %i.asf = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.5.0.i.ph, ptr noundef %i.arz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !1520
  br label %.loopexit2477

bb.qv:                                            ; preds = %_RNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB6_9Extension12parse_number.exit.i
  %i.asg = trunc nuw nsw i64 %.sroa.060.0.i.lcssa103108.i to i16
  %.sroa.539.0.extract.trunc.i = mul nsw i16 %.sroa.047.0.i, %i.asg
  %i.ash = load ptr, ptr %i.hd, align 8, !alias.scope !1360, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %i.asi = getelementptr inbounds nuw i8, ptr %i.ash, i64 80
  store i16 1, ptr %i.asi, align 8, !noalias !1360
  %i.asj = getelementptr inbounds nuw i8, ptr %i.ash, i64 82
  store i16 %.sroa.539.0.extract.trunc.i, ptr %i.asj, align 2, !noalias !1360
  %i.ask = add i64 %i.lc, -1                      ; 2 uses
  %i.asl = getelementptr inbounds nuw i8, ptr %i.lb, i64 1
  store ptr %i.asl, ptr %0, align 8, !alias.scope !1522, !captures !5
  store i64 %i.ask, ptr %i.gx, align 8, !alias.scope !1522
  br label %.backedge

bb.qw:                                            ; preds = %bb.cq
  %i.asm = extractvalue { i64, ptr } %i.pl, 1     ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm), !noalias !1370
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !1523
  store ptr %i.asm, ptr %i.cp, align 8, !noalias !1523
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !1523
  store i8 1, ptr %i.co, align 8
  %.sroa.52088.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  store i8 68, ptr %.sroa.52088.0..sroa_idx, align 1
  %.sroa.62089.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  store i8 0, ptr %.sroa.62089.0..sroa_idx, align 2
  %i.asn = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.co)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1225 unwind label %bb.qx, !noalias !1523

bb.qx:                                            ; preds = %bb.qw
  %i.aso = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.asp = icmp eq ptr %i.asm, null
  br i1 %i.asp, label %common.resume, label %bb.qy

bb.qy:                                            ; preds = %bb.qx
  %i.asq = atomicrmw sub ptr %i.asm, i64 1 release, align 8, !noalias !1524
  %i.asr = icmp eq i64 %i.asq, 1
  br i1 %i.asr, label %bb.qz, label %common.resume

bb.qz:                                            ; preds = %bb.qy
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cp) #13
          to label %common.resume unwind label %bb.ra, !noalias !1523

bb.ra:                                            ; preds = %bb.qz
  %i.ass = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1523
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1225: ; preds = %bb.qw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !1523
  %i.ast = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.asm, ptr noundef %i.asn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !1523
  br label %.loopexit2477

bb.rb:                                            ; preds = %bb.cr
  %i.asu = load ptr, ptr %0, align 8, !alias.scope !1371, !nonnull !4, !noundef !4
  %i.asv = add i64 %i.pq, -1                      ; 2 uses
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asu, i64 1
  store ptr %i.asw, ptr %0, align 8, !alias.scope !1371, !captures !5
  store i64 %i.asv, ptr %i.gx, align 8, !alias.scope !1371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm), !noalias !1370
  br label %.backedge

bb.rc:                                            ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser1f.exit533
  %i.asx = call fastcc { i64, ptr } @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser9parse_day(ptr noalias nofree noundef align 8 dereferenceable(40) %0, i32 %.sroa.5.4.insert.insert) ; 2 uses
  %i.asy = extractvalue { i64, ptr } %i.asx, 0
  %i.asz = trunc nuw i64 %i.asy to i1
  br i1 %i.asz, label %bb.rd, label %.backedgethread-pre-split

bb.rd:                                            ; preds = %bb.rc
  %i.ata = extractvalue { i64, ptr } %i.asx, 1    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !1525
  store ptr %i.ata, ptr %i.cn, align 8, !noalias !1525
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !1525
  store i8 1, ptr %i.cm, align 8
  %.sroa.52082.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  store i8 100, ptr %.sroa.52082.0..sroa_idx, align 1
  %.sroa.62083.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  store i8 0, ptr %.sroa.62083.0..sroa_idx, align 2
  %i.atb = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.cm)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1235 unwind label %bb.re, !noalias !1525

bb.re:                                            ; preds = %bb.rd
  %i.atc = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.atd = icmp eq ptr %i.ata, null
  br i1 %i.atd, label %common.resume, label %bb.rf

bb.rf:                                            ; preds = %bb.re
  %i.ate = atomicrmw sub ptr %i.ata, i64 1 release, align 8, !noalias !1526
  %i.atf = icmp eq i64 %i.ate, 1
  br i1 %i.atf, label %bb.rg, label %common.resume

bb.rg:                                            ; preds = %bb.rf
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cn) #13
          to label %common.resume unwind label %bb.rh, !noalias !1525

bb.rh:                                            ; preds = %bb.rg
  %i.atg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1525
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1235: ; preds = %bb.rd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !1525
  %i.ath = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.ata, ptr noundef %i.atb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !1525
  br label %.loopexit2477

bb.ri:                                            ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser1f.exit533
  %i.ati = call fastcc { i64, ptr } @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser9parse_day(ptr noalias nofree noundef align 8 dereferenceable(40) %0, i32 %.sroa.5.4.insert.insert) ; 2 uses
  %i.atj = extractvalue { i64, ptr } %i.ati, 0
  %i.atk = trunc nuw i64 %i.atj to i1
  br i1 %i.atk, label %bb.rj, label %.backedgethread-pre-split

bb.rj:                                            ; preds = %bb.ri
  %i.atl = extractvalue { i64, ptr } %i.ati, 1    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !1527
  store ptr %i.atl, ptr %i.cl, align 8, !noalias !1527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !1527
  store i8 1, ptr %i.ck, align 8
  %.sroa.52076.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  store i8 101, ptr %.sroa.52076.0..sroa_idx, align 1
  %.sroa.62077.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  store i8 0, ptr %.sroa.62077.0..sroa_idx, align 2
  %i.atm = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ck)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1245 unwind label %bb.rk, !noalias !1527

bb.rk:                                            ; preds = %bb.rj
  %i.atn = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ato = icmp eq ptr %i.atl, null
  br i1 %i.ato, label %common.resume, label %bb.rl

bb.rl:                                            ; preds = %bb.rk
  %i.atp = atomicrmw sub ptr %i.atl, i64 1 release, align 8, !noalias !1528
  %i.atq = icmp eq i64 %i.atp, 1
  br i1 %i.atq, label %bb.rm, label %common.resume

bb.rm:                                            ; preds = %bb.rl
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cl) #13
          to label %common.resume unwind label %bb.rn, !noalias !1527

bb.rn:                                            ; preds = %bb.rm
  %i.atr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1527
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1245: ; preds = %bb.rj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !1527
  %i.ats = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.atl, ptr noundef %i.atm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !1527
  br label %.loopexit2477

bb.ro:                                            ; preds = %bb.ct
  %i.att = extractvalue { i64, ptr } %i.pu, 1     ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fl), !noalias !1372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !1529
  store ptr %i.att, ptr %i.cj, align 8, !noalias !1529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !1529
  store i8 1, ptr %i.ci, align 8
  %.sroa.52070.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  store i8 70, ptr %.sroa.52070.0..sroa_idx, align 1
  %.sroa.62071.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  store i8 0, ptr %.sroa.62071.0..sroa_idx, align 2
  %i.atu = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ci)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1255 unwind label %bb.rp, !noalias !1529

bb.rp:                                            ; preds = %bb.ro
  %i.atv = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.atw = icmp eq ptr %i.att, null
  br i1 %i.atw, label %common.resume, label %bb.rq

bb.rq:                                            ; preds = %bb.rp
  %i.atx = atomicrmw sub ptr %i.att, i64 1 release, align 8, !noalias !1530
  %i.aty = icmp eq i64 %i.atx, 1
  br i1 %i.aty, label %bb.rr, label %common.resume

bb.rr:                                            ; preds = %bb.rq
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cj) #13
          to label %common.resume unwind label %bb.rs, !noalias !1529

bb.rs:                                            ; preds = %bb.rr
  %i.atz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1529
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1255: ; preds = %bb.ro
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !1529
  %i.aua = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.att, ptr noundef %i.atu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !1529
  br label %.loopexit2477

bb.rt:                                            ; preds = %bb.cu
  %i.aub = load ptr, ptr %0, align 8, !alias.scope !1373, !nonnull !4, !noundef !4
end_hunk_1
