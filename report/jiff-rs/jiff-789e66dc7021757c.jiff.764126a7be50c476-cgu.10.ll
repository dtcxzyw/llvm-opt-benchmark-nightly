Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.10?download=true
inline.NumInlined: 163
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser5parse:bb.a

common.resume:                                    ; preds = %bb.x, %bb.y, %bb.z, %bb.s, %bb.t, %bb.u, %bb.h, %bb.i, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %bb.s ], [ %i.n, %bb.h ], [ %i.n, %bb.j ], [ %i.n, %bb.i ], [ %i.ag, %bb.u ], [ %i.ag, %bb.t ], [ %i.an, %bb.z ], [ %i.an, %bb.y ], [ %i.an, %bb.x ]
  resume { ptr, i32 } %common.resume.op

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultINtNtBa_3fmt6ParsedNtNtCsb09rMIQFAXO_9jiff_core6bounds4SignENtB8_5ErrorEINtB8_12ErrorContextB1b_B29_E7contextNtNtNtB8_3fmt6offset5ErrorE0Ba_.exit: ; preds = %bb.g
  %i.s = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.l, ptr noundef %i.m), !noalias !264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !264
  br label %bb.bq

bb.l:                                             ; preds = %bb.f, %bb.e
  %.sroa.07.0.i.i = phi i64 [ 1095216660480, %bb.f ], [ 4294967296, %bb.e ] ; 5 uses
  %i.t = icmp samesign ult i64 %3, 3
  br i1 %i.t, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.ptr392 = getelementptr inbounds nuw i8, ptr %2, i64 3 ; 6 uses
  %i.u = add nsw i64 %3, -3                       ; 4 uses
  %.sroa.0.0.i71.ptr = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.v = load i8, ptr %.sroa.0.0.i71.ptr, align 1, !alias.scope !266, !noalias !267, !noundef !5 ; 2 uses
  %i.w = add i8 %i.v, -48                         ; 2 uses
  %or.cond.i72 = icmp ult i8 %i.w, 10
  br i1 %or.cond.i72, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i71.ptr.1 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.x = load i8, ptr %.sroa.0.0.i71.ptr.1, align 1, !alias.scope !266, !noalias !267, !noundef !5 ; 2 uses
  %i.y = add i8 %i.x, -48                         ; 2 uses
  %or.cond.i72.1 = icmp ult i8 %i.y, 10
  br i1 %or.cond.i72.1, label %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit73, label %bb.o

_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit73: ; preds = %bb.n
  %narrow = mul nuw nsw i8 %i.w, 10
  %narrow454 = add nuw i8 %narrow, %i.y           ; 2 uses
  %i.z = zext i8 %narrow454 to i64                ; 5 uses
  %i.aa = icmp ugt i8 %narrow454, 25
  br i1 %i.aa, label %bb.p, label %bb.ab

bb.o:                                             ; preds = %bb.n, %bb.m
  %.lcssa418 = phi i8 [ %i.v, %bb.m ], [ %i.x, %bb.n ]
  %i.ab = tail call noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef 1, i8 %.lcssa418) #19, !noalias !268
  br label %bb.r

bb.p:                                             ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit73
  %i.ac = tail call noundef i8 @_RNvXsE_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_11OffsetHoursNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #19, !noalias !268
  %i.ad = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %i.ac), !noalias !268
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  %i.ae = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt6offsetNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 2, i8 undef) #19, !noalias !269
  br label %bb.w

bb.r:                                             ; preds = %bb.p, %bb.o
  %.sroa.7228.0.ph = phi ptr [ %i.ad, %bb.p ], [ %i.ab, %bb.o ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !270
  store ptr %.sroa.7228.0.ph, ptr %i.b, align 8, !noalias !270
  %i.af = invoke noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt6offsetNtB2_5ErrorNtB6_9IntoError10into_error(i8 noundef 15, i8 undef)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt6offset5ErrorE0Ba_.exit unwind label %bb.s, !noalias !270

bb.s:                                             ; preds = %bb.r
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ah = icmp eq ptr %.sroa.7228.0.ph, null
  br i1 %i.ah, label %common.resume, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ai = atomicrmw sub ptr %.sroa.7228.0.ph, i64 1 release, align 8, !noalias !271
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.u, label %common.resume

bb.u:                                             ; preds = %bb.t
  fence acquire, !noalias !270
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #19
          to label %common.resume unwind label %bb.v, !noalias !270

bb.v:                                             ; preds = %bb.u
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !270
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt6offset5ErrorE0Ba_.exit: ; preds = %bb.r
  %i.al = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.7228.0.ph, ptr noundef %i.af), !noalias !270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !270
  br label %bb.w

