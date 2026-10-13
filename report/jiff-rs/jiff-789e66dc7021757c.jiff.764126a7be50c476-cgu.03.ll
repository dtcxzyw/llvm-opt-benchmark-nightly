Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.03?download=true
inline.NumInlined: 359
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RINvMNtNtCsa9sSWSfjDbm_4jiff3fmt8temporalNtB3_14DateTimeParser11parse_zonedReEB7_:bb.a

bb.av:                                            ; preds = %bb.au, %bb.at
  %.lcssa632.i = phi i8 [ %i.ed, %bb.at ], [ %i.ef, %bb.au ]
  %i.ei = tail call noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef 1, i8 %.lcssa632.i) #16, !noalias !584
  br label %bb.ay

bb.aw:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit.i
  %i.ej = tail call noundef i8 @_RNvXsa_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_3DayNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #16, !noalias !584
  %i.ek = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %i.ej), !noalias !584
  br label %bb.ay

bb.ax:                                            ; preds = %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_date_separator.exit.i.i
  %i.el = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 19) #16, !noalias !585
  br label %bb.di

bb.ay:                                            ; preds = %bb.aw, %bb.av
  %.sroa.7390.0.ph.i = phi ptr [ %i.ek, %bb.aw ], [ %i.ei, %bb.av ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !586
  store ptr %.sroa.7390.0.ph.i, ptr %i.af, align 8, !noalias !586
  %i.em = invoke noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB2_5ErrorNtB6_9IntoError10into_error(i64 44)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit82.i unwind label %bb.az, !noalias !587

bb.az:                                            ; preds = %bb.ay
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.eo = icmp eq ptr %.sroa.7390.0.ph.i, null
  br i1 %i.eo, label %common.resume.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ep = atomicrmw sub ptr %.sroa.7390.0.ph.i, i64 1 release, align 8, !noalias !588
  %i.eq = icmp eq i64 %i.ep, 1
  br i1 %i.eq, label %bb.bb, label %common.resume.i

bb.bb:                                            ; preds = %bb.ba
  fence acquire, !noalias !589
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.af) #16
          to label %common.resume.i unwind label %bb.bc, !noalias !587

bb.bc:                                            ; preds = %bb.bb
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #17, !noalias !587
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit82.i: ; preds = %bb.ay
  %i.es = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.7390.0.ph.i, ptr noundef %i.em), !noalias !587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !586
  br label %bb.di

bb.bd:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit.i
  %i.et = add i16 %.sroa.542.0.copyload.i.i.i, 9999
  %or.cond.i83.i = icmp ult i16 %i.et, 19999
  br i1 %or.cond.i83.i, label %bb.be, label %bb.bj, !prof !6

bb.be:                                            ; preds = %bb.bd
  %i.eu = icmp samesign ugt i8 %narrow775.i, 28
  br i1 %i.eu, label %bb.bf, label %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser15parse_date_spec.exit.i.i

bb.bf:                                            ; preds = %bb.be
  %i.ev = icmp eq i8 %narrow774.i, 2
  br i1 %i.ev, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ew = srem i16 %.sroa.542.0.copyload.i.i.i, 25
  %i.ex = icmp eq i16 %i.ew, 0
  %..i.i86.i = select i1 %i.ex, i16 15, i16 3
  %i.ey = and i16 %..i.i86.i, %.sroa.542.0.copyload.i.i.i
  %i.ez = icmp eq i16 %i.ey, 0
  %spec.select.i.i.i = select i1 %i.ez, i8 29, i8 28
  br label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.fa = lshr i8 %narrow774.i, 3
  %i.fb = xor i8 %i.fa, %narrow774.i
  %i.fc = or i8 %i.fb, 30
  br label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i.i

_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i.i: ; preds = %bb.bh, %bb.bg
  %.sroa.0.0.i.i85.i = phi i8 [ %spec.select.i.i.i, %bb.bg ], [ %i.fc, %bb.bh ]
  %i.fd = icmp samesign ult i8 %.sroa.0.0.i.i85.i, %narrow775.i
  br i1 %i.fd, label %bb.bi, label %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser15parse_date_spec.exit.i.i, !prof !7

bb.bi:                                            ; preds = %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i.i
  %.sroa.530.0.insert.ext.i.i = zext i16 %.sroa.542.0.copyload.i.i.i to i32
  %.sroa.530.0.insert.shift.i.i = shl nuw i32 %.sroa.530.0.insert.ext.i.i, 16
  %i.fe = zext nneg i8 %narrow774.i to i32
  %.sroa.429.0.insert.shift.i.i = shl nuw nsw i32 %i.fe, 8
  %.sroa.429.0.insert.insert.i.i = or disjoint i32 %.sroa.429.0.insert.shift.i.i, %.sroa.530.0.insert.shift.i.i
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bd
  %.sroa.6.0.i.ph.i = phi i32 [ %.sroa.429.0.insert.insert.i.i, %bb.bi ], [ 8447, %bb.bd ]
  %i.ff = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 %.sroa.6.0.i.ph.i) #16, !noalias !565
  %i.fg = tail call fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_5civil4date4DateNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_(ptr noundef %i.ff) #18
  br label %bb.di

_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser15parse_date_spec.exit.i.i: ; preds = %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i.i, %bb.be
  %i.fh = zext nneg i8 %narrow775.i to i32
  %.sroa.518.0.insert.shift.i.i = shl nuw nsw i32 %i.fh, 24
  %i.fi = zext nneg i8 %narrow774.i to i32
  %.sroa.417.0.insert.shift.i.i = shl nuw nsw i32 %i.fi, 16
  %.sroa.417.0.insert.insert.i.i = or disjoint i32 %.sroa.518.0.insert.shift.i.i, %.sroa.417.0.insert.shift.i.i
  %.sroa.016.0.insert.ext.i.i = zext i16 %.sroa.542.0.copyload.i.i.i to i32
  %.sroa.016.0.insert.insert.i.i = or disjoint i32 %.sroa.417.0.insert.insert.i.i, %.sroa.016.0.insert.ext.i.i
  %.not.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i, label %bb.dj, label %bb.bk

bb.bk:                                            ; preds = %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser15parse_date_spec.exit.i.i
  %i.fj = load i8, ptr %i.eb, align 1, !noalias !590, !noundef !4
  switch i8 %i.fj, label %.thread722.i [
    i8 32, label %bb.bl
    i8 84, label %bb.bl
    i8 116, label %bb.bl
  ]

