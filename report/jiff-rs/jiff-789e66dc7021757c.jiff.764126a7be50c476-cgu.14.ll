Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.14?download=true
inline.NumInlined: 340
inline.NumDeleted: 162
begin_hunk_0_@_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil8datetimeNtB2_8DateTime24checked_add_span_general:bb.a
  %i.ci = add nsw i32 %i.cb, 1000000000
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.cj = add nsw i64 %i.by, 1
  %i.ck = add nsw i32 %i.cb, -1000000000
  br label %bb.ad

_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit18.i.i: ; preds = %bb.v
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #27, !noalias !235
  unreachable

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.z, %bb.y, %bb.x
  %.sroa.657.0.ph.i.i = phi i32 [ %i.ck, %bb.ac ], [ %i.cb, %bb.y ], [ 0, %bb.x ], [ %i.cb, %bb.z ], [ %i.ci, %bb.ab ]
  %.sroa.456.0.ph.i.i = phi i64 [ %i.cj, %bb.ac ], [ 0, %bb.y ], [ %i.by, %bb.x ], [ %i.by, %bb.z ], [ %i.ch, %bb.ab ]
  %i.cl = mul i64 %.sroa.19.0.copyload, %i.bh     ; 2 uses
  %i.cm = sdiv i64 %i.cl, 1000000
  %i.cn = srem i64 %i.cl, 1000000
  %i.co = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.sroa.456.0.ph.i.i, i64 %i.cm) ; 2 uses
  %i.cp = extractvalue { i64, i1 } %i.co, 0       ; 4 uses
  %i.cq = extractvalue { i64, i1 } %i.co, 1
  br i1 %i.cq, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit34.i.i, label %bb.ae, !prof !8

bb.ae:                                            ; preds = %bb.ad
  %i.cr = trunc nsw i64 %i.cn to i32
  %i.cs = mul nsw i32 %i.cr, 1000
  %i.ct = add i32 %.sroa.657.0.ph.i.i, %i.cs      ; 6 uses
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.aq, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cv = icmp sgt i32 %i.ct, 999999999
  br i1 %i.cv, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cw = icmp slt i32 %i.ct, -999999999
  br i1 %i.cw, label %bb.ai, label %bb.ak

bb.ah:                                            ; preds = %bb.af
  %i.cx = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.cp, i64 1) ; 2 uses
  %i.cy = extractvalue { i64, i1 } %i.cx, 1
  br i1 %i.cy, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit34.i.i, label %bb.al, !prof !8

bb.ai:                                            ; preds = %bb.ag
  %i.cz = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.cp, i64 -1) ; 2 uses
  %i.da = extractvalue { i64, i1 } %i.cz, 1
  br i1 %i.da, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit34.i.i, label %bb.aj, !prof !8

bb.aj:                                            ; preds = %bb.ai
  %i.db = extractvalue { i64, i1 } %i.cz, 0
  %i.dc = add nsw i32 %i.ct, 1000000000
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %bb.aj, %bb.ag
  %.sroa.016.1.i27.i.i = phi i64 [ %i.df, %bb.al ], [ %i.db, %bb.aj ], [ %i.cp, %bb.ag ] ; 7 uses
  %.sroa.02.1.i28.i.i = phi i32 [ %i.dg, %bb.al ], [ %i.dc, %bb.aj ], [ %i.ct, %bb.ag ] ; 6 uses
  %i.dd = icmp eq i64 %.sroa.016.1.i27.i.i, 0
  %i.de = icmp eq i32 %.sroa.02.1.i28.i.i, 0
  %or.cond.i29.i.i = select i1 %i.dd, i1 true, i1 %i.de
  br i1 %or.cond.i29.i.i, label %bb.aq, label %bb.am

bb.al:                                            ; preds = %bb.ah
  %i.df = extractvalue { i64, i1 } %i.cx, 0
  %i.dg = add nsw i32 %i.ct, -1000000000
  br label %bb.ak

bb.am:                                            ; preds = %bb.ak
  %i.dh = tail call i64 @llvm.scmp.i64.i64(i64 %.sroa.016.1.i27.i.i, i64 0)
  %i.di = tail call i64 @llvm.scmp.i64.i32(i32 %.sroa.02.1.i28.i.i, i32 0)
  %.not.i30.i.i = icmp eq i64 %i.dh, %i.di
  br i1 %.not.i30.i.i, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dj = icmp slt i64 %.sroa.016.1.i27.i.i, 0
  br i1 %i.dj, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dk = add nsw i64 %.sroa.016.1.i27.i.i, -1
  %i.dl = add nsw i32 %.sroa.02.1.i28.i.i, 1000000000
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.dm = add nsw i64 %.sroa.016.1.i27.i.i, 1
  %i.dn = add nsw i32 %.sroa.02.1.i28.i.i, -1000000000
  br label %bb.aq

