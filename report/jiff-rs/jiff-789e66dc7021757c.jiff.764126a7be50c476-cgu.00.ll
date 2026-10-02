Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.00?download=true
inline.NumInlined: 734
inline.NumDeleted: 227
begin_hunk_0_@_RINvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB3_4Date5untilTNtNtB7_4span4UnitBB_EEB7_:bb.a
  %i.bt = ashr i32 %.sroa.513.0.extract.shift43.i.i, 24
  br label %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date5since.exit.i

_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date5since.exit.i: ; preds = %bb.l, %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date11day_of_year.exit54.i.i, %bb.g
  %.sroa.030.0.i.i = phi i32 [ %i.bt, %bb.l ], [ %i.bs, %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date11day_of_year.exit54.i.i ], [ %i.az, %bb.g ] ; 2 uses
  %i.bu = sub nsw i32 0, %.sroa.030.0.i.i         ; 2 uses
  %i.bv = icmp eq i8 %.sroa.01.0.extract.trunc.i.i, 7
  br i1 %i.bv, label %bb.aq, label %.thread504.i

bb.m:                                             ; preds = %bb.ad, %switch.lookup574.i
  %.sroa.035.0.i = phi i16 [ %i.du, %bb.ad ], [ %.sroa.035.1.i, %switch.lookup574.i ] ; 4 uses
  %.sroa.079.0.i = phi i32 [ %i.dv, %bb.ad ], [ %i.dq, %switch.lookup574.i ] ; 3 uses
  %i.bw = icmp ne i8 %.sroa.01.0.extract.trunc.i.i, 8
  %i.bx = icmp eq i16 %.sroa.035.0.i, 0
  %or.cond3.i = or i1 %i.bw, %i.bx
  br i1 %or.cond3.i, label %bb.ae, label %bb.ao

bb.n:                                             ; preds = %bb.e
  br i1 %i.r, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  br i1 %i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = icmp slt i8 %i.o, 1                     ; 2 uses
  %.117.i = select i1 %i.by, i8 -1, i8 1
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.p, %bb.o
  %i.bz = phi i1 [ %i.cj, %bb.t ], [ false, %bb.o ], [ %i.by, %bb.p ]
  %.sroa.044.0.i = phi i8 [ %.119.i, %bb.t ], [ 0, %bb.o ], [ %.117.i, %bb.p ] ; 2 uses
  %i.ca = icmp eq i8 %.sroa.1324.34.extract.trunc, 2
  br i1 %i.ca, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cb = srem i16 %.sroa.1324.32.extract.trunc, 25
  %i.cc = icmp eq i16 %i.cb, 0
  %..i.i = select i1 %i.cc, i16 15, i16 3
  %i.cd = and i16 %..i.i, %.sroa.1324.32.extract.trunc
  %i.ce = icmp eq i16 %i.cd, 0
  %spec.select.i.i = select i1 %i.ce, i8 29, i8 28
  br label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i

bb.s:                                             ; preds = %bb.q
  %i.cf = ashr i8 %.sroa.1324.34.extract.trunc, 3
  %i.cg = xor i8 %i.cf, %.sroa.1324.34.extract.trunc
  %i.ch = or i8 %i.cg, 30
  br label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i

_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i: ; preds = %bb.s, %bb.r
  %.sroa.0.0.i.i = phi i8 [ %spec.select.i.i, %bb.r ], [ %i.ch, %bb.s ] ; 2 uses
  %.inv.i = icmp slt i8 %i.p, 1
  %.120.i = select i1 %.inv.i, i8 -1, i8 1
  %.sroa.050.0.i = select i1 %i.j, i8 0, i8 %.120.i ; 2 uses
  %switch.offset.i = sub nsw i8 0, %.sroa.044.0.i ; 3 uses
  %i.ci = icmp eq i8 %.sroa.050.0.i, %switch.offset.i
  br i1 %i.ci, label %switch.lookup.i, label %bb.u

bb.t:                                             ; preds = %bb.n
  %i.cj = icmp slt i16 %i.n, 1                    ; 2 uses
  %.119.i = select i1 %i.cj, i8 -1, i8 1
  br label %bb.q

