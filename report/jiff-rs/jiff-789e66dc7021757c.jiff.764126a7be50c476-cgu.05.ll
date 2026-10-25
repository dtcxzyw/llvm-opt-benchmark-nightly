Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.05?download=true
inline.NumInlined: 397
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser5parse:bb.a
  %i.lu = icmp ult i8 %.sroa.01.0.extract.trunc.i, 7
  br i1 %i.lu, label %switch.lookup, label %bb.at, !prof !1328

bb.at:                                            ; preds = %bb.as
  %i.lv = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 7935) #13, !noalias !1329
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fy), !noalias !1330
  store ptr %i.lv, ptr %i.fy, align 8, !noalias !1330
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.fy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #16
          to label %bb.ax unwind label %bb.au, !noalias !1331

bb.au:                                            ; preds = %bb.at
  %i.lw = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1332)
  call void @llvm.experimental.noalias.scope.decl(metadata !1333), !noalias !1334
  %i.lx = load ptr, ptr %i.fy, align 8, !alias.scope !1335, !noalias !1331, !noundef !4 ; 2 uses
  %i.ly = icmp eq ptr %i.lx, null
  br i1 %i.ly, label %common.resume, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.lz = atomicrmw add ptr %i.lx, i64 -1 release, align 8, !noalias !1336
  %i.ma = icmp eq i64 %i.lz, 1
  br i1 %i.ma, label %bb.aw, label %common.resume

bb.aw:                                            ; preds = %bb.av
  fence acquire, !noalias !1334
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fy) #13
          to label %common.resume unwind label %bb.ay, !noalias !1325

bb.ax:                                            ; preds = %bb.at
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.mb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1331
  unreachable

bb.az:                                            ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser1f.exit533
  call void @llvm.experimental.noalias.scope.decl(metadata !1337)
  %i.mc = icmp samesign ult i64 %i.jd, 3
  br i1 %i.mc, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fv), !noalias !1338
  store i8 7, ptr %i.fv, align 8, !noalias !1338
  %i.md = call noundef ptr @_RNvXs3_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_10ParseErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.fv) #13, !noalias !1338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fv), !noalias !1338
  br label %bb.ot

bb.bb:                                            ; preds = %bb.az
  %i.me = load ptr, ptr %i.ha, align 8, !alias.scope !1337, !nonnull !4, !noundef !4 ; 4 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 3
  %i.mg = add nsw i64 %i.jd, -3
  %i.mh = load i8, ptr %i.me, align 1, !noalias !1339, !noundef !4 ; 2 uses
  %i.mi = add i8 %i.mh, -65
  %i.mj = icmp ult i8 %i.mi, 26
  %i.mk = select i1 %i.mj, i8 32, i8 0
  %.sroa.04.0.i.i = or i8 %i.mk, %i.mh
  %i.ml = getelementptr inbounds nuw i8, ptr %i.me, i64 1
  %i.mm = load i8, ptr %i.ml, align 1, !noalias !1339, !noundef !4 ; 2 uses
  %i.mn = add i8 %i.mm, -65
  %i.mo = icmp ult i8 %i.mn, 26
  %i.mp = select i1 %i.mo, i8 32, i8 0
  %.sroa.05.0.i.i = or i8 %i.mp, %i.mm            ; 5 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.me, i64 2
  %i.mr = load i8, ptr %i.mq, align 1, !noalias !1339, !noundef !4 ; 2 uses
  %i.ms = add i8 %i.mr, -65
  %i.mt = icmp ult i8 %i.ms, 26
  %i.mu = select i1 %i.mt, i8 32, i8 0
  %.sroa.06.0.i.i = or i8 %i.mu, %i.mr            ; 7 uses
  switch i8 %.sroa.04.0.i.i, label %bb.bc [
    i8 115, label %bb.bd
    i8 109, label %bb.be
    i8 116, label %bb.bf
    i8 119, label %bb.bg
    i8 102, label %bb.bh
  ]

bb.bc:                                            ; preds = %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fu), !noalias !1338
  store i8 6, ptr %i.fu, align 8, !noalias !1338
  %i.mv = call noundef ptr @_RNvXs3_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_10ParseErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.fu) #13, !noalias !1339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fu), !noalias !1338
  br label %bb.ot

bb.bd:                                            ; preds = %bb.bb
  switch i8 %.sroa.05.0.i.i, label %bb.bc [
    i8 117, label %bb.bi
    i8 97, label %bb.bj
  ]

bb.be:                                            ; preds = %bb.bb
  %i.mw = icmp eq i8 %.sroa.05.0.i.i, 111
  %i.mx = icmp eq i8 %.sroa.06.0.i.i, 110
  %or.cond.i.i545 = and i1 %i.mw, %i.mx
  br i1 %or.cond.i.i545, label %bb.oy, label %bb.bc

bb.bf:                                            ; preds = %bb.bb
  switch i8 %.sroa.05.0.i.i, label %bb.bc [
    i8 117, label %bb.bk
    i8 104, label %bb.bl
  ]

