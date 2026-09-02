Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.03?download=true
inline.NumInlined: 359
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RINvMNtNtCsa9sSWSfjDbm_4jiff3fmt8temporalNtB3_14DateTimeParser10parse_dateReEB7_:bb.a
  br i1 %i.av, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = tail call noundef zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.au, i64 noundef range(i64 0, -9223372036854775808) %.sroa.441.0.copyload.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 1), !noalias !194
  br i1 %i.aw, label %bb.t, label %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_date_separator.exit133.i

bb.p:                                             ; preds = %bb.n
  %.not.i129.i = icmp eq i64 %.sroa.441.0.copyload.i.i, 0
  br i1 %.not.i129.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = load i8, ptr %i.au, align 1, !alias.scope !195, !noalias !194, !noundef !4 ; 2 uses
  %i.ay = icmp eq i8 %i.ax, 45
  br i1 %i.ay, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.az = add nsw i64 %.sroa.441.0.copyload.i.i, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  br label %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_date_separator.exit133.i

bb.s:                                             ; preds = %bb.q
  %.sroa.4.0.insert.ext.i130.i = zext i8 %i.ax to i64
  %.sroa.4.0.insert.shift.i131.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i130.i, 8
  %.sroa.034.0.insert.insert.i132.i = or disjoint i64 %.sroa.4.0.insert.shift.i131.i, 12
  br label %bb.t

bb.t:                                             ; preds = %bb.p, %bb.o, %bb.s
  %.sink = phi i64 [ 10, %bb.o ], [ %.sroa.034.0.insert.insert.i132.i, %bb.s ], [ 13, %bb.p ]
  %i.bb = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 %.sink) #16, !noalias !194 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !193
  store ptr %i.bb, ptr %i.g, align 8, !noalias !193
  %i.bc = invoke noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB2_5ErrorNtB6_9IntoError10into_error(i64 31)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultINtNtBa_3fmt6ParseduENtB8_5ErrorEINtB8_12ErrorContextB1b_B1w_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit unwind label %bb.u, !noalias !193

bb.u:                                             ; preds = %bb.t
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.be = icmp eq ptr %i.bb, null
  br i1 %i.be, label %common.resume, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = atomicrmw sub ptr %i.bb, i64 1 release, align 8, !noalias !196
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.w, label %common.resume

bb.w:                                             ; preds = %bb.v
  fence acquire, !noalias !193
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #16
          to label %common.resume unwind label %bb.x, !noalias !193

bb.x:                                             ; preds = %bb.w
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #17, !noalias !193
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultINtNtBa_3fmt6ParseduENtB8_5ErrorEINtB8_12ErrorContextB1b_B1w_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit: ; preds = %bb.t
  %i.bi = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.bb, ptr noundef %i.bc), !noalias !193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !193
  br label %bb.dk

_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_date_separator.exit133.i: ; preds = %bb.r, %bb.o
  %.sroa.9170.0 = phi i64 [ %.sroa.441.0.copyload.i.i, %bb.o ], [ %i.az, %bb.r ] ; 3 uses
  %.sroa.0169.0 = phi ptr [ %i.au, %bb.o ], [ %i.ba, %bb.r ] ; 4 uses
  %i.bj = icmp samesign ult i64 %.sroa.9170.0, 2
  br i1 %i.bj, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_date_separator.exit133.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0169.0, i64 2 ; 3 uses
  %i.bl = add nsw i64 %.sroa.9170.0, -2           ; 3 uses
  %i.bm = load i8, ptr %.sroa.0169.0, align 1, !alias.scope !197, !noalias !198, !noundef !4 ; 2 uses
  %i.bn = add i8 %i.bm, -48                       ; 2 uses
  %or.cond.i56 = icmp ult i8 %i.bn, 10
  br i1 %or.cond.i56, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.sroa.0.0.i55.ptr.1 = getelementptr inbounds nuw i8, ptr %.sroa.0169.0, i64 1
  %i.bo = load i8, ptr %.sroa.0.0.i55.ptr.1, align 1, !alias.scope !197, !noalias !198, !noundef !4 ; 2 uses
  %i.bp = add i8 %i.bo, -48                       ; 2 uses
  %or.cond.i56.1 = icmp ult i8 %i.bp, 10
  br i1 %or.cond.i56.1, label %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit57, label %bb.aa

_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit57: ; preds = %bb.z
  %narrow619.a = mul nuw nsw i8 %i.bn, 10
  %narrow712.a = add nuw i8 %narrow619.a, %i.bp   ; 6 uses
  %i.bq = add i8 %narrow712.a, -13
  %or.cond527 = icmp ult i8 %i.bq, -12
  br i1 %or.cond527, label %bb.ab, label %bb.ai

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.lcssa578 = phi i8 [ %i.bm, %bb.y ], [ %i.bo, %bb.z ]
  %i.br = tail call noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef 1, i8 %.lcssa578) #16, !noalias !199
  br label %bb.ad

bb.ab:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit57
  %i.bs = tail call noundef i8 @_RNvXsy_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_5MonthNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #16, !noalias !199
  %i.bt = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %i.bs), !noalias !199
  br label %bb.ad

bb.ac:                                            ; preds = %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_date_separator.exit133.i
  %i.bu = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 22) #16, !noalias !200
  br label %bb.dk

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.7198.0.ph = phi ptr [ %i.bt, %bb.ab ], [ %i.br, %bb.aa ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !201
  store ptr %.sroa.7198.0.ph, ptr %i.f, align 8, !noalias !201
  %i.bv = invoke noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB2_5ErrorNtB6_9IntoError10into_error(i64 47)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit unwind label %bb.ae, !noalias !201

bb.ae:                                            ; preds = %bb.ad
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bx = icmp eq ptr %.sroa.7198.0.ph, null
  br i1 %i.bx, label %common.resume, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.by = atomicrmw sub ptr %.sroa.7198.0.ph, i64 1 release, align 8, !noalias !202
  %i.bz = icmp eq i64 %i.by, 1
  br i1 %i.bz, label %bb.ag, label %common.resume

bb.ag:                                            ; preds = %bb.af
  fence acquire, !noalias !201
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #16
          to label %common.resume unwind label %bb.ah, !noalias !201

bb.ah:                                            ; preds = %bb.ag
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #17, !noalias !201
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit: ; preds = %bb.ad
  %i.cb = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.7198.0.ph, ptr noundef %i.bv), !noalias !201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !201
  br label %bb.dk

bb.ai:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit57
  br i1 %i.av, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cc = tail call noundef zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef range(i64 0, -9223372036854775808) %i.bl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 1), !noalias !203
  br i1 %i.cc, label %bb.ao, label %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_date_separator.exit.i

bb.ak:                                            ; preds = %bb.ai
  %.not.i128.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i128.i, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cd = load i8, ptr %i.bk, align 1, !alias.scope !204, !noalias !203, !noundef !4 ; 2 uses
  %i.ce = icmp eq i8 %i.cd, 45
  br i1 %i.ce, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.cf = add nsw i64 %.sroa.9170.0, -3
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0169.0, i64 3
  br label %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_date_separator.exit.i

bb.an:                                            ; preds = %bb.al
  %.sroa.4.0.insert.ext.i.i = zext i8 %i.cd to i64
  %.sroa.4.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i, 8
  %.sroa.034.0.insert.insert.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i, 12
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ak, %bb.aj, %bb.an
  %.sink707.a = phi i64 [ 10, %bb.aj ], [ %.sroa.034.0.insert.insert.i.i, %bb.an ], [ 13, %bb.ak ]
  %i.ch = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 %.sink707.a) #16, !noalias !203 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !193
  store ptr %i.ch, ptr %i.e, align 8, !noalias !193
  %i.ci = invoke noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB2_5ErrorNtB6_9IntoError10into_error(i64 29)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultINtNtBa_3fmt6ParseduENtB8_5ErrorEINtB8_12ErrorContextB1b_B1w_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit68 unwind label %bb.ap, !noalias !193