bb.w:                                             ; preds = %bb.q, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt6offset5ErrorE0Ba_.exit
  %.sroa.8204.0.ph.in = phi ptr [ %i.al, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt6offset5ErrorE0Ba_.exit ], [ %i.ae, %bb.q ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !264
  store ptr %.sroa.8204.0.ph.in, ptr %i.a, align 8, !noalias !264
  %i.am = invoke noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt6offsetNtB2_5ErrorNtB6_9IntoError10into_error(i8 noundef 6, i8 undef)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultINtNtBa_3fmt6ParsedaENtB8_5ErrorEINtB8_12ErrorContextB1b_B1w_E7contextNtNtNtB8_3fmt6offset5ErrorE0Ba_.exit unwind label %bb.x, !noalias !264

bb.x:                                             ; preds = %bb.w
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ao = icmp eq ptr %.sroa.8204.0.ph.in, null
  br i1 %i.ao, label %common.resume, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ap = atomicrmw sub ptr %.sroa.8204.0.ph.in, i64 1 release, align 8, !noalias !272
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.z, label %common.resume

bb.z:                                             ; preds = %bb.y
  fence acquire, !noalias !264
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #19
          to label %common.resume unwind label %bb.aa, !noalias !264

bb.aa:                                            ; preds = %bb.z
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !264
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultINtNtBa_3fmt6ParsedaENtB8_5ErrorEINtB8_12ErrorContextB1b_B1w_E7contextNtNtNtB8_3fmt6offset5ErrorE0Ba_.exit: ; preds = %bb.w
  %i.as = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.8204.0.ph.in, ptr noundef %i.am), !noalias !264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !264
  br label %bb.bq

bb.ab:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit73
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.au = load i8, ptr %i.at, align 1, !range !16, !alias.scope !262, !noalias !273, !noundef !5
  %.not.i77 = icmp eq i64 %i.u, 0                 ; 3 uses
  switch i8 %i.au, label %default.unreachable [
    i8 0, label %bb.ac
    i8 1, label %bb.ad
    i8 2, label %bb.ae
  ]

default.unreachable:                              ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.ab
  br i1 %.not.i77, label %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit62.thread, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCsa9sSWSfjDbm_4jiff.exit

bb.ad:                                            ; preds = %bb.ab
  br i1 %.not.i77, label %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit62.thread, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCsa9sSWSfjDbm_4jiff.exit85

bb.ae:                                            ; preds = %bb.ab
  br i1 %.not.i77, label %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit62.thread, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCsa9sSWSfjDbm_4jiff.exit89

_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCsa9sSWSfjDbm_4jiff.exit: ; preds = %bb.ac
  %rhsc391 = load i8, ptr %.ptr392, align 1
  %i.av = icmp eq i8 %rhsc391, 58
  br i1 %i.av, label %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit62, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCsa9sSWSfjDbm_4jiff.exit.thread

_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCsa9sSWSfjDbm_4jiff.exit.thread: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCsa9sSWSfjDbm_4jiff.exit89, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCsa9sSWSfjDbm_4jiff.exit
  %i.aw = icmp samesign ugt i64 %3, 4
  br i1 %i.aw, label %.preheader401.preheader, label %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit62.thread

.preheader401.preheader:                          ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCsa9sSWSfjDbm_4jiff.exit.thread
  %.val.i80 = load i8, ptr %.ptr392, align 1, !noalias !274, !noundef !5
  %i.ax = add i8 %.val.i80, -48
  %.sroa.0.0.i.i.i81 = icmp ult i8 %i.ax, 10
  br i1 %.sroa.0.0.i.i.i81, label %.preheader401.1, label %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit62.thread

.preheader401.1:                                  ; preds = %.preheader401.preheader
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val.i80.1 = load i8, ptr %.ptr.1, align 1, !noalias !274, !noundef !5
  %i.ay = add i8 %.val.i80.1, -48
  %.sroa.0.0.i.i.i81.1 = icmp ult i8 %i.ay, 10
  br i1 %.sroa.0.0.i.i.i81.1, label %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit62.thread438, label %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit62.thread

_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCsa9sSWSfjDbm_4jiff.exit85: ; preds = %bb.ad
  %rhsc390 = load i8, ptr %.ptr392, align 1
  %i.az = icmp eq i8 %rhsc390, 58
  br i1 %i.az, label %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit62, label %bb.af

bb.af:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCsa9sSWSfjDbm_4jiff.exit85
  %i.ba = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt6offsetNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 14, i8 undef) #19, !noalias !264
  br label %bb.bq

_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCsa9sSWSfjDbm_4jiff.exit89: ; preds = %bb.ae
  %rhsc = load i8, ptr %.ptr392, align 1
  %i.bb = icmp eq i8 %rhsc, 58
  br i1 %i.bb, label %bb.ag, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCsa9sSWSfjDbm_4jiff.exit.thread

bb.ag:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCsa9sSWSfjDbm_4jiff.exit89
  %i.bc = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt6offsetNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 0, i8 undef) #19, !noalias !264
  br label %bb.bq