bb.bl:                                            ; preds = %bb.bk, %bb.bk, %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !591
  %i.fk = icmp slt i64 %.sroa.9225.0.i, 5
  br i1 %i.fk, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.ptr583.i = getelementptr inbounds nuw i8, ptr %.sroa.0224.0.i, i64 5 ; 7 uses
  %i.fl = add nsw i64 %.sroa.9225.0.i, -5         ; 6 uses
  %.sroa.0.0.i55.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.0224.0.i, i64 3
  %i.fm = load i8, ptr %.sroa.0.0.i55.ptr.i, align 1, !alias.scope !592, !noalias !593, !noundef !4 ; 2 uses
  %i.fn = add i8 %i.fm, -48                       ; 2 uses
  %or.cond.i56.i = icmp ult i8 %i.fn, 10
  br i1 %or.cond.i56.i, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %.sroa.0.0.i55.ptr.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0224.0.i, i64 4
  %i.fo = load i8, ptr %.sroa.0.0.i55.ptr.1.i, align 1, !alias.scope !592, !noalias !593, !noundef !4 ; 2 uses
  %i.fp = add i8 %i.fo, -48                       ; 2 uses
  %or.cond.i56.1.i = icmp ult i8 %i.fp, 10
  br i1 %or.cond.i56.1.i, label %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit57.i, label %bb.bo

_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit57.i: ; preds = %bb.bn
  %narrow686.i = mul nuw nsw i8 %i.fn, 10
  %narrow776.i = add nuw nsw i8 %i.fp, %narrow686.i ; 2 uses
  %i.fq = zext nneg i8 %narrow776.i to i64        ; 5 uses
  %or.cond579.i = icmp samesign ugt i8 %narrow776.i, 23
  br i1 %or.cond579.i, label %bb.bp, label %bb.bw

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.lcssa629.i = phi i8 [ %i.fm, %bb.bm ], [ %i.fo, %bb.bn ]
  %i.fr = tail call noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef 1, i8 %.lcssa629.i) #16, !noalias !594
  br label %bb.br

bb.bp:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit57.i
  %i.fs = tail call noundef i8 @_RNvXse_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_4HourNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #16, !noalias !594
  %i.ft = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %i.fs), !noalias !594
  br label %bb.br

bb.bq:                                            ; preds = %bb.bl
  %i.fu = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 20) #16, !noalias !595
  br label %bb.db

bb.br:                                            ; preds = %bb.bp, %bb.bo
  %.sroa.7334.0.ph.i = phi ptr [ %i.ft, %bb.bp ], [ %i.fr, %bb.bo ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !596
  store ptr %.sroa.7334.0.ph.i, ptr %i.ae, align 8, !noalias !596
  %i.fv = invoke noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB2_5ErrorNtB6_9IntoError10into_error(i64 45)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit93.i unwind label %bb.bs, !noalias !597

bb.bs:                                            ; preds = %bb.br
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.fx = icmp eq ptr %.sroa.7334.0.ph.i, null
  br i1 %i.fx, label %common.resume.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fy = atomicrmw sub ptr %.sroa.7334.0.ph.i, i64 1 release, align 8, !noalias !598
  %i.fz = icmp eq i64 %i.fy, 1
  br i1 %i.fz, label %bb.bu, label %common.resume.i

bb.bu:                                            ; preds = %bb.bt
  fence acquire, !noalias !599
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae) #16
          to label %common.resume.i unwind label %bb.bv, !noalias !597

bb.bv:                                            ; preds = %bb.bu
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #17, !noalias !597
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit93.i: ; preds = %bb.br
  %i.gb = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.7334.0.ph.i, ptr noundef %i.fv), !noalias !597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !596
  br label %bb.db

bb.bw:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit57.i
  %i.gc = tail call noundef zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ptr583.i, i64 noundef %i.fl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 1), !noalias !600 ; 3 uses
  br i1 %i.gc, label %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_time_separator.exit139.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gd = icmp samesign ult i64 %.sroa.9225.0.i, 7
  br i1 %i.gd, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit133.i.i.i, label %.preheader600.preheader.i

.preheader600.preheader.i:                        ; preds = %bb.bx
  %.val.i.i.i.i = load i8, ptr %.ptr583.i, align 1, !noalias !601, !noundef !4
  %i.ge = add i8 %.val.i.i.i.i, -48               ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = icmp ult i8 %i.ge, 10
  br i1 %.sroa.0.0.i.i.i.i.i.i, label %.preheader600.1.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit133.i.i.thread.i

.preheader600.1.i:                                ; preds = %.preheader600.preheader.i
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0224.0.i, i64 6
  %.val.i.i.i.1.i = load i8, ptr %.ptr.1.i, align 1, !noalias !601, !noundef !4
  %i.gf = add i8 %.val.i.i.i.1.i, -48
  %.sroa.0.0.i.i.i.i.i.1.i = icmp ult i8 %i.gf, 10
  br i1 %.sroa.0.0.i.i.i.i.i.1.i, label %.thread701.i.thread, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit133.i.i.thread.i

.thread701.i.thread:                              ; preds = %.preheader600.1.i
  %.ptr589.i59 = getelementptr inbounds nuw i8, ptr %.sroa.0224.0.i, i64 7
  %i.gg = add nsw i64 %.sroa.9225.0.i, -7
  br label %bb.bz

_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_time_separator.exit139.i.i: ; preds = %bb.bw
  %i.gh = tail call { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core5sliceSh12strip_prefixAhj1_ECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ptr583.i, i64 noundef range(i64 0, -9223372036854775808) %i.fl, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @28), !noalias !602 ; 2 uses
  %i.gi = extractvalue { ptr, i64 } %i.gh, 0      ; 4 uses
  %.not.i135.i.not.i = icmp eq ptr %i.gi, null
  br i1 %.not.i135.i.not.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit133.i.i.i, label %bb.by

bb.by:                                            ; preds = %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_time_separator.exit139.i.i
  %i.gj = extractvalue { ptr, i64 } %i.gh, 1      ; 3 uses
  %i.gk = icmp samesign ult i64 %i.gj, 2
  br i1 %i.gk, label %bb.cc, label %.thread701.i