bb.ap:                                            ; preds = %bb.ao
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ck = icmp eq ptr %i.ch, null
  br i1 %i.ck, label %common.resume, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cl = atomicrmw sub ptr %i.ch, i64 1 release, align 8, !noalias !205
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.ar, label %common.resume

bb.ar:                                            ; preds = %bb.aq
  fence acquire, !noalias !193
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #16
          to label %common.resume unwind label %bb.as, !noalias !193

bb.as:                                            ; preds = %bb.ar
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #17, !noalias !193
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultINtNtBa_3fmt6ParseduENtB8_5ErrorEINtB8_12ErrorContextB1b_B1w_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit68: ; preds = %bb.ao
  %i.co = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.ch, ptr noundef %i.ci), !noalias !193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !193
  br label %bb.dk

_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_date_separator.exit.i: ; preds = %bb.am, %bb.aj
  %.sroa.9176.0 = phi i64 [ %i.bl, %bb.aj ], [ %i.cf, %bb.am ] ; 4 uses
  %.sroa.0175.0 = phi ptr [ %i.bk, %bb.aj ], [ %i.cg, %bb.am ] ; 7 uses
  %i.cp = icmp samesign ult i64 %.sroa.9176.0, 2
  br i1 %i.cp, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_date_separator.exit.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0175.0, i64 2 ; 3 uses
  %i.cr = add nsw i64 %.sroa.9176.0, -2           ; 2 uses
  %i.cs = load i8, ptr %.sroa.0175.0, align 1, !alias.scope !206, !noalias !207, !noundef !4 ; 2 uses
  %i.ct = add i8 %i.cs, -48                       ; 2 uses
  %or.cond.i = icmp ult i8 %i.ct, 10
  br i1 %or.cond.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %.sroa.0.0.i.ptr.1 = getelementptr inbounds nuw i8, ptr %.sroa.0175.0, i64 1
  %i.cu = load i8, ptr %.sroa.0.0.i.ptr.1, align 1, !alias.scope !206, !noalias !207, !noundef !4 ; 2 uses
  %i.cv = add i8 %i.cu, -48                       ; 2 uses
  %or.cond.i.1 = icmp ult i8 %i.cv, 10
  br i1 %or.cond.i.1, label %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit, label %bb.av

_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit:  ; preds = %bb.au
  %narrow620.a = mul nuw nsw i8 %i.ct, 10
  %narrow713.a = add nuw i8 %narrow620.a, %i.cv   ; 4 uses
  %i.cw = add i8 %narrow713.a, -32
  %or.cond528 = icmp ult i8 %i.cw, -31
  br i1 %or.cond528, label %bb.aw, label %bb.bd

bb.av:                                            ; preds = %bb.au, %bb.at
  %.lcssa575 = phi i8 [ %i.cs, %bb.at ], [ %i.cu, %bb.au ]
  %i.cx = tail call noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef 1, i8 %.lcssa575) #16, !noalias !208
  br label %bb.ay

bb.aw:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit
  %i.cy = tail call noundef i8 @_RNvXsa_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_3DayNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #16, !noalias !208
  %i.cz = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %i.cy), !noalias !208
  br label %bb.ay

bb.ax:                                            ; preds = %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_date_separator.exit.i
  %i.da = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 19) #16, !noalias !209
  br label %bb.dk

bb.ay:                                            ; preds = %bb.aw, %bb.av
  %.sroa.7340.0.ph = phi ptr [ %i.cz, %bb.aw ], [ %i.cx, %bb.av ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !210
  store ptr %.sroa.7340.0.ph, ptr %i.d, align 8, !noalias !210
  %i.db = invoke noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB2_5ErrorNtB6_9IntoError10into_error(i64 44)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit75 unwind label %bb.az, !noalias !210

bb.az:                                            ; preds = %bb.ay
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.dd = icmp eq ptr %.sroa.7340.0.ph, null
  br i1 %i.dd, label %common.resume, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.de = atomicrmw sub ptr %.sroa.7340.0.ph, i64 1 release, align 8, !noalias !211
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.bb, label %common.resume

bb.bb:                                            ; preds = %bb.ba
  fence acquire, !noalias !210
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #16
          to label %common.resume unwind label %bb.bc, !noalias !210

bb.bc:                                            ; preds = %bb.bb
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #17, !noalias !210
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit75: ; preds = %bb.ay
  %i.dh = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.7340.0.ph, ptr noundef %i.db), !noalias !210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !210
  br label %bb.dk

bb.bd:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit
  %i.di = add i16 %.sroa.542.0.copyload.i.i, 9999
  %or.cond.i76 = icmp ult i16 %i.di, 19999
  br i1 %or.cond.i76, label %bb.be, label %bb.bj, !prof !6

bb.be:                                            ; preds = %bb.bd
  %i.dj = icmp ugt i8 %narrow713.a, 28
  br i1 %i.dj, label %bb.bf, label %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser15parse_date_spec.exit.i

bb.bf:                                            ; preds = %bb.be
  %i.dk = icmp eq i8 %narrow712.a, 2
  br i1 %i.dk, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.dl = srem i16 %.sroa.542.0.copyload.i.i, 25
  %i.dm = icmp eq i16 %i.dl, 0
  %..i.i79 = select i1 %i.dm, i16 15, i16 3
  %i.dn = and i16 %..i.i79, %.sroa.542.0.copyload.i.i
  %i.do = icmp eq i16 %i.dn, 0
  %spec.select.i.i = select i1 %i.do, i8 29, i8 28
  br label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i

bb.bh:                                            ; preds = %bb.bf
  %i.dp = lshr i8 %narrow712.a, 3
  %i.dq = xor i8 %i.dp, %narrow712.a
  %i.dr = or i8 %i.dq, 30
  br label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i

_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i: ; preds = %bb.bh, %bb.bg
  %.sroa.0.0.i.i78 = phi i8 [ %spec.select.i.i, %bb.bg ], [ %i.dr, %bb.bh ]
  %i.ds = icmp samesign ult i8 %.sroa.0.0.i.i78, %narrow713.a
  br i1 %i.ds, label %bb.bi, label %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser15parse_date_spec.exit.i, !prof !7

bb.bi:                                            ; preds = %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i
  %.sroa.530.0.insert.ext.i = zext i16 %.sroa.542.0.copyload.i.i to i32
  %.sroa.530.0.insert.shift.i = shl nuw i32 %.sroa.530.0.insert.ext.i, 16
  %i.dt = zext nneg i8 %narrow712.a to i32
  %.sroa.429.0.insert.shift.i = shl nuw nsw i32 %i.dt, 8
  %.sroa.429.0.insert.insert.i = or disjoint i32 %.sroa.429.0.insert.shift.i, %.sroa.530.0.insert.shift.i
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bd, %bb.bi
  %.sroa.6.0.i.ph = phi i32 [ %.sroa.429.0.insert.insert.i, %bb.bi ], [ 8447, %bb.bd ]
  %i.du = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 %.sroa.6.0.i.ph) #16, !noalias !193
  %i.dv = tail call fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_5civil4date4DateNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_(ptr noundef %i.du) #18
  br label %bb.dk

_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser15parse_date_spec.exit.i: ; preds = %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i, %bb.be
  %i.dw = zext nneg i8 %narrow713.a to i32
  %.sroa.518.0.insert.shift.i = shl nuw nsw i32 %i.dw, 24
  %i.dx = zext nneg i8 %narrow712.a to i32
  %.sroa.417.0.insert.shift.i = shl nuw nsw i32 %i.dx, 16
  %.sroa.417.0.insert.insert.i = or disjoint i32 %.sroa.518.0.insert.shift.i, %.sroa.417.0.insert.shift.i
  %.sroa.016.0.insert.ext.i = zext i16 %.sroa.542.0.copyload.i.i to i32
  %.sroa.016.0.insert.insert.i = or disjoint i32 %.sroa.417.0.insert.insert.i, %.sroa.016.0.insert.ext.i ; 2 uses
  %.not.i34 = icmp eq i64 %i.cr, 0
  br i1 %.not.i34, label %bb.dl, label %bb.bk