_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit62.thread: ; preds = %.preheader401.1, %.preheader401.preheader, %bb.ad, %bb.ae, %bb.ac, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCsa9sSWSfjDbm_4jiff.exit.thread
  %.sroa.8209.0328 = phi i64 [ 0, %bb.ae ], [ 1, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCsa9sSWSfjDbm_4jiff.exit.thread ], [ 0, %bb.ac ], [ %i.u, %.preheader401.preheader ], [ %i.u, %.preheader401.1 ], [ 0, %bb.ad ]
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !range !12, !alias.scope !262, !noalias !273, !noundef !5
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.an, label %bb.am

_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit62: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCsa9sSWSfjDbm_4jiff.exit, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCsa9sSWSfjDbm_4jiff.exit85
  %i.bg = add nsw i64 %3, -4
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bi = icmp samesign ult i64 %3, 6
  br i1 %i.bi, label %bb.ak, label %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit62.thread438

_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit62.thread438: ; preds = %.preheader401.1, %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit62
  %.sroa.0207.0444 = phi ptr [ %i.bh, %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit62 ], [ %.ptr392, %.preheader401.1 ] ; 5 uses
  %.sroa.8209.0443 = phi i64 [ %i.bg, %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit62 ], [ %i.u, %.preheader401.1 ] ; 4 uses
  %.sroa.07.0.i291442 = phi i1 [ true, %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit62 ], [ false, %.preheader401.1 ]
  %.ptr398 = getelementptr inbounds nuw i8, ptr %.sroa.0207.0444, i64 2 ; 6 uses
  %i.bj = add nsw i64 %.sroa.8209.0443, -2        ; 5 uses
  %i.bk = load i8, ptr %.sroa.0207.0444, align 1, !alias.scope !275, !noalias !276, !noundef !5 ; 2 uses
  %i.bl = add i8 %i.bk, -48                       ; 2 uses
  %or.cond.i68 = icmp ult i8 %i.bl, 10
  br i1 %or.cond.i68, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit62.thread438
  %.sroa.0.0.i67.ptr.1 = getelementptr inbounds nuw i8, ptr %.sroa.0207.0444, i64 1
  %i.bm = load i8, ptr %.sroa.0.0.i67.ptr.1, align 1, !alias.scope !275, !noalias !276, !noundef !5 ; 2 uses
  %i.bn = add i8 %i.bm, -48                       ; 2 uses
  %or.cond.i68.1 = icmp ult i8 %i.bn, 10
  br i1 %or.cond.i68.1, label %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit69, label %bb.ai

_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit69: ; preds = %bb.ah
  %narrow431 = mul nuw nsw i8 %i.bl, 10
  %narrow455 = add nuw i8 %narrow431, %i.bn       ; 2 uses
  %i.bo = zext i8 %narrow455 to i64               ; 4 uses
  %i.bp = icmp ugt i8 %narrow455, 59
  br i1 %i.bp, label %bb.aj, label %bb.aq

bb.ai:                                            ; preds = %bb.ah, %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit62.thread438
  %.lcssa415 = phi i8 [ %i.bk, %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit62.thread438 ], [ %i.bm, %bb.ah ]
  %i.bq = tail call noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef 1, i8 %.lcssa415) #19, !noalias !277
  br label %bb.al

bb.aj:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit69
  %i.br = tail call noundef i8 @_RNvXsG_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_13OffsetMinutesNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #19, !noalias !277
  %i.bs = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %i.br), !noalias !277
  br label %bb.al

bb.ak:                                            ; preds = %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit62
  %i.bt = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt6offsetNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 3, i8 undef) #19, !noalias !278
  br label %bb.ap

bb.al:                                            ; preds = %bb.aj, %bb.ai
  %.sroa.7240.0.ph = phi ptr [ %i.bs, %bb.aj ], [ %i.bq, %bb.ai ]
  %i.bu = tail call fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt6offset5ErrorE0Ba_(i8 noundef 16, ptr noundef %.sroa.7240.0.ph) #22
  br label %bb.ap

bb.am:                                            ; preds = %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit62.thread
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bw = load i8, ptr %i.bv, align 1, !range !12, !alias.scope !262, !noalias !273, !noundef !5
  %i.bx = trunc nuw i8 %i.bw to i1
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bz = load i8, ptr %i.by, align 1, !range !12, !alias.scope !262, !noalias !273
  %i.ca = trunc nuw i8 %i.bz to i1
  %or.cond.i = select i1 %i.bx, i1 %i.ca, i1 false
  br i1 %or.cond.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am, %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit62.thread
  %i.cb = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt6offsetNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 12, i8 undef) #19, !noalias !264
  br label %bb.bq

bb.ao:                                            ; preds = %bb.am
  %.sroa.24.13.insert.ext = shl nuw nsw i64 %i.z, 40
  %.sroa.24.13.insert.insert = or disjoint i64 %.sroa.24.13.insert.ext, %.sroa.07.0.i.i
  br label %bb.br