.thread701.i:                                     ; preds = %bb.by
  %.pre = load i8, ptr %i.gi, align 1, !alias.scope !603, !noalias !604 ; 2 uses
  %.pre23.a = add i8 %.pre, -48                   ; 2 uses
  %.ptr589.i = getelementptr inbounds nuw i8, ptr %i.gi, i64 2
  %i.gl = add nsw i64 %i.gj, -2
  %or.cond.i52.i = icmp ult i8 %.pre23.a, 10
  br i1 %or.cond.i52.i, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %.thread701.i.thread, %.thread701.i
  %i.gm = phi i64 [ %i.gg, %.thread701.i.thread ], [ %i.gl, %.thread701.i ] ; 3 uses
  %.ptr589.i64 = phi ptr [ %.ptr589.i59, %.thread701.i.thread ], [ %.ptr589.i, %.thread701.i ] ; 4 uses
  %.sroa.0263.0700704.i63 = phi ptr [ %.ptr583.i, %.thread701.i.thread ], [ %i.gi, %.thread701.i ] ; 2 uses
  %.sroa.5264.0699705.i62 = phi i64 [ %i.fl, %.thread701.i.thread ], [ %i.gj, %.thread701.i ]
  %.pre-phi61 = phi i8 [ %i.ge, %.thread701.i.thread ], [ %.pre23.a, %.thread701.i ]
  %.sroa.0.0.i51.ptr.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0263.0700704.i63, i64 1
  %i.gn = load i8, ptr %.sroa.0.0.i51.ptr.1.i, align 1, !alias.scope !603, !noalias !604, !noundef !4 ; 2 uses
  %i.go = add i8 %i.gn, -48                       ; 2 uses
  %or.cond.i52.1.i = icmp ult i8 %i.go, 10
  br i1 %or.cond.i52.1.i, label %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit53.i, label %bb.ca

_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit53.i: ; preds = %bb.bz
  %narrow687.i = mul nuw nsw i8 %.pre-phi61, 10
  %narrow777.i = add nuw nsw i8 %i.go, %narrow687.i ; 2 uses
  %i.gp = zext nneg i8 %narrow777.i to i64        ; 2 uses
  %or.cond580.i = icmp samesign ugt i8 %narrow777.i, 59
  br i1 %or.cond580.i, label %bb.cb, label %bb.ci

bb.ca:                                            ; preds = %bb.bz, %.thread701.i
  %.lcssa626.i = phi i8 [ %.pre, %.thread701.i ], [ %i.gn, %bb.bz ]
  %i.gq = tail call noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef 1, i8 %.lcssa626.i) #16, !noalias !605
  br label %bb.cd

bb.cb:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit53.i
  %i.gr = tail call noundef i8 @_RNvXsw_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_6MinuteNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #16, !noalias !605
  %i.gs = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %i.gr), !noalias !605
  br label %bb.cd

bb.cc:                                            ; preds = %bb.by
  %i.gt = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 21) #16, !noalias !606
  br label %bb.db

bb.cd:                                            ; preds = %bb.cb, %bb.ca
  %.sroa.7348.0.ph.i = phi ptr [ %i.gs, %bb.cb ], [ %i.gq, %bb.ca ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !607
  store ptr %.sroa.7348.0.ph.i, ptr %i.ad, align 8, !noalias !607
  %i.gu = invoke noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB2_5ErrorNtB6_9IntoError10into_error(i64 46)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit113.i unwind label %bb.ce, !noalias !608

bb.ce:                                            ; preds = %bb.cd
  %i.gv = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.gw = icmp eq ptr %.sroa.7348.0.ph.i, null
  br i1 %i.gw, label %common.resume.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.gx = atomicrmw sub ptr %.sroa.7348.0.ph.i, i64 1 release, align 8, !noalias !609
  %i.gy = icmp eq i64 %i.gx, 1
  br i1 %i.gy, label %bb.cg, label %common.resume.i

bb.cg:                                            ; preds = %bb.cf
  fence acquire, !noalias !610
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad) #16
          to label %common.resume.i unwind label %bb.ch, !noalias !608

bb.ch:                                            ; preds = %bb.cg
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #17, !noalias !608
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit113.i: ; preds = %bb.cd
  %i.ha = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.7348.0.ph.i, ptr noundef %i.gu), !noalias !608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !607
  br label %bb.db

bb.ci:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit53.i
  br i1 %i.gc, label %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_time_separator.exit.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.hb = icmp slt i64 %.sroa.5264.0699705.i62, 4
  br i1 %i.hb, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit131.i.i.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.cj
  %.val.i.i.i122.i = load i8, ptr %.ptr589.i64, align 1, !noalias !611, !noundef !4
  %i.hc = add i8 %.val.i.i.i122.i, -48            ; 2 uses
  %.sroa.0.0.i.i.i.i.i123.i = icmp ult i8 %i.hc, 10
  br i1 %.sroa.0.0.i.i.i.i.i123.i, label %.preheader.1.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit131.i.i.i

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %.ptr588.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0263.0700704.i63, i64 3
  %.val.i.i.i122.1.i = load i8, ptr %.ptr588.1.i, align 1, !noalias !611, !noundef !4
  %i.hd = add i8 %.val.i.i.i122.1.i, -48
  %.sroa.0.0.i.i.i.i.i123.1.i = icmp ult i8 %i.hd, 10
  br i1 %.sroa.0.0.i.i.i.i.i123.1.i, label %.thread717.i.thread, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit131.i.i.i

_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_time_separator.exit.i.i: ; preds = %bb.ci
  %i.he = tail call { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core5sliceSh12strip_prefixAhj1_ECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ptr589.i64, i64 noundef range(i64 0, -9223372036854775808) %i.gm, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @28), !noalias !612 ; 2 uses
  %i.hf = extractvalue { ptr, i64 } %i.he, 0      ; 3 uses
  %.not.i134.i.not.i = icmp eq ptr %i.hf, null
  br i1 %.not.i134.i.not.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit131.i.i.i, label %bb.ck

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit131.i.i.i: ; preds = %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_time_separator.exit.i.i, %.preheader.1.i, %.preheader.preheader.i, %bb.cj
  %i.hg = shl nuw nsw i64 %i.gp, 40
  %i.hh = shl nuw nsw i64 %i.fq, 32
  %.sroa.4291.sroa.0.4.insert.shift.i = or disjoint i64 %i.hg, %i.hh ; 2 uses
  %.sroa.16.sroa.7.0.extract.shift.i = lshr exact i64 %.sroa.4291.sroa.0.4.insert.shift.i, 32
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit133.i.i.i