bb.bk:                                            ; preds = %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser15parse_date_spec.exit.i
  %i.dy = load i8, ptr %i.cq, align 1, !noalias !212, !noundef !4
  switch i8 %i.dy, label %.thread657 [
    i8 32, label %bb.bl
    i8 84, label %bb.bl
    i8 116, label %bb.bl
  ]

bb.bl:                                            ; preds = %bb.bk, %bb.bk, %bb.bk
  %4 = add i64 %.sroa.9176.0, -3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !213
  %5 = icmp samesign ult i64 %4, 2
  br i1 %5, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.ptr533 = getelementptr inbounds nuw i8, ptr %.sroa.0175.0, i64 5 ; 7 uses
  %i.dz = add i64 %.sroa.9176.0, -5               ; 7 uses
  %.sroa.0.0.i51.ptr = getelementptr inbounds nuw i8, ptr %.sroa.0175.0, i64 3
  %i.ea = load i8, ptr %.sroa.0.0.i51.ptr, align 1, !alias.scope !214, !noalias !215, !noundef !4 ; 2 uses
  %i.eb = add i8 %i.ea, -48                       ; 2 uses
  %or.cond.i52 = icmp ult i8 %i.eb, 10
  br i1 %or.cond.i52, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %.sroa.0.0.i51.ptr.1 = getelementptr inbounds nuw i8, ptr %.sroa.0175.0, i64 4
  %i.ec = load i8, ptr %.sroa.0.0.i51.ptr.1, align 1, !alias.scope !214, !noalias !215, !noundef !4 ; 2 uses
  %i.ed = add i8 %i.ec, -48                       ; 2 uses
  %or.cond.i52.1 = icmp ult i8 %i.ed, 10
  br i1 %or.cond.i52.1, label %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit53, label %bb.bo

_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit53: ; preds = %bb.bn
  %narrow621.a = mul nuw nsw i8 %i.eb, 10
  %narrow714.a = add nuw i8 %narrow621.a, %i.ed   ; 3 uses
  %i.ee = zext i8 %narrow714.a to i64             ; 4 uses
  %or.cond529 = icmp ugt i8 %narrow714.a, 23
  br i1 %or.cond529, label %bb.bp, label %bb.bw

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.lcssa572 = phi i8 [ %i.ea, %bb.bm ], [ %i.ec, %bb.bn ]
  %i.ef = tail call noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef 1, i8 %.lcssa572) #16, !noalias !216
  br label %bb.br

bb.bp:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit53
  %i.eg = tail call noundef i8 @_RNvXse_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_4HourNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #16, !noalias !216
  %i.eh = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %i.eg), !noalias !216
  br label %bb.br

bb.bq:                                            ; preds = %bb.bl
  %i.ei = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 20) #16, !noalias !217
  br label %bb.dd

bb.br:                                            ; preds = %bb.bp, %bb.bo
  %.sroa.7284.0.ph = phi ptr [ %i.eh, %bb.bp ], [ %i.ef, %bb.bo ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !218
  store ptr %.sroa.7284.0.ph, ptr %i.c, align 8, !noalias !218
  %i.ej = invoke noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB2_5ErrorNtB6_9IntoError10into_error(i64 45)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit86 unwind label %bb.bs, !noalias !218

bb.bs:                                            ; preds = %bb.br
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.el = icmp eq ptr %.sroa.7284.0.ph, null
  br i1 %i.el, label %common.resume, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.em = atomicrmw sub ptr %.sroa.7284.0.ph, i64 1 release, align 8, !noalias !219
  %i.en = icmp eq i64 %i.em, 1
  br i1 %i.en, label %bb.bu, label %common.resume

bb.bu:                                            ; preds = %bb.bt
  fence acquire, !noalias !218
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #16
          to label %common.resume unwind label %bb.bv, !noalias !218

bb.bv:                                            ; preds = %bb.bu
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #17, !noalias !218
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit86: ; preds = %bb.br
  %i.ep = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.7284.0.ph, ptr noundef %i.ej), !noalias !218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !218
  br label %bb.dd

bb.bw:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit53
  %.sroa.13278.8.insert.ext = zext nneg i8 %narrow714.a to i64
  %i.eq = tail call noundef zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ptr533, i64 noundef %i.dz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 1), !noalias !220 ; 3 uses
  br i1 %i.eq, label %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_time_separator.exit139.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.er = icmp samesign ult i64 %i.dz, 2
  br i1 %i.er, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit133.i.i, label %.preheader543.preheader

.preheader543.preheader:                          ; preds = %bb.bx
  %.val.i.i.i = load i8, ptr %.ptr533, align 1, !noalias !221, !noundef !4
  %i.es = add i8 %.val.i.i.i, -48
  %.sroa.0.0.i.i.i.i.i = icmp ult i8 %i.es, 10
  br i1 %.sroa.0.0.i.i.i.i.i, label %.preheader543.1, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit133.i.i.thread

.preheader543.1:                                  ; preds = %.preheader543.preheader
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %.sroa.0175.0, i64 6
  %.val.i.i.i.1 = load i8, ptr %.ptr.1, align 1, !noalias !221, !noundef !4
  %i.et = add i8 %.val.i.i.i.1, -48
  %.sroa.0.0.i.i.i.i.i.1 = icmp ult i8 %i.et, 10
  br i1 %.sroa.0.0.i.i.i.i.i.1, label %.thread636, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit133.i.i.thread

_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_time_separator.exit139.i: ; preds = %bb.bw
  %i.eu = tail call { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core5sliceSh12strip_prefixAhj1_ECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ptr533, i64 noundef range(i64 0, -9223372036854775808) %i.dz, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @28), !noalias !222 ; 2 uses
  %i.ev = extractvalue { ptr, i64 } %i.eu, 0      ; 2 uses
  %.not.i135.i.not = icmp eq ptr %i.ev, null
  br i1 %.not.i135.i.not, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit133.i.i, label %bb.by

bb.by:                                            ; preds = %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_time_separator.exit139.i
  %i.ew = extractvalue { ptr, i64 } %i.eu, 1      ; 2 uses
  %i.ex = icmp samesign ult i64 %i.ew, 2
  br i1 %i.ex, label %bb.cc, label %.thread636

.thread636:                                       ; preds = %.preheader543.1, %bb.by
  %.sroa.5214.0634640 = phi i64 [ %i.ew, %bb.by ], [ %i.dz, %.preheader543.1 ] ; 2 uses
  %.sroa.0213.0635639 = phi ptr [ %i.ev, %bb.by ], [ %.ptr533, %.preheader543.1 ] ; 4 uses
  %.ptr539 = getelementptr inbounds nuw i8, ptr %.sroa.0213.0635639, i64 2 ; 4 uses
  %i.ey = add nsw i64 %.sroa.5214.0634640, -2     ; 3 uses
  %i.ez = load i8, ptr %.sroa.0213.0635639, align 1, !alias.scope !223, !noalias !224, !noundef !4 ; 2 uses
  %i.fa = add i8 %i.ez, -48                       ; 2 uses
  %or.cond.i48 = icmp ult i8 %i.fa, 10
  br i1 %or.cond.i48, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %.thread636
  %.sroa.0.0.i47.ptr.1 = getelementptr inbounds nuw i8, ptr %.sroa.0213.0635639, i64 1
  %i.fb = load i8, ptr %.sroa.0.0.i47.ptr.1, align 1, !alias.scope !223, !noalias !224, !noundef !4 ; 2 uses
  %i.fc = add i8 %i.fb, -48                       ; 2 uses
  %or.cond.i48.1 = icmp ult i8 %i.fc, 10
  br i1 %or.cond.i48.1, label %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit49, label %bb.ca

_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit49: ; preds = %bb.bz
  %narrow622.a = mul nuw nsw i8 %i.fa, 10
  %narrow715.a = add nuw i8 %narrow622.a, %i.fc   ; 3 uses
  %i.fd = zext i8 %narrow715.a to i64
  %or.cond530 = icmp ugt i8 %narrow715.a, 59
  br i1 %or.cond530, label %bb.cb, label %bb.ci