bb.ap:                                            ; preds = %bb.ak, %bb.al
  %.sroa.8212.0.ph.in = phi ptr [ %i.bu, %bb.al ], [ %i.bt, %bb.ak ]
  %i.cc = tail call fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultINtNtBa_3fmt6ParsedaENtB8_5ErrorEINtB8_12ErrorContextB1b_B1w_E7contextNtNtNtB8_3fmt6offset5ErrorE0Ba_(i8 noundef 7, ptr noundef %.sroa.8212.0.ph.in) #22
  br label %bb.bq

bb.aq:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit69
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ce = load i8, ptr %i.cd, align 1, !range !12, !alias.scope !262, !noalias !273, !noundef !5
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numeric0EB15_.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numeric0EB15_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numeric0EB15_.exit: ; preds = %bb.ar
  %.val.i97 = load i8, ptr %.ptr398, align 1, !alias.scope !279, !noalias !264, !noundef !5
  %i.cg = icmp eq i8 %.val.i97, 58
  br i1 %i.cg, label %bb.av, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numeric0EB15_.exit.thread

bb.as:                                            ; preds = %bb.aq
  br i1 %.sroa.07.0.i291442, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ch = icmp samesign ugt i64 %.sroa.8209.0443, 3
  br i1 %i.ch, label %.preheader.preheader, label %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit.thread

.preheader.preheader:                             ; preds = %bb.at
  %.val.i104 = load i8, ptr %.ptr398, align 1, !noalias !280, !noundef !5
  %i.ci = add i8 %.val.i104, -48
  %.sroa.0.0.i.i.i105 = icmp ult i8 %i.ci, 10
  br i1 %.sroa.0.0.i.i.i105, label %.preheader.1, label %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit.thread

bb.au:                                            ; preds = %bb.as
  %.not.i51 = icmp eq i64 %i.bj, 0
  br i1 %.not.i51, label %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser15parse_separator0EB15_.exit102

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser15parse_separator0EB15_.exit102: ; preds = %bb.au
  %.val.i100 = load i8, ptr %.ptr398, align 1, !alias.scope !281, !noalias !282, !noundef !5
  %i.cj = icmp eq i8 %.val.i100, 58
  br i1 %i.cj, label %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit, label %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit.thread

.preheader.1:                                     ; preds = %.preheader.preheader
  %.ptr397.1 = getelementptr inbounds nuw i8, ptr %.sroa.0207.0444, i64 3
  %.val.i104.1 = load i8, ptr %.ptr397.1, align 1, !noalias !280, !noundef !5
  %i.ck = add i8 %.val.i104.1, -48
  %.sroa.0.0.i.i.i105.1 = icmp ult i8 %i.ck, 10
  br i1 %.sroa.0.0.i.i.i105.1, label %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit.thread449, label %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numeric0EB15_.exit.thread: ; preds = %bb.ar, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numeric0EB15_.exit
  %.sroa.24.9.insert.ext = shl nuw nsw i64 %i.bo, 8
  %.sroa.24.13.insert.ext181 = shl nuw nsw i64 %i.z, 40
  %i.cl = or disjoint i64 %.sroa.24.13.insert.ext181, %.sroa.24.9.insert.ext
  %.sroa.24.12.insert.insert164 = or disjoint i64 %i.cl, %.sroa.07.0.i.i
  %.sroa.24.13.insert.insert184 = or disjoint i64 %.sroa.24.12.insert.insert164, 1
  br label %bb.br

bb.av:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numeric0EB15_.exit
  %i.cm = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt6offsetNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 21, i8 undef) #19, !noalias !264
  br label %bb.bq

_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit.thread: ; preds = %.preheader.1, %.preheader.preheader, %bb.au, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser15parse_separator0EB15_.exit102, %bb.at
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.co = load i8, ptr %i.cn, align 1, !range !12, !alias.scope !262, !noalias !273, !noundef !5
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.bc, label %bb.bb

_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser15parse_separator0EB15_.exit102
  %i.cq = add nsw i64 %.sroa.8209.0443, -3
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0207.0444, i64 3
  %i.cs = icmp slt i64 %.sroa.8209.0443, 5
  br i1 %i.cs, label %bb.az, label %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit.thread449