switch.lookup.i:                                  ; preds = %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !347
  call void @_RNvNtNtCsa9sSWSfjDbm_4jiff5civil4date13month_add_one(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, i16 noundef %.sroa.1324.32.extract.trunc, i8 noundef %.sroa.1324.34.extract.trunc, i8 noundef %.sroa.050.0.i), !noalias !347
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.ck = load i16, ptr %i.e, align 8, !range !8, !alias.scope !348, !noalias !347, !noundef !5
  %i.cl = trunc nuw i16 %i.ck to i1
  br i1 %i.cl, label %bb.v, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultTsaENtNtCsa9sSWSfjDbm_4jiff5error5ErrorE6unwrapBP_.exit.i, !prof !6

bb.u:                                             ; preds = %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit127.i, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i
  %.sroa.035.1.i = phi i16 [ %i.dd, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit127.i ], [ %i.n, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i ] ; 2 uses
  %.sroa.052.0.i = phi i16 [ %i.da, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit127.i ], [ %.sroa.1324.32.extract.trunc, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i ]
  %.sroa.058.0.i = phi i8 [ %i.dc, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit127.i ], [ %.sroa.1324.34.extract.trunc, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i ] ; 2 uses
  %.sroa.065.0.i = phi i8 [ %.sroa.0.0.i124.i, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit127.i ], [ %.sroa.0.0.i.i, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i ]
  %.sroa.068.0.i = phi i32 [ %i.do, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit127.i ], [ 0, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i ]
  %.sroa.079.1.in.i = phi i8 [ %i.de, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit127.i ], [ %i.o, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i ]
  %.sroa.079.1.i = sext i8 %.sroa.079.1.in.i to i32
  %..i123.i = tail call noundef i8 @llvm.smin.i8(i8 range(i8 28, 0) %.sroa.065.0.i, i8 %.sroa.512.0.extract.trunc.i)
  %i.cm = sext i8 %..i123.i to i32
  %i.cn = sext i8 %.sroa.1324.35.extract.trunc to i32
  %i.co = sub nsw i32 %i.cn, %i.cm
  %i.cp = add nsw i32 %i.co, %.sroa.068.0.i       ; 4 uses
  %i.cq = icmp eq i16 %.sroa.035.1.i, 0
  br i1 %i.cq, label %.thread434.i, label %switch.lookup574.i

bb.v:                                             ; preds = %switch.lookup.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !349
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !348, !noalias !347, !noundef !5
  store ptr %i.cs, ptr %i.d, align 8, !noalias !349
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #22
          to label %bb.z unwind label %bb.w, !noalias !349

bb.w:                                             ; preds = %bb.v
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !350)
  call void @llvm.experimental.noalias.scope.decl(metadata !351), !noalias !348
  %i.cu = load ptr, ptr %i.d, align 8, !alias.scope !352, !noalias !349, !noundef !5 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %common.resume.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cw = atomicrmw sub ptr %i.cu, i64 1 release, align 8, !noalias !353
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %bb.y, label %common.resume.i

bb.y:                                             ; preds = %bb.x
  fence acquire, !noalias !348
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #21
          to label %common.resume.i unwind label %bb.aa, !noalias !347

bb.z:                                             ; preds = %bb.v
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !349
  unreachable

