Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.13?download=true
inline.NumInlined: 10113
inline.NumDeleted: 4526
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 77
begin_hunk_0_@_RNvXs3_NtNtCskY9G75ZWc4U_11polars_expr11expressions11aggregationNtB5_24AnonymousAggregationExprNtB7_12PhysicalExpr23evaluate_on_groups_impl:bb.a
bb.al:                                            ; preds = %bb.ah
  %i.dw = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !129572
  %i.dx = invoke noundef i64 @_RNvXs4_NtCs1LHh8CLbVkQ_11polars_core5utilsNtNtB7_6series6SeriesNtB5_9Container3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dw)
          to label %bb.am unwind label %bb.ae, !dbg !129573

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.sroa.026.0 = phi i64 [ %i.dv, %bb.ak ], [ %i.dx, %bb.al ], !dbg !129574
  %i.dy = trunc i64 %.sroa.026.0 to i32, !dbg !129575
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecmEINtB4_18SpecFromIterNestedmINtNtNtCscgRAwXFJnXP_4core3ops5range5RangemEE9from_iterCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i32 noundef 0, i32 noundef %i.dy)
          to label %bb.an unwind label %bb.ae, !dbg !129576

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !129577
  %i.dz = load i8, ptr %i.p, align 16, !dbg !129578, !range !2545, !noundef !2226
  %.not111 = icmp eq i8 %i.dz, 31, !dbg !129578
  br i1 %.not111, label %bb.ap, label %bb.ao, !dbg !129579

bb.ao:                                            ; preds = %bb.an
  %i.ea = getelementptr inbounds nuw i8, ptr %i.p, i64 120, !dbg !129580
  %i.eb = load i64, ptr %i.ea, align 8, !dbg !129580, !noundef !2226
  br label %bb.ar, !dbg !129581

bb.ap:                                            ; preds = %bb.an
  %i.ec = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !129582
  %i.ed = invoke noundef i64 @_RNvXs4_NtCs1LHh8CLbVkQ_11polars_core5utilsNtNtB7_6series6SeriesNtB5_9Container3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ec)
          to label %bb.ar unwind label %bb.aq, !dbg !129583

.body:                                            ; preds = %bb.cr, %bb.by, %bb.aq, %bb.az
  %.sroa.074.4 = phi i8 [ %.sroa.074.6, %bb.az ], [ 0, %bb.by ], [ %.sroa.075.7, %bb.aq ], [ 1, %bb.cr ], !dbg !129549
  %.sroa.075.6 = phi i8 [ %.sroa.075.8, %bb.az ], [ 0, %bb.by ], [ %.sroa.075.7, %bb.aq ], [ 1, %bb.cr ], !dbg !129559
  %.pn121 = phi { ptr, i32 } [ %.pn, %bb.az ], [ %i.hr, %bb.by ], [ %i.ee, %bb.aq ], [ %i.it, %bb.cr ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.l) #52
          to label %.body149 unwind label %bb.dj, !dbg !129584

bb.aq:                                            ; preds = %bb.cs, %bb.bz, %bb.at, %bb.ar, %bb.ap
  %.sroa.075.7 = phi i8 [ 1, %bb.at ], [ 1, %bb.cs ], [ 0, %bb.bz ], [ 1, %bb.ar ], [ 1, %bb.ap ], !dbg !129561 ; 2 uses
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ar:                                            ; preds = %bb.ap, %bb.ao
  %.sroa.027.0 = phi i64 [ %i.eb, %bb.ao ], [ %i.ed, %bb.ap ], !dbg !129585 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !129586
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.027.0, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.as unwind label %bb.aq, !dbg !129586

bb.as:                                            ; preds = %bb.ar
  %i.ef = load i64, ptr %i.a, align 8, !dbg !129586, !range !2367, !noundef !2226
  %i.eg = trunc nuw i64 %i.ef to i1, !dbg !129587
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !129588
  %i.ei = load i64, ptr %i.eh, align 8, !dbg !129588, !range !2389, !noundef !2226 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !129588 ; 2 uses
  br i1 %i.eg, label %bb.at, label %bb.au, !dbg !129587, !prof !2279

bb.at:                                            ; preds = %bb.as
  %i.ek = load i64, ptr %i.ej, align 8, !dbg !129589
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ei, i64 %i.ek) #55
          to label %bb.aj unwind label %bb.aq, !dbg !129590