_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit.thread449: ; preds = %.preheader.1, %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit
  %.sroa.0216.0453 = phi ptr [ %i.cr, %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit ], [ %.ptr398, %.preheader.1 ] ; 4 uses
  %.sroa.8218.0452 = phi i64 [ %i.cq, %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit ], [ %i.bj, %.preheader.1 ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0216.0453, i64 2 ; 5 uses
  %i.cu = add nsw i64 %.sroa.8218.0452, -2        ; 4 uses
  %i.cv = load i8, ptr %.sroa.0216.0453, align 1, !alias.scope !283, !noalias !284, !noundef !5 ; 2 uses
  %i.cw = add i8 %i.cv, -48                       ; 2 uses
  %or.cond.i65 = icmp ult i8 %i.cw, 10
  br i1 %or.cond.i65, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit.thread449
  %.sroa.0.0.i64.ptr.1 = getelementptr inbounds nuw i8, ptr %.sroa.0216.0453, i64 1
  %i.cx = load i8, ptr %.sroa.0.0.i64.ptr.1, align 1, !alias.scope !283, !noalias !284, !noundef !5 ; 2 uses
  %i.cy = add i8 %i.cx, -48                       ; 2 uses
  %or.cond.i65.1 = icmp ult i8 %i.cy, 10
  br i1 %or.cond.i65.1, label %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit, label %bb.ax

_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit:  ; preds = %bb.aw
  %narrow432 = mul nuw nsw i8 %i.cw, 10
  %narrow456 = add nuw i8 %narrow432, %i.cy       ; 2 uses
  %i.cz = zext i8 %narrow456 to i64               ; 2 uses
  %i.da = icmp ugt i8 %narrow456, 59
  br i1 %i.da, label %bb.ay, label %bb.be

bb.ax:                                            ; preds = %bb.aw, %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit.thread449
  %.lcssa = phi i8 [ %i.cv, %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit.thread449 ], [ %i.cx, %bb.aw ]
  %i.db = tail call noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef 1, i8 %.lcssa) #19, !noalias !285
  br label %bb.ba

bb.ay:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit
  %i.dc = tail call noundef i8 @_RNvXsI_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_13OffsetSecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #19, !noalias !285
  %i.dd = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %i.dc), !noalias !285
  br label %bb.ba

bb.az:                                            ; preds = %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit
  %i.de = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt6offsetNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 5, i8 undef) #19, !noalias !286
  br label %bb.bd

bb.ba:                                            ; preds = %bb.ay, %bb.ax
  %.sroa.7254.0.ph = phi ptr [ %i.dd, %bb.ay ], [ %i.db, %bb.ax ]
  %i.df = tail call fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt6offset5ErrorE0Ba_(i8 noundef 17, ptr noundef %.sroa.7254.0.ph) #22
  br label %bb.bd

bb.bb:                                            ; preds = %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit.thread
  %.sroa.24.9.insert.ext129 = shl nuw nsw i64 %i.bo, 8
  %.sroa.24.13.insert.ext186 = shl nuw nsw i64 %i.z, 40
  %i.dg = or disjoint i64 %.sroa.24.13.insert.ext186, %.sroa.24.9.insert.ext129
  %.sroa.24.12.insert.insert169 = or disjoint i64 %i.dg, %.sroa.07.0.i.i
  %.sroa.24.13.insert.insert189 = or disjoint i64 %.sroa.24.12.insert.insert169, 1
  br label %bb.br

bb.bc:                                            ; preds = %_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser15parse_separator.exit.thread
  %i.dh = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt6offsetNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 13, i8 undef) #19, !noalias !264
  br label %bb.bq

bb.bd:                                            ; preds = %bb.az, %bb.ba
  %.sroa.8223.0.ph.in = phi ptr [ %i.df, %bb.ba ], [ %i.de, %bb.az ]
  %i.di = tail call fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultINtNtBa_3fmt6ParsedaENtB8_5ErrorEINtB8_12ErrorContextB1b_B1w_E7contextNtNtNtB8_3fmt6offset5ErrorE0Ba_(i8 noundef 8, ptr noundef %.sroa.8223.0.ph.in) #22
  br label %bb.bq

bb.be:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dk = load i8, ptr %i.dj, align 1, !range !12, !alias.scope !262, !noalias !273, !noundef !5
  %i.dl = trunc nuw i8 %i.dk to i1
  %i.dm = icmp eq i64 %i.cu, 0                    ; 2 uses
  br i1 %i.dl, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  br i1 %i.dm, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numerics_0EB15_.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numerics_0EB15_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numerics_0EB15_.exit: ; preds = %bb.bf
  %.val.i113 = load i8, ptr %i.ct, align 1, !alias.scope !287, !noalias !264, !noundef !5
  %i.dn = and i8 %.val.i113, -3
  %.sroa.0.0.i.i114 = icmp eq i8 %i.dn, 44
  br i1 %.sroa.0.0.i.i114, label %bb.bi, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numerics_0EB15_.exit.thread

bb.bg:                                            ; preds = %bb.be
  br i1 %i.dm, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.do = load i8, ptr %i.ct, align 1, !alias.scope !288, !noalias !289, !noundef !5
  switch i8 %i.do, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i [
    i8 46, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit
    i8 44, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit
  ]