bb.ca:                                            ; preds = %bb.bz, %.thread636
  %.lcssa569 = phi i8 [ %i.ez, %.thread636 ], [ %i.fb, %bb.bz ]
  %i.fe = tail call noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef 1, i8 %.lcssa569) #16, !noalias !225
  br label %bb.cd

bb.cb:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit49
  %i.ff = tail call noundef i8 @_RNvXsw_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_6MinuteNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #16, !noalias !225
  %i.fg = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %i.ff), !noalias !225
  br label %bb.cd

bb.cc:                                            ; preds = %bb.by
  %i.fh = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 21) #16, !noalias !226
  br label %bb.dd

bb.cd:                                            ; preds = %bb.cb, %bb.ca
  %.sroa.7298.0.ph = phi ptr [ %i.fg, %bb.cb ], [ %i.fe, %bb.ca ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !227
  store ptr %.sroa.7298.0.ph, ptr %i.b, align 8, !noalias !227
  %i.fi = invoke noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB2_5ErrorNtB6_9IntoError10into_error(i64 46)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit105 unwind label %bb.ce, !noalias !227

bb.ce:                                            ; preds = %bb.cd
  %i.fj = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.fk = icmp eq ptr %.sroa.7298.0.ph, null
  br i1 %i.fk, label %common.resume, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.fl = atomicrmw sub ptr %.sroa.7298.0.ph, i64 1 release, align 8, !noalias !228
  %i.fm = icmp eq i64 %i.fl, 1
  br i1 %i.fm, label %bb.cg, label %common.resume

bb.cg:                                            ; preds = %bb.cf
  fence acquire, !noalias !227
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #16
          to label %common.resume unwind label %bb.ch, !noalias !227

bb.ch:                                            ; preds = %bb.cg
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #17, !noalias !227
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit105: ; preds = %bb.cd
  %i.fo = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.7298.0.ph, ptr noundef %i.fi), !noalias !227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !227
  br label %bb.dd

bb.ci:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit49
  %.sroa.13278.9.insert.ext = zext nneg i8 %narrow715.a to i64
  br i1 %i.eq, label %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_time_separator.exit.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.fp = icmp slt i64 %.sroa.5214.0634640, 4
  br i1 %i.fp, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit131.i.i, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.cj
  %.val.i.i.i114 = load i8, ptr %.ptr539, align 1, !noalias !229, !noundef !4
  %i.fq = add i8 %.val.i.i.i114, -48
  %.sroa.0.0.i.i.i.i.i115 = icmp ult i8 %i.fq, 10
  br i1 %.sroa.0.0.i.i.i.i.i115, label %.preheader.1, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit131.i.i

.preheader.1:                                     ; preds = %.preheader.preheader
  %.ptr538.1 = getelementptr inbounds nuw i8, ptr %.sroa.0213.0635639, i64 3
  %.val.i.i.i114.1 = load i8, ptr %.ptr538.1, align 1, !noalias !229, !noundef !4
  %i.fr = add i8 %.val.i.i.i114.1, -48
  %.sroa.0.0.i.i.i.i.i115.1 = icmp ult i8 %i.fr, 10
  br i1 %.sroa.0.0.i.i.i.i.i115.1, label %.thread652, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit131.i.i

_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_time_separator.exit.i: ; preds = %bb.ci
  %i.fs = tail call { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core5sliceSh12strip_prefixAhj1_ECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ptr539, i64 noundef range(i64 0, -9223372036854775808) %i.ey, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @28), !noalias !230 ; 2 uses
  %i.ft = extractvalue { ptr, i64 } %i.fs, 0      ; 2 uses
  %.not.i134.i.not = icmp eq ptr %i.ft, null
  br i1 %.not.i134.i.not, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit131.i.i, label %bb.ck

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit131.i.i: ; preds = %.preheader.preheader, %.preheader.1, %bb.cj, %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_time_separator.exit.i
  %i.fu = shl nuw nsw i64 %i.fd, 40
  %i.fv = shl nuw nsw i64 %i.ee, 32
  %.sroa.4241.sroa.0.4.insert.shift = or disjoint i64 %i.fu, %i.fv ; 2 uses
  %.sroa.16.sroa.7.0.extract.shift = lshr exact i64 %.sroa.4241.sroa.0.4.insert.shift, 32
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit133.i.i

bb.ck:                                            ; preds = %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_time_separator.exit.i
  %i.fw = extractvalue { ptr, i64 } %i.fs, 1      ; 2 uses
  %i.fx = icmp samesign ult i64 %i.fw, 2
  br i1 %i.fx, label %bb.co, label %.thread652

.thread652:                                       ; preds = %.preheader.1, %bb.ck
  %.sroa.5234.0650656 = phi i64 [ %i.fw, %bb.ck ], [ %i.ey, %.preheader.1 ] ; 2 uses
  %.sroa.0233.0651655 = phi ptr [ %i.ft, %bb.ck ], [ %.ptr539, %.preheader.1 ] ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0233.0651655, i64 2 ; 3 uses
  %i.fz = add nsw i64 %.sroa.5234.0650656, -2     ; 2 uses
  %i.ga = load i8, ptr %.sroa.0233.0651655, align 1, !alias.scope !231, !noalias !232, !noundef !4 ; 2 uses
  %i.gb = add i8 %i.ga, -48                       ; 2 uses
  %or.cond.i44 = icmp ult i8 %i.gb, 10
  br i1 %or.cond.i44, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %.thread652
  %.sroa.0.0.i43.ptr.1 = getelementptr inbounds nuw i8, ptr %.sroa.0233.0651655, i64 1
  %i.gc = load i8, ptr %.sroa.0.0.i43.ptr.1, align 1, !alias.scope !231, !noalias !232, !noundef !4 ; 2 uses
  %i.gd = add i8 %i.gc, -48                       ; 2 uses
  %or.cond.i44.1 = icmp ult i8 %i.gd, 10
  br i1 %or.cond.i44.1, label %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit45, label %bb.cm

_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit45: ; preds = %bb.cl
  %narrow623 = mul nuw nsw i8 %i.gb, 10
  %narrow716 = add nuw i8 %narrow623, %i.gd       ; 3 uses
  %or.cond531 = icmp ugt i8 %narrow716, 60
  br i1 %or.cond531, label %bb.cn, label %bb.cq

bb.cm:                                            ; preds = %bb.cl, %.thread652
  %.lcssa = phi i8 [ %i.ga, %.thread652 ], [ %i.gc, %bb.cl ]
  %i.ge = tail call noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef 1, i8 %.lcssa) #16, !noalias !233
  br label %bb.cp

bb.cn:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit45
  %i.gf = tail call noundef i8 @_RNvXsq_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_10LeapSecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #16, !noalias !233
  %i.gg = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %i.gf), !noalias !233
  br label %bb.cp

bb.co:                                            ; preds = %bb.ck
  %i.gh = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 23) #16, !noalias !234
  br label %bb.dd

bb.cp:                                            ; preds = %bb.cn, %bb.cm
  %.sroa.7312.0.ph = phi ptr [ %i.gg, %bb.cn ], [ %i.ge, %bb.cm ]
  %i.gi = tail call fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_(i64 48, ptr noundef %.sroa.7312.0.ph) #18, !noalias !235
  br label %bb.dd

bb.cq:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit45
  %i.gj = icmp eq i8 %narrow716, 60
  %spec.store.select.i.i.i = select i1 %i.gj, i8 59, i8 %narrow716 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.gk = icmp eq i64 %i.fz, 0
  br i1 %i.gk, label %.thread475, label %bb.cr

.thread475:                                       ; preds = %bb.cr, %bb.cq
  store i32 0, ptr %i.k, align 8, !alias.scope !236, !noalias !238
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.fy, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !236, !noalias !238
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i.i

bb.cr:                                            ; preds = %bb.cq
  %i.gl = load i8, ptr %i.fy, align 1, !alias.scope !237, !noalias !239, !noundef !4
  switch i8 %i.gl, label %.thread475 [
    i8 46, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit
    i8 44, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit
  ]