common.resume.i:                                  ; preds = %bb.bf, %bb.be, %bb.bd, %bb.av, %bb.au, %bb.at, %bb.aj, %bb.ai, %bb.ah, %bb.y, %bb.x, %bb.w
  %common.resume.op.i = phi { ptr, i32 } [ %i.fo, %bb.at ], [ %i.ct, %bb.y ], [ %i.ef, %bb.ah ], [ %i.gk, %bb.be ], [ %i.gk, %bb.bd ], [ %i.ct, %bb.x ], [ %i.ct, %bb.w ], [ %i.ef, %bb.aj ], [ %i.ef, %bb.ai ], [ %i.fo, %bb.av ], [ %i.fo, %bb.au ], [ %i.gk, %bb.bf ]
  resume { ptr, i32 } %common.resume.op.i

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultTsaENtNtCsa9sSWSfjDbm_4jiff5error5ErrorE6unwrapBP_.exit.i: ; preds = %switch.lookup.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.da = load i16, ptr %i.cz, align 2, !alias.scope !348, !noalias !347, !noundef !5 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.dc = load i8, ptr %i.db, align 4, !alias.scope !348, !noalias !347, !noundef !5 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !347
  %i.dd = sub i16 %i.da, %.sroa.011.0.extract.trunc.i
  %i.de = sub i8 %i.dc, %.sroa.4.0.extract.trunc.i
  %i.df = icmp eq i8 %i.dc, 2
  br i1 %i.df, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultTsaENtNtCsa9sSWSfjDbm_4jiff5error5ErrorE6unwrapBP_.exit.i
  %i.dg = srem i16 %i.da, 25
  %i.dh = icmp eq i16 %i.dg, 0
  %..i125.i = select i1 %i.dh, i16 15, i16 3
  %i.di = and i16 %..i125.i, %i.da
  %i.dj = icmp eq i16 %i.di, 0
  %spec.select.i126.i = select i1 %i.dj, i8 29, i8 28
  br label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit127.i

bb.ac:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultTsaENtNtCsa9sSWSfjDbm_4jiff5error5ErrorE6unwrapBP_.exit.i
  %i.dk = ashr i8 %i.dc, 3
  %i.dl = xor i8 %i.dk, %i.dc
  %i.dm = or i8 %i.dl, 30
  br label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit127.i

_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit127.i: ; preds = %bb.ac, %bb.ab
  %.sroa.0.0.i124.i = phi i8 [ %spec.select.i126.i, %bb.ab ], [ %i.dm, %bb.ac ] ; 2 uses
  %i.dn = sub nsw i8 0, %.sroa.0.0.i.i
  %spec.select122.i = select i1 %i.bz, i8 %i.dn, i8 %.sroa.0.0.i124.i
  %i.do = sext i8 %spec.select122.i to i32
  br label %bb.u

switch.lookup574.i:                               ; preds = %bb.u
  %i.dp = sub i8 %.sroa.058.0.i, %.sroa.4.0.extract.trunc.i ; 2 uses
  %i.dq = sext i8 %i.dp to i32                    ; 2 uses
  %i.dr = icmp eq i8 %.sroa.058.0.i, %.sroa.4.0.extract.trunc.i
  %.inv528.i = icmp slt i8 %i.dp, 1
  %.121.i = select i1 %.inv528.i, i8 -1, i8 1
  %.sroa.069.0.i = select i1 %i.dr, i8 0, i8 %.121.i
  %i.ds = icmp eq i8 %.sroa.069.0.i, %switch.offset.i
  br i1 %i.ds, label %bb.ad, label %bb.m

bb.ad:                                            ; preds = %switch.lookup574.i
  %narrow.i = mul nsw i8 %.sroa.044.0.i, 12
  %i.dt = sext i8 %narrow.i to i32
  %.neg.i = sext i8 %switch.offset.i to i16
  %.neg542.i = sub i16 %.neg.i, %.sroa.011.0.extract.trunc.i
  %i.du = add i16 %.neg542.i, %.sroa.052.0.i
  %i.dv = add nsw i32 %i.dq, %i.dt
  br label %bb.m

bb.ae:                                            ; preds = %bb.m
  %i.dw = add i16 %.sroa.035.0.i, -19999
  %or.cond.i.i = icmp ult i16 %i.dw, 25539
  br i1 %or.cond.i.i, label %bb.af, label %.thread434.i

bb.af:                                            ; preds = %bb.ae
  %i.dx = tail call noundef i8 @_RNvXsQ_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #21, !noalias !354
  %i.dy = zext nneg i8 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 8
  %i.ea = or disjoint i32 %i.dz, 1
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i