bb.bg:                                            ; preds = %bb.bb
  %i.my = icmp eq i8 %.sroa.05.0.i.i, 101
  %i.mz = icmp eq i8 %.sroa.06.0.i.i, 100
  %or.cond1.i.i = and i1 %i.my, %i.mz
  br i1 %or.cond1.i.i, label %bb.oy, label %bb.bc

bb.bh:                                            ; preds = %bb.bb
  %i.na = icmp eq i8 %.sroa.05.0.i.i, 114
  %i.nb = icmp eq i8 %.sroa.06.0.i.i, 105
  %or.cond2.i.i = and i1 %i.na, %i.nb
  br i1 %or.cond2.i.i, label %bb.oy, label %bb.bc

bb.bi:                                            ; preds = %bb.bd
  %i.nc = icmp eq i8 %.sroa.06.0.i.i, 110
  br i1 %i.nc, label %bb.oy, label %bb.bc

bb.bj:                                            ; preds = %bb.bd
  %i.nd = icmp eq i8 %.sroa.06.0.i.i, 116
  br i1 %i.nd, label %bb.oy, label %bb.bc

bb.bk:                                            ; preds = %bb.bf
  %i.ne = icmp eq i8 %.sroa.06.0.i.i, 101
  br i1 %i.ne, label %bb.oy, label %bb.bc

bb.bl:                                            ; preds = %bb.bf
  %i.nf = icmp eq i8 %.sroa.06.0.i.i, 117
  br i1 %i.nf, label %bb.oy, label %bb.bc

bb.bm:                                            ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser1f.exit533
  call void @llvm.experimental.noalias.scope.decl(metadata !1340)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ft)
  %i.ng = load ptr, ptr %i.ha, align 8, !alias.scope !1340, !nonnull !4, !noundef !4
  call fastcc void @_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse12parse_choice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ft, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ng, i64 noundef %i.jd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @44, i64 noundef 12), !noalias !1340
  %i.nh = load ptr, ptr %i.id, align 8, !noalias !1340, !noundef !4 ; 2 uses
  %i.ni = icmp eq ptr %i.nh, null
  %i.nj = load ptr, ptr %i.ft, align 8, !noalias !1340 ; 5 uses
  br i1 %i.ni, label %bb.bn, label %bb.pe

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs), !noalias !1341
  store ptr %i.nj, ptr %i.fs, align 8, !noalias !1341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr), !noalias !1341
  store i8 35, ptr %i.fr, align 8, !noalias !1340
  %i.nk = invoke noundef ptr @_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB5_10ParseErrorNtB9_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.fr)
          to label %bb.oz unwind label %bb.bo, !noalias !1341

bb.bo:                                            ; preds = %bb.bn
  %i.nl = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.nm = icmp eq ptr %i.nj, null
  br i1 %i.nm, label %common.resume, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.nn = atomicrmw add ptr %i.nj, i64 -1 release, align 8, !noalias !1342
  %i.no = icmp eq i64 %i.nn, 1
  br i1 %i.no, label %bb.bq, label %common.resume

bb.bq:                                            ; preds = %bb.bp
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fs) #13
          to label %common.resume unwind label %bb.br, !noalias !1341

bb.br:                                            ; preds = %bb.bq
  %i.np = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1341
  unreachable

bb.bs:                                            ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser1f.exit533
  call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  %.sroa.2.0.extract.shift.i = lshr i32 %.sroa.032.0.i, 8
  %.sroa.3.0.extract.shift.i = lshr i32 %.sroa.5.3.insert.insert, 16
  %.sroa.3.0.extract.trunc.i = trunc nuw i32 %.sroa.3.0.extract.shift.i to i8
  %i.nq = load ptr, ptr %i.ha, align 8, !alias.scope !1343, !nonnull !4, !noundef !4 ; 5 uses
  br i1 %i.je, label %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.nr = load i8, ptr %i.nq, align 1, !alias.scope !1344, !noalias !1343, !noundef !4
  switch i8 %i.nr, label %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i [
    i8 45, label %bb.bu
    i8 43, label %bb.bv
  ]

bb.bu:                                            ; preds = %bb.bt
  %i.ns = add nsw i64 %i.jd, -1
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nq, i64 1
  br label %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i

bb.bv:                                            ; preds = %bb.bt
  %i.nu = add nsw i64 %i.jd, -1
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nq, i64 1
  br label %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i

_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i: ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bs
  %.sroa.12.0.i = phi i64 [ %i.nu, %bb.bv ], [ 0, %bb.bs ], [ %i.ns, %bb.bu ], [ %i.jd, %bb.bt ] ; 3 uses
  %.sroa.7.0.i = phi ptr [ %i.nv, %bb.bv ], [ %i.nq, %bb.bs ], [ %i.nt, %bb.bu ], [ %i.nq, %bb.bt ] ; 3 uses
  %.sroa.047.0.i = phi i64 [ 1, %bb.bv ], [ 1, %bb.bs ], [ -1, %bb.bu ], [ 1, %bb.bt ]
  switch i8 %.sroa.3.0.extract.trunc.i, label %bb.bw [
    i8 0, label %bb.bx
    i8 2, label %bb.bx
    i8 -1, label %bb.bx
  ]