_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit26.i.i: ; preds = %bb.w
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #27, !noalias !235
  unreachable

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.am, %bb.ak, %bb.ae
  %.sroa.460.0.ph.i.i = phi i64 [ %.sroa.016.1.i27.i.i, %bb.am ], [ %i.dk, %bb.ao ], [ %i.dm, %bb.ap ], [ %.sroa.016.1.i27.i.i, %bb.ak ], [ %i.cp, %bb.ae ]
  %.sroa.661.0.ph.i.i = phi i32 [ %.sroa.02.1.i28.i.i, %bb.am ], [ %i.dl, %bb.ao ], [ %i.dn, %bb.ap ], [ %.sroa.02.1.i28.i.i, %bb.ak ], [ 0, %bb.ae ]
  %i.do = mul i64 %.sroa.23.0.copyload, %i.bh     ; 2 uses
  %i.dp = sdiv i64 %i.do, 1000000000
  %i.dq = srem i64 %i.do, 1000000000
  %i.dr = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.sroa.460.0.ph.i.i, i64 %i.dp) ; 2 uses
  %i.ds = extractvalue { i64, i1 } %i.dr, 0       ; 4 uses
  %i.dt = extractvalue { i64, i1 } %i.dr, 1
  br i1 %i.dt, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit42.i.i, label %bb.ar, !prof !8

bb.ar:                                            ; preds = %bb.aq
  %i.du = trunc nsw i64 %i.dq to i32
  %i.dv = add i32 %.sroa.661.0.ph.i.i, %i.du      ; 6 uses
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %_RNvMs1_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span21to_invariant_duration.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dx = icmp sgt i32 %i.dv, 999999999
  br i1 %i.dx, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dy = icmp slt i32 %i.dv, -999999999
  br i1 %i.dy, label %bb.av, label %bb.ax

bb.au:                                            ; preds = %bb.as
  %i.dz = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ds, i64 1) ; 2 uses
  %i.ea = extractvalue { i64, i1 } %i.dz, 1
  br i1 %i.ea, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit42.i.i, label %bb.ay, !prof !8

bb.av:                                            ; preds = %bb.at
  %i.eb = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ds, i64 -1) ; 2 uses
  %i.ec = extractvalue { i64, i1 } %i.eb, 1
  br i1 %i.ec, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit42.i.i, label %bb.aw, !prof !8

bb.aw:                                            ; preds = %bb.av
  %i.ed = extractvalue { i64, i1 } %i.eb, 0
  %i.ee = add nsw i32 %i.dv, 1000000000
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ay, %bb.aw, %bb.at
  %.sroa.016.1.i35.i.i = phi i64 [ %i.eh, %bb.ay ], [ %i.ed, %bb.aw ], [ %i.ds, %bb.at ] ; 7 uses
  %.sroa.02.1.i36.i.i = phi i32 [ %i.ei, %bb.ay ], [ %i.ee, %bb.aw ], [ %i.dv, %bb.at ] ; 6 uses
  %i.ef = icmp eq i64 %.sroa.016.1.i35.i.i, 0
  %i.eg = icmp eq i32 %.sroa.02.1.i36.i.i, 0
  %or.cond.i37.i.i = select i1 %i.ef, i1 true, i1 %i.eg
  br i1 %or.cond.i37.i.i, label %_RNvMs1_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span21to_invariant_duration.exit.i, label %bb.az

bb.ay:                                            ; preds = %bb.au
  %i.eh = extractvalue { i64, i1 } %i.dz, 0
  %i.ei = add nsw i32 %i.dv, -1000000000
  br label %bb.ax

bb.az:                                            ; preds = %bb.ax
  %i.ej = tail call i64 @llvm.scmp.i64.i64(i64 %.sroa.016.1.i35.i.i, i64 0)
  %i.ek = tail call i64 @llvm.scmp.i64.i32(i32 %.sroa.02.1.i36.i.i, i32 0)
  %.not.i38.i.i = icmp eq i64 %i.ej, %i.ek
  br i1 %.not.i38.i.i, label %_RNvMs1_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span21to_invariant_duration.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.el = icmp slt i64 %.sroa.016.1.i35.i.i, 0
  br i1 %i.el, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.em = add nsw i64 %.sroa.016.1.i35.i.i, -1
  %i.en = add nsw i32 %.sroa.02.1.i36.i.i, 1000000000
  br label %_RNvMs1_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span21to_invariant_duration.exit.i

bb.bc:                                            ; preds = %bb.ba
  %i.eo = add nsw i64 %.sroa.016.1.i35.i.i, 1
  %i.ep = add nsw i32 %.sroa.02.1.i36.i.i, -1000000000
  br label %_RNvMs1_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span21to_invariant_duration.exit.i

_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit34.i.i: ; preds = %bb.ai, %bb.ah, %bb.ad
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #27, !noalias !235
  unreachable

_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit42.i.i: ; preds = %bb.av, %bb.au, %bb.aq
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #27, !noalias !235
  unreachable