.thread434.i:                                     ; preds = %bb.ao, %bb.ae, %bb.u, %bb.e
  %.sroa.079.2443.i = phi i32 [ %.sroa.079.0.i, %bb.ae ], [ 0, %bb.e ], [ %.sroa.079.1.i, %bb.u ], [ %i.ev, %bb.ao ]
  %.sroa.035.2441.i = phi i16 [ %.sroa.035.0.i, %bb.ae ], [ 0, %bb.e ], [ 0, %bb.u ], [ 0, %bb.ao ]
  %.sroa.042.0432440.i = phi i32 [ %i.cp, %bb.ae ], [ %i.q, %bb.e ], [ %i.cp, %bb.u ], [ %i.cp, %bb.ao ]
  %i.eb = zext i16 %.sroa.035.2441.i to i32
  %i.ec = shl nuw i32 %i.eb, 16
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i: ; preds = %.thread434.i, %bb.af
  %.sroa.079.2442.i = phi i32 [ %.sroa.079.2443.i, %.thread434.i ], [ %.sroa.079.0.i, %bb.af ] ; 3 uses
  %.sroa.042.0432439.i = phi i32 [ %.sroa.042.0432440.i, %.thread434.i ], [ %i.cp, %bb.af ] ; 3 uses
  %.sroa.3.0.insert.insert.i.i128.i = phi i32 [ %i.ec, %.thread434.i ], [ %i.ea, %bb.af ] ; 4 uses
  %i.ed = trunc i32 %.sroa.3.0.insert.insert.i.i128.i to i1
  br i1 %i.ed, label %bb.ag, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i

bb.ag:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i
  %.sroa.416.0.extract.shift.i.i = lshr i32 %.sroa.3.0.insert.insert.i.i128.i, 8
  %.sroa.416.0.extract.trunc.i.i = trunc i32 %.sroa.416.0.extract.shift.i.i to i8
  %i.ee = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.416.0.extract.trunc.i.i), !noalias !354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !355
  store ptr %i.ee, ptr %i.c, align 8, !noalias !355
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 32, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22
          to label %bb.ak unwind label %bb.ah, !noalias !356

bb.ah:                                            ; preds = %bb.ag
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !357)
  call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.eg = load ptr, ptr %i.c, align 8, !alias.scope !359, !noalias !355, !noundef !5 ; 2 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %common.resume.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ei = atomicrmw sub ptr %i.eg, i64 1 release, align 8, !noalias !360
  %i.ej = icmp eq i64 %i.ei, 1
  br i1 %i.ej, label %bb.aj, label %common.resume.i

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #21
          to label %common.resume.i unwind label %bb.al, !noalias !356

bb.ak:                                            ; preds = %bb.ag
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !356
  unreachable

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i: ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i
  %.sroa.517.0.extract.shift.i.i = lshr i32 %.sroa.3.0.insert.insert.i.i128.i, 16 ; 2 uses
  %.sroa.517.0.extract.trunc.i.i = trunc nuw i32 %.sroa.517.0.extract.shift.i.i to i16 ; 2 uses
  %i.el = icmp slt i32 %.sroa.3.0.insert.insert.i.i128.i, 0 ; 2 uses
  %i.em = sub i16 0, %.sroa.517.0.extract.trunc.i.i
  %.not529.i = icmp ne i32 %.sroa.517.0.extract.shift.i.i, 0 ; 2 uses
  %masksel.i.i = select i1 %.not529.i, i16 512, i16 0
  %spec.select538.i = zext i1 %.not529.i to i8
  %.sroa.26.60.extract.trunc455.i = select i1 %i.el, i8 -1, i8 %spec.select538.i ; 2 uses
  %.sroa.24382.0450.i = select i1 %i.el, i16 %i.em, i16 %.sroa.517.0.extract.trunc.i.i ; 5 uses
  %.sroa.015.0.i.i = tail call i32 @llvm.abs.i32(i32 %.sroa.079.2442.i, i1 true) ; 3 uses
  %i.en = icmp eq i32 %.sroa.079.2442.i, 0        ; 4 uses
  %masksel.i133.i = select i1 %i.en, i16 0, i16 256
  %i.eo = icmp slt i32 %.sroa.079.2442.i, 0
  br i1 %i.eo, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i, label %bb.am