bb.bw:                                            ; preds = %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i
  %i.nw = trunc i32 %.sroa.032.0.i to i1
  %narrow.i = select i1 %i.nw, i32 %.sroa.2.0.extract.shift.i, i32 2
  %.sroa.029.1.i.i = zext nneg i32 %narrow.i to i64
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i, %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i, %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i
  %.sroa.029.0.i.i = phi i64 [ %.sroa.029.1.i.i, %bb.bw ], [ 0, %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i ], [ 0, %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i ], [ 0, %_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse19parse_optional_sign.exit.i ] ; 2 uses
  %..i.i = call noundef range(i64 1, 256) i64 @llvm.umax.i64(i64 range(i64 0, 256) %.sroa.029.0.i.i, i64 2)
  %.not65.i68.i = icmp eq i64 %.sroa.12.0.i, 0
  br i1 %.not65.i68.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i, label %.lr.ph.preheader.i552

.lr.ph.preheader.i552:                            ; preds = %bb.bx
  %scevgep.i = getelementptr i8, ptr %.sroa.7.0.i, i64 %.sroa.12.0.i
  br label %.lr.ph.i553

.lr.ph.i553:                                      ; preds = %bb.cc, %.lr.ph.preheader.i552
  %.sroa.02.0.i70.i = phi ptr [ %i.oo, %bb.cc ], [ %.sroa.7.0.i, %.lr.ph.preheader.i552 ] ; 3 uses
  %.sroa.15.0.i69.i = phi i64 [ %i.on, %bb.cc ], [ %.sroa.12.0.i, %.lr.ph.preheader.i552 ] ; 2 uses
  %.val.i.i = load i8, ptr %.sroa.02.0.i70.i, align 1, !alias.scope !1345, !noalias !1346, !noundef !4
  switch i8 %.val.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i [
    i8 9, label %bb.cc
    i8 10, label %bb.cc
    i8 12, label %bb.cc
    i8 13, label %bb.cc
    i8 32, label %bb.cc
  ]

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i: ; preds = %bb.cc, %.lr.ph.i553, %bb.bx
  %.sroa.15.0.i.lcssa.i = phi i64 [ 0, %bb.bx ], [ %.sroa.15.0.i69.i, %.lr.ph.i553 ], [ 0, %bb.cc ] ; 3 uses
  %.sroa.02.0.i.lcssa.i = phi ptr [ %.sroa.7.0.i, %bb.bx ], [ %.sroa.02.0.i70.i, %.lr.ph.i553 ], [ %scevgep.i, %bb.cc ] ; 3 uses
  %invariant.umin.i554 = call i64 @llvm.umin.i64(i64 %.sroa.15.0.i.lcssa.i, i64 %.sroa.029.0.i.i) ; 3 uses
  %or.cond66.i75.not.i = icmp eq i64 %invariant.umin.i554, 0
  br i1 %or.cond66.i75.not.i, label %._crit_edge.i555, label %.lr.ph77.i

._crit_edge.i555:                                 ; preds = %bb.by, %.lr.ph77.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i
  %.sroa.035.0.i.lcssa.i = phi i64 [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i ], [ %invariant.umin.i554, %bb.by ], [ %.sroa.035.0.i76.i, %.lr.ph77.i ] ; 3 uses
  %invariant.umin81.i = call i64 @llvm.umin.i64(i64 %.sroa.15.0.i.lcssa.i, i64 %..i.i) ; 3 uses
  %or.cond.i82.i = icmp ult i64 %.sroa.035.0.i.lcssa.i, %invariant.umin81.i
  br i1 %or.cond.i82.i, label %.lr.ph86.i, label %._crit_edge87.i

.lr.ph77.i:                                       ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i, %bb.by
  %.sroa.035.0.i76.i = phi i64 [ %i.oa, %bb.by ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i ] ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.lcssa.i, i64 %.sroa.035.0.i76.i
  %i.ny = load i8, ptr %i.nx, align 1, !alias.scope !1347, !noalias !1343, !noundef !4
  %i.nz = icmp eq i8 %i.ny, 48
  br i1 %i.nz, label %bb.by, label %._crit_edge.i555

bb.by:                                            ; preds = %.lr.ph77.i
  %i.oa = add nuw nsw i64 %.sroa.035.0.i76.i, 1   ; 2 uses
  %exitcond.not.i561 = icmp eq i64 %i.oa, %invariant.umin.i554
  br i1 %exitcond.not.i561, label %._crit_edge.i555, label %.lr.ph77.i

._crit_edge87.i:                                  ; preds = %.lr.ph86.i, %._crit_edge.i555
  %.sroa.060.0.i.lcssa.i = phi i64 [ 0, %._crit_edge.i555 ], [ %.sroa.060.0.i83.i, %.lr.ph86.i ]
  %.sroa.035.1.i.lcssa.i = phi i64 [ %.sroa.035.0.i.lcssa.i, %._crit_edge.i555 ], [ %.sroa.035.1.i84.i, %.lr.ph86.i ] ; 2 uses
  %i.ob = icmp eq i64 %.sroa.035.1.i.lcssa.i, 0
  br i1 %i.ob, label %_RNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB6_9Extension12parse_number.exit.thread.i, label %_RNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB6_9Extension12parse_number.exit.i