end_hunk_0
begin_hunk_1_@_RINvMNtNtCsa9sSWSfjDbm_4jiff3fmt8temporalNtB3_14DateTimeParser11parse_zonedReEB7_:bb.a
  br i1 %i.cg, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ch = tail call noundef zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cf, i64 noundef range(i64 0, -9223372036854775808) %.sroa.441.0.copyload.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 1), !noalias !566
  br i1 %i.ch, label %bb.t, label %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_date_separator.exit133.i.i

bb.p:                                             ; preds = %bb.n
  %.not.i129.i.i = icmp eq i64 %.sroa.441.0.copyload.i.i.i, 0
  br i1 %.not.i129.i.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ci = load i8, ptr %i.cf, align 1, !alias.scope !567, !noalias !566, !noundef !4 ; 2 uses
  %i.cj = icmp eq i8 %i.ci, 45
  br i1 %i.cj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ck = add nsw i64 %.sroa.441.0.copyload.i.i.i, -1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  br label %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_date_separator.exit133.i.i

bb.s:                                             ; preds = %bb.q
  %.sroa.4.0.insert.ext.i130.i.i = zext i8 %i.ci to i64
  %.sroa.4.0.insert.shift.i131.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i130.i.i, 8
  %.sroa.034.0.insert.insert.i132.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i131.i.i, 12
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p, %bb.o
  %.sink.i = phi i64 [ 10, %bb.o ], [ %.sroa.034.0.insert.insert.i132.i.i, %bb.s ], [ 13, %bb.p ]
  %i.cm = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 %.sink.i) #16, !noalias !566 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !568
  store ptr %i.cm, ptr %i.ai, align 8, !noalias !568
  %i.cn = invoke noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB2_5ErrorNtB6_9IntoError10into_error(i64 31)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultINtNtBa_3fmt6ParseduENtB8_5ErrorEINtB8_12ErrorContextB1b_B1w_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit.i unwind label %bb.u, !noalias !565

bb.u:                                             ; preds = %bb.t
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cp = icmp eq ptr %i.cm, null
  br i1 %i.cp, label %common.resume.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cq = atomicrmw sub ptr %i.cm, i64 1 release, align 8, !noalias !569
  %i.cr = icmp eq i64 %i.cq, 1
  br i1 %i.cr, label %bb.w, label %common.resume.i

bb.w:                                             ; preds = %bb.v
  fence acquire, !noalias !570
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ai) #16
          to label %common.resume.i unwind label %bb.x, !noalias !565

bb.x:                                             ; preds = %bb.w
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #17, !noalias !565
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultINtNtBa_3fmt6ParseduENtB8_5ErrorEINtB8_12ErrorContextB1b_B1w_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit.i: ; preds = %bb.t
  %i.ct = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.cm, ptr noundef %i.cn), !noalias !565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !568
  br label %bb.di

_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_date_separator.exit133.i.i: ; preds = %bb.r, %bb.o
  %.sroa.9219.0.i = phi i64 [ %.sroa.441.0.copyload.i.i.i, %bb.o ], [ %i.ck, %bb.r ] ; 3 uses
  %.sroa.0218.0.i = phi ptr [ %i.cf, %bb.o ], [ %i.cl, %bb.r ] ; 4 uses
  %i.cu = icmp samesign ult i64 %.sroa.9219.0.i, 2
  br i1 %i.cu, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_date_separator.exit133.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0218.0.i, i64 2 ; 3 uses
  %i.cw = add nsw i64 %.sroa.9219.0.i, -2         ; 3 uses
  %i.cx = load i8, ptr %.sroa.0218.0.i, align 1, !alias.scope !571, !noalias !572, !noundef !4 ; 2 uses
  %i.cy = add i8 %i.cx, -48                       ; 2 uses
  %or.cond.i60.i = icmp ult i8 %i.cy, 10
  br i1 %or.cond.i60.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.sroa.0.0.i59.ptr.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0218.0.i, i64 1
  %i.cz = load i8, ptr %.sroa.0.0.i59.ptr.1.i, align 1, !alias.scope !571, !noalias !572, !noundef !4 ; 2 uses
  %i.da = add i8 %i.cz, -48                       ; 2 uses
  %or.cond.i60.1.i = icmp ult i8 %i.da, 10
  br i1 %or.cond.i60.1.i, label %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit61.i, label %bb.aa

_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit61.i: ; preds = %bb.z
  %narrow685.i.a = mul nuw nsw i8 %i.cy, 10
  %narrow775.i.a = add nuw nsw i8 %i.da, %narrow685.i.a ; 6 uses
  %i.db = add nsw i8 %narrow775.i.a, -13
  %or.cond577.i = icmp ult i8 %i.db, -12
  br i1 %or.cond577.i, label %bb.ab, label %bb.ai

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.lcssa635.i = phi i8 [ %i.cx, %bb.y ], [ %i.cz, %bb.z ]
  %i.dc = tail call noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef 1, i8 %.lcssa635.i) #16, !noalias !573
  br label %bb.ad

bb.ab:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit61.i
  %i.dd = tail call noundef i8 @_RNvXsy_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_5MonthNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #16, !noalias !573
  %i.de = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %i.dd), !noalias !573
  br label %bb.ad

bb.ac:                                            ; preds = %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_date_separator.exit133.i.i
  %i.df = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 22) #16, !noalias !574
  br label %bb.di

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.7248.0.ph.i = phi ptr [ %i.de, %bb.ab ], [ %i.dc, %bb.aa ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !575
  store ptr %.sroa.7248.0.ph.i, ptr %i.ah, align 8, !noalias !575
  %i.dg = invoke noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB2_5ErrorNtB6_9IntoError10into_error(i64 47)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit.i unwind label %bb.ae, !noalias !576

bb.ae:                                            ; preds = %bb.ad
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.di = icmp eq ptr %.sroa.7248.0.ph.i, null
  br i1 %i.di, label %common.resume.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dj = atomicrmw sub ptr %.sroa.7248.0.ph.i, i64 1 release, align 8, !noalias !577
  %i.dk = icmp eq i64 %i.dj, 1
  br i1 %i.dk, label %bb.ag, label %common.resume.i

bb.ag:                                            ; preds = %bb.af
  fence acquire, !noalias !578
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah) #16
          to label %common.resume.i unwind label %bb.ah, !noalias !576

bb.ah:                                            ; preds = %bb.ag
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #17, !noalias !576
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit.i: ; preds = %bb.ad
  %i.dm = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.7248.0.ph.i, ptr noundef %i.dg), !noalias !576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !575
  br label %bb.di

bb.ai:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit61.i
  br i1 %i.cg, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dn = tail call noundef zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cv, i64 noundef range(i64 0, -9223372036854775808) %i.cw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 1), !noalias !579
  br i1 %i.dn, label %bb.ao, label %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_date_separator.exit.i.i

bb.ak:                                            ; preds = %bb.ai
  %.not.i128.i.i = icmp eq i64 %i.cw, 0
  br i1 %.not.i128.i.i, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.do = load i8, ptr %i.cv, align 1, !alias.scope !580, !noalias !579, !noundef !4 ; 2 uses
  %i.dp = icmp eq i8 %i.do, 45
  br i1 %i.dp, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dq = add nsw i64 %.sroa.9219.0.i, -3
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0218.0.i, i64 3
  br label %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_date_separator.exit.i.i

bb.an:                                            ; preds = %bb.al
  %.sroa.4.0.insert.ext.i.i.i = zext i8 %i.do to i64
  %.sroa.4.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i, 8
  %.sroa.034.0.insert.insert.i.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i, 12
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ak, %bb.aj
  %.sink773.i = phi i64 [ 10, %bb.aj ], [ %.sroa.034.0.insert.insert.i.i.i, %bb.an ], [ 13, %bb.ak ]
  %i.ds = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 %.sink773.i) #16, !noalias !579 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !568
  store ptr %i.ds, ptr %i.ag, align 8, !noalias !568
  %i.dt = invoke noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB2_5ErrorNtB6_9IntoError10into_error(i64 29)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultINtNtBa_3fmt6ParseduENtB8_5ErrorEINtB8_12ErrorContextB1b_B1w_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit75.i unwind label %bb.ap, !noalias !565