_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit: ; preds = %bb.bh, %bb.bh
  %i.dp = add nsw i64 %.sroa.8218.0452, -3
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0216.0453, i64 3
  call void @_RNvNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction3imp(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dq, i64 noundef %i.dp) #19, !noalias !264
  %.pr = load i32, ptr %i.e, align 8, !noalias !290 ; 2 uses
  %i.dr = icmp eq i32 %.pr, 2
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !noalias !290, !noundef !5 ; 3 uses
  br i1 %i.dr, label %bb.bj, label %bb.bk

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numerics_0EB15_.exit.thread: ; preds = %bb.bf, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numerics_0EB15_.exit
  %.sroa.24.9.insert.ext134 = shl nuw nsw i64 %i.bo, 8
  %.sroa.24.11.insert.ext = shl nuw nsw i64 %i.cz, 24
  %.sroa.24.13.insert.ext191 = shl nuw nsw i64 %i.z, 40
  %i.du = or disjoint i64 %.sroa.24.13.insert.ext191, %.sroa.24.9.insert.ext134
  %i.dv = or disjoint i64 %i.du, %.sroa.24.11.insert.ext
  %.sroa.24.12.insert.insert174 = or disjoint i64 %i.dv, %.sroa.07.0.i.i
  %.sroa.24.13.insert.insert194 = or disjoint i64 %.sroa.24.12.insert.insert174, 65537
  br label %bb.br

bb.bi:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numerics_0EB15_.exit
  %i.dw = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt6offsetNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 22, i8 undef) #19, !noalias !264
  br label %bb.bq

bb.bj:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit
  %i.dx = tail call fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultINtNtBa_3fmt6ParsedINtNtBE_6option6OptionmEENtB8_5ErrorEINtB8_12ErrorContextB1b_B1T_E7contextNtNtNtB8_3fmt6offset5ErrorE0Ba_(ptr noundef %i.dt) #22
  br label %bb.bq

bb.bk:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit
  %.sroa.6188.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.6188.0.copyload.i = load i64, ptr %.sroa.6188.0..sroa_idx.i, align 8, !noalias !290 ; 2 uses
  %i.dy = trunc i32 %.pr to i1
  br i1 %i.dy, label %bb.bl, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i

bb.bl:                                            ; preds = %bb.bk
  %.sroa.4186.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.4186.0.copyload.i = load i32, ptr %.sroa.4186.0..sroa_idx.i, align 4, !noalias !290 ; 2 uses
  %i.dz = icmp slt i32 %.sroa.4186.0.copyload.i, 0
  br i1 %i.dz, label %bb.bm, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i, !prof !7

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !290
  store i8 2, ptr %i.d, align 1, !noalias !290
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #20, !noalias !264
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i: ; preds = %bb.bg, %bb.bh, %bb.bl, %bb.bk
  %.sroa.6188.0.copyload.i381 = phi i64 [ %.sroa.6188.0.copyload.i, %bb.bl ], [ %.sroa.6188.0.copyload.i, %bb.bk ], [ %i.cu, %bb.bh ], [ %i.cu, %bb.bg ]
  %.sroa.5187.0.copyload.i380 = phi ptr [ %i.dt, %bb.bl ], [ %i.dt, %bb.bk ], [ %i.ct, %bb.bh ], [ %i.ct, %bb.bg ]
  %.sroa.0148.0.i = phi i32 [ 1, %bb.bl ], [ 0, %bb.bk ], [ 0, %bb.bh ], [ 0, %bb.bg ]
  %.sroa.5149.0.i = phi i32 [ %.sroa.4186.0.copyload.i, %bb.bl ], [ undef, %bb.bk ], [ undef, %bb.bh ], [ undef, %bb.bg ]
  %.sroa.24.9.insert.ext139 = shl nuw nsw i64 %i.bo, 8
  %.sroa.24.11.insert.ext156 = shl nuw nsw i64 %i.cz, 24
  %.sroa.24.13.insert.ext196 = shl nuw nsw i64 %i.z, 40
  %i.ea = or disjoint i64 %.sroa.24.13.insert.ext196, %.sroa.24.9.insert.ext139
  %i.eb = or disjoint i64 %i.ea, %.sroa.24.11.insert.ext156
  %.sroa.24.12.insert.insert179 = or disjoint i64 %i.eb, %.sroa.07.0.i.i
  %.sroa.24.13.insert.insert199 = or disjoint i64 %.sroa.24.12.insert.insert179, 65537
  br label %bb.br

bb.bn:                                            ; preds = %bb.d
  %i.ec = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt6offsetNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 23, i8 %i.i) #19
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ec, ptr %i.ed, align 8
  store i32 -1, ptr %0, align 8
  br label %bb.bp

bb.bo:                                            ; preds = %bb.d
  %i.ee = add nsw i64 %3, -1
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i32 2, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ef, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ee, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo, %bb.br, %bb.bq, %bb.b
  ret void