.lr.ph86.i:                                       ; preds = %._crit_edge.i555, %bb.cb
  %.sroa.035.1.i84.i = phi i64 [ %i.of, %bb.cb ], [ %.sroa.035.0.i.lcssa.i, %._crit_edge.i555 ] ; 3 uses
  %.sroa.060.0.i83.i = phi i64 [ %i.om, %bb.cb ], [ 0, %._crit_edge.i555 ] ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.lcssa.i, i64 %.sroa.035.1.i84.i
  %i.od = load i8, ptr %i.oc, align 1, !alias.scope !1347, !noalias !1343, !noundef !4
  %i.oe = add i8 %i.od, -48                       ; 2 uses
  %or.cond67.i.i = icmp ult i8 %i.oe, 10
  br i1 %or.cond67.i.i, label %bb.bz, label %._crit_edge87.i

bb.bz:                                            ; preds = %.lr.ph86.i
  %i.of = add nuw nsw i64 %.sroa.035.1.i84.i, 1   ; 2 uses
  %i.og = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.060.0.i83.i, i64 10) ; 2 uses
  %i.oh = extractvalue { i64, i1 } %i.og, 1
  br i1 %i.oh, label %_RNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB6_9Extension12parse_number.exit.thread.i, label %bb.ca, !prof !7

bb.ca:                                            ; preds = %bb.bz
  %i.oi = extractvalue { i64, i1 } %i.og, 0
  %i.oj = zext nneg i8 %i.oe to i64
  %i.ok = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.oi, i64 %i.oj) ; 2 uses
  %i.ol = extractvalue { i64, i1 } %i.ok, 1
  br i1 %i.ol, label %_RNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB6_9Extension12parse_number.exit.thread.i, label %bb.cb, !prof !7

bb.cb:                                            ; preds = %bb.ca
  %i.om = extractvalue { i64, i1 } %i.ok, 0       ; 2 uses
  %exitcond93.not.i = icmp eq i64 %i.of, %invariant.umin81.i
  br i1 %exitcond93.not.i, label %_RNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB6_9Extension12parse_number.exit.i, label %.lr.ph86.i

bb.cc:                                            ; preds = %.lr.ph.i553, %.lr.ph.i553, %.lr.ph.i553, %.lr.ph.i553, %.lr.ph.i553
  %i.on = add nsw i64 %.sroa.15.0.i69.i, -1       ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i70.i, i64 1
  %.not65.i.i = icmp eq i64 %i.on, 0
  br i1 %.not65.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit.i, label %.lr.ph.i553

_RNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB6_9Extension12parse_number.exit.thread.i: ; preds = %._crit_edge87.i, %bb.ca, %bb.bz
  %.sink.i560 = phi i8 [ 2, %bb.ca ], [ 2, %bb.bz ], [ 0, %._crit_edge87.i ]
  %i.op = call noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef %.sink.i560, i8 undef) #13, !noalias !1346 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fq), !noalias !1348
  store ptr %i.op, ptr %i.fq, align 8, !noalias !1348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fp), !noalias !1348
  store i8 20, ptr %i.fp, align 8, !noalias !1343
  %i.oq = invoke noundef ptr @_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB5_10ParseErrorNtB9_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.fp)
          to label %bb.ch unwind label %bb.cd, !noalias !1348

bb.cd:                                            ; preds = %_RNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB6_9Extension12parse_number.exit.thread.i
  %i.or = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.os = icmp eq ptr %i.op, null
  br i1 %i.os, label %common.resume, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ot = atomicrmw add ptr %i.op, i64 -1 release, align 8, !noalias !1349
  %i.ou = icmp eq i64 %i.ot, 1
  br i1 %i.ou, label %bb.cf, label %common.resume

bb.cf:                                            ; preds = %bb.ce
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fq) #13
          to label %common.resume unwind label %bb.cg, !noalias !1348

bb.cg:                                            ; preds = %bb.cf
  %i.ov = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1348
  unreachable

bb.ch:                                            ; preds = %_RNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB6_9Extension12parse_number.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fp), !noalias !1348
  %i.ow = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.op, ptr noundef %i.oq), !noalias !1348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fq), !noalias !1348
  br label %bb.pl

_RNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB6_9Extension12parse_number.exit.i: ; preds = %bb.cb, %._crit_edge87.i
  %.sroa.035.1.i.lcssa104.i = phi i64 [ %.sroa.035.1.i.lcssa.i, %._crit_edge87.i ], [ %invariant.umin81.i, %bb.cb ] ; 2 uses
  %.sroa.060.0.i.lcssa103.i = phi i64 [ %.sroa.060.0.i.lcssa.i, %._crit_edge87.i ], [ %i.om, %bb.cb ] ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.lcssa.i, i64 %.sroa.035.1.i.lcssa104.i
  %i.oy = sub nuw nsw i64 %.sroa.15.0.i.lcssa.i, %.sroa.035.1.i.lcssa104.i
  store ptr %i.ox, ptr %i.ha, align 8, !alias.scope !1343, !captures !5
  store i64 %i.oy, ptr %i.hb, align 8, !alias.scope !1343
  %or.cond.i556 = icmp ugt i64 %.sroa.060.0.i.lcssa103.i, 99
  br i1 %or.cond.i556, label %bb.ci, label %bb.pq