bb.ap:                                            ; preds = %bb.ao
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.dv = icmp eq ptr %i.ds, null
  br i1 %i.dv, label %common.resume.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dw = atomicrmw sub ptr %i.ds, i64 1 release, align 8, !noalias !581
  %i.dx = icmp eq i64 %i.dw, 1
  br i1 %i.dx, label %bb.ar, label %common.resume.i

bb.ar:                                            ; preds = %bb.aq
  fence acquire, !noalias !570
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #16
          to label %common.resume.i unwind label %bb.as, !noalias !565

bb.as:                                            ; preds = %bb.ar
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #17, !noalias !565
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultINtNtBa_3fmt6ParseduENtB8_5ErrorEINtB8_12ErrorContextB1b_B1w_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit75.i: ; preds = %bb.ao
  %i.dz = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.ds, ptr noundef %i.dt), !noalias !565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !568
  br label %bb.di

_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_date_separator.exit.i.i: ; preds = %bb.am, %bb.aj
  %.sroa.9225.0.i = phi i64 [ %i.cw, %bb.aj ], [ %i.dq, %bb.am ] ; 5 uses
  %.sroa.0224.0.i = phi ptr [ %i.cv, %bb.aj ], [ %i.dr, %bb.am ] ; 8 uses
  %i.ea = icmp samesign ult i64 %.sroa.9225.0.i, 2
  br i1 %i.ea, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_date_separator.exit.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0224.0.i, i64 2 ; 3 uses
  %i.ec = add nsw i64 %.sroa.9225.0.i, -2         ; 2 uses
  %i.ed = load i8, ptr %.sroa.0224.0.i, align 1, !alias.scope !582, !noalias !583, !noundef !4 ; 2 uses
  %i.ee = add i8 %i.ed, -48                       ; 2 uses
  %or.cond.i.i = icmp ult i8 %i.ee, 10
  br i1 %or.cond.i.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %.sroa.0.0.i.ptr.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0224.0.i, i64 1
  %i.ef = load i8, ptr %.sroa.0.0.i.ptr.1.i, align 1, !alias.scope !582, !noalias !583, !noundef !4 ; 2 uses
  %i.eg = add i8 %i.ef, -48                       ; 2 uses
  %or.cond.i.1.i = icmp ult i8 %i.eg, 10
  br i1 %or.cond.i.1.i, label %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit.i, label %bb.av

_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit.i: ; preds = %bb.au
  %narrow686.i.a = mul nuw nsw i8 %i.ee, 10
  %narrow776.i.a = add nuw nsw i8 %i.eg, %narrow686.i.a ; 4 uses
  %i.eh = add nsw i8 %narrow776.i.a, -32
  %or.cond578.i = icmp ult i8 %i.eh, -31
  br i1 %or.cond578.i, label %bb.aw, label %bb.bd

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
  %i.eu = icmp samesign ugt i8 %narrow776.i.a, 28
  br i1 %i.eu, label %bb.bf, label %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser15parse_date_spec.exit.i.i

bb.bf:                                            ; preds = %bb.be
  %i.ev = icmp eq i8 %narrow775.i.a, 2
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
  %i.fa = lshr i8 %narrow775.i.a, 3
  %i.fb = xor i8 %i.fa, %narrow775.i.a
  %i.fc = or i8 %i.fb, 30
  br label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i.i

_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i.i: ; preds = %bb.bh, %bb.bg
  %.sroa.0.0.i.i85.i = phi i8 [ %spec.select.i.i.i, %bb.bg ], [ %i.fc, %bb.bh ]
  %i.fd = icmp samesign ult i8 %.sroa.0.0.i.i85.i, %narrow776.i.a
  br i1 %i.fd, label %bb.bi, label %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser15parse_date_spec.exit.i.i, !prof !7

bb.bi:                                            ; preds = %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i.i
  %.sroa.530.0.insert.ext.i.i = zext i16 %.sroa.542.0.copyload.i.i.i to i32
  %.sroa.530.0.insert.shift.i.i = shl nuw i32 %.sroa.530.0.insert.ext.i.i, 16
  %i.fe = zext nneg i8 %narrow775.i.a to i32
  %.sroa.429.0.insert.shift.i.i = shl nuw nsw i32 %i.fe, 8
  %.sroa.429.0.insert.insert.i.i = or disjoint i32 %.sroa.429.0.insert.shift.i.i, %.sroa.530.0.insert.shift.i.i
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bd
  %.sroa.6.0.i.ph.i = phi i32 [ %.sroa.429.0.insert.insert.i.i, %bb.bi ], [ 8447, %bb.bd ]
  %i.ff = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 %.sroa.6.0.i.ph.i) #16, !noalias !565
  %i.fg = tail call fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_5civil4date4DateNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_(ptr noundef %i.ff) #18
  br label %bb.di

_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser15parse_date_spec.exit.i.i: ; preds = %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i.i, %bb.be
  %i.fh = zext nneg i8 %narrow776.i.a to i32
  %.sroa.518.0.insert.shift.i.i = shl nuw nsw i32 %i.fh, 24
  %i.fi = zext nneg i8 %narrow775.i.a to i32
  %.sroa.417.0.insert.shift.i.i = shl nuw nsw i32 %i.fi, 16
  %.sroa.417.0.insert.insert.i.i = or disjoint i32 %.sroa.518.0.insert.shift.i.i, %.sroa.417.0.insert.shift.i.i
  %.sroa.016.0.insert.ext.i.i = zext i16 %.sroa.542.0.copyload.i.i.i to i32
  %.sroa.016.0.insert.insert.i.i = or disjoint i32 %.sroa.417.0.insert.insert.i.i, %.sroa.016.0.insert.ext.i.i
  %.not.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i, label %bb.dj, label %bb.bk

bb.bk:                                            ; preds = %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser15parse_date_spec.exit.i.i
  %i.fj = load i8, ptr %i.eb, align 1, !noalias !590, !noundef !4
  switch i8 %i.fj, label %.thread723.i [
    i8 32, label %bb.bl
    i8 84, label %bb.bl
    i8 116, label %bb.bl
  ]

bb.bl:                                            ; preds = %bb.bk, %bb.bk, %bb.bk
  %4 = add i64 %.sroa.9225.0.i, -3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !591
  %5 = icmp samesign ult i64 %4, 2
  br i1 %5, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.ptr583.i = getelementptr inbounds nuw i8, ptr %.sroa.0224.0.i, i64 5 ; 7 uses
  %i.fk = add i64 %.sroa.9225.0.i, -5             ; 7 uses
  %.sroa.0.0.i55.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.0224.0.i, i64 3
  %i.fl = load i8, ptr %.sroa.0.0.i55.ptr.i, align 1, !alias.scope !592, !noalias !593, !noundef !4 ; 2 uses
  %i.fm = add i8 %i.fl, -48                       ; 2 uses
  %or.cond.i56.i = icmp ult i8 %i.fm, 10
  br i1 %or.cond.i56.i, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %.sroa.0.0.i55.ptr.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0224.0.i, i64 4
  %i.fn = load i8, ptr %.sroa.0.0.i55.ptr.1.i, align 1, !alias.scope !592, !noalias !593, !noundef !4 ; 2 uses
  %i.fo = add i8 %i.fn, -48                       ; 2 uses
  %or.cond.i56.1.i = icmp ult i8 %i.fo, 10
  br i1 %or.cond.i56.1.i, label %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit57.i, label %bb.bo