bb.bq:                                            ; preds = %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultINtNtBa_3fmt6ParsedNtNtCsb09rMIQFAXO_9jiff_core6bounds4SignENtB8_5ErrorEINtB8_12ErrorContextB1b_B29_E7contextNtNtNtB8_3fmt6offset5ErrorE0Ba_.exit, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultINtNtBa_3fmt6ParsedaENtB8_5ErrorEINtB8_12ErrorContextB1b_B1w_E7contextNtNtNtB8_3fmt6offset5ErrorE0Ba_.exit, %bb.ag, %bb.ap, %bb.af, %bb.bd, %bb.bj, %bb.bi, %bb.bc, %bb.av, %bb.an
  %.sroa.24.0.ph = phi ptr [ %i.cb, %bb.an ], [ %i.cm, %bb.av ], [ %i.dh, %bb.bc ], [ %i.dw, %bb.bi ], [ %i.dx, %bb.bj ], [ %i.di, %bb.bd ], [ %i.ba, %bb.af ], [ %i.cc, %bb.ap ], [ %i.bc, %bb.ag ], [ %i.as, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultINtNtBa_3fmt6ParsedaENtB8_5ErrorEINtB8_12ErrorContextB1b_B1w_E7contextNtNtNtB8_3fmt6offset5ErrorE0Ba_.exit ], [ %i.s, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultINtNtBa_3fmt6ParsedNtNtCsb09rMIQFAXO_9jiff_core6bounds4SignENtB8_5ErrorEINtB8_12ErrorContextB1b_B29_E7contextNtNtNtB8_3fmt6offset5ErrorE0Ba_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.24.0.ph, ptr %i.eg, align 8
  store i32 -1, ptr %0, align 8
  br label %bb.bp

bb.br:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numerics_0EB15_.exit.thread, %bb.bb, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numeric0EB15_.exit.thread, %bb.ao
  %.sroa.71.0 = phi i64 [ %i.bj, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numeric0EB15_.exit.thread ], [ %i.bj, %bb.bb ], [ %.sroa.6188.0.copyload.i381, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i ], [ %.sroa.8209.0328, %bb.ao ], [ %i.cu, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numerics_0EB15_.exit.thread ]
  %.sroa.65.0 = phi ptr [ %.ptr398, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numeric0EB15_.exit.thread ], [ %.ptr398, %bb.bb ], [ %.sroa.5187.0.copyload.i380, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i ], [ %.ptr392, %bb.ao ], [ %i.ct, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numerics_0EB15_.exit.thread ]
  %.sroa.24.0.in = phi i64 [ %.sroa.24.13.insert.insert184, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numeric0EB15_.exit.thread ], [ %.sroa.24.13.insert.insert189, %bb.bb ], [ %.sroa.24.13.insert.insert199, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i ], [ %.sroa.24.13.insert.insert, %bb.ao ], [ %.sroa.24.13.insert.insert194, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numerics_0EB15_.exit.thread ]
  %.sroa.22.0 = phi i32 [ undef, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numeric0EB15_.exit.thread ], [ undef, %bb.bb ], [ %.sroa.5149.0.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i ], [ undef, %bb.ao ], [ undef, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numerics_0EB15_.exit.thread ]
  %.sroa.0.0 = phi i32 [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numeric0EB15_.exit.thread ], [ 0, %bb.bb ], [ %.sroa.0148.0.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i ], [ 0, %bb.ao ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numerics_0EB15_.exit.thread ]
  %.sroa.24.0 = inttoptr i64 %.sroa.24.0.in to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i32 %.sroa.0.0, ptr %0, align 8
  %.sroa.034.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.22.0, ptr %.sroa.034.sroa.4.0..sroa_idx, align 4
  %.sroa.034.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.24.0, ptr %.sroa.034.sroa.5.0..sroa_idx, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.65.0, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.71.0, ptr %.sroa.536.0..sroa_idx, align 8
  br label %bb.bp
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !6, !noundef !5
  %i.e = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.h = load i16, ptr %i.g, align 8, !noundef !5
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !5, !nonnull !5
  %i.l = tail call { i64, ptr } %i.k(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.i) #22 ; 2 uses
  %i.m = extractvalue { i64, ptr } %i.l, 0
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = extractvalue { i64, ptr } %i.l, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i16 0, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.3.0 = phi ptr [ %i.o, %bb.b ], [ undef, %bb.c ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.c ]
  %i.p = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.q = insertvalue { i64, ptr } %i.p, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.q
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14ParsedTimeZone14into_time_zone(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i8, ptr %0, align 8, !range !326, !noundef !5 ; 2 uses
  %i.e = add nsw i8 %i.d, -3
  %i.f = icmp samesign ugt i8 %i.d, 2
  %narrow = select i1 %i.f, i8 %i.e, i8 2
  switch i8 %narrow, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.i
    i8 2, label %bb.s
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !5
  %i.k = tail call { i64, ptr } @_RNvMNtNtCsa9sSWSfjDbm_4jiff2tz2dbNtB2_16TimeZoneDatabase3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, ptr } %i.k, 0
  %i.m = extractvalue { i64, ptr } %i.k, 1        ; 5 uses
  %i.n = trunc nuw i64 %i.l to i1
  br i1 %i.n, label %bb.d, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneNtNtBO_5error5ErrorE7map_errB1s_NCINvXsk_B1u_Bv_INtB1u_12ErrorContextBI_B1s_E7contextNtNtNtB1u_3fmt8temporal5ErrorE0EBO_.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.m, ptr %i.c, align 8
  %i.o = invoke noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB2_5ErrorNtB6_9IntoError10into_error(i64 32)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_2tz8timezone8TimeZoneNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.q = icmp eq ptr %i.m, null
  br i1 %i.q, label %common.resume, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !327
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.g, label %common.resume

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #19
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.p, %bb.q, %bb.e, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.p, %bb.g ], [ %i.p, %bb.f ], [ %i.ar, %bb.q ], [ %i.ar, %bb.p ], [ %i.ar, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_2tz8timezone8TimeZoneNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit.i: ; preds = %bb.d
  %i.u = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.m, ptr noundef %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneNtNtBO_5error5ErrorE7map_errB1s_NCINvXsk_B1u_Bv_INtB1u_12ErrorContextBI_B1s_E7contextNtNtNtB1u_3fmt8temporal5ErrorE0EBO_.exit

_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneNtNtBO_5error5ErrorE7map_errB1s_NCINvXsk_B1u_Bv_INtB1u_12ErrorContextBI_B1s_E7contextNtNtNtB1u_3fmt8temporal5ErrorE0EBO_.exit: ; preds = %bb.c, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_2tz8timezone8TimeZoneNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit.i
  %.sroa.06.0.i = phi i64 [ 1, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_2tz8timezone8TimeZoneNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit.i ], [ 0, %bb.c ]
  %.sroa.3.0.i = phi ptr [ %i.u, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_2tz8timezone8TimeZoneNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit.i ], [ %i.m, %bb.c ]
  %i.v = insertvalue { i64, ptr } poison, i64 %.sroa.06.0.i, 0
  br label %bb.t

bb.i:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload = load i32, ptr %i.w, align 4 ; 2 uses
  %.not.i = icmp eq i32 %.sroa.0.0.copyload, 2
  br i1 %.not.i, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  %.sroa.11.0.copyload = load i8, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.10.0.copyload = load i8, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 15
  %.sroa.9.0.copyload = load i8, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  %.sroa.8.0.copyload = load i8, ptr %.sroa.8.0..sroa_idx, align 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8
  %i.x = sext i8 %.sroa.11.0.copyload to i32
  %i.y = mul nsw i32 %i.x, 3600
  %i.z = trunc nuw i8 %.sroa.6.0.copyload to i1
  %i.aa = sext i8 %.sroa.7.0.copyload to i32
  %i.ab = mul nsw i32 %i.aa, 60
  %i.ac = select i1 %i.z, i32 %i.ab, i32 0
  %i.ad = trunc nuw i8 %.sroa.8.0.copyload to i1
  %narrow.i.i = select i1 %i.ad, i8 %.sroa.9.0.copyload, i8 0
  %i.ae = sext i8 %narrow.i.i to i32
  %i.af = trunc nuw i32 %.sroa.0.0.copyload to i1
  %i.ag = icmp sgt i32 %.sroa.5.0.copyload, 499999999
  %or.cond.i.i = select i1 %i.af, i1 %i.ag, i1 false
  %i.ah = zext i1 %or.cond.i.i to i32
  %.sroa.0.0.i.i = add nsw i32 %i.y, %i.ae
  %.sroa.0.1.i.i = add nsw i32 %.sroa.0.0.i.i, %i.ac
  %.sroa.0.2.i.i = add nsw i32 %.sroa.0.1.i.i, %i.ah
  %i.ai = sext i8 %.sroa.10.0.copyload to i32
  %i.aj = mul nsw i32 %.sroa.0.2.i.i, %i.ai
  %.fr = freeze i32 %i.aj                         ; 3 uses
  %i.ak = add nsw i32 %.fr, 93599
  %or.cond.i.i.i = icmp ult i32 %i.ak, 187199
  br i1 %or.cond.i.i.i, label %bb.v, label %bb.k, !prof !14

bb.k:                                             ; preds = %bb.j
  %i.al = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 5119) #19, !noalias !328 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !329
  store ptr %i.al, ptr %i.b, align 8, !noalias !329
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !330
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #19, !noalias !329
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !329
  %i.ap = call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt6offsetNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 18, i8 undef) #19, !noalias !329 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !331
  store ptr %i.ap, ptr %i.a, align 8, !noalias !331
  %i.aq = invoke noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB2_5ErrorNtB6_9IntoError10into_error(i64 28)
          to label %bb.u unwind label %bb.o, !noalias !331

bb.o:                                             ; preds = %bb.n
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.as = icmp eq ptr %i.ap, null
  br i1 %i.as, label %common.resume, label %bb.p
end_hunk_0