_RNvMs1_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span21to_invariant_duration.exit.i: ; preds = %bb.bc, %bb.bb, %bb.az, %bb.ax, %bb.ar
  %.sroa.464.0.ph.i.i = phi i64 [ %.sroa.016.1.i35.i.i, %bb.az ], [ %i.em, %bb.bb ], [ %i.eo, %bb.bc ], [ %.sroa.016.1.i35.i.i, %bb.ax ], [ %i.ds, %bb.ar ]
  %.sroa.665.0.ph.i.i = phi i32 [ %.sroa.02.1.i36.i.i, %bb.az ], [ %i.en, %bb.bb ], [ %i.ep, %bb.bc ], [ %.sroa.02.1.i36.i.i, %bb.ax ], [ 0, %bb.ar ]
  %i.eq = sext i64 %.sroa.464.0.ph.i.i to i128
  %i.er = mul nsw i128 %i.eq, 1000000000
  %i.es = sext i32 %.sroa.665.0.ph.i.i to i128
  %i.et = shl i64 %.sroa.022.0.copyload, 24
  %i.eu = ashr i64 %i.et, 56
  %i.ev = mul nsw i64 %i.eu, 3600000000000
  %i.ew = shl i64 %.sroa.022.0.copyload, 16
  %i.ex = ashr i64 %i.ew, 56
  %i.ey = mul nsw i64 %i.ex, 60000000000
  %i.ez = shl i64 %.sroa.022.0.copyload, 8
  %i.fa = ashr i64 %i.ez, 56
  %i.fb = mul nsw i64 %i.fa, 1000000000
  %i.fc = shl i64 %.sroa.022.0.copyload, 32
  %i.fd = ashr exact i64 %i.fc, 32
  %i.fe = add nsw i64 %i.ey, %i.fd
  %i.ff = add nsw i64 %i.fe, %i.ev
  %i.fg = add nsw i64 %i.ff, %i.fb
  %i.fh = sext i64 %i.fg to i128
  %i.fi = add nsw i128 %i.es, %i.fh
  %i.fj = add nsw i128 %i.fi, %i.er
  %.frozen = freeze i128 %i.fj                    ; 2 uses
  %i.fk = sdiv i128 %.frozen, 86400000000000      ; 2 uses
  %i.fl = mul i128 %i.fk, 86400000000000
  %.decomposed = sub i128 %.frozen, %i.fl         ; 3 uses
  %.lobit.i.i = ashr i128 %.decomposed, 127
  %.sroa.0.0.i38.i = add nsw i128 %.lobit.i.i, %i.fk ; 2 uses
  %i.fm = trunc nsw i128 %.sroa.0.0.i38.i to i64  ; 4 uses
  %i.fn = add nsw i64 %i.fm, -7304485
  %or.cond.i39.i = icmp ult i64 %i.fn, -14608969
  br i1 %or.cond.i39.i, label %bb.bd, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i: ; preds = %_RNvMs1_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span21to_invariant_duration.exit.i
  %i.fo = icmp slt i128 %.decomposed, 0
  %i.fp = select i1 %i.fo, i128 86400000000000, i128 0
  %spec.select.i.i = add nsw i128 %i.fp, %.decomposed
  %.sroa.622.0.extract.trunc.i.i = trunc i128 %.sroa.0.0.i38.i to i32 ; 2 uses
  %i.fq = icmp slt i64 %i.fm, 0
  %i.fr = sub nsw i32 0, %.sroa.622.0.extract.trunc.i.i
  %.sroa.016.0.i.i = select i1 %i.fq, i32 %i.fr, i32 %.sroa.622.0.extract.trunc.i.i
  %i.fs = icmp eq i64 %i.fm, 0
  %masksel.i.i = select i1 %i.fs, i16 0, i16 64
  %.sroa.0.0.i.i.i = tail call i8 @llvm.scmp.i8.i64(i64 %i.fm, i64 0)
  %i.ft = trunc nsw i128 %spec.select.i.i to i64  ; 4 uses
  %or.cond.i.i221 = icmp ult i64 %i.ft, 86400000000000
  br i1 %or.cond.i.i221, label %bb.be, label %bb.bi, !prof !9

bb.bd:                                            ; preds = %_RNvMs1_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span21to_invariant_duration.exit.i
  %i.fu = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef 27), !noalias !236 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.fu, ptr %i.c, align 8
  %i.fv = invoke noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error5civilNtB4_5ErrorNtB6_9IntoError10into_error(i8 noundef 4)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultTNtNtNtBa_5civil4time4TimeNtNtBa_4span4SpanENtB8_5ErrorEINtB8_12ErrorContextB1b_B1T_E7contextNtNtB8_5civil5ErrorE0Ba_.exit unwind label %bb.bo