_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit57.i: ; preds = %bb.bn
  %narrow687.i.a = mul nuw nsw i8 %i.fm, 10
  %narrow777.i.a = add nuw nsw i8 %i.fo, %narrow687.i.a ; 2 uses
  %i.fp = zext nneg i8 %narrow777.i.a to i64      ; 5 uses
  %or.cond579.i = icmp samesign ugt i8 %narrow777.i.a, 23
  br i1 %or.cond579.i, label %bb.bp, label %bb.bw

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.lcssa629.i = phi i8 [ %i.fl, %bb.bm ], [ %i.fn, %bb.bn ]
  %i.fq = tail call noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef 1, i8 %.lcssa629.i) #16, !noalias !594
  br label %bb.br

bb.bp:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit57.i
  %i.fr = tail call noundef i8 @_RNvXse_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_4HourNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #16, !noalias !594
  %i.fs = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %i.fr), !noalias !594
  br label %bb.br

bb.bq:                                            ; preds = %bb.bl
  %i.ft = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 20) #16, !noalias !595
  br label %bb.db

bb.br:                                            ; preds = %bb.bp, %bb.bo
  %.sroa.7334.0.ph.i = phi ptr [ %i.fs, %bb.bp ], [ %i.fq, %bb.bo ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !596
  store ptr %.sroa.7334.0.ph.i, ptr %i.ae, align 8, !noalias !596
  %i.fu = invoke noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB2_5ErrorNtB6_9IntoError10into_error(i64 45)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit93.i unwind label %bb.bs, !noalias !597

bb.bs:                                            ; preds = %bb.br
  %i.fv = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.fw = icmp eq ptr %.sroa.7334.0.ph.i, null
  br i1 %i.fw, label %common.resume.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fx = atomicrmw sub ptr %.sroa.7334.0.ph.i, i64 1 release, align 8, !noalias !598
  %i.fy = icmp eq i64 %i.fx, 1
  br i1 %i.fy, label %bb.bu, label %common.resume.i

bb.bu:                                            ; preds = %bb.bt
  fence acquire, !noalias !599
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae) #16
          to label %common.resume.i unwind label %bb.bv, !noalias !597

bb.bv:                                            ; preds = %bb.bu
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #17, !noalias !597
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit93.i: ; preds = %bb.br
  %i.ga = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.7334.0.ph.i, ptr noundef %i.fu), !noalias !597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !596
  br label %bb.db

bb.bw:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit57.i
  %i.gb = tail call noundef zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ptr583.i, i64 noundef %i.fk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 1), !noalias !600 ; 3 uses
  br i1 %i.gb, label %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_time_separator.exit139.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gc = icmp samesign ult i64 %i.fk, 2
  br i1 %i.gc, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit133.i.i.i, label %.preheader600.preheader.i

.preheader600.preheader.i:                        ; preds = %bb.bx
  %.val.i.i.i.i = load i8, ptr %.ptr583.i, align 1, !noalias !601, !noundef !4
  %i.gd = add i8 %.val.i.i.i.i, -48               ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = icmp ult i8 %i.gd, 10
  br i1 %.sroa.0.0.i.i.i.i.i.i, label %.preheader600.1.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit133.i.i.thread.i

.preheader600.1.i:                                ; preds = %.preheader600.preheader.i
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0224.0.i, i64 6
  %.val.i.i.i.1.i = load i8, ptr %.ptr.1.i, align 1, !noalias !601, !noundef !4
  %i.ge = add i8 %.val.i.i.i.1.i, -48
  %.sroa.0.0.i.i.i.i.i.1.i = icmp ult i8 %i.ge, 10
  br i1 %.sroa.0.0.i.i.i.i.i.1.i, label %.thread702.i.thread, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit133.i.i.thread.i

.thread702.i.thread:                              ; preds = %.preheader600.1.i
  %.ptr589.i60 = getelementptr inbounds nuw i8, ptr %.sroa.0224.0.i, i64 7
  %i.gf = add i64 %.sroa.9225.0.i, -7
  br label %bb.bz

_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_time_separator.exit139.i.i: ; preds = %bb.bw
  %i.gg = tail call { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core5sliceSh12strip_prefixAhj1_ECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ptr583.i, i64 noundef range(i64 0, -9223372036854775808) %i.fk, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @28), !noalias !602 ; 2 uses
  %i.gh = extractvalue { ptr, i64 } %i.gg, 0      ; 4 uses
  %.not.i135.i.not.i = icmp eq ptr %i.gh, null
  br i1 %.not.i135.i.not.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit133.i.i.i, label %bb.by

bb.by:                                            ; preds = %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_time_separator.exit139.i.i
  %i.gi = extractvalue { ptr, i64 } %i.gg, 1      ; 3 uses
  %i.gj = icmp samesign ult i64 %i.gi, 2
  br i1 %i.gj, label %bb.cc, label %.thread702.i

.thread702.i:                                     ; preds = %bb.by
  %.pre = load i8, ptr %i.gh, align 1, !alias.scope !603, !noalias !604 ; 2 uses
  %.pre23 = add i8 %.pre, -48                     ; 2 uses
  %.ptr589.i = getelementptr inbounds nuw i8, ptr %i.gh, i64 2
  %i.gk = add nsw i64 %i.gi, -2
  %or.cond.i52.i = icmp ult i8 %.pre23, 10
  br i1 %or.cond.i52.i, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %.thread702.i.thread, %.thread702.i
  %i.gl = phi i64 [ %i.gf, %.thread702.i.thread ], [ %i.gk, %.thread702.i ] ; 3 uses
  %.ptr589.i65 = phi ptr [ %.ptr589.i60, %.thread702.i.thread ], [ %.ptr589.i, %.thread702.i ] ; 4 uses
  %.sroa.0263.0701705.i64 = phi ptr [ %.ptr583.i, %.thread702.i.thread ], [ %i.gh, %.thread702.i ] ; 2 uses
  %.sroa.5264.0700706.i63 = phi i64 [ %i.fk, %.thread702.i.thread ], [ %i.gi, %.thread702.i ]
  %.pre-phi62 = phi i8 [ %i.gd, %.thread702.i.thread ], [ %.pre23, %.thread702.i ]
  %.sroa.0.0.i51.ptr.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0263.0701705.i64, i64 1
  %i.gm = load i8, ptr %.sroa.0.0.i51.ptr.1.i, align 1, !alias.scope !603, !noalias !604, !noundef !4 ; 2 uses
  %i.gn = add i8 %i.gm, -48                       ; 2 uses
  %or.cond.i52.1.i = icmp ult i8 %i.gn, 10
  br i1 %or.cond.i52.1.i, label %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit53.i, label %bb.ca

_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit53.i: ; preds = %bb.bz
  %narrow688.i.a = mul nuw nsw i8 %.pre-phi62, 10
  %narrow778.i.a = add nuw nsw i8 %i.gn, %narrow688.i.a ; 2 uses
  %i.go = zext nneg i8 %narrow778.i.a to i64      ; 2 uses
  %or.cond580.i = icmp samesign ugt i8 %narrow778.i.a, 59
  br i1 %or.cond580.i, label %bb.cb, label %bb.ci

bb.ca:                                            ; preds = %bb.bz, %.thread702.i
  %.lcssa626.i = phi i8 [ %.pre, %.thread702.i ], [ %i.gm, %bb.bz ]
  %i.gp = tail call noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef 1, i8 %.lcssa626.i) #16, !noalias !605
  br label %bb.cd

bb.cb:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit53.i
  %i.gq = tail call noundef i8 @_RNvXsw_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_6MinuteNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #16, !noalias !605
  %i.gr = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %i.gq), !noalias !605
  br label %bb.cd

bb.cc:                                            ; preds = %bb.by
  %i.gs = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 21) #16, !noalias !606
  br label %bb.db