bb.au:                                            ; preds = %bb.as
  %i.el = load ptr, ptr %i.ej, align 8, !dbg !129591, !nonnull !2226, !noundef !2226
  %i.em = icmp ule i64 %.sroa.027.0, %i.ei, !dbg !129592
  call void @llvm.assume(i1 %i.em), !dbg !129593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !129594
  store i64 %i.ei, ptr %i.k, align 8, !dbg !129595
  %i.en = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !129595 ; 3 uses
  store ptr %i.el, ptr %i.en, align 8, !dbg !129595
  %i.eo = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !129595 ; 4 uses
  store i64 0, ptr %i.eo, align 8, !dbg !129595
  %i.ep = load i64, ptr %i.o, align 8, !dbg !129596, !range !2546, !noundef !2226
  %.not112 = icmp eq i64 %i.ep, -9223372036854775807, !dbg !129596 ; 5 uses
  %i.eq = load ptr, ptr %i.dn, align 8, !dbg !129597, !nonnull !2226, !align !2450 ; 5 uses
  %.sroa.084.0 = select i1 %.not112, ptr %i.eq, ptr %i.o, !dbg !129597
  %i.er = load i64, ptr %.sroa.084.0, align 8, !dbg !129598, !range !2389, !noundef !2226
  %i.es = icmp eq i64 %i.er, -9223372036854775808, !dbg !129598
  br i1 %i.es, label %bb.av, label %bb.aw, !dbg !129599

bb.av:                                            ; preds = %bb.au
  %.sroa.084.0.sroa.sel192.v.sroa.sel.v.sroa.sel.v = select i1 %.not112, ptr %i.eq, ptr %i.o, !dbg !129600
  %.sroa.084.0.sroa.sel192.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.084.0.sroa.sel192.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !129600
  %i.et = load ptr, ptr %.sroa.084.0.sroa.sel192.v.sroa.sel.v.sroa.sel, align 8, !dbg !129600, !nonnull !2226, !noundef !2226 ; 2 uses
  %.sroa.084.0.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not112, ptr %i.eq, ptr %i.o, !dbg !129601
  %.sroa.084.0.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.084.0.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 24, !dbg !129601
  %i.eu = load i64, ptr %.sroa.084.0.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !dbg !129601, !noundef !2226 ; 2 uses
  %.idx300 = shl nuw nsw i64 %i.eu, 3, !dbg !129602
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 %.idx300, !dbg !129602
  %i.ew = icmp eq i64 %i.eu, 0, !dbg !129603
  br i1 %i.ew, label %.loopexit, label %.lr.ph299, !dbg !129604

bb.aw:                                            ; preds = %bb.au
  %i.ex = load i8, ptr %i.p, align 16, !dbg !129605, !range !2545, !noundef !2226
  %.not113 = icmp eq i8 %i.ex, 31, !dbg !129605
  br i1 %.not113, label %bb.ay, label %bb.ax, !dbg !129606

bb.ax:                                            ; preds = %bb.aw
  %i.ey = getelementptr inbounds nuw i8, ptr %i.p, i64 120, !dbg !129607
  %i.ez = load i64, ptr %i.ey, align 8, !dbg !129607, !noundef !2226
  br label %bb.ba, !dbg !129608

bb.ay:                                            ; preds = %bb.aw
  %i.fa = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !129609
  %i.fb = invoke noundef i64 @_RNvXs4_NtCs1LHh8CLbVkQ_11polars_core5utilsNtNtB7_6series6SeriesNtB5_9Container3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fa)
          to label %bb.ba unwind label %.loopexit.split-lp, !dbg !129610

bb.az:                                            ; preds = %.loopexit238, %.loopexit.split-lp, %bb.bn
  %.sroa.074.6 = phi i8 [ 1, %bb.bn ], [ 1, %.loopexit238 ], [ %.sroa.075.9.ph, %.loopexit.split-lp ], !dbg !129549
  %.sroa.075.8 = phi i8 [ %.sroa.075.10, %bb.bn ], [ 1, %.loopexit238 ], [ %.sroa.075.9.ph, %.loopexit.split-lp ], !dbg !129561
  %.pn = phi { ptr, i32 } [ %i.gx, %bb.bn ], [ %lpad.loopexit, %.loopexit238 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.k) #52
          to label %.body unwind label %bb.dj, !dbg !129611