bb.be:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i
  %i.fw = icmp eq i64 %i.ft, 0
  br i1 %i.fw, label %bb.bs, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fx = udiv i64 %i.ft, 3600000000000           ; 3 uses
  %i.fy = urem i64 %i.ft, 3600000000000           ; 3 uses
  %i.fz = icmp eq i64 %i.fy, 0
  br i1 %i.fz, label %bb.bs, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ga = udiv i64 %i.fy, 60000000000             ; 2 uses
  %i.gb = urem i64 %i.fy, 60000000000             ; 3 uses
  %i.gc = icmp eq i64 %i.gb, 0
  br i1 %i.gc, label %bb.bs, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gd = udiv i64 %i.gb, 1000000000
  %i.ge = urem i64 %i.gb, 1000000000
  %i.gf = shl nuw nsw i64 %i.gd, 48
  br label %bb.bs

bb.bi:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i
  %i.gg = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 255) #24, !noalias !237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !238
  store ptr %i.gg, ptr %i.d, align 8, !noalias !238
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #28
          to label %bb.bm unwind label %bb.bj, !noalias !239

bb.bj:                                            ; preds = %bb.bi
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  call void @llvm.experimental.noalias.scope.decl(metadata !241), !noalias !242
  %i.gi = load ptr, ptr %i.d, align 8, !alias.scope !243, !noalias !239, !noundef !4 ; 2 uses
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %common.resume, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gk = atomicrmw add ptr %i.gi, i64 -1 release, align 8, !noalias !244
  %i.gl = icmp eq i64 %i.gk, 1
  br i1 %i.gl, label %bb.bl, label %common.resume

bb.bl:                                            ; preds = %bb.bk
  fence acquire, !noalias !242
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #24
          to label %common.resume unwind label %bb.bn, !noalias !245

bb.bm:                                            ; preds = %bb.bi
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !239
  unreachable

bb.bo:                                            ; preds = %bb.bd
  %i.gn = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.go = icmp eq ptr %i.fu, null
  br i1 %i.go, label %common.resume, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gp = atomicrmw add ptr %i.fu, i64 -1 release, align 8, !noalias !246
  %i.gq = icmp eq i64 %i.gp, 1
  br i1 %i.gq, label %bb.bq, label %common.resume

bb.bq:                                            ; preds = %bb.bp
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #24
          to label %common.resume unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultTNtNtNtBa_5civil4time4TimeNtNtBa_4span4SpanENtB8_5ErrorEINtB8_12ErrorContextB1b_B1T_E7contextNtNtB8_5civil5ErrorE0Ba_.exit: ; preds = %bb.bd
  %i.gs = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.fu, ptr noundef %i.fv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gs, ptr %i.gt, align 8
  br label %bb.cf

bb.bs:                                            ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.be
  %.sroa.5.0.i.i = phi i64 [ 0, %bb.be ], [ 0, %bb.bf ], [ 0, %bb.bg ], [ %i.gf, %bb.bh ]
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.be ], [ 0, %bb.bf ], [ %i.ga, %bb.bg ], [ %i.ga, %bb.bh ]
  %.sroa.3.0.i41.i = phi i64 [ 0, %bb.be ], [ %i.fx, %bb.bf ], [ %i.fx, %bb.bg ], [ %i.fx, %bb.bh ]
  %.sroa.0.0.i42.i = phi i64 [ 0, %bb.be ], [ 0, %bb.bf ], [ 0, %bb.bg ], [ %i.ge, %bb.bh ]
  %.sroa.4.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.4.0.i.i, 40
  %.sroa.4.0.insert.insert.i.i = or i64 %.sroa.4.0.insert.shift.i.i, %.sroa.5.0.i.i
  %.sroa.3.0.insert.ext.i.i = shl nuw nsw i64 %.sroa.3.0.i41.i, 32
  %.sroa.3.0.insert.shift.i.i = and i64 %.sroa.3.0.insert.ext.i.i, 1095216660480
  %i.gu = or disjoint i64 %.sroa.4.0.insert.insert.i.i, %.sroa.0.0.i42.i
  %.sroa.0397.4.insert.insert = or disjoint i64 %i.gu, %.sroa.3.0.insert.shift.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %.sroa.8599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false)
  store i32 %.sroa.27.0.copyload, ptr %.sroa.8599.0..sroa_idx, align 8
  %.sroa.9600.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  store i32 %.sroa.30.0.copyload, ptr %.sroa.9600.0..sroa_idx, align 4
  %.sroa.10601.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i64 %i.p, ptr %.sroa.10601.0..sroa_idx, align 8
  %.sroa.11602.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i16 %i.af, ptr %.sroa.11602.0..sroa_idx, align 8
  %.sroa.12603.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 58
  store i16 %.sroa.43.0.copyload, ptr %.sroa.12603.0..sroa_idx, align 2
  %.sroa.13604.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 60
  store i32 %.sroa.24720.60.insert.insert, ptr %.sroa.13604.0..sroa_idx, align 4
  call fastcc void @_RNvMso_NtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB5_14DateArithmetic11checked_add(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.k, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(64) %i.i, i32 noundef %.sroa.020.0.copyload) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.gv = load i16, ptr %i.k, align 8, !range !10, !noundef !4
  %i.gw = trunc nuw i16 %i.gv to i1
  br i1 %i.gw, label %bb.bt, label %bb.by