bb.am:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i
  %3 = icmp eq i16 %.sroa.24382.0450.i, 0
  %4 = select i1 %i.en, i1 %3, i1 false
  br i1 %4, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i, label %.thread.i.i143.i

.thread.i.i143.i:                                 ; preds = %bb.am
  %.not = xor i1 %i.en, true
  %.sroa.027.0.in.i.i144.i = icmp eq i8 %.sroa.26.60.extract.trunc455.i, 0
  %spec.select.i.i145.i = zext i1 %.not to i8
  %spec.select540.i = select i1 %.sroa.027.0.in.i.i144.i, i8 %spec.select.i.i145.i, i8 %.sroa.26.60.extract.trunc455.i
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i: ; preds = %.thread.i.i143.i, %bb.am, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i
  %.sroa.26396.0468.i = phi i8 [ %spec.select540.i, %.thread.i.i143.i ], [ -1, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i ], [ 0, %bb.am ] ; 2 uses
  %.sroa.016.0.i.i = tail call i32 @llvm.abs.i32(i32 %.sroa.042.0432439.i, i1 true) ; 3 uses
  %i.ep = icmp ne i32 %.sroa.042.0432439.i, 0     ; 3 uses
  %masksel.i155.i = select i1 %i.ep, i16 64, i16 0
  %.sroa.017.0.i.i = or disjoint i16 %masksel.i155.i, %masksel.i133.i
  %.sroa.018.0.i.i = or disjoint i16 %.sroa.017.0.i.i, %masksel.i.i ; 3 uses
  %i.eq = icmp slt i32 %.sroa.042.0432439.i, 0
  br i1 %i.eq, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit174.i, label %bb.an

bb.an:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i
  %.not577.i = xor i1 %i.ep, true
  %i.er = icmp eq i16 %.sroa.24382.0450.i, 0
  %i.es = select i1 %.not577.i, i1 %i.er, i1 false
  %or.cond578.i = select i1 %i.es, i1 %i.en, i1 false
  br i1 %or.cond578.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit174.i, label %.thread.i.i165.i

.thread.i.i165.i:                                 ; preds = %bb.an
  %.sroa.027.0.in.i.i166.i = icmp eq i8 %.sroa.26396.0468.i, 0
  %spec.select.i.i167.i = zext i1 %i.ep to i8
  %spec.select541.i = select i1 %.sroa.027.0.in.i.i166.i, i8 %spec.select.i.i167.i, i8 %.sroa.26396.0468.i
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit174.i

bb.ao:                                            ; preds = %bb.m
  %i.et = sext i16 %.sroa.035.0.i to i32
  %i.eu = mul nsw i32 %i.et, 12
  %i.ev = add nsw i32 %i.eu, %.sroa.079.0.i       ; 2 uses
  %i.ew = add nsw i32 %i.ev, -239977
  %or.cond535.i = icmp ult i32 %i.ew, -479953
  br i1 %or.cond535.i, label %bb.ap, label %.thread434.i

bb.ap:                                            ; preds = %bb.ao
  %i.ex = tail call noundef i8 @_RNvXsS_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #21, !noalias !347
  %i.ey = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %i.ex), !noalias !347
  br label %_RNvMsv_NtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB5_14DateDifference23since_with_largest_unit.exit

bb.aq:                                            ; preds = %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date5since.exit.i
  %i.ez = sdiv i32 %.sroa.030.0.i.i, -7           ; 2 uses
  %i.fa = srem i32 %i.bu, 7                       ; 2 uses
  %i.fb = add nsw i32 %i.ez, -1043498
  %or.cond.i175.i = icmp ult i32 %i.fb, -2086995
  br i1 %or.cond.i175.i, label %bb.ar, label %.thread504.i