.loopexit238:                                     ; preds = %.lr.ph299
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp:                               ; preds = %bb.ay, %bb.ba, %bb.bf, %bb.bi, %bb.bk, %bb.bl, %bb.bw, %bb.bx, %bb.cp, %bb.cq
  %.sroa.075.9.ph = phi i8 [ 0, %bb.bw ], [ 1, %bb.ay ], [ 1, %bb.bf ], [ 1, %bb.ba ], [ 1, %bb.bi ], [ 1, %bb.bk ], [ 1, %bb.bl ], [ 0, %bb.bx ], [ 1, %bb.cq ], [ 1, %bb.cp ] ; 2 uses
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ba:                                            ; preds = %bb.ay, %bb.ax
  %.sroa.029.0 = phi i64 [ %i.ez, %bb.ax ], [ %i.fb, %bb.ay ], !dbg !129612
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE6resizeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %.sroa.029.0, i32 noundef 0)
          to label %bb.bb unwind label %.loopexit.split-lp, !dbg !129613

bb.bb:                                            ; preds = %bb.ba
  %.sroa.084.0.sroa.sel198.v.sroa.sel.v.sroa.sel.v = select i1 %.not112, ptr %i.eq, ptr %i.o, !dbg !129614
  %.sroa.084.0.sroa.sel198.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.084.0.sroa.sel198.v.sroa.sel.v.sroa.sel.v, i64 32, !dbg !129614
  %i.fc = load ptr, ptr %.sroa.084.0.sroa.sel198.v.sroa.sel.v.sroa.sel, align 8, !dbg !129614, !nonnull !2226, !noundef !2226 ; 2 uses
  %.sroa.084.0.sroa.sel195.v.sroa.sel.v.sroa.sel.v = select i1 %.not112, ptr %i.eq, ptr %i.o, !dbg !129615
  %.sroa.084.0.sroa.sel195.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.084.0.sroa.sel195.v.sroa.sel.v.sroa.sel.v, i64 40, !dbg !129615
  %i.fd = load i64, ptr %.sroa.084.0.sroa.sel195.v.sroa.sel.v.sroa.sel, align 8, !dbg !129615, !noundef !2226 ; 2 uses
  %.idx = shl nuw nsw i64 %i.fd, 4, !dbg !129616
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 %.idx, !dbg !129616
  %i.ff = icmp eq i64 %i.fd, 0, !dbg !129617
  br i1 %i.ff, label %.loopexit, label %.lr.ph245, !dbg !129618

.loopexit239:                                     ; preds = %bb.be, %bb.bd
  %i.fg = icmp eq ptr %i.fh, %i.fe, !dbg !129617
  br i1 %i.fg, label %.loopexit, label %.lr.ph245, !dbg !129618

.lr.ph245:                                        ; preds = %bb.bb, %.loopexit239
  %.sroa.0202.0244 = phi ptr [ %i.fh, %.loopexit239 ], [ %i.fc, %bb.bb ] ; 5 uses
  %.sroa.7.0243 = phi i32 [ %i.fi, %.loopexit239 ], [ 0, %bb.bb ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0202.0244, i64 16, !dbg !129619 ; 2 uses
  %i.fi = add i32 %.sroa.7.0243, 1, !dbg !129620
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0202.0244, i64 12, !dbg !129621
  %i.fk = load i32, ptr %i.fj, align 4, !dbg !129621, !range !3199, !noundef !2226
  %i.fl = icmp eq i32 %i.fk, 1, !dbg !129622
  br i1 %i.fl, label %bb.bd, label %bb.bc, !dbg !129622

.loopexit:                                        ; preds = %.loopexit239, %bb.bg, %bb.av, %bb.bb
  %i.fm = load i64, ptr %i.eo, align 8, !dbg !129623, !noundef !2226 ; 3 uses
  store i64 %i.fm, ptr %i.j, align 8, !dbg !129623
  %i.fn = icmp ult i64 %i.fm, 2305843009213693952, !dbg !129624
  call void @llvm.assume(i1 %i.fn), !dbg !129625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !129626
  %i.fo = load i8, ptr %i.p, align 16, !dbg !129627, !range !2545, !noundef !2226
  %.not116 = icmp eq i8 %i.fo, 31, !dbg !129627
  br i1 %.not116, label %bb.bi, label %bb.bh, !dbg !129628

bb.bc:                                            ; preds = %.lr.ph245
  %i.fp = load ptr, ptr %.sroa.0202.0244, align 8, !dbg !129629, !noundef !2226
  br label %bb.bd, !dbg !129630

bb.bd:                                            ; preds = %.lr.ph245, %bb.bc
  %.sroa.089.0 = phi ptr [ %i.fp, %bb.bc ], [ %.sroa.0202.0244, %.lr.ph245 ], !dbg !129631 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0202.0244, i64 8, !dbg !129632
  %i.fr = load i32, ptr %i.fq, align 8, !dbg !129632, !noundef !2226 ; 2 uses
  %i.fs = zext i32 %i.fr to i64, !dbg !129632
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.089.0) ], !dbg !129633
  %.idx246 = shl nuw nsw i64 %i.fs, 2, !dbg !129634
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.089.0, i64 %.idx246, !dbg !129634
  %i.fu = icmp eq i32 %i.fr, 0, !dbg !129635
  br i1 %i.fu, label %.loopexit239, label %.lr.ph, !dbg !129364