bb.bt:                                            ; preds = %bb.bs
  %i.gx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.gy, ptr %i.b, align 8
  %i.gz = invoke noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error5civilNtB4_5ErrorNtB6_9IntoError10into_error(i8 noundef 2)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_5civil4date4DateNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtB8_5civil5ErrorE0Ba_.exit unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ha = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.hb = icmp eq ptr %i.gy, null
  br i1 %i.hb, label %common.resume, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hc = atomicrmw add ptr %i.gy, i64 -1 release, align 8, !noalias !247
  %i.hd = icmp eq i64 %i.hc, 1
  br i1 %i.hd, label %bb.bw, label %common.resume

bb.bw:                                            ; preds = %bb.bv
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #24
          to label %common.resume unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.he = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_5civil4date4DateNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtB8_5civil5ErrorE0Ba_.exit: ; preds = %bb.bt
  %i.hf = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.gy, ptr noundef %i.gz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hf, ptr %i.hg, align 8
  br label %bb.cf

bb.by:                                            ; preds = %bb.bs
  %i.hh = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %.sroa.018.0.copyload = load i32, ptr %i.hh, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, i8 0, i64 48, i1 false)
  %.sroa.026.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i32 %.sroa.016.0.i.i, ptr %.sroa.026.sroa.4.0..sroa_idx, align 8
  %.sroa.026.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  store i32 0, ptr %.sroa.026.sroa.5.0..sroa_idx, align 4
  %.sroa.026.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i16 %masksel.i.i, ptr %.sroa.026.sroa.6.0..sroa_idx, align 8
  %.sroa.026.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 58
  store i16 0, ptr %.sroa.026.sroa.7.0..sroa_idx, align 2
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 60
  store i8 %.sroa.0.0.i.i.i, ptr %.sroa.427.0..sroa_idx, align 4
  call fastcc void @_RNvMso_NtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB5_14DateArithmetic11checked_add(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.j, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(64) %i.h, i32 noundef %.sroa.018.0.copyload) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.hi = load i16, ptr %i.j, align 8, !range !10, !noundef !4
  %i.hj = trunc nuw i16 %i.hi to i1
  br i1 %i.hj, label %bb.bz, label %bb.ce

bb.bz:                                            ; preds = %bb.by
  %i.hk = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.hl, ptr %i.a, align 8
  %i.hm = invoke noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error5civilNtB4_5ErrorNtB6_9IntoError10into_error(i8 noundef 3)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_5civil4date4DateNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtB8_5civil5ErrorE0Ba_.exit226 unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hn = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ho = icmp eq ptr %i.hl, null
end_hunk_0
begin_hunk_1_@_RNvMsC_NtNtCsa9sSWSfjDbm_4jiff5civil8datetimeNtB5_13DateTimeRound5round:bb.a
  %.sroa.9.1.ph = phi ptr [ %i.n, %bb.c ], [ %i.u, %bb.m ], [ %i.s, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !314
  store ptr %.sroa.9.1.ph, ptr %i.c, align 8, !noalias !314
  %i.x = invoke noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB4_22RoundingIncrementErrorNtB6_9IntoError10into_error(i8 noundef 0)
          to label %bb.u unwind label %bb.o, !noalias !314

bb.o:                                             ; preds = %bb.n
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.z = icmp eq ptr %.sroa.9.1.ph, null
  br i1 %i.z, label %common.resume, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = atomicrmw add ptr %.sroa.9.1.ph, i64 -1 release, align 8, !noalias !315
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.q, label %common.resume

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #24
          to label %common.resume unwind label %bb.r, !noalias !314

bb.r:                                             ; preds = %bb.q
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !314
  unreachable

common.resume:                                    ; preds = %bb.ar, %bb.as, %bb.at, %bb.al, %bb.am, %bb.an, %bb.ah, %bb.af, %bb.ag, %bb.o, %bb.p, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.dl, %bb.al ], [ %i.y, %bb.o ], [ %i.cr, %bb.ah ], [ %i.y, %bb.q ], [ %i.y, %bb.p ], [ %i.cr, %bb.ag ], [ %i.cr, %bb.af ], [ %i.dl, %bb.an ], [ %i.dl, %bb.am ], [ %i.du, %bb.at ], [ %i.du, %bb.as ], [ %i.du, %bb.ar ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ad, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_5civil4date4DateNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtB8_5civil5ErrorE0Ba_.exit, %bb.y, %bb.av, %bb.s
  %.sink = phi i32 [ 1, %bb.u ], [ 1, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_5civil4date4DateNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtB8_5civil5ErrorE0Ba_.exit ], [ 1, %bb.y ], [ 0, %bb.av ], [ 0, %bb.s ]
  store i32 %.sink, ptr %0, align 8
  ret void

bb.u:                                             ; preds = %bb.n
  %i.ae = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.9.1.ph, ptr noundef %i.x), !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !314
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.af, align 8
  br label %bb.t