bb.ci:                                            ; preds = %_RNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB6_9Extension12parse_number.exit.i
  %i.oz = call noundef i8 @_RNvXs4_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_7CenturyNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #13, !noalias !1343
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fo), !noalias !1350
  %i.pa = call noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB4_11BoundsErrorNtNtB8_5error9IntoError10into_error(i8 noundef range(i8 0, 52) %i.oz), !noalias !1350 ; 4 uses
  store ptr %i.pa, ptr %i.fo, align 8, !noalias !1350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fn), !noalias !1350
  store i8 20, ptr %i.fn, align 8, !noalias !1343
  %i.pb = invoke noundef ptr @_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB5_10ParseErrorNtB9_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.fn)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt7strtime10ParseErrorE0Ba_.exit.i unwind label %bb.cj, !noalias !1350

bb.cj:                                            ; preds = %bb.ci
  %i.pc = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.pd = icmp eq ptr %i.pa, null
  br i1 %i.pd, label %common.resume, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.pe = atomicrmw add ptr %i.pa, i64 -1 release, align 8, !noalias !1351
  %i.pf = icmp eq i64 %i.pe, 1
  br i1 %i.pf, label %bb.cl, label %common.resume

bb.cl:                                            ; preds = %bb.ck
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fo) #13
          to label %common.resume unwind label %bb.cm, !noalias !1350

bb.cm:                                            ; preds = %bb.cl
  %i.pg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1350
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt7strtime10ParseErrorE0Ba_.exit.i: ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn), !noalias !1350
  %i.ph = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.pa, ptr noundef %i.pb), !noalias !1350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo), !noalias !1350
  br label %bb.pl

bb.cn:                                            ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser1f.exit533
  call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fm), !noalias !1352
  %i.pi = load ptr, ptr %i.ha, align 8, !alias.scope !1352, !nonnull !4, !noundef !4
  %i.pj = load ptr, ptr %i.hd, align 8, !alias.scope !1352, !nonnull !4, !align !6, !noundef !4
  store ptr @13, ptr %i.fm, align 8, !noalias !1352
  store i64 8, ptr %i.hz, align 8, !noalias !1352
  store ptr %i.pi, ptr %i.ia, align 8, !noalias !1352
  store i64 %i.jd, ptr %i.ib, align 8, !noalias !1352
  store ptr %i.pj, ptr %i.ic, align 8, !noalias !1352
  %i.pk = call { i64, ptr } @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser5parse(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.fm), !noalias !1352, !inline_history !263 ; 2 uses
  %i.pl = extractvalue { i64, ptr } %i.pk, 0
  %i.pm = trunc nuw i64 %i.pl to i1
  br i1 %i.pm, label %bb.pr, label %bb.co

bb.co:                                            ; preds = %bb.cn
end_hunk_0
begin_hunk_1_@_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser5parse:bb.a
  %.sroa.52099.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  store i8 97, ptr %.sroa.52099.0..sroa_idx, align 1
  %.sroa.62100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  store i8 0, ptr %.sroa.62100.0..sroa_idx, align 2
  %i.apz = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.cw)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1174 unwind label %bb.ou, !noalias !1491

bb.ou:                                            ; preds = %bb.ot
  %i.aqa = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.aqb = icmp eq ptr %.sroa.3.0.i540.ph, null
  br i1 %i.aqb, label %common.resume, label %bb.ov

bb.ov:                                            ; preds = %bb.ou
  %i.aqc = atomicrmw add ptr %.sroa.3.0.i540.ph, i64 -1 release, align 8, !noalias !1492
  %i.aqd = icmp eq i64 %i.aqc, 1
  br i1 %i.aqd, label %bb.ow, label %common.resume

bb.ow:                                            ; preds = %bb.ov
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cx) #13
          to label %common.resume unwind label %bb.ox, !noalias !1491

bb.ox:                                            ; preds = %bb.ow
  %i.aqe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1491
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1174: ; preds = %bb.ot
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !1491
  %i.aqf = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.3.0.i540.ph, ptr noundef %i.apz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !1491
  br label %.loopexit2464

bb.oy:                                            ; preds = %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.be
  %.sroa.4.0.ph.i543 = phi i8 [ 5, %bb.bh ], [ 4, %bb.bl ], [ 3, %bb.bg ], [ 2, %bb.bk ], [ 1, %bb.be ], [ 7, %bb.bi ], [ 6, %bb.bj ]
  store ptr %i.mf, ptr %i.ha, align 8, !alias.scope !1337, !captures !5
  store i64 %i.mg, ptr %i.hb, align 8, !alias.scope !1337
  %i.aqg = load ptr, ptr %i.hd, align 8, !alias.scope !1337, !nonnull !4, !align !6, !noundef !4
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqg, i64 109
  store i8 %.sroa.4.0.ph.i543, ptr %i.aqh, align 1, !noalias !1337
  %i.aqi = add i64 %i.lc, -1                      ; 2 uses
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.lb, i64 1
  store ptr %i.aqj, ptr %0, align 8, !alias.scope !1493, !captures !5
  store i64 %i.aqi, ptr %i.gx, align 8, !alias.scope !1493
  br label %.backedge