.lr.ph:                                           ; preds = %bb.bd, %bb.be
  %.sroa.036.0242 = phi ptr [ %i.ga, %bb.be ], [ %.sroa.089.0, %bb.bd ] ; 2 uses
  %i.fv = load i32, ptr %.sroa.036.0242, align 4, !dbg !129636, !noundef !2226
  %i.fw = zext i32 %i.fv to i64, !dbg !129636     ; 3 uses
  %i.fx = load i64, ptr %i.eo, align 8, !dbg !129637, !noundef !2226 ; 2 uses
  %i.fy = icmp ugt i64 %i.fx, %i.fw, !dbg !129638
  br i1 %i.fy, label %bb.be, label %bb.bf, !dbg !129638

bb.be:                                            ; preds = %.lr.ph
  %i.fz = load ptr, ptr %i.en, align 8, !dbg !129639, !nonnull !2226, !noundef !2226
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.036.0242, i64 4, !dbg !129640 ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.fw, !dbg !129641
  store i32 %.sroa.7.0243, ptr %i.gb, align 4, !dbg !129642
  %i.gc = icmp eq ptr %i.ga, %i.ft, !dbg !129635
  br i1 %i.gc, label %.loopexit239, label %.lr.ph, !dbg !129364

bb.bf:                                            ; preds = %.lr.ph
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fw, i64 noundef %i.fx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @508) #55
          to label %bb.aj unwind label %.loopexit.split-lp, !dbg !129638

bb.bg:                                            ; preds = %.lr.ph299
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0204.0298, i64 8, !dbg !129643 ; 2 uses
  %i.ge = add i32 %.sroa.7206.0297, 1, !dbg !129644
  %i.gf = icmp eq ptr %i.gd, %i.ev, !dbg !129603
  br i1 %i.gf, label %.loopexit, label %.lr.ph299, !dbg !129604

.lr.ph299:                                        ; preds = %bb.av, %bb.bg
  %.sroa.0204.0298 = phi ptr [ %i.gd, %bb.bg ], [ %i.et, %bb.av ] ; 2 uses
  %.sroa.7206.0297 = phi i32 [ %i.ge, %bb.bg ], [ 0, %bb.av ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0204.0298, i64 4, !dbg !129645
  %i.gh = load i32, ptr %i.gg, align 4, !dbg !129645, !noundef !2226 ; 2 uses
  %.not119 = icmp eq i32 %i.gh, 0, !dbg !129646
  %i.gi = zext i32 %i.gh to i64, !dbg !129647
  %.sroa.591.0 = select i1 %.not119, i32 undef, i32 %.sroa.7206.0297, !dbg !129647
  invoke void @_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecmE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_n7RepeatNmEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.gi, i32 %.sroa.591.0)
          to label %bb.bg unwind label %.loopexit238, !dbg !129648

bb.bh:                                            ; preds = %.loopexit
  %i.gj = getelementptr inbounds nuw i8, ptr %i.p, i64 120, !dbg !129649
  %i.gk = load i64, ptr %i.gj, align 8, !dbg !129649, !noundef !2226
  br label %bb.bj, !dbg !129650