bb.ar:                                            ; preds = %bb.aq
  %i.fc = tail call noundef i8 @_RNvXsU_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #21, !noalias !361
  %i.fd = zext nneg i8 %i.fc to i64
  %i.fe = shl nuw nsw i64 %i.fd, 8
  %i.ff = or disjoint i64 %i.fe, 1
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i

.thread504.i:                                     ; preds = %bb.aq, %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date5since.exit.i
  %.sroa.032.0510.i = phi i32 [ %i.fa, %bb.aq ], [ %i.bu, %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date5since.exit.i ]
  %.sroa.031.0508.i = phi i32 [ %i.ez, %bb.aq ], [ 0, %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date5since.exit.i ]
  %i.fg = zext i32 %.sroa.031.0508.i to i64
  %i.fh = shl nuw i64 %i.fg, 32
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i: ; preds = %.thread504.i, %bb.ar
  %.sroa.032.0509.i = phi i32 [ %.sroa.032.0510.i, %.thread504.i ], [ %i.fa, %bb.ar ] ; 2 uses
  %.sroa.3.0.insert.insert.i.i176.i = phi i64 [ %i.fh, %.thread504.i ], [ %i.ff, %bb.ar ] ; 5 uses
  %i.fi = trunc i64 %.sroa.3.0.insert.insert.i.i176.i to i1
  br i1 %i.fi, label %bb.as, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit221.i

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit221.i: ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i
  %.sroa.622.0.extract.shift.i177.i = lshr i64 %.sroa.3.0.insert.insert.i.i176.i, 32 ; 2 uses
  %.sroa.622.0.extract.trunc.i178.i = trunc nuw i64 %.sroa.622.0.extract.shift.i177.i to i32 ; 2 uses
  %i.fj = icmp slt i64 %.sroa.3.0.insert.insert.i.i176.i, 0
  %i.fk = sub i32 0, %.sroa.622.0.extract.trunc.i178.i
  %.sroa.016.0.i188.i = select i1 %i.fj, i32 %i.fk, i32 %.sroa.622.0.extract.trunc.i178.i ; 3 uses
  %.not532.i = icmp eq i64 %.sroa.622.0.extract.shift.i177.i, 0
  %masksel.i189.i = select i1 %.not532.i, i16 0, i16 128
  %i.fl = ashr i64 %.sroa.3.0.insert.insert.i.i176.i, 32 ; 2 uses
  %.sroa.0.0.i.i215.i = tail call i8 @llvm.scmp.i8.i64(i64 %i.fl, i64 0)
  %i.fm = add nsw i32 %.sroa.032.0509.i, -7304485
  %or.cond.i222.i = icmp ult i32 %i.fm, -14608969
  br i1 %or.cond.i222.i, label %bb.ay, label %bb.az

bb.as:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i
  %.sroa.420.0.extract.shift.i218.i = lshr i64 %.sroa.3.0.insert.insert.i.i176.i, 8
  %.sroa.420.0.extract.trunc.i219.i = trunc i64 %.sroa.420.0.extract.shift.i218.i to i8
  %i.fn = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.420.0.extract.trunc.i219.i), !noalias !361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !362
  store ptr %i.fn, ptr %i.b, align 8, !noalias !362
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 32, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22
          to label %bb.aw unwind label %bb.at, !noalias !363

bb.at:                                            ; preds = %bb.as
  %i.fo = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !364)
  call void @llvm.experimental.noalias.scope.decl(metadata !365)
  %i.fp = load ptr, ptr %i.b, align 8, !alias.scope !366, !noalias !362, !noundef !5 ; 2 uses
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %common.resume.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fr = atomicrmw sub ptr %i.fp, i64 1 release, align 8, !noalias !367
  %i.fs = icmp eq i64 %i.fr, 1
  br i1 %i.fs, label %bb.av, label %common.resume.i

bb.av:                                            ; preds = %bb.au
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #21
          to label %common.resume.i unwind label %bb.ax, !noalias !363

bb.aw:                                            ; preds = %bb.as
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !363
  unreachable