bb.v:                                             ; preds = %.thread.i
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ah = load i8, ptr %i.ag, align 4, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !4
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.al = load i8, ptr %i.ak, align 2, !noundef !4
  %i.am = load i32, ptr %2, align 4, !noundef !4
  %i.an = sext i8 %i.ah to i64
  %i.ao = mul nsw i64 %i.an, 3600000000000
  %i.ap = sext i8 %i.aj to i64
  %i.aq = mul nsw i64 %i.ap, 60000000000
  %i.ar = add nsw i64 %i.aq, %i.ao
  %i.as = sext i8 %i.al to i64
  %i.at = mul nsw i64 %i.as, 1000000000
  %i.au = add nsw i64 %i.ar, %i.at
  %i.av = sext i32 %i.am to i64
  %i.aw = add nsw i64 %i.au, %i.av                ; 2 uses
  %i.ax = sdiv i64 %i.aw, 1000000000
  %i.ay = srem i64 %i.aw, 1000000000
  %i.az = trunc nsw i64 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load i16, ptr %i.ba, align 4, !noundef !4 ; 2 uses
  %.sroa.02.0 = tail call i64 @llvm.scmp.i64.i16(i16 %i.bb, i16 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.bd = load i8, ptr %i.bc, align 1, !range !12, !noundef !4
  %i.be = tail call { i64, i32 } @_RNvMsp_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Unit8duration(i8 noundef %i.i), !noalias !316 ; 2 uses
  %i.bf = extractvalue { i64, i32 } %i.be, 0
  %i.bg = extractvalue { i64, i32 } %i.be, 1
  %i.bh = sext i32 %i.bg to i64
  %i.bi = mul nsw i64 %i.k, %i.bh                 ; 2 uses
  %i.bj = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.bf, i64 %i.k) ; 2 uses
  %i.bk = extractvalue { i64, i1 } %i.bj, 1
  br i1 %i.bk, label %bb.x, label %bb.w, !prof !8

bb.w:                                             ; preds = %bb.v
  %i.bl = extractvalue { i64, i1 } %i.bj, 0
  %i.bm = sdiv i64 %i.bi, 1000000000
  %i.bn = srem i64 %i.bi, 1000000000
  %i.bo = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bl, i64 %i.bm) ; 2 uses
  %i.bp = extractvalue { i64, i1 } %i.bo, 1
  br i1 %i.bp, label %bb.x, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment5round.exit, !prof !8

bb.x:                                             ; preds = %bb.w, %bb.v
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #27, !noalias !316
  unreachable

_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment5round.exit: ; preds = %bb.w
  %i.bq = trunc nsw i64 %i.bn to i32
  %i.br = extractvalue { i64, i1 } %i.bo, 0
  call void @_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff4util5roundNtB5_9RoundMode17round_by_duration(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i8 noundef range(i8 0, 9) %i.bd, i64 noundef %i.ax, i32 noundef %i.az, i64 noundef %i.br, i32 noundef %i.bq), !noalias !317
  %i.bs = load i64, ptr %i.g, align 8, !range !13, !noundef !4
  %i.bt = trunc nuw i64 %i.bs to i1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %i.bt, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment5round.exit
  %i.bv = load ptr, ptr %i.bu, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bv, ptr %i.bw, align 8
  br label %bb.t

bb.z:                                             ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment5round.exit
  %i.bx = load i64, ptr %i.bu, align 8, !noundef !4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bz = load i32, ptr %i.by, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ca = sdiv i64 %i.bx, 86400
  %i.cb = srem i64 %i.bx, 86400                   ; 3 uses
  %i.cc = mul nsw i64 %i.ca, %.sroa.02.0
  %.not.i.i = icmp slt i64 %i.cb, 0
  br i1 %.not.i.i, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.thread, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.z
  %i.cd = icmp eq i64 %i.cb, 0
  br i1 %i.cd, label %bb.ac, label %bb.ab

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.thread: ; preds = %bb.z
  %i.ce = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef 2), !noalias !318
  br label %bb.ae

bb.aa:                                            ; preds = %bb.ac
  %i.cf = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 5631) #24, !noalias !318
  br label %bb.ae

bb.ab:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.689.0.extract.trunc.i = trunc nuw nsw i64 %i.cb to i32 ; 2 uses
  %i.cg = udiv i32 %.sroa.689.0.extract.trunc.i, 3600 ; 2 uses
  %i.ch = urem i32 %.sroa.689.0.extract.trunc.i, 3600 ; 2 uses
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ad, %bb.ab, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.629.0.i = phi i32 [ 0, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ], [ %i.cg, %bb.ab ], [ %i.cq, %bb.ad ]
  %or.cond1.i = icmp ult i32 %i.bz, 1000000000
  br i1 %or.cond1.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit, label %bb.aa, !prof !9