bb.oz:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr), !noalias !1341
  %i.aqk = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.nj, ptr noundef %i.nk), !noalias !1341 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs), !noalias !1341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ft)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !1494
  store ptr %i.aqk, ptr %i.cv, align 8, !noalias !1494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !noalias !1494
  store i8 1, ptr %i.cu, align 8
  %.sroa.52093.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  store i8 66, ptr %.sroa.52093.0..sroa_idx, align 1
  %.sroa.62094.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 2
  store i8 0, ptr %.sroa.62094.0..sroa_idx, align 2
  %i.aql = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.cu)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1184 unwind label %bb.pa, !noalias !1494

bb.pa:                                            ; preds = %bb.oz
  %i.aqm = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.aqn = icmp eq ptr %i.aqk, null
  br i1 %i.aqn, label %common.resume, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  %i.aqo = atomicrmw add ptr %i.aqk, i64 -1 release, align 8, !noalias !1495
  %i.aqp = icmp eq i64 %i.aqo, 1
  br i1 %i.aqp, label %bb.pc, label %common.resume

bb.pc:                                            ; preds = %bb.pb
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cv) #13
          to label %common.resume unwind label %bb.pd, !noalias !1494

bb.pd:                                            ; preds = %bb.pc
  %i.aqq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1494
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1184: ; preds = %bb.oz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !1494
  %i.aqr = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.aqk, ptr noundef %i.aql)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !1494
  br label %.loopexit2464

bb.pe:                                            ; preds = %bb.bm
  %.sroa.55.0.copyload.i547 = load i64, ptr %.sroa.55.0..sroa_idx.i546, align 8, !noalias !1340
  %i.aqs = ptrtoint ptr %i.nj to i64
  %.sroa.01.0.extract.trunc.i548 = trunc i64 %i.aqs to i8
  store ptr %i.nh, ptr %i.ha, align 8, !alias.scope !1340, !captures !5
  store i64 %.sroa.55.0.copyload.i547, ptr %i.hb, align 8, !alias.scope !1340
  %i.aqt = add i8 %.sroa.01.0.extract.trunc.i548, 1
  %i.aqu = load ptr, ptr %i.hd, align 8, !alias.scope !1340, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqu, i64 92
  store i8 1, ptr %i.aqv, align 4, !noalias !1340
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqu, i64 93
  store i8 %i.aqt, ptr %i.aqw, align 1, !noalias !1340
  %i.aqx = add i64 %i.lc, -1                      ; 2 uses
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.lb, i64 1
  store ptr %i.aqy, ptr %0, align 8, !alias.scope !1496, !captures !5
  store i64 %i.aqx, ptr %i.gx, align 8, !alias.scope !1496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ft)
  br label %.backedge

bb.pf:                                            ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser1f.exit533
  %i.aqz = call fastcc { i64, ptr } @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser23parse_month_name_abbrev(ptr noalias nofree noundef align 8 dereferenceable(40) %0) ; 2 uses
  %i.ara = extractvalue { i64, ptr } %i.aqz, 0
  %i.arb = trunc nuw i64 %i.ara to i1
  br i1 %i.arb, label %bb.pg, label %.backedgethread-pre-split

bb.pg:                                            ; preds = %bb.pf
  %i.arc = extractvalue { i64, ptr } %i.aqz, 1    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !noalias !1497
  store ptr %i.arc, ptr %i.ct, align 8, !noalias !1497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !1497
  store i8 1, ptr %i.cs, align 8
  %.sroa.52087.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  store i8 98, ptr %.sroa.52087.0..sroa_idx, align 1
  %.sroa.62088.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  store i8 0, ptr %.sroa.62088.0..sroa_idx, align 2
  %i.ard = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.cs)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1194 unwind label %bb.ph, !noalias !1497

bb.ph:                                            ; preds = %bb.pg
  %i.are = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.arf = icmp eq ptr %i.arc, null
  br i1 %i.arf, label %common.resume, label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  %i.arg = atomicrmw add ptr %i.arc, i64 -1 release, align 8, !noalias !1498
  %i.arh = icmp eq i64 %i.arg, 1
  br i1 %i.arh, label %bb.pj, label %common.resume

bb.pj:                                            ; preds = %bb.pi
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ct) #13
          to label %common.resume unwind label %bb.pk, !noalias !1497

bb.pk:                                            ; preds = %bb.pj
  %i.ari = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1497
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1194: ; preds = %bb.pg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !1497
  %i.arj = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.arc, ptr noundef %i.ard)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !1497
  br label %.loopexit2464