bb.cd:                                            ; preds = %bb.cb, %bb.ca
  %.sroa.7348.0.ph.i = phi ptr [ %i.gr, %bb.cb ], [ %i.gp, %bb.ca ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !607
  store ptr %.sroa.7348.0.ph.i, ptr %i.ad, align 8, !noalias !607
  %i.gt = invoke noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB2_5ErrorNtB6_9IntoError10into_error(i64 46)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit113.i unwind label %bb.ce, !noalias !608

bb.ce:                                            ; preds = %bb.cd
  %i.gu = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.gv = icmp eq ptr %.sroa.7348.0.ph.i, null
  br i1 %i.gv, label %common.resume.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.gw = atomicrmw sub ptr %.sroa.7348.0.ph.i, i64 1 release, align 8, !noalias !609
  %i.gx = icmp eq i64 %i.gw, 1
  br i1 %i.gx, label %bb.cg, label %common.resume.i

bb.cg:                                            ; preds = %bb.cf
  fence acquire, !noalias !610
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad) #16
          to label %common.resume.i unwind label %bb.ch, !noalias !608

bb.ch:                                            ; preds = %bb.cg
  %i.gy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #17, !noalias !608
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit113.i: ; preds = %bb.cd
  %i.gz = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.7348.0.ph.i, ptr noundef %i.gt), !noalias !608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !607
  br label %bb.db

bb.ci:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit53.i
  br i1 %i.gb, label %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_time_separator.exit.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ha = icmp slt i64 %.sroa.5264.0700706.i63, 4
  br i1 %i.ha, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit131.i.i.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.cj
  %.val.i.i.i122.i = load i8, ptr %.ptr589.i65, align 1, !noalias !611, !noundef !4
  %i.hb = add i8 %.val.i.i.i122.i, -48            ; 2 uses
  %.sroa.0.0.i.i.i.i.i123.i = icmp ult i8 %i.hb, 10
  br i1 %.sroa.0.0.i.i.i.i.i123.i, label %.preheader.1.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit131.i.i.i

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %.ptr588.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0263.0701705.i64, i64 3
  %.val.i.i.i122.1.i = load i8, ptr %.ptr588.1.i, align 1, !noalias !611, !noundef !4
  %i.hc = add i8 %.val.i.i.i122.1.i, -48
  %.sroa.0.0.i.i.i.i.i123.1.i = icmp ult i8 %i.hc, 10
  br i1 %.sroa.0.0.i.i.i.i.i123.1.i, label %.thread718.i.thread, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit131.i.i.i

_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_time_separator.exit.i.i: ; preds = %bb.ci
  %i.hd = tail call { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core5sliceSh12strip_prefixAhj1_ECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ptr589.i65, i64 noundef range(i64 0, -9223372036854775808) %i.gl, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @28), !noalias !612 ; 2 uses
  %i.he = extractvalue { ptr, i64 } %i.hd, 0      ; 3 uses
  %.not.i134.i.not.i = icmp eq ptr %i.he, null
  br i1 %.not.i134.i.not.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit131.i.i.i, label %bb.ck

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit131.i.i.i: ; preds = %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_time_separator.exit.i.i, %.preheader.1.i, %.preheader.preheader.i, %bb.cj
  %i.hf = shl nuw nsw i64 %i.go, 40
  %i.hg = shl nuw nsw i64 %i.fp, 32
  %.sroa.4291.sroa.0.4.insert.shift.i = or disjoint i64 %i.hf, %i.hg ; 2 uses
  %.sroa.16.sroa.7.0.extract.shift.i = lshr exact i64 %.sroa.4291.sroa.0.4.insert.shift.i, 32
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit133.i.i.i

bb.ck:                                            ; preds = %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser20parse_time_separator.exit.i.i
  %i.hh = extractvalue { ptr, i64 } %i.hd, 1      ; 2 uses
  %i.hi = icmp samesign ult i64 %i.hh, 2
  br i1 %i.hi, label %bb.cn, label %.thread718.i

.thread718.i:                                     ; preds = %bb.ck
  %.pre21 = load i8, ptr %i.he, align 1, !alias.scope !613, !noalias !614 ; 2 uses
  %.pre24 = add i8 %.pre21, -48                   ; 2 uses
  %or.cond.i48.i = icmp ult i8 %.pre24, 10
  br i1 %or.cond.i48.i, label %.thread718.i.thread, label %bb.cl

.thread718.i.thread:                              ; preds = %.preheader.1.i, %.thread718.i
  %.sroa.0283.0717721.i72 = phi ptr [ %i.he, %.thread718.i ], [ %.ptr589.i65, %.preheader.1.i ] ; 3 uses
  %.sroa.5284.0716722.i71 = phi i64 [ %i.hh, %.thread718.i ], [ %i.gl, %.preheader.1.i ] ; 2 uses
  %.pre-phi2570 = phi i8 [ %.pre24, %.thread718.i ], [ %i.hb, %.preheader.1.i ]
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0283.0717721.i72, i64 2 ; 2 uses
  %i.hk = add nsw i64 %.sroa.5284.0716722.i71, -2 ; 2 uses
  %.sroa.0.0.i47.ptr.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0283.0717721.i72, i64 1
  %i.hl = load i8, ptr %.sroa.0.0.i47.ptr.1.i, align 1, !alias.scope !613, !noalias !614, !noundef !4 ; 2 uses
  %i.hm = add i8 %i.hl, -48                       ; 2 uses
  %or.cond.i48.1.i = icmp ult i8 %i.hm, 10
  br i1 %or.cond.i48.1.i, label %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit49.i, label %bb.cl

_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit49.i: ; preds = %.thread718.i.thread
  %narrow689.i = mul nuw nsw i8 %.pre-phi2570, 10
  %narrow779.i = add nuw nsw i8 %i.hm, %narrow689.i ; 3 uses
  %or.cond581.i = icmp samesign ugt i8 %narrow779.i, 60
  br i1 %or.cond581.i, label %bb.cm, label %bb.cp

bb.cl:                                            ; preds = %.thread718.i.thread, %.thread718.i
  %.lcssa.i = phi i8 [ %.pre21, %.thread718.i ], [ %i.hl, %.thread718.i.thread ]
  %i.hn = tail call noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef 1, i8 %.lcssa.i) #16, !noalias !615
  br label %bb.co

bb.cm:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit49.i
  %i.ho = tail call noundef i8 @_RNvXsq_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_10LeapSecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #16, !noalias !615
  %i.hp = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %i.ho), !noalias !615
  br label %bb.co

bb.cn:                                            ; preds = %bb.ck
  %i.hq = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 23) #16, !noalias !616
  br label %bb.db

bb.co:                                            ; preds = %bb.cm, %bb.cl
  %.sroa.7362.0.ph.i = phi ptr [ %i.hp, %bb.cm ], [ %i.hn, %bb.cl ]
  %i.hr = tail call fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_(i64 48, ptr noundef %.sroa.7362.0.ph.i) #18, !noalias !617
  br label %bb.db

bb.cp:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit49.i
  %i.hs = icmp eq i8 %narrow779.i, 60
  %spec.store.select.i.i.i.i = select i1 %i.hs, i8 59, i8 %narrow779.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !619)
  %i.ht = icmp eq i64 %i.hk, 0
  br i1 %i.ht, label %.thread525.i, label %bb.cq

.thread525.i:                                     ; preds = %bb.cq, %bb.cp
  store i32 0, ptr %i.am, align 8, !alias.scope !618, !noalias !620
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit.i.i.i

bb.cq:                                            ; preds = %bb.cp
  %i.hu = load i8, ptr %i.hj, align 1, !alias.scope !619, !noalias !621, !noundef !4
  switch i8 %i.hu, label %.thread525.i [
    i8 46, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit.i
    i8 44, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit.i
  ]

_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit.i: ; preds = %bb.cq, %bb.cq
  %i.hv = add nsw i64 %.sroa.5284.0716722.i71, -3
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0283.0717721.i72, i64 3
  call void @_RNvNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction3imp(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hw, i64 noundef %i.hv) #16, !noalias !600
  %.pr524.i = load i32, ptr %i.am, align 8, !noalias !622 ; 2 uses
  %i.hx = icmp eq i32 %.pr524.i, 2
  br i1 %i.hx, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8, !noalias !622, !noundef !4
  %i.ia = tail call fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultINtNtBa_3fmt6ParsedINtNtBE_6option6OptionmEENtB8_5ErrorEINtB8_12ErrorContextB1b_B1T_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_(ptr noundef %i.hz) #18
end_hunk_1