bb.ad:                                            ; preds = %bb.ab
  %.lhs.trunc = trunc nuw nsw i32 %i.ch to i16    ; 2 uses
  %i.cj = udiv i16 %.lhs.trunc, 60
  %i.ck = urem i16 %.lhs.trunc, 60
  %i.cl = zext nneg i16 %i.ck to i32
  %i.cm = shl nuw nsw i16 %i.cj, 8
  %i.cn = zext nneg i16 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cl, 16
  %i.cp = or disjoint i32 %i.co, %i.cn
  %i.cq = or i32 %i.cp, %i.cg
  br label %bb.ac

bb.ae:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.thread, %bb.aa
  %.sroa.739.0.ph = phi ptr [ %i.cf, %bb.aa ], [ %i.ce, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !319
  store ptr %.sroa.739.0.ph, ptr %i.d, align 8, !noalias !319
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #28
          to label %bb.ai unwind label %bb.af, !noalias !320

bb.af:                                            ; preds = %bb.ae
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  call void @llvm.experimental.noalias.scope.decl(metadata !322), !noalias !320
  %i.cs = load ptr, ptr %i.d, align 8, !alias.scope !323, !noalias !320, !noundef !4 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %common.resume, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cu = atomicrmw add ptr %i.cs, i64 -1 release, align 8, !noalias !324
  %i.cv = icmp eq i64 %i.cu, 1
  br i1 %i.cv, label %bb.ah, label %common.resume

bb.ah:                                            ; preds = %bb.ag
  fence acquire, !noalias !320
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #24
          to label %common.resume unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ae
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !320
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit: ; preds = %bb.ac
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.cy = load i8, ptr %i.cx, align 1, !noundef !4
  %i.cz = sext i8 %i.cy to i64
  %i.da = add nsw i64 %i.cc, -1
  %i.db = add nsw i64 %i.da, %i.cz                ; 5 uses
  %i.dc = add nsw i64 %i.db, -7304485
  %or.cond.i28 = icmp ult i64 %i.dc, -14608969
  br i1 %or.cond.i28, label %bb.ak, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.de = load i8, ptr %i.dd, align 2, !noundef !4
  %.sroa.423.0.insert.ext = zext i8 %i.de to i32
  %.sroa.423.0.insert.shift = shl nuw nsw i32 %.sroa.423.0.insert.ext, 16
  %.sroa.022.0.insert.ext = zext i16 %i.bb to i32
  %.sroa.423.0.insert.insert = or disjoint i32 %.sroa.423.0.insert.shift, %.sroa.022.0.insert.ext
  %.sroa.022.0.insert.insert = or disjoint i32 %.sroa.423.0.insert.insert, 16777216
  %.sroa.622.0.extract.trunc.i = trunc nsw i64 %i.db to i32 ; 2 uses
  %i.df = icmp slt i64 %i.db, 0
  %i.dg = sub nsw i32 0, %.sroa.622.0.extract.trunc.i
  %.sroa.016.0.i = select i1 %i.df, i32 %i.dg, i32 %.sroa.622.0.extract.trunc.i
  %i.dh = icmp eq i64 %i.db, 0
  %masksel.i = select i1 %i.dh, i16 0, i16 64
  %.sroa.0.0.i.i = tail call i8 @llvm.scmp.i8.i64(i64 %i.db, i64 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.sroa.1072.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  store i32 %.sroa.016.0.i, ptr %.sroa.1072.0..sroa_idx, align 8
  %.sroa.1173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  store i32 0, ptr %.sroa.1173.0..sroa_idx, align 4
  %.sroa.1274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i16 %masksel.i, ptr %.sroa.1274.0..sroa_idx, align 8
  %.sroa.1375.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  store i16 0, ptr %.sroa.1375.0..sroa_idx, align 2
  %.sroa.1476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  store i8 %.sroa.0.0.i.i, ptr %.sroa.1476.0..sroa_idx, align 4
  call fastcc void @_RNvMso_NtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB5_14DateArithmetic11checked_add(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(64) %i.e, i32 noundef %.sroa.022.0.insert.insert) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.di = load i16, ptr %i.f, align 8, !range !10, !noundef !4
  %i.dj = trunc nuw i16 %i.di to i1
  br i1 %i.dj, label %bb.aq, label %bb.av

bb.ak:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit
  %i.dk = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef 27), !noalias !325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !326
  store ptr %i.dk, ptr %i.b, align 8, !noalias !326
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 31, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #28
          to label %bb.ao unwind label %bb.al, !noalias !327

bb.al:                                            ; preds = %bb.ak
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !328)
  call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.dm = load ptr, ptr %i.b, align 8, !alias.scope !330, !noalias !326, !noundef !4 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %common.resume, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.do = atomicrmw add ptr %i.dm, i64 -1 release, align 8, !noalias !331
  %i.dp = icmp eq i64 %i.do, 1
  br i1 %i.dp, label %bb.an, label %common.resume

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #24
          to label %common.resume unwind label %bb.ap, !noalias !327

bb.ao:                                            ; preds = %bb.ak
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !327
  unreachable