bb.ay:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit221.i
  %i.fu = tail call noundef i8 @_RNvXsW_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #21, !noalias !368
  %i.fv = zext nneg i8 %i.fu to i64
  %i.fw = shl nuw nsw i64 %i.fv, 8
  %i.fx = or disjoint i64 %i.fw, 1
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i223.i

bb.az:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit221.i
  %i.fy = zext i32 %.sroa.032.0509.i to i64
  %i.fz = shl nuw i64 %i.fy, 32
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i223.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i223.i: ; preds = %bb.az, %bb.ay
  %.sroa.3.0.insert.insert.i.i224.i = phi i64 [ %i.fz, %bb.az ], [ %i.fx, %bb.ay ] ; 5 uses
  %i.ga = trunc i64 %.sroa.3.0.insert.insert.i.i224.i to i1
  br i1 %i.ga, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i223.i
  %.sroa.622.0.extract.shift.i225.i = lshr i64 %.sroa.3.0.insert.insert.i.i224.i, 32
  %.sroa.622.0.extract.trunc.i226.i = trunc nuw i64 %.sroa.622.0.extract.shift.i225.i to i32 ; 2 uses
  %i.gb = icmp slt i64 %.sroa.3.0.insert.insert.i.i224.i, 0
  %i.gc = sub i32 0, %.sroa.622.0.extract.trunc.i226.i
  %.sroa.016.0.i236.i = select i1 %i.gb, i32 %i.gc, i32 %.sroa.622.0.extract.trunc.i226.i ; 4 uses
  %i.gd = icmp eq i32 %.sroa.016.0.i236.i, 0      ; 2 uses
  %masksel.i237.i = select i1 %i.gd, i16 0, i16 64
  %.sroa.018.0.i238.i = or disjoint i16 %masksel.i237.i, %masksel.i189.i ; 3 uses
  %i.ge = ashr i64 %.sroa.3.0.insert.insert.i.i224.i, 32 ; 2 uses
  %i.gf = icmp slt i64 %i.ge, 0
  br i1 %i.gf, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit174.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gg = icmp ne i64 %i.ge, 0                    ; 2 uses
  %.not536.i = xor i1 %i.gg, true
  %i.gh = icmp eq i32 %.sroa.016.0.i188.i, 0
  %i.gi = select i1 %.not536.i, i1 %i.gh, i1 false
  %or.cond537.i = select i1 %i.gi, i1 %i.gd, i1 false
  br i1 %or.cond537.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit174.i, label %.thread.i.i261.i

.thread.i.i261.i:                                 ; preds = %bb.bb
  %.sroa.027.0.in.i.i262.i = icmp eq i64 %i.fl, 0
  %spec.select.i.i263.i = zext i1 %i.gg to i8
  %spec.select.i264.i = select i1 %.sroa.027.0.in.i.i262.i, i8 %spec.select.i.i263.i, i8 %.sroa.0.0.i.i215.i
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit174.i

bb.bc:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i223.i
  %.sroa.420.0.extract.shift.i279.i = lshr i64 %.sroa.3.0.insert.insert.i.i224.i, 8
  %.sroa.420.0.extract.trunc.i280.i = trunc i64 %.sroa.420.0.extract.shift.i279.i to i8
  %i.gj = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.420.0.extract.trunc.i280.i), !noalias !368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !369
  store ptr %i.gj, ptr %i.a, align 8, !noalias !369
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 31, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #22
          to label %bb.bg unwind label %bb.bd, !noalias !370

bb.bd:                                            ; preds = %bb.bc
  %i.gk = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.gl = load ptr, ptr %i.a, align 8, !alias.scope !373, !noalias !369, !noundef !5 ; 2 uses
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %common.resume.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gn = atomicrmw sub ptr %i.gl, i64 1 release, align 8, !noalias !374
  %i.go = icmp eq i64 %i.gn, 1
  br i1 %i.go, label %bb.bf, label %common.resume.i

bb.bf:                                            ; preds = %bb.be
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #21
          to label %common.resume.i unwind label %bb.bh, !noalias !370

bb.bg:                                            ; preds = %bb.bc
  unreachable

bb.bh:                                            ; preds = %bb.bf
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