bb.ck:                                            ; preds = %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_time_separator.exit.i.i
  %i.hi = extractvalue { ptr, i64 } %i.he, 1      ; 2 uses
  %i.hj = icmp samesign ult i64 %i.hi, 2
  br i1 %i.hj, label %bb.cn, label %.thread717.i

.thread717.i:                                     ; preds = %bb.ck
  %.pre21 = load i8, ptr %i.hf, align 1, !alias.scope !613, !noalias !614 ; 2 uses
  %.pre24 = add i8 %.pre21, -48                   ; 2 uses
  %or.cond.i48.i = icmp ult i8 %.pre24, 10
  br i1 %or.cond.i48.i, label %.thread717.i.thread, label %bb.cl

.thread717.i.thread:                              ; preds = %.preheader.1.i, %.thread717.i
  %.sroa.0283.0716720.i71 = phi ptr [ %i.hf, %.thread717.i ], [ %.ptr589.i64, %.preheader.1.i ] ; 3 uses
  %.sroa.5284.0715721.i70 = phi i64 [ %i.hi, %.thread717.i ], [ %i.gm, %.preheader.1.i ] ; 2 uses
  %.pre-phi2569 = phi i8 [ %.pre24, %.thread717.i ], [ %i.hc, %.preheader.1.i ]
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0283.0716720.i71, i64 2 ; 2 uses
  %i.hl = add nsw i64 %.sroa.5284.0715721.i70, -2 ; 2 uses
  %.sroa.0.0.i47.ptr.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0283.0716720.i71, i64 1
  %i.hm = load i8, ptr %.sroa.0.0.i47.ptr.1.i, align 1, !alias.scope !613, !noalias !614, !noundef !4 ; 2 uses
  %i.hn = add i8 %i.hm, -48                       ; 2 uses
  %or.cond.i48.1.i = icmp ult i8 %i.hn, 10
  br i1 %or.cond.i48.1.i, label %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit49.i, label %bb.cl

_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit49.i: ; preds = %.thread717.i.thread
  %narrow688.i = mul nuw nsw i8 %.pre-phi2569, 10
  %narrow778.i = add nuw nsw i8 %i.hn, %narrow688.i ; 3 uses
  %or.cond581.i = icmp samesign ugt i8 %narrow778.i, 60
  br i1 %or.cond581.i, label %bb.cm, label %bb.cp

bb.cl:                                            ; preds = %.thread717.i.thread, %.thread717.i
  %.lcssa.i = phi i8 [ %.pre21, %.thread717.i ], [ %i.hm, %.thread717.i.thread ]
  %i.ho = tail call noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef 1, i8 %.lcssa.i) #16, !noalias !615
  br label %bb.co

bb.cm:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit49.i
  %i.hp = tail call noundef i8 @_RNvXsq_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_10LeapSecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #16, !noalias !615
  %i.hq = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %i.hp), !noalias !615
  br label %bb.co

bb.cn:                                            ; preds = %bb.ck
  %i.hr = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 23) #16, !noalias !616
  br label %bb.db

bb.co:                                            ; preds = %bb.cm, %bb.cl
  %.sroa.7362.0.ph.i = phi ptr [ %i.hq, %bb.cm ], [ %i.ho, %bb.cl ]
  %i.hs = tail call fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_(i64 48, ptr noundef %.sroa.7362.0.ph.i) #18, !noalias !617
  br label %bb.db

bb.cp:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit49.i
  %i.ht = icmp eq i8 %narrow778.i, 60
  %spec.store.select.i.i.i.i = select i1 %i.ht, i8 59, i8 %narrow778.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !619)
  %i.hu = icmp eq i64 %i.hl, 0
  br i1 %i.hu, label %.thread525.i, label %bb.cq

.thread525.i:                                     ; preds = %bb.cq, %bb.cp
  store i32 0, ptr %i.am, align 8, !alias.scope !618, !noalias !620
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit.i.i.i

bb.cq:                                            ; preds = %bb.cp
  %i.hv = load i8, ptr %i.hk, align 1, !alias.scope !619, !noalias !621, !noundef !4
  switch i8 %i.hv, label %.thread525.i [
    i8 46, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit.i
    i8 44, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit.i
  ]

_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit.i: ; preds = %bb.cq, %bb.cq
  %i.hw = add nsw i64 %.sroa.5284.0715721.i70, -3
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0283.0716720.i71, i64 3
  call void @_RNvNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction3imp(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hx, i64 noundef %i.hw) #16, !noalias !600
  %.pr524.i = load i32, ptr %i.am, align 8, !noalias !622 ; 2 uses
  %i.hy = icmp eq i32 %.pr524.i, 2
  br i1 %i.hy, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit.i
  %i.hz = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8, !noalias !622, !noundef !4
  %i.ib = tail call fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultINtNtBa_3fmt6ParsedINtNtBE_6option6OptionmEENtB8_5ErrorEINtB8_12ErrorContextB1b_B1T_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_(ptr noundef %i.ia) #18
  br label %bb.db

bb.cs:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit.i
  %.sroa.491.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %.sroa.491.0.copyload.i.i.i = load i32, ptr %.sroa.491.0..sroa_idx.i.i.i, align 4, !noalias !622 ; 3 uses
  %.sroa.592.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.592.0.copyload.i.i.i = load ptr, ptr %.sroa.592.0..sroa_idx.i.i.i, align 8, !noalias !622, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.693.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.693.0.copyload.i.i.i = load i64, ptr %.sroa.693.0..sroa_idx.i.i.i, align 8, !noalias !622 ; 2 uses
  %i.ic = trunc i32 %.pr524.i to i1
  br i1 %i.ic, label %bb.ct, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit.i.i.i

bb.ct:                                            ; preds = %bb.cs
  %i.id = icmp slt i32 %.sroa.491.0.copyload.i.i.i, 0
  br i1 %i.id, label %bb.cu, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i.i.i, !prof !8

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !622
  store i8 2, ptr %i.ak, align 1, !noalias !622
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 43, ptr noundef nonnull %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #19, !noalias !600
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i.i.i: ; preds = %bb.ct
  %or.cond3.i.i = icmp samesign ult i32 %.sroa.491.0.copyload.i.i.i, 1000000000
  br i1 %or.cond3.i.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i.i.i
  %i.ie = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 5631) #16, !noalias !600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !623
  store ptr %i.ie, ptr %i.al, align 8, !noalias !623
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 43, ptr noundef nonnull %i.al, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #20
          to label %bb.cz unwind label %bb.cw, !noalias !624