bb.pl:                                            ; preds = %bb.ch, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt7strtime10ParseErrorE0Ba_.exit.i
  %.sroa.5.0.i.ph = phi ptr [ %i.ph, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt7strtime10ParseErrorE0Ba_.exit.i ], [ %i.ow, %bb.ch ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !1499
  store ptr %.sroa.5.0.i.ph, ptr %i.cr, align 8, !noalias !1499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !1499
  store i8 1, ptr %i.cq, align 8
  %.sroa.52081.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  store i8 67, ptr %.sroa.52081.0..sroa_idx, align 1
  %.sroa.62082.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  store i8 0, ptr %.sroa.62082.0..sroa_idx, align 2
  %i.ark = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.cq)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1204 unwind label %bb.pm, !noalias !1499

bb.pm:                                            ; preds = %bb.pl
  %i.arl = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.arm = icmp eq ptr %.sroa.5.0.i.ph, null
  br i1 %i.arm, label %common.resume, label %bb.pn

bb.pn:                                            ; preds = %bb.pm
  %i.arn = atomicrmw add ptr %.sroa.5.0.i.ph, i64 -1 release, align 8, !noalias !1500
  %i.aro = icmp eq i64 %i.arn, 1
  br i1 %i.aro, label %bb.po, label %common.resume

bb.po:                                            ; preds = %bb.pn
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cr) #13
          to label %common.resume unwind label %bb.pp, !noalias !1499

bb.pp:                                            ; preds = %bb.po
  %i.arp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1499
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1204: ; preds = %bb.pl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !1499
  %i.arq = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.5.0.i.ph, ptr noundef %i.ark)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !1499
  br label %.loopexit2464

bb.pq:                                            ; preds = %_RNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB6_9Extension12parse_number.exit.i
  %i.arr = mul nsw i64 %.sroa.060.0.i.lcssa103.i, %.sroa.047.0.i
  %i.ars = trunc nsw i64 %i.arr to i16
  %.sroa.539.0.extract.trunc.i = mul nsw i16 %i.ars, 100
  %i.art = load ptr, ptr %i.hd, align 8, !alias.scope !1343, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %i.aru = getelementptr inbounds nuw i8, ptr %i.art, i64 80
  store i16 1, ptr %i.aru, align 8, !noalias !1343
  %i.arv = getelementptr inbounds nuw i8, ptr %i.art, i64 82
  store i16 %.sroa.539.0.extract.trunc.i, ptr %i.arv, align 2, !noalias !1343
  %i.arw = add i64 %i.lc, -1                      ; 2 uses
  %i.arx = getelementptr inbounds nuw i8, ptr %i.lb, i64 1
  store ptr %i.arx, ptr %0, align 8, !alias.scope !1501, !captures !5
  store i64 %i.arw, ptr %i.gx, align 8, !alias.scope !1501
  br label %.backedge

bb.pr:                                            ; preds = %bb.cn
  %i.ary = extractvalue { i64, ptr } %i.pk, 1     ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm), !noalias !1352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !1502
  store ptr %i.ary, ptr %i.cp, align 8, !noalias !1502
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !1502
  store i8 1, ptr %i.co, align 8
  %.sroa.52075.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  store i8 68, ptr %.sroa.52075.0..sroa_idx, align 1
  %.sroa.62076.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  store i8 0, ptr %.sroa.62076.0..sroa_idx, align 2
  %i.arz = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.co)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1214 unwind label %bb.ps, !noalias !1502

bb.ps:                                            ; preds = %bb.pr
  %i.asa = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.asb = icmp eq ptr %i.ary, null
  br i1 %i.asb, label %common.resume, label %bb.pt

bb.pt:                                            ; preds = %bb.ps
  %i.asc = atomicrmw add ptr %i.ary, i64 -1 release, align 8, !noalias !1503
  %i.asd = icmp eq i64 %i.asc, 1
  br i1 %i.asd, label %bb.pu, label %common.resume

bb.pu:                                            ; preds = %bb.pt
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cp) #13
          to label %common.resume unwind label %bb.pv, !noalias !1502

bb.pv:                                            ; preds = %bb.pu
  %i.ase = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1502
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1214: ; preds = %bb.pr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !1502
  %i.asf = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.ary, ptr noundef %i.arz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !1502
  br label %.loopexit2464

bb.pw:                                            ; preds = %bb.co
  %i.asg = load ptr, ptr %0, align 8, !alias.scope !1353, !nonnull !4, !noundef !4
  %i.ash = add i64 %i.pp, -1                      ; 2 uses
  %i.asi = getelementptr inbounds nuw i8, ptr %i.asg, i64 1
  store ptr %i.asi, ptr %0, align 8, !alias.scope !1353, !captures !5
  store i64 %i.ash, ptr %i.gx, align 8, !alias.scope !1353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm), !noalias !1352
  br label %.backedge

bb.px:                                            ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser1f.exit533
  %i.asj = call fastcc { i64, ptr } @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser9parse_day(ptr noalias nofree noundef align 8 dereferenceable(40) %0, i32 %.sroa.5.4.insert.insert) ; 2 uses
  %i.ask = extractvalue { i64, ptr } %i.asj, 0
  %i.asl = trunc nuw i64 %i.ask to i1
  br i1 %i.asl, label %bb.py, label %.backedgethread-pre-split