bb.aq:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ds, ptr %i.a, align 8
  %i.dt = invoke noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error5civilNtB4_5ErrorNtB6_9IntoError10into_error(i8 noundef 0)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_5civil4date4DateNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtB8_5civil5ErrorE0Ba_.exit unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.dv = icmp eq ptr %i.ds, null
  br i1 %i.dv, label %common.resume, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dw = atomicrmw add ptr %i.ds, i64 -1 release, align 8, !noalias !332
  %i.dx = icmp eq i64 %i.dw, 1
  br i1 %i.dx, label %bb.at, label %common.resume

bb.at:                                            ; preds = %bb.as
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #24
          to label %common.resume unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_5civil4date4DateNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtB8_5civil5ErrorE0Ba_.exit: ; preds = %bb.aq
  %i.dz = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.ds, ptr noundef %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dz, ptr %i.ea, align 8
  br label %bb.t

bb.av:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.sroa.025.0.copyload = load i32, ptr %i.eb, align 2
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bz, ptr %i.ec, align 4
  %.sroa_idx37 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.629.0.i, ptr %.sroa_idx37, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.025.0.copyload, ptr %.sroa.4.0..sroa_idx, align 4
  br label %bb.t
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsD_NtNtCsa9sSWSfjDbm_4jiff5civil4timeNtB5_9TimeRound5round(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i8, ptr %i.d, align 8, !range !7, !noundef !4 ; 5 uses
  %i.f = load i64, ptr %1, align 8, !noundef !4   ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.g = icmp samesign ult i8 %i.e, 6
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.014.1.insert.ext.i = zext nneg i8 %i.e to i24
  %.sroa.014.1.insert.shift.i = shl nuw nsw i24 %.sroa.014.1.insert.ext.i, 8
  %.sroa.014.1.insert.insert.i = or disjoint i24 %.sroa.014.1.insert.shift.i, 8
  %i.h = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff5error4unitNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_15UnitConfigErrorE4from(i24 %.sroa.014.1.insert.insert.i) #24, !noalias !363
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.i = zext nneg i8 %i.e to i64
  %i.j = getelementptr inbounds nuw i8, ptr @33, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !range !6, !alias.scope !362, !noundef !4 ; 2 uses
  %i.l = add i64 %i.f, -1000000001
  %or.cond.i18 = icmp ult i64 %i.l, -1000000000
  br i1 %or.cond.i18, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.c
  switch i8 %i.k, label %default.unreachable [
    i8 0, label %.thread.i
    i8 1, label %bb.d
    i8 2, label %bb.k
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.h
    i8 8, label %bb.h
    i8 9, label %bb.i
    i8 10, label %bb.i
    i8 11, label %bb.j
  ]

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i: ; preds = %bb.c
  %i.m = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef 10), !noalias !363
  br label %bb.m

default.unreachable:                              ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  unreachable

bb.d:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %.thread.i

bb.e:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %bb.k

bb.f:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %bb.k

bb.g:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %bb.k

bb.h:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %bb.k

bb.i:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %bb.k

bb.j:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.08.0.i = phi i64 [ 2, %bb.j ], [ 60, %bb.i ], [ 1000, %bb.h ], [ 86400, %bb.e ], [ 1440, %bb.f ], [ 24, %bb.g ], [ 86400000, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ] ; 2 uses
  %i.n = icmp samesign ult i64 %i.f, %.sroa.08.0.i
  br i1 %i.n, label %.thread.i, label %bb.l

bb.l:                                             ; preds = %.thread.i, %bb.k
  %.sroa.020.1.insert.ext.i = zext nneg i8 %i.k to i24
  %.sroa.020.1.insert.shift.i = shl nuw nsw i24 %.sroa.020.1.insert.ext.i, 8
  %.sroa.020.2.insert.ext.i = zext nneg i8 %i.e to i24
  %.sroa.020.2.insert.shift.i = shl nuw nsw i24 %.sroa.020.2.insert.ext.i, 16
  %.sroa.020.1.insert.insert.i = or disjoint i24 %.sroa.020.2.insert.shift.i, %.sroa.020.1.insert.shift.i
  %.sroa.020.2.insert.insert.i = or disjoint i24 %.sroa.020.1.insert.insert.i, 3
  %i.o = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff5error4unitNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_15UnitConfigErrorE4from(i24 %.sroa.020.2.insert.insert.i) #24, !noalias !363
  br label %bb.m

.thread.i:                                        ; preds = %bb.k, %bb.d, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.08.028.i = phi i64 [ %.sroa.08.0.i, %bb.k ], [ 86400000000000, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ], [ 86400000000, %bb.d ]
  %i.p = urem i64 %.sroa.08.028.i, %i.f
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.s, label %bb.l

bb.m:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i, %bb.l, %bb.b
  %.sroa.9.1.ph = phi ptr [ %i.h, %bb.b ], [ %i.o, %bb.l ], [ %i.m, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !364
end_hunk_1