bb.cw:                                            ; preds = %bb.cv
  %i.if = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !625)
  call void @llvm.experimental.noalias.scope.decl(metadata !626), !noalias !627
  %i.ig = load ptr, ptr %i.al, align 8, !alias.scope !628, !noalias !629, !noundef !4 ; 2 uses
  %i.ih = icmp eq ptr %i.ig, null
  br i1 %i.ih, label %common.resume.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ii = atomicrmw sub ptr %i.ig, i64 1 release, align 8, !noalias !630
  %i.ij = icmp eq i64 %i.ii, 1
  br i1 %i.ij, label %bb.cy, label %common.resume.i

bb.cy:                                            ; preds = %bb.cx
  fence acquire, !noalias !627
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.al) #16
          to label %common.resume.i unwind label %bb.da, !noalias !548

bb.cz:                                            ; preds = %bb.cv
  unreachable

bb.da:                                            ; preds = %bb.cy
  %i.ik = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #17, !noalias !624
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit.i.i.i: ; preds = %bb.cs, %.thread525.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i.i.i
  %.sroa.039.0.i.i.i10 = phi i32 [ %.sroa.491.0.copyload.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i.i.i ], [ 0, %.thread525.i ], [ 0, %bb.cs ]
  %.sroa.592.0.copyload.i.i532.i9 = phi ptr [ %.sroa.592.0.copyload.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i.i.i ], [ %i.hk, %.thread525.i ], [ %.sroa.592.0.copyload.i.i.i, %bb.cs ]
  %.sroa.693.0.copyload.i.i533.i8 = phi i64 [ %.sroa.693.0.copyload.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i.i.i ], [ %i.hl, %.thread525.i ], [ %.sroa.693.0.copyload.i.i.i, %bb.cs ]
  %.sroa.13328.10.insert.ext.i = zext nneg i8 %spec.store.select.i.i.i.i to i64
  %.sroa.4305.i.sroa.0.0.insert.ext = zext nneg i32 %.sroa.039.0.i.i.i10 to i64
  %i.il = shl nuw nsw i64 %.sroa.13328.10.insert.ext.i, 48
  %i.im = shl nuw nsw i64 %i.gp, 40
  %i.in = shl nuw nsw i64 %i.fq, 32
  %i.io = or disjoint i64 %i.im, %i.in
  %.sroa.4305.i.sroa.0.4.insert.shift = or disjoint i64 %i.il, %i.io ; 2 uses
  %.sroa.4305.i.sroa.0.4.insert.insert = or disjoint i64 %.sroa.4305.i.sroa.0.4.insert.shift, %.sroa.4305.i.sroa.0.0.insert.ext
  %.sroa.16.sroa.7.0.extract.shift277.i = lshr exact i64 %.sroa.4305.i.sroa.0.4.insert.shift, 32
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit133.i.i.i

bb.db:                                            ; preds = %bb.cr, %bb.co, %bb.cn, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit113.i, %bb.cc, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit93.i, %bb.bq
  %.sroa.0213.0.ph.i = phi ptr [ %i.ib, %bb.cr ], [ %i.gt, %bb.cc ], [ %i.fu, %bb.bq ], [ %i.gb, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit93.i ], [ %i.ha, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit113.i ], [ %i.hs, %bb.co ], [ %i.hr, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !591
  br label %bb.di

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit133.i.i.thread.i: ; preds = %.preheader600.1.i, %.preheader600.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !591
  %.sroa.16.sroa.7.0.insert.shift764.i = shl nuw nsw i64 %i.fq, 32
  br label %bb.dc

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit133.i.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit131.i.i.i, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_time_separator.exit139.i.i, %bb.bx
  %.sroa.16.sroa.7.0.in.i = phi i64 [ %.sroa.16.sroa.7.0.extract.shift.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit131.i.i.i ], [ %.sroa.16.sroa.7.0.extract.shift277.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit.i.i.i ], [ %i.fq, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_time_separator.exit139.i.i ], [ %i.fq, %bb.bx ]
  %.sroa.16.sroa.0.0.i = phi i64 [ %.sroa.4291.sroa.0.4.insert.shift.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit131.i.i.i ], [ %.sroa.4305.i.sroa.0.4.insert.insert, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit.i.i.i ], [ 0, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_time_separator.exit139.i.i ], [ 0, %bb.bx ]
  %.sroa.12.0.i = phi i64 [ %i.gm, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit131.i.i.i ], [ %.sroa.693.0.copyload.i.i533.i8, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit.i.i.i ], [ %i.fl, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_time_separator.exit139.i.i ], [ %i.fl, %bb.bx ] ; 2 uses
  %.sroa.0213.0.i = phi ptr [ %.ptr589.i64, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit131.i.i.i ], [ %.sroa.592.0.copyload.i.i532.i9, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit.i.i.i ], [ %.ptr583.i, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_time_separator.exit139.i.i ], [ %.ptr583.i, %bb.bx ] ; 2 uses
  %.sroa.20214.0.i = zext i1 %i.gc to i8          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !591
  %.sroa.16.sroa.7.0.insert.shift.i = shl nuw nsw i64 %.sroa.16.sroa.7.0.in.i, 32
  %.sroa.16.sroa.0.0.insert.ext.i = and i64 %.sroa.16.sroa.0.0.i, 4294967295
  %.sroa.16.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.16.sroa.0.0.insert.ext.i, %.sroa.16.sroa.7.0.insert.shift.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !631)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632)
  %.not.i.i.i.i = icmp eq i64 %.sroa.12.0.i, 0
  br i1 %.not.i.i.i.i, label %.thread750.i, label %bb.dc

.thread750.i:                                     ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit133.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !591
  br label %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser17parse_annotations.exit.i.thread.i

bb.dc:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit133.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit133.i.i.thread.i
  %.sroa.16.sroa.0.0.insert.insert771.i = phi i64 [ %.sroa.16.sroa.7.0.insert.shift764.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit133.i.i.thread.i ], [ %.sroa.16.sroa.0.0.insert.insert.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit133.i.i.i ] ; 3 uses
  %.sroa.20214.0770.i = phi i8 [ 0, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit133.i.i.thread.i ], [ %.sroa.20214.0.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit133.i.i.i ] ; 3 uses
  %.sroa.0213.0769.i = phi ptr [ %.ptr583.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit133.i.i.thread.i ], [ %.sroa.0213.0.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit133.i.i.i ] ; 3 uses
  %.sroa.12.0768.i = phi i64 [ %i.fl, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit133.i.i.thread.i ], [ %.sroa.12.0.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit133.i.i.i ] ; 2 uses
  %4 = load i8, ptr %.sroa.0213.0769.i, align 1, !alias.scope !633, !noalias !634, !noundef !4
  switch i8 %4, label %.thread722.i [
    i8 122, label %bb.dd
    i8 90, label %bb.dd
    i8 43, label %bb.dd
    i8 45, label %bb.dd
  ]