bb.py:                                            ; preds = %bb.px
  %i.asm = extractvalue { i64, ptr } %i.asj, 1    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !1504
  store ptr %i.asm, ptr %i.cn, align 8, !noalias !1504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !1504
  store i8 1, ptr %i.cm, align 8
  %.sroa.52069.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  store i8 100, ptr %.sroa.52069.0..sroa_idx, align 1
  %.sroa.62070.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  store i8 0, ptr %.sroa.62070.0..sroa_idx, align 2
  %i.asn = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.cm)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1224 unwind label %bb.pz, !noalias !1504

bb.pz:                                            ; preds = %bb.py
  %i.aso = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.asp = icmp eq ptr %i.asm, null
  br i1 %i.asp, label %common.resume, label %bb.qa

bb.qa:                                            ; preds = %bb.pz
  %i.asq = atomicrmw add ptr %i.asm, i64 -1 release, align 8, !noalias !1505
  %i.asr = icmp eq i64 %i.asq, 1
  br i1 %i.asr, label %bb.qb, label %common.resume

bb.qb:                                            ; preds = %bb.qa
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cn) #13
          to label %common.resume unwind label %bb.qc, !noalias !1504

bb.qc:                                            ; preds = %bb.qb
  %i.ass = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1504
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1224: ; preds = %bb.py
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !1504
  %i.ast = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.asm, ptr noundef %i.asn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !1504
  br label %.loopexit2464

bb.qd:                                            ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser1f.exit533
  %i.asu = call fastcc { i64, ptr } @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser9parse_day(ptr noalias nofree noundef align 8 dereferenceable(40) %0, i32 %.sroa.5.4.insert.insert) ; 2 uses
  %i.asv = extractvalue { i64, ptr } %i.asu, 0
  %i.asw = trunc nuw i64 %i.asv to i1
  br i1 %i.asw, label %bb.qe, label %.backedgethread-pre-split

bb.qe:                                            ; preds = %bb.qd
  %i.asx = extractvalue { i64, ptr } %i.asu, 1    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !1506
  store ptr %i.asx, ptr %i.cl, align 8, !noalias !1506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !1506
  store i8 1, ptr %i.ck, align 8
  %.sroa.52063.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  store i8 101, ptr %.sroa.52063.0..sroa_idx, align 1
  %.sroa.62064.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  store i8 0, ptr %.sroa.62064.0..sroa_idx, align 2
  %i.asy = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ck)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1234 unwind label %bb.qf, !noalias !1506

bb.qf:                                            ; preds = %bb.qe
  %i.asz = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ata = icmp eq ptr %i.asx, null
  br i1 %i.ata, label %common.resume, label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  %i.atb = atomicrmw add ptr %i.asx, i64 -1 release, align 8, !noalias !1507
  %i.atc = icmp eq i64 %i.atb, 1
  br i1 %i.atc, label %bb.qh, label %common.resume

bb.qh:                                            ; preds = %bb.qg
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cl) #13
          to label %common.resume unwind label %bb.qi, !noalias !1506

bb.qi:                                            ; preds = %bb.qh
  %i.atd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1506
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1234: ; preds = %bb.qe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !1506
  %i.ate = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.asx, ptr noundef %i.asy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !1506
  br label %.loopexit2464

bb.qj:                                            ; preds = %bb.cq
  %i.atf = extractvalue { i64, ptr } %i.pt, 1     ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fl), !noalias !1354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !1508
  store ptr %i.atf, ptr %i.cj, align 8, !noalias !1508
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !1508
  store i8 1, ptr %i.ci, align 8
  %.sroa.52057.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  store i8 70, ptr %.sroa.52057.0..sroa_idx, align 1
  %.sroa.62058.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  store i8 0, ptr %.sroa.62058.0..sroa_idx, align 2
  %i.atg = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ci)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1244 unwind label %bb.qk, !noalias !1508

bb.qk:                                            ; preds = %bb.qj
  %i.ath = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ati = icmp eq ptr %i.atf, null
  br i1 %i.ati, label %common.resume, label %bb.ql

bb.ql:                                            ; preds = %bb.qk
  %i.atj = atomicrmw add ptr %i.atf, i64 -1 release, align 8, !noalias !1509
  %i.atk = icmp eq i64 %i.atj, 1
  br i1 %i.atk, label %bb.qm, label %common.resume

bb.qm:                                            ; preds = %bb.ql
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cj) #13
          to label %common.resume unwind label %bb.qn, !noalias !1508

bb.qn:                                            ; preds = %bb.qm
  %i.atl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1508
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1244: ; preds = %bb.qj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !1508
  %i.atm = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.atf, ptr noundef %i.atg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !1508
  br label %.loopexit2464

bb.qo:                                            ; preds = %bb.cr
  %i.atn = load ptr, ptr %0, align 8, !alias.scope !1355, !nonnull !4, !noundef !4
end_hunk_1