bb.bi:                                            ; preds = %.loopexit
  %i.gl = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !129651
  %i.gm = invoke noundef i64 @_RNvXs4_NtCs1LHh8CLbVkQ_11polars_core5utilsNtNtB7_6series6SeriesNtB5_9Container3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gl)
          to label %bb.bj unwind label %.loopexit.split-lp, !dbg !129652

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.gn = phi i64 [ %i.gk, %bb.bh ], [ %i.gm, %bb.bi ] ; 2 uses
  store i64 %i.gn, ptr %i.i, align 8, !dbg !129653
  %i.go = icmp eq i64 %i.fm, %i.gn, !dbg !129654
  br i1 %i.go, label %bb.bl, label %bb.bk, !dbg !129654, !prof !2357

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @509) #55
          to label %bb.aj unwind label %.loopexit.split-lp, !dbg !129655

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !129656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !129657
  invoke void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column7rechunk(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.h, ptr noundef nonnull align 16 %i.p)
          to label %bb.bm unwind label %.loopexit.split-lp, !dbg !129658

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !129417
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.db), "nonnull"(ptr %i.dc) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !129659
  store ptr %i.h, ptr %i.f, align 8, !dbg !129659
  %i.gp = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !129660
  %i.gq = load ptr, ptr %i.gp, align 8, !dbg !129660, !nonnull !2226, !noundef !2226
  %i.gr = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !129661
  %i.gs = load i64, ptr %i.gr, align 8, !dbg !129661, !noundef !2226
  %i.gt = load ptr, ptr %i.en, align 8, !dbg !129662, !nonnull !2226, !noundef !2226
  %i.gu = load i64, ptr %i.eo, align 8, !dbg !129663, !noundef !2226
  %i.gv = getelementptr inbounds nuw i8, ptr %i.dc, i64 64, !dbg !129417
  %i.gw = load ptr, ptr %i.gv, align 8, !dbg !129417, !invariant.load !2226, !nonnull !2226
  invoke void %i.gw(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.g, ptr noundef nonnull %i.db, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.f, i64 noundef 1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.gq, i64 noundef %i.gs, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.gt, i64 noundef %i.gu, i64 noundef 0)
          to label %bb.bo unwind label %bb.bn, !dbg !129664

bb.bn:                                            ; preds = %bb.bt, %bb.bq, %bb.bm
  %.sroa.075.10 = phi i8 [ 0, %bb.bt ], [ 1, %bb.bq ], [ 1, %bb.bm ], !dbg !129561
  %i.gx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 16 dereferenceable(160) %i.h) #52
          to label %bb.az unwind label %bb.dj, !dbg !129665

bb.bo:                                            ; preds = %bb.bm
  %i.gy = load i64, ptr %i.g, align 8, !dbg !129666, !range !2705, !noundef !2226
  %.not117 = icmp eq i64 %i.gy, 18, !dbg !129666
  br i1 %.not117, label %bb.bq, label %bb.bp, !dbg !129667

bb.bp:                                            ; preds = %bb.bo
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !129668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.gz, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false), !dbg !129669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !129670
  store i128 4, ptr %0, align 16, !dbg !129668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !129671
  br label %bb.cn, !dbg !129672

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !129670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !129671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !129421
  %i.ha = getelementptr inbounds nuw i8, ptr %i.dc, i64 96, !dbg !129421
  %i.hb = load ptr, ptr %i.ha, align 8, !dbg !129421, !invariant.load !2226, !nonnull !2226
  invoke void %i.hb(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.e, ptr noundef nonnull %i.db)
          to label %bb.br unwind label %bb.bn, !dbg !129673

bb.br:                                            ; preds = %bb.bq
  %i.hc = load i64, ptr %i.e, align 8, !dbg !129674, !range !2705, !noundef !2226 ; 2 uses
  %.not118 = icmp eq i64 %i.hc, 18, !dbg !129674
  %i.hd = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !129675
  %i.he = load ptr, ptr %i.hd, align 8, !dbg !129675 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !129675
  %i.hg = load ptr, ptr %i.hf, align 8, !dbg !129675 ; 2 uses
  br i1 %.not118, label %bb.bt, label %bb.bs, !dbg !129676