bb.dd:                                            ; preds = %bb.dc, %bb.dc, %bb.dc, %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !635
  call void @_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser5parse(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ao, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(6) @25, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0213.0769.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.12.0768.i), !noalias !634
  %i.ip = load i32, ptr %i.ao, align 8, !range !9, !noalias !635, !noundef !4 ; 3 uses
  %i.iq = icmp eq i32 %i.ip, -1
  br i1 %i.iq, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !noalias !635, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !635
  br label %bb.di

.thread722.i:                                     ; preds = %bb.dc, %bb.bk
  %.sroa.034.0.i.ph.i = phi i64 [ %.sroa.16.sroa.0.0.insert.insert771.i, %bb.dc ], [ undef, %bb.bk ]
  %.sroa.2.0.i.ph.i = phi i8 [ %.sroa.20214.0770.i, %bb.dc ], [ 2, %bb.bk ]
  %.sroa.095.0.i.ph.i = phi ptr [ %.sroa.0213.0769.i, %bb.dc ], [ %i.eb, %bb.bk ]
  %.sroa.7100.0.i.ph.i = phi i64 [ %.sroa.12.0768.i, %bb.dc ], [ %i.ec, %bb.bk ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !591
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_14DateTimeParser17parse_annotations0EB17_.exit.i

bb.df:                                            ; preds = %bb.dd
  %.sroa.421.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %.sroa.421.0.copyload.i.i.i.i = load i32, ptr %.sroa.421.0..sroa_idx.i.i.i.i, align 4, !noalias !635 ; 2 uses
  %.sroa.522.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.522.0.copyload.i.i.i.i = load ptr, ptr %.sroa.522.0..sroa_idx.i.i.i.i, align 8, !noalias !635 ; 2 uses
  %.sroa.623.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.623.0.copyload.i.i.i.i = load ptr, ptr %.sroa.623.0..sroa_idx.i.i.i.i, align 8, !noalias !635, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.7.0.copyload.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !635 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !635
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !591
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  %.not.i.i35.i = icmp eq i64 %.sroa.7.0.copyload.i.i.i.i, 0
  br i1 %.not.i.i35.i, label %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser17parse_annotations.exit.i.thread.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_14DateTimeParser17parse_annotations0EB17_.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_14DateTimeParser17parse_annotations0EB17_.exit.i: ; preds = %bb.df, %.thread722.i
  %.sroa.7100.0.i748.i = phi i64 [ %.sroa.7100.0.i.ph.i, %.thread722.i ], [ %.sroa.7.0.copyload.i.i.i.i, %bb.df ] ; 2 uses
  %.sroa.095.0.i746.i = phi ptr [ %.sroa.095.0.i.ph.i, %.thread722.i ], [ %.sroa.623.0.copyload.i.i.i.i, %bb.df ] ; 3 uses
  %.sroa.494.0.i745.i = phi ptr [ undef, %.thread722.i ], [ %.sroa.522.0.copyload.i.i.i.i, %bb.df ] ; 2 uses
  %.sroa.393.0.i742.i = phi i32 [ undef, %.thread722.i ], [ %.sroa.421.0.copyload.i.i.i.i, %bb.df ] ; 2 uses
  %.sroa.092.0.i739.i = phi i32 [ -1, %.thread722.i ], [ %i.ip, %bb.df ] ; 2 uses
  %.sroa.2.0.i736.i = phi i8 [ %.sroa.2.0.i.ph.i, %.thread722.i ], [ %.sroa.20214.0770.i, %bb.df ] ; 2 uses
  %.sroa.034.0.i733.i = phi i64 [ %.sroa.034.0.i.ph.i, %.thread722.i ], [ %.sroa.16.sroa.0.0.insert.insert771.i, %bb.df ] ; 2 uses
  %.val.i.i = load i8, ptr %.sroa.095.0.i746.i, align 1, !alias.scope !637, !noalias !638, !noundef !4
  %.not.i = icmp eq i8 %.val.i.i, 91
  br i1 %.not.i, label %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser17parse_annotations.exit.i.i, label %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser17parse_annotations.exit.i.thread.i

_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser17parse_annotations.exit.i.thread.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_14DateTimeParser17parse_annotations0EB17_.exit.i, %bb.df, %.thread750.i
  %.sroa.7100.0.i749.i = phi i64 [ %.sroa.7100.0.i748.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_14DateTimeParser17parse_annotations0EB17_.exit.i ], [ 0, %bb.df ], [ 0, %.thread750.i ]
  %.sroa.095.0.i747.i = phi ptr [ %.sroa.095.0.i746.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_14DateTimeParser17parse_annotations0EB17_.exit.i ], [ %.sroa.623.0.copyload.i.i.i.i, %bb.df ], [ %.sroa.0213.0.i, %.thread750.i ]
  %.sroa.494.0.i744.i = phi ptr [ %.sroa.494.0.i745.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_14DateTimeParser17parse_annotations0EB17_.exit.i ], [ %.sroa.522.0.copyload.i.i.i.i, %bb.df ], [ undef, %.thread750.i ]
  %.sroa.393.0.i741.i = phi i32 [ %.sroa.393.0.i742.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_14DateTimeParser17parse_annotations0EB17_.exit.i ], [ %.sroa.421.0.copyload.i.i.i.i, %bb.df ], [ undef, %.thread750.i ]
  %.sroa.092.0.i738.i = phi i32 [ %.sroa.092.0.i739.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_14DateTimeParser17parse_annotations0EB17_.exit.i ], [ %i.ip, %bb.df ], [ -1, %.thread750.i ]
  %.sroa.2.0.i735.i = phi i8 [ %.sroa.2.0.i736.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_14DateTimeParser17parse_annotations0EB17_.exit.i ], [ %.sroa.20214.0770.i, %bb.df ], [ %.sroa.20214.0.i, %.thread750.i ]
  %.sroa.034.0.i732.i = phi i64 [ %.sroa.034.0.i733.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_14DateTimeParser17parse_annotations0EB17_.exit.i ], [ %.sroa.16.sroa.0.0.insert.insert771.i, %bb.df ], [ %.sroa.16.sroa.0.0.insert.insert.i, %.thread750.i ]
  store i8 2, ptr %i.ap, align 8, !alias.scope !636, !noalias !639
  br label %bb.dh

_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser17parse_annotations.exit.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_14DateTimeParser17parse_annotations0EB17_.exit.i
  call void @_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser5parse(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ap, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.095.0.i746.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.7100.0.i748.i), !noalias !590
  %.pr555.i = load i8, ptr %i.ap, align 8, !noalias !591 ; 2 uses
  %i.it = icmp eq i8 %.pr555.i, -1
  br i1 %i.it, label %bb.dg, label %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser17parse_annotations.exit.i._crit_edge.i

_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser17parse_annotations.exit.i._crit_edge.i: ; preds = %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser17parse_annotations.exit.i.i
  %.sroa.785.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.785.0.copyload.i.pre.i = load ptr, ptr %.sroa.785.0..sroa_idx.i.phi.trans.insert.i, align 8, !noalias !591
  %.sroa.886.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.sroa.886.0.copyload.i.pre.i = load i64, ptr %.sroa.886.0..sroa_idx.i.phi.trans.insert.i, align 8, !noalias !591
  br label %bb.dh

bb.dg:                                            ; preds = %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser17parse_annotations.exit.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !noalias !591, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !591
  br label %bb.di

bb.dh:                                            ; preds = %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser17parse_annotations.exit.i._crit_edge.i, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser17parse_annotations.exit.i.thread.i
  %.sroa.494.0.i743.i = phi ptr [ %.sroa.494.0.i744.i, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser17parse_annotations.exit.i.thread.i ], [ %.sroa.494.0.i745.i, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser17parse_annotations.exit.i._crit_edge.i ]
  %.sroa.393.0.i740.i = phi i32 [ %.sroa.393.0.i741.i, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser17parse_annotations.exit.i.thread.i ], [ %.sroa.393.0.i742.i, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser17parse_annotations.exit.i._crit_edge.i ]
  %.sroa.092.0.i737.i = phi i32 [ %.sroa.092.0.i738.i, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser17parse_annotations.exit.i.thread.i ], [ %.sroa.092.0.i739.i, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser17parse_annotations.exit.i._crit_edge.i ]
  %.sroa.2.0.i734.i = phi i8 [ %.sroa.2.0.i735.i, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser17parse_annotations.exit.i.thread.i ], [ %.sroa.2.0.i736.i, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser17parse_annotations.exit.i._crit_edge.i ]
  %.sroa.034.0.i731.i = phi i64 [ %.sroa.034.0.i732.i, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser17parse_annotations.exit.i.thread.i ], [ %.sroa.034.0.i733.i, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser17parse_annotations.exit.i._crit_edge.i ]
  %.sroa.886.0.copyload.i.i = phi i64 [ %.sroa.7100.0.i749.i, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser17parse_annotations.exit.i.thread.i ], [ %.sroa.886.0.copyload.i.pre.i, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser17parse_annotations.exit.i._crit_edge.i ]
  %.sroa.785.0.copyload.i.i = phi ptr [ %.sroa.095.0.i747.i, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser17parse_annotations.exit.i.thread.i ], [ %.sroa.785.0.copyload.i.pre.i, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser17parse_annotations.exit.i._crit_edge.i ]
  %i.iw = phi i8 [ 2, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser17parse_annotations.exit.i.thread.i ], [ %.pr555.i, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser17parse_annotations.exit.i._crit_edge.i ]
  %.sroa.482.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.23.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.482.0..sroa_idx.i.i, i64 7, i1 false), !noalias !640
  %.sroa.583.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.583.0.copyload.i.i = load ptr, ptr %.sroa.583.0..sroa_idx.i.i, align 8, !noalias !591
  %.sroa.684.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.684.0.copyload.i.i = load i64, ptr %.sroa.684.0..sroa_idx.i.i, align 8, !noalias !591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !591
  br label %bb.dj

bb.di:                                            ; preds = %bb.dg, %bb.de, %bb.db, %bb.bj, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit82.i, %bb.ax, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultINtNtBa_3fmt6ParseduENtB8_5ErrorEINtB8_12ErrorContextB1b_B1w_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit75.i, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit.i, %bb.ac, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultINtNtBa_3fmt6ParseduENtB8_5ErrorEINtB8_12ErrorContextB1b_B1w_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit.i, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser10parse_year.exit.i.i.thread.i
  %.sroa.13.0.ph.i = phi ptr [ %i.is, %bb.de ], [ %.sroa.0213.0.ph.i, %bb.db ], [ %i.iv, %bb.dg ], [ %i.fg, %bb.bj ], [ %i.df, %bb.ac ], [ %i.dz, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultINtNtBa_3fmt6ParseduENtB8_5ErrorEINtB8_12ErrorContextB1b_B1w_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit75.i ], [ %i.ce, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser10parse_year.exit.i.i.thread.i ], [ %i.ct, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultINtNtBa_3fmt6ParseduENtB8_5ErrorEINtB8_12ErrorContextB1b_B1w_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit.i ], [ %i.dm, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit.i ], [ %i.es, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit82.i ], [ %i.el, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23.i)
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.13.0.ph.i, ptr %i.ix, align 8, !alias.scope !548, !noalias !641
  store i64 1, ptr %0, align 8, !alias.scope !548, !noalias !641
  br label %_RINvMNtNtCsa9sSWSfjDbm_4jiff3fmt8temporalNtB3_14DateTimeParser16parse_zoned_withReEB7_.exit