bb.bs:                                            ; preds = %bb.br
  %.sroa.7102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !129677
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !129678
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4106.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7102.0..sroa_idx, i64 48, i1 false), !dbg !129677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !129679
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !129678
  store i64 %i.hc, ptr %i.hh, align 16, !dbg !129678
  %.sroa.2104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !129678
  store ptr %i.he, ptr %.sroa.2104.0..sroa_idx, align 8, !dbg !129678
  %.sroa.3105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !129678
  store ptr %i.hg, ptr %.sroa.3105.0..sroa_idx, align 16, !dbg !129678
  store i128 4, ptr %0, align 16, !dbg !129678
  br label %bb.cn, !dbg !129672

bb.bt:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !129679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !129680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !129680
  %i.hi = invoke { ptr, ptr } @_RNvXsA_NtCs1LHh8CLbVkQ_11polars_core10named_fromNtNtB7_6series6SeriesINtB5_9NamedFromBK_BK_E3newCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull %i.he, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(896) %i.hg)
          to label %bb.bu unwind label %bb.bn, !dbg !129681 ; 2 uses

bb.bu:                                            ; preds = %bb.bt
  %i.hj = extractvalue { ptr, ptr } %i.hi, 0, !dbg !129681
  %i.hk = extractvalue { ptr, ptr } %i.hi, 1, !dbg !129681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !129682
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !129683
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %i.o, i64 80, i1 false), !dbg !129684
  store i128 1, ptr %0, align 16, !dbg !129683
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !129683
  store i8 31, ptr %.sroa.467.0..sroa_idx, align 16, !dbg !129683
  %.sroa.669.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !129683
  store ptr %i.hj, ptr %.sroa.669.0..sroa_idx, align 8, !dbg !129683
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !129683
  store ptr %i.hk, ptr %.sroa.7.0..sroa_idx, align 16, !dbg !129683
  %.sroa.1071.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !129683
  store i8 1, ptr %.sroa.1071.0..sroa_idx, align 16, !dbg !129683
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 257, !dbg !129683
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 1, !dbg !129683
  call void @llvm.experimental.noalias.scope.decl(metadata !129425), !dbg !129665
  %i.hl = load i8, ptr %i.h, align 16, !dbg !129685, !range !2545, !alias.scope !129425, !noundef !2226
  %i.hm = icmp eq i8 %i.hl, 31, !dbg !129685
  br i1 %i.hm, label %bb.bv, label %bb.bx, !dbg !129685

bb.bv:                                            ; preds = %bb.bu
  %i.hn = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !129685 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !129426), !dbg !129685
  call void @llvm.experimental.noalias.scope.decl(metadata !129427), !dbg !129686
  call void @llvm.experimental.noalias.scope.decl(metadata !129428), !dbg !129687
  call void @llvm.experimental.noalias.scope.decl(metadata !129429), !dbg !129688
  %i.ho = load ptr, ptr %i.hn, align 8, !dbg !129689, !alias.scope !129430, !nonnull !2226, !noundef !2226
  %i.hp = atomicrmw add ptr %i.ho, i64 -1 release, align 8, !dbg !129690, !noalias !129430
  %i.hq = icmp eq i64 %i.hp, 1, !dbg !129691
  br i1 %i.hq, label %bb.bw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr.exit145, !dbg !129691

bb.bw:                                            ; preds = %bb.bv
  fence acquire, !dbg !129692
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.hn) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr.exit145 unwind label %.loopexit.split-lp, !dbg !129693

bb.bx:                                            ; preds = %bb.bu
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalar12ScalarColumnECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 16 dereferenceable(160) %i.h)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr.exit145 unwind label %.loopexit.split-lp, !dbg !129685

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr.exit145: ; preds = %bb.bv, %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !129665
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.bz unwind label %bb.by, !dbg !129694

bb.by:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr.exit145
  %i.hr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body unwind label %bb.ca, !dbg !129695

bb.bz:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr.exit145
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.aq, !dbg !129696

bb.ca:                                            ; preds = %bb.by
  %i.hs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !129694
  unreachable, !dbg !129694

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !129611
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.cc unwind label %bb.cb, !dbg !129697

bb.cb:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit
  %i.ht = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body149 unwind label %bb.cd, !dbg !129698

bb.cc:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit151 unwind label %bb.ae, !dbg !129699

bb.cd:                                            ; preds = %bb.cb
  %i.hu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !129697
  unreachable, !dbg !129697

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit151: ; preds = %bb.cc
end_hunk_0