bb.dj:                                            ; preds = %bb.dh, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser15parse_date_spec.exit.i.i
  %.sroa.34.0.i = phi i64 [ %.sroa.886.0.copyload.i.i, %bb.dh ], [ 0, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser15parse_date_spec.exit.i.i ] ; 3 uses
  %i.iy = phi ptr [ %.sroa.785.0.copyload.i.i, %bb.dh ], [ %i.eb, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser15parse_date_spec.exit.i.i ] ; 2 uses
  %.sroa.27.0.i = phi i8 [ %.sroa.2.0.i734.i, %bb.dh ], [ 2, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser15parse_date_spec.exit.i.i ]
  %.sroa.26.0.i = phi i64 [ %.sroa.034.0.i731.i, %bb.dh ], [ undef, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser15parse_date_spec.exit.i.i ]
  %.sroa.25.0.i = phi i64 [ %.sroa.684.0.copyload.i.i, %bb.dh ], [ undef, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser15parse_date_spec.exit.i.i ]
  %.sroa.24.0.i = phi ptr [ %.sroa.583.0.copyload.i.i, %bb.dh ], [ undef, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser15parse_date_spec.exit.i.i ]
  %.sroa.20.0.i = phi i8 [ %i.iw, %bb.dh ], [ 2, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser15parse_date_spec.exit.i.i ]
  %.sroa.13.0.i = phi ptr [ %.sroa.494.0.i743.i, %bb.dh ], [ undef, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser15parse_date_spec.exit.i.i ] ; 2 uses
  %.sroa.11.0.i = phi i32 [ %.sroa.393.0.i740.i, %bb.dh ], [ undef, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser15parse_date_spec.exit.i.i ] ; 2 uses
  %.sroa.0169.0.i = phi i32 [ %.sroa.092.0.i737.i, %bb.dh ], [ -1, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser15parse_date_spec.exit.i.i ] ; 3 uses
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx7.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.23.i, i64 7, i1 false), !noalias !642
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23.i)
  store i32 %.sroa.0169.0.i, ptr %i.ax, align 8, !noalias !642
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i32 %.sroa.11.0.i, ptr %.sroa.6.0..sroa_idx2.i, align 4, !noalias !642
  %.sroa.64.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %.sroa.13.0.i, ptr %.sroa.64.0..sroa_idx5.i, align 8, !noalias !642
  %.sroa.8.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  store i8 %.sroa.20.0.i, ptr %.sroa.8.0..sroa_idx7.i, align 8, !noalias !642
  %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store ptr %.sroa.24.0.i, ptr %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx7.sroa_idx.i, align 8, !noalias !642
  %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store i64 %.sroa.25.0.i, ptr %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx7.sroa_idx.i, align 8, !noalias !642
  %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  store i64 %.sroa.26.0.i, ptr %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx7.sroa_idx.i, align 8, !noalias !642
  %.sroa.8.sroa.9.0..sroa.8.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  store i8 %.sroa.27.0.i, ptr %.sroa.8.sroa.9.0..sroa.8.0..sroa_idx7.sroa_idx.i, align 8, !noalias !642
  %.sroa.8.sroa.11.0..sroa.8.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 52
  store i32 %.sroa.016.0.insert.insert.i.i, ptr %.sroa.8.sroa.11.0..sroa.8.0..sroa_idx7.sroa_idx.i, align 4, !noalias !642
  %.sroa.8.sroa.12.0..sroa.8.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  store ptr %i.iy, ptr %.sroa.8.sroa.12.0..sroa.8.0..sroa_idx7.sroa_idx.i, align 8, !noalias !642
  %.sroa.8.sroa.13.0..sroa.8.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  store i64 %.sroa.34.0.i, ptr %.sroa.8.sroa.13.0..sroa.8.0..sroa_idx7.sroa_idx.i, align 8, !noalias !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !642
  %i.iz = icmp eq i64 %.sroa.34.0.i, 0
  br i1 %i.iz, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parser10ParsedTimeE6map_orNtNtNtBR_5civil4time4TimeNCNvMBL_NtBL_14ParsedDateTime18to_ambiguous_zoned0EBR_.exit.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !643
  call void @_RNvMNtNtCsa9sSWSfjDbm_4jiff5error3fmtNtB2_5Error15into_full_error(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ac, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.ax, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.iy, i64 noundef %.sroa.34.0.i), !noalias !644
  %i.ja = call noundef ptr @_RNvXs0_NtNtCsa9sSWSfjDbm_4jiff5error3fmtNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.ac) #16, !noalias !644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !643
  br label %bb.ih

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parser10ParsedTimeE6map_orNtNtNtBR_5civil4time4TimeNCNvMBL_NtBL_14ParsedDateTime18to_ambiguous_zoned0EBR_.exit.i: ; preds = %bb.dj
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.619.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx7.i, i64 40, i1 false), !noalias !642
  store i32 %.sroa.0169.0.i, ptr %i.aw, align 8, !noalias !642
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i32 %.sroa.11.0.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !642
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %.sroa.13.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !642
  %i.jb = load i8, ptr %1, align 1, !range !645, !alias.scope !549, !noalias !646, !noundef !4
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.jd = load i8, ptr %i.jc, align 1, !range !645, !alias.scope !549, !noalias !646, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11183.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !648
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  %i.je = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.jf = load i8, ptr %i.je, align 8, !range !651, !alias.scope !652, !noalias !653, !noundef !4
  %.not.i.i.i = icmp eq i8 %i.jf, 2
  %i.jg = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %.val.i151.i = load i64, ptr %i.jg, align 8, !noalias !642
  %.sroa.05.0.i.i = select i1 %.not.i.i.i, i64 0, i64 %.val.i151.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !654
  %i.jh = getelementptr inbounds nuw i8, ptr %i.aw, i64 52
  %.sroa.05.0.copyload.i.i.i = load i32, ptr %i.jh, align 4, !alias.scope !652, !noalias !653 ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 %.sroa.05.0.copyload.i.i.i, ptr %i.ji, align 8, !alias.scope !655, !noalias !653
  store i64 %.sroa.05.0.i.i, ptr %i.at, align 8, !alias.scope !655, !noalias !653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !654
  call void @_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB2_17ParsedAnnotations23to_time_zone_annotation(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.619.0..sroa_idx.i), !noalias !656
  %i.jj = load i64, ptr %i.ar, align 8, !range !657, !noalias !654, !noundef !4 ; 4 uses
  %i.jk = icmp eq i64 %i.jj, -4
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.jm = load ptr, ptr %i.jl, align 8, !noalias !654 ; 3 uses
  br i1 %i.jk, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parser10ParsedTimeE6map_orNtNtNtBR_5civil4time4TimeNCNvMBL_NtBL_14ParsedDateTime18to_ambiguous_zoned0EBR_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !654
  br label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB2_14ParsedDateTime18to_ambiguous_zoned.exit.i.i.thread

bb.dm:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parser10ParsedTimeE6map_orNtNtNtBR_5civil4time4TimeNCNvMBL_NtBL_14ParsedDateTime18to_ambiguous_zoned0EBR_.exit.i
end_hunk_0
