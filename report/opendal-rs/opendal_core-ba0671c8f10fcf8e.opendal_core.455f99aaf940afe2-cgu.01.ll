Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.01?download=true
inline.NumInlined: 443
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvMs0_NtNtCs5XgW7KoffLW_12opendal_core3raw4timeNtB5_9Timestamp13parse_rfc2822:bb.a
  %i.fp = or disjoint i32 %i.fo, 1
  br label %_RINvYNtNtNtCs4CtJ3uPHEZZ_4jiff4util1b4YearNtNtCs5RLZBEkhFyl_9jiff_core6bounds6Bounds5checkxECs5XgW7KoffLW_12opendal_core.exit.i.i.i.i

bb.bn:                                            ; preds = %_RNvNtNtCs4CtJ3uPHEZZ_4jiff4util5parse3i64.exit55.i
  %i.fq = trunc nsw i64 %i.fi to i32
  %i.fr = shl nsw i32 %i.fq, 16
  br label %_RINvYNtNtNtCs4CtJ3uPHEZZ_4jiff4util1b4YearNtNtCs5RLZBEkhFyl_9jiff_core6bounds6Bounds5checkxECs5XgW7KoffLW_12opendal_core.exit.i.i.i.i

_RINvYNtNtNtCs4CtJ3uPHEZZ_4jiff4util1b4YearNtNtCs5RLZBEkhFyl_9jiff_core6bounds6Bounds5checkxECs5XgW7KoffLW_12opendal_core.exit.i.i.i.i: ; preds = %bb.bn, %bb.bm
  %.sroa.3.0.insert.insert.i.i.i.i.i = phi i32 [ %i.fr, %bb.bn ], [ %i.fp, %bb.bm ] ; 3 uses
  %i.fs = trunc i32 %.sroa.3.0.insert.insert.i.i.i.i.i to i1
  br i1 %i.fs, label %bb.bo, label %bb.bu

bb.bo:                                            ; preds = %_RINvYNtNtNtCs4CtJ3uPHEZZ_4jiff4util1b4YearNtNtCs5RLZBEkhFyl_9jiff_core6bounds6Bounds5checkxECs5XgW7KoffLW_12opendal_core.exit.i.i.i.i
  %.sroa.4.0.extract.shift.i.i.i.i.i = lshr i32 %.sroa.3.0.insert.insert.i.i.i.i.i, 8
  %.sroa.4.0.extract.trunc.i.i.i.i.i = trunc i32 %.sroa.4.0.extract.shift.i.i.i.i.i to i8
  %i.ft = tail call noundef ptr @_RNvXNtNtCs4CtJ3uPHEZZ_4jiff4util1bNtNtB6_5error5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.4.0.extract.trunc.i.i.i.i.i), !noalias !657
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bl
  %.sroa.7140.0.ph.i = phi ptr [ %i.ft, %bb.bo ], [ %i.fk, %bb.bl ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !658
  store ptr %.sroa.7140.0.ph.i, ptr %i.l, align 8, !noalias !658
  %i.fu = invoke noundef ptr @_RNvXNtNtNtCs4CtJ3uPHEZZ_4jiff5error3fmt7rfc2822NtB2_5ErrorNtB6_9IntoError10into_error(i24 27)
          to label %_RNCINvXsk_NtCs4CtJ3uPHEZZ_4jiff5errorINtNtCsgxBkk5gSRhY_4core6result6ResultsNtB8_5ErrorEINtB8_12ErrorContextsB1c_E7contextNtNtNtB8_3fmt7rfc28225ErrorE0Cs5XgW7KoffLW_12opendal_core.exit.i unwind label %bb.bq, !noalias !652

bb.bq:                                            ; preds = %bb.bp
  %i.fv = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.fw = icmp eq ptr %.sroa.7140.0.ph.i, null
  br i1 %i.fw, label %common.resume, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fx = atomicrmw sub ptr %.sroa.7140.0.ph.i, i64 1 release, align 8, !noalias !659
  %i.fy = icmp eq i64 %i.fx, 1
  br i1 %i.fy, label %bb.bs, label %common.resume

bb.bs:                                            ; preds = %bb.br
  fence acquire, !noalias !660
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtCs4CtJ3uPHEZZ_4jiff5error10ErrorInnerE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #24
          to label %common.resume unwind label %bb.bt, !noalias !652

bb.bt:                                            ; preds = %bb.bs
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #23, !noalias !652
  unreachable

_RNCINvXsk_NtCs4CtJ3uPHEZZ_4jiff5errorINtNtCsgxBkk5gSRhY_4core6result6ResultsNtB8_5ErrorEINtB8_12ErrorContextsB1c_E7contextNtNtNtB8_3fmt7rfc28225ErrorE0Cs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %bb.bp
  %i.ga = tail call noundef ptr @_RNvMs_NtCs4CtJ3uPHEZZ_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.7140.0.ph.i, ptr noundef %i.fu), !noalias !652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !658
  br label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser20parse_zoned_internal.exit.thread.i

bb.bu:                                            ; preds = %_RINvYNtNtNtCs4CtJ3uPHEZZ_4jiff4util1b4YearNtNtCs5RLZBEkhFyl_9jiff_core6bounds6Bounds5checkxECs5XgW7KoffLW_12opendal_core.exit.i.i.i.i
  %.sroa.58.0.extract.shift.i.i.i.i.i = lshr i32 %.sroa.3.0.insert.insert.i.i.i.i.i, 16
  %.sroa.58.0.extract.trunc.i.i.i.i.i = trunc nuw i32 %.sroa.58.0.extract.shift.i.i.i.i.i to i16 ; 4 uses
  switch i64 %i.ex, label %default.unreachable [
    i64 2, label %bb.bv
    i64 3, label %bb.bw
    i64 4, label %bb.by
  ], !prof !661

default.unreachable:                              ; preds = %bb.bu
  unreachable

bb.bv:                                            ; preds = %bb.bu
  %i.gb = icmp slt i16 %.sroa.58.0.extract.trunc.i.i.i.i.i, 50
  br i1 %i.gb, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.gc = add i16 %.sroa.58.0.extract.trunc.i.i.i.i.i, 1900
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.gd = add nsw i16 %.sroa.58.0.extract.trunc.i.i.i.i.i, 2000
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bu
  %.sroa.08.0.i.i.i.i = phi i16 [ %i.gd, %bb.bx ], [ %i.gc, %bb.bw ], [ %.sroa.58.0.extract.trunc.i.i.i.i.i, %bb.bu ]
  %.not.i75.i512.i = icmp eq i64 %.sroa.6.0.i37.i492.i, %i.ex
  br i1 %.not.i75.i512.i, label %.critedge584.i, label %.lr.ph517.preheader.i

.lr.ph517.preheader.i:                            ; preds = %bb.by
  %.val.i83.peel.i = load i8, ptr %i.ey, align 1, !alias.scope !662, !noalias !663, !noundef !4
  switch i8 %.val.i83.peel.i, label %.critedge584.i [
    i8 9, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit85.peel.i
    i8 10, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit85.peel.i
    i8 12, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit85.peel.i
    i8 13, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit85.peel.i
    i8 32, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit85.peel.i
  ]

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit85.peel.i: ; preds = %.lr.ph517.preheader.i, %.lr.ph517.preheader.i, %.lr.ph517.preheader.i, %.lr.ph517.preheader.i, %.lr.ph517.preheader.i
  %i.ge = xor i64 %i.ex, -1
  %i.gf = add i64 %.sroa.6.0.i37.i492.i, %i.ge    ; 2 uses
  %.not.i75.i.peel.i = icmp eq i64 %i.gf, 0
  br i1 %.not.i75.i.peel.i, label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser10parse_year.exit.i.i.thread723.i, label %.lr.ph517.i

.lr.ph517.i:                                      ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit85.peel.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit85.i
  %.sroa.0.0.i74.i515.pn.i = phi ptr [ %.sroa.0.0.i74.i515.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit85.i ], [ %i.ey, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit85.peel.i ] ; 3 uses
  %.sroa.6.0.i73.i514.i = phi i64 [ %i.gg, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit85.i ], [ %i.gf, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit85.peel.i ] ; 4 uses
  %.sroa.0.0.i74.i515.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i74.i515.pn.i, i64 1 ; 3 uses
  %.val.i83.i = load i8, ptr %.sroa.0.0.i74.i515.i, align 1, !alias.scope !662, !noalias !663, !noundef !4 ; 3 uses
  switch i8 %.val.i83.i, label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser10parse_year.exit.i.i.i [
    i8 9, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit85.i
    i8 10, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit85.i
    i8 12, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit85.i
    i8 13, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit85.i
    i8 32, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit85.i
  ]

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit85.i: ; preds = %.lr.ph517.i, %.lr.ph517.i, %.lr.ph517.i, %.lr.ph517.i, %.lr.ph517.i
  %i.gg = add nsw i64 %.sroa.6.0.i73.i514.i, -1   ; 2 uses
  %.not.i75.i.i = icmp eq i64 %i.gg, 0
  br i1 %.not.i75.i.i, label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser10parse_year.exit.i.i.thread723.i, label %.lr.ph517.i, !llvm.loop !459

.critedge584.i:                                   ; preds = %.lr.ph517.preheader.i, %bb.by
  %i.gh = tail call noundef ptr @_RNvXs_NtNtNtCs4CtJ3uPHEZZ_4jiff5error3fmt7rfc2822NtB8_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB4_5ErrorE4from(i24 36) #24, !noalias !652
  %i.gi = tail call fastcc noundef ptr @_RNCINvXsk_NtCs4CtJ3uPHEZZ_4jiff5errorINtNtCsgxBkk5gSRhY_4core6result6ResultINtNtBa_3fmt6ParseduENtB8_5ErrorEINtB8_12ErrorContextB1b_B1w_E7contextNtNtNtB8_3fmt7rfc28225ErrorE0Cs5XgW7KoffLW_12opendal_core(i24 38, ptr noundef %i.gh) #25, !noalias !652
  br label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser20parse_zoned_internal.exit.thread.i

_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser10parse_year.exit.i.i.i: ; preds = %.lr.ph517.i
  %i.gj = icmp samesign ult i64 %.sroa.6.0.i73.i514.i, 2
  br i1 %i.gj, label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser10parse_year.exit.i.i.thread723.i, label %bb.bz

bb.bz:                                            ; preds = %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser10parse_year.exit.i.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i74.i515.pn.i, i64 3
  %i.gl = add nsw i64 %.sroa.6.0.i73.i514.i, -2   ; 2 uses
  %i.gm = add i8 %.val.i83.i, -48                 ; 2 uses
  %or.cond.i50.i = icmp ult i8 %i.gm, 10
  br i1 %or.cond.i50.i, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %.sroa.0.0.i49.ptr.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i74.i515.pn.i, i64 2
  %i.gn = load i8, ptr %.sroa.0.0.i49.ptr.1.i, align 1, !alias.scope !664, !noalias !665, !noundef !4 ; 2 uses
  %i.go = add i8 %i.gn, -48                       ; 2 uses
  %or.cond.i50.1.i = icmp ult i8 %i.go, 10
  br i1 %or.cond.i50.1.i, label %_RNvNtNtCs4CtJ3uPHEZZ_4jiff4util5parse3i64.exit51.i, label %bb.cb

_RNvNtNtCs4CtJ3uPHEZZ_4jiff4util5parse3i64.exit51.i: ; preds = %bb.ca
  %narrow.i = mul nuw nsw i8 %i.gm, 10
  %narrow774.i = add nuw nsw i8 %i.go, %narrow.i  ; 2 uses
  %i.gp = zext nneg i8 %narrow774.i to i64
  %or.cond410.i = icmp samesign ugt i8 %narrow774.i, 23
  br i1 %or.cond410.i, label %bb.cc, label %.preheader420.i

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.lcssa612.i = phi i8 [ %.val.i83.i, %bb.bz ], [ %i.gn, %bb.ca ]
  %i.gq = tail call noundef ptr @_RNvXs1_NtNtCs4CtJ3uPHEZZ_4jiff5error4utilNtB7_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef 1, i8 %.lcssa612.i) #24, !noalias !666
  br label %bb.cd

.preheader420.i:                                  ; preds = %_RNvNtNtCs4CtJ3uPHEZZ_4jiff4util5parse3i64.exit51.i
  %.not.i69.i527.i = icmp eq i64 %i.gl, 0
  br i1 %.not.i69.i527.i, label %._crit_edge531.i, label %.lr.ph530.i

bb.cc:                                            ; preds = %_RNvNtNtCs4CtJ3uPHEZZ_4jiff4util5parse3i64.exit51.i
  %i.gr = tail call noundef i8 @_RNvXse_NtNtCs4CtJ3uPHEZZ_4jiff4util1bNtB5_4HourNtNtCs5RLZBEkhFyl_9jiff_core6bounds6Bounds5error() #24, !noalias !666
  %i.gs = tail call noundef ptr @_RNvXNtNtCs4CtJ3uPHEZZ_4jiff4util1bNtNtB6_5error5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %i.gr), !noalias !666
  br label %bb.cd

_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser10parse_year.exit.i.i.thread723.i: ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit85.i, %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser10parse_year.exit.i.i.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit85.peel.i
  %i.gt = tail call noundef ptr @_RNvXs_NtNtNtCs4CtJ3uPHEZZ_4jiff5error3fmt7rfc2822NtB8_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB4_5ErrorE4from(i24 7) #24, !noalias !667
  br label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser20parse_zoned_internal.exit.thread.i

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.sroa.7122.0.ph.i = phi ptr [ %i.gs, %bb.cc ], [ %i.gq, %bb.cb ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !668
  store ptr %.sroa.7122.0.ph.i, ptr %i.k, align 8, !noalias !668
  %i.gu = invoke noundef ptr @_RNvXNtNtNtCs4CtJ3uPHEZZ_4jiff5error3fmt7rfc2822NtB2_5ErrorNtB6_9IntoError10into_error(i24 22)
          to label %_RNCINvXsk_NtCs4CtJ3uPHEZZ_4jiff5errorINtNtCsgxBkk5gSRhY_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt7rfc28225ErrorE0Cs5XgW7KoffLW_12opendal_core.exit92.i unwind label %bb.ce, !noalias !669

bb.ce:                                            ; preds = %bb.cd
  %i.gv = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.gw = icmp eq ptr %.sroa.7122.0.ph.i, null
  br i1 %i.gw, label %common.resume, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.gx = atomicrmw sub ptr %.sroa.7122.0.ph.i, i64 1 release, align 8, !noalias !670
  %i.gy = icmp eq i64 %i.gx, 1
  br i1 %i.gy, label %bb.cg, label %common.resume

bb.cg:                                            ; preds = %bb.cf
  fence acquire, !noalias !671
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtCs4CtJ3uPHEZZ_4jiff5error10ErrorInnerE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #24
          to label %common.resume unwind label %bb.ch, !noalias !669

bb.ch:                                            ; preds = %bb.cg
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #23, !noalias !669
  unreachable

_RNCINvXsk_NtCs4CtJ3uPHEZZ_4jiff5errorINtNtCsgxBkk5gSRhY_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt7rfc28225ErrorE0Cs5XgW7KoffLW_12opendal_core.exit92.i: ; preds = %bb.cd
  %i.ha = tail call noundef ptr @_RNvMs_NtCs4CtJ3uPHEZZ_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.7122.0.ph.i, ptr noundef %i.gu), !noalias !669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !668
  br label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser20parse_zoned_internal.exit.thread.i

.lr.ph530.i:                                      ; preds = %.preheader420.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit96.i
  %.sroa.0.0.i68.i529.i = phi ptr [ %i.hc, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit96.i ], [ %i.gk, %.preheader420.i ] ; 3 uses
  %.sroa.6.0.i67.i528.i = phi i64 [ %i.hb, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit96.i ], [ %i.gl, %.preheader420.i ] ; 3 uses
  %.val.i94.i = load i8, ptr %.sroa.0.0.i68.i529.i, align 1, !alias.scope !672, !noalias !673, !noundef !4 ; 2 uses
  switch i8 %.val.i94.i, label %bb.ci [
    i8 9, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit96.i
    i8 10, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit96.i
    i8 12, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit96.i
    i8 13, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit96.i
    i8 32, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit96.i
    i8 58, label %.preheader419.i
  ]

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit96.i: ; preds = %.lr.ph530.i, %.lr.ph530.i, %.lr.ph530.i, %.lr.ph530.i, %.lr.ph530.i
  %i.hb = add nsw i64 %.sroa.6.0.i67.i528.i, -1   ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i68.i529.i, i64 1
  %.not.i69.i.i = icmp eq i64 %i.hb, 0
  br i1 %.not.i69.i.i, label %._crit_edge531.i, label %.lr.ph530.i

._crit_edge531.i:                                 ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit96.i, %.preheader420.i
  %i.hd = tail call noundef ptr @_RNvXs_NtNtNtCs4CtJ3uPHEZZ_4jiff5error3fmt7rfc2822NtB8_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB4_5ErrorE4from(i24 12) #24, !noalias !674
  br label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser20parse_zoned_internal.exit.thread.i

.preheader419.i:                                  ; preds = %.lr.ph530.i
  %.sroa.6.0.i61.i533.i = add nsw i64 %.sroa.6.0.i67.i528.i, -1 ; 2 uses
  %.not.i63.i534.i = icmp eq i64 %.sroa.6.0.i61.i533.i, 0
  br i1 %.not.i63.i534.i, label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser15skip_whitespace.exit65.i.thread.i, label %.lr.ph539.i

bb.ci:                                            ; preds = %.lr.ph530.i
  %.sroa.05.1.insert.ext.i90.i.i = zext i8 %.val.i94.i to i24
  %.sroa.05.1.insert.shift.i91.i.i = shl nuw nsw i24 %.sroa.05.1.insert.ext.i90.i.i, 8
  %.sroa.05.1.insert.insert.i92.i.i = or disjoint i24 %.sroa.05.1.insert.shift.i91.i.i, 33
  %i.he = tail call noundef ptr @_RNvXs_NtNtNtCs4CtJ3uPHEZZ_4jiff5error3fmt7rfc2822NtB8_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB4_5ErrorE4from(i24 %.sroa.05.1.insert.insert.i92.i.i) #24, !noalias !674
  br label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser20parse_zoned_internal.exit.thread.i

.lr.ph539.i:                                      ; preds = %.preheader419.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit100.i
  %.sroa.6.0.i61.i538.i = phi i64 [ %.sroa.6.0.i61.i.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit100.i ], [ %.sroa.6.0.i61.i533.i, %.preheader419.i ] ; 3 uses
  %.sroa.0.0.i68.i.pn536.i = phi ptr [ %.sroa.0.0.i62.i.ptr537.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit100.i ], [ %.sroa.0.0.i68.i529.i, %.preheader419.i ] ; 4 uses
  %.sroa.6.0.i61.i.in535.i = phi i64 [ %.sroa.6.0.i61.i538.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit100.i ], [ %.sroa.6.0.i67.i528.i, %.preheader419.i ] ; 2 uses
  %.sroa.0.0.i62.i.ptr537.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i68.i.pn536.i, i64 1 ; 2 uses
  %.val.i98.i = load i8, ptr %.sroa.0.0.i62.i.ptr537.i, align 1, !alias.scope !675, !noalias !676, !noundef !4 ; 3 uses
  switch i8 %.val.i98.i, label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser15skip_whitespace.exit65.i.i [
    i8 9, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit100.i
    i8 10, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit100.i
    i8 12, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit100.i
    i8 13, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit100.i
    i8 32, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit100.i
  ]

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit100.i: ; preds = %.lr.ph539.i, %.lr.ph539.i, %.lr.ph539.i, %.lr.ph539.i, %.lr.ph539.i
  %.sroa.6.0.i61.i.i = add nsw i64 %.sroa.6.0.i61.i538.i, -1 ; 2 uses
  %.not.i63.i.i = icmp eq i64 %.sroa.6.0.i61.i.i, 0
  br i1 %.not.i63.i.i, label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser15skip_whitespace.exit65.i.thread.i, label %.lr.ph539.i

_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser15skip_whitespace.exit65.i.i: ; preds = %.lr.ph539.i
  %i.hf = icmp eq i64 %.sroa.6.0.i61.i538.i, 1
  br i1 %i.hf, label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser15skip_whitespace.exit65.i.thread.i, label %bb.cj

bb.cj:                                            ; preds = %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser15skip_whitespace.exit65.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i68.i.pn536.i, i64 3 ; 2 uses
  %i.hh = add nsw i64 %.sroa.6.0.i61.i.in535.i, -3 ; 2 uses
  %i.hi = add i8 %.val.i98.i, -48                 ; 2 uses
  %or.cond.i46.i = icmp ult i8 %i.hi, 10
  br i1 %or.cond.i46.i, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %.sroa.0.0.i45.ptr.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i68.i.pn536.i, i64 2
  %i.hj = load i8, ptr %.sroa.0.0.i45.ptr.1.i, align 1, !alias.scope !677, !noalias !678, !noundef !4 ; 2 uses
  %i.hk = add i8 %i.hj, -48                       ; 2 uses
  %or.cond.i46.1.i = icmp ult i8 %i.hk, 10
  br i1 %or.cond.i46.1.i, label %_RNvNtNtCs4CtJ3uPHEZZ_4jiff4util5parse3i64.exit47.i, label %bb.cl

_RNvNtNtCs4CtJ3uPHEZZ_4jiff4util5parse3i64.exit47.i: ; preds = %bb.ck
  %narrow695.i = mul nuw nsw i8 %i.hi, 10
  %narrow775.i = add nuw nsw i8 %i.hk, %narrow695.i ; 2 uses
  %i.hl = zext nneg i8 %narrow775.i to i64
  %or.cond411.i = icmp samesign ugt i8 %narrow775.i, 59
  br i1 %or.cond411.i, label %bb.cm, label %.preheader418.i

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.lcssa604.i = phi i8 [ %.val.i98.i, %bb.cj ], [ %i.hj, %bb.ck ]
  %i.hm = tail call noundef ptr @_RNvXs1_NtNtCs4CtJ3uPHEZZ_4jiff5error4utilNtB7_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef 1, i8 %.lcssa604.i) #24, !noalias !679
  br label %bb.cn

.preheader418.i:                                  ; preds = %_RNvNtNtCs4CtJ3uPHEZZ_4jiff4util5parse3i64.exit47.i
  %.not.i57.i542.i = icmp eq i64 %i.hh, 0
  br i1 %.not.i57.i542.i, label %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh11starts_withCs5XgW7KoffLW_12opendal_core.exit.thread.thread729.i, label %.lr.ph546.preheader.i

.lr.ph546.preheader.i:                            ; preds = %.preheader418.i
  %scevgep635.i = getelementptr i8, ptr %.sroa.0.0.i74.i515.i, i64 %.sroa.6.0.i73.i514.i ; 2 uses
  %.val.i109.peel.i = load i8, ptr %i.hg, align 1, !alias.scope !680, !noalias !681, !noundef !4
  switch i8 %.val.i109.peel.i, label %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh11starts_withCs5XgW7KoffLW_12opendal_core.exit.thread.thread729.i [
    i8 9, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit111.peel.i
    i8 10, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit111.peel.i
    i8 12, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit111.peel.i
    i8 13, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit111.peel.i
    i8 32, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit111.peel.i
    i8 58, label %.preheader417.i
  ]

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit111.peel.i: ; preds = %.lr.ph546.preheader.i, %.lr.ph546.preheader.i, %.lr.ph546.preheader.i, %.lr.ph546.preheader.i, %.lr.ph546.preheader.i
  %i.hn = add nsw i64 %.sroa.6.0.i61.i.in535.i, -4 ; 2 uses
  %.not.i57.i.peel.i = icmp eq i64 %i.hn, 0
  br i1 %.not.i57.i.peel.i, label %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh11starts_withCs5XgW7KoffLW_12opendal_core.exit.thread.thread.i, label %.lr.ph546.peel.next.i

.lr.ph546.peel.next.i:                            ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit111.peel.i
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i68.i.pn536.i, i64 4
  br label %.lr.ph546.i

bb.cm:                                            ; preds = %_RNvNtNtCs4CtJ3uPHEZZ_4jiff4util5parse3i64.exit47.i
  %i.hp = tail call noundef i8 @_RNvXsw_NtNtCs4CtJ3uPHEZZ_4jiff4util1bNtB5_6MinuteNtNtCs5RLZBEkhFyl_9jiff_core6bounds6Bounds5error() #24, !noalias !679
  %i.hq = tail call noundef ptr @_RNvXNtNtCs4CtJ3uPHEZZ_4jiff4util1bNtNtB6_5error5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %i.hp), !noalias !679
  br label %bb.cn

_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser15skip_whitespace.exit65.i.thread.i: ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit100.i, %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser15skip_whitespace.exit65.i.i, %.preheader419.i
  %i.hr = tail call noundef ptr @_RNvXs_NtNtNtCs4CtJ3uPHEZZ_4jiff5error3fmt7rfc2822NtB8_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB4_5ErrorE4from(i24 8) #24, !noalias !682
  br label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser20parse_zoned_internal.exit.thread.i

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.sroa.7158.0.ph.i = phi ptr [ %i.hq, %bb.cm ], [ %i.hm, %bb.cl ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !683
  store ptr %.sroa.7158.0.ph.i, ptr %i.j, align 8, !noalias !683
  %i.hs = invoke noundef ptr @_RNvXNtNtNtCs4CtJ3uPHEZZ_4jiff5error3fmt7rfc2822NtB2_5ErrorNtB6_9IntoError10into_error(i24 23)
          to label %_RNCINvXsk_NtCs4CtJ3uPHEZZ_4jiff5errorINtNtCsgxBkk5gSRhY_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt7rfc28225ErrorE0Cs5XgW7KoffLW_12opendal_core.exit107.i unwind label %bb.co, !noalias !684

bb.co:                                            ; preds = %bb.cn
  %i.ht = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.hu = icmp eq ptr %.sroa.7158.0.ph.i, null
  br i1 %i.hu, label %common.resume, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.hv = atomicrmw sub ptr %.sroa.7158.0.ph.i, i64 1 release, align 8, !noalias !685
  %i.hw = icmp eq i64 %i.hv, 1
  br i1 %i.hw, label %bb.cq, label %common.resume

bb.cq:                                            ; preds = %bb.cp
  fence acquire, !noalias !686
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtCs4CtJ3uPHEZZ_4jiff5error10ErrorInnerE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #24
          to label %common.resume unwind label %bb.cr, !noalias !684

bb.cr:                                            ; preds = %bb.cq
  %i.hx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #23, !noalias !684
  unreachable

_RNCINvXsk_NtCs4CtJ3uPHEZZ_4jiff5errorINtNtCsgxBkk5gSRhY_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt7rfc28225ErrorE0Cs5XgW7KoffLW_12opendal_core.exit107.i: ; preds = %bb.cn
  %i.hy = tail call noundef ptr @_RNvMs_NtCs4CtJ3uPHEZZ_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.7158.0.ph.i, ptr noundef %i.hs), !noalias !684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !683
  br label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser20parse_zoned_internal.exit.thread.i

.lr.ph546.i:                                      ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit111.i, %.lr.ph546.peel.next.i
  %.sroa.0.0.i56.i545.i = phi ptr [ %i.ia, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit111.i ], [ %i.ho, %.lr.ph546.peel.next.i ] ; 4 uses
  %.sroa.6.0.i55.i544.i = phi i64 [ %i.hz, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit111.i ], [ %i.hn, %.lr.ph546.peel.next.i ] ; 3 uses
  %.val.i109.i = load i8, ptr %.sroa.0.0.i56.i545.i, align 1, !alias.scope !680, !noalias !681, !noundef !4
  switch i8 %.val.i109.i, label %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh11starts_withCs5XgW7KoffLW_12opendal_core.exit.thread.thread.i [
    i8 9, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit111.i
    i8 10, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit111.i
    i8 12, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit111.i
    i8 13, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit111.i
    i8 32, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit111.i
    i8 58, label %.preheader417.i
  ]

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit111.i: ; preds = %.lr.ph546.i, %.lr.ph546.i, %.lr.ph546.i, %.lr.ph546.i, %.lr.ph546.i
  %i.hz = add nsw i64 %.sroa.6.0.i55.i544.i, -1   ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i56.i545.i, i64 1
  %.not.i57.i.i = icmp eq i64 %i.hz, 0
  br i1 %.not.i57.i.i, label %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh11starts_withCs5XgW7KoffLW_12opendal_core.exit.thread.thread.i, label %.lr.ph546.i, !llvm.loop !507

.preheader417.i:                                  ; preds = %.lr.ph546.i, %.lr.ph546.preheader.i
  %.sroa.6.0.i55.i544.lcssa.i20 = phi i64 [ %i.hh, %.lr.ph546.preheader.i ], [ %.sroa.6.0.i55.i544.i, %.lr.ph546.i ] ; 3 uses
  %.sroa.0.0.i56.i545.lcssa.i18 = phi ptr [ %i.hg, %.lr.ph546.preheader.i ], [ %.sroa.0.0.i56.i545.i, %.lr.ph546.i ] ; 2 uses
  %.sroa.6.0.i49.i551.i = add nsw i64 %.sroa.6.0.i55.i544.lcssa.i20, -1 ; 2 uses
  %.not.i51.i552.i = icmp eq i64 %.sroa.6.0.i49.i551.i, 0
  br i1 %.not.i51.i552.i, label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser15skip_whitespace.exit53.i.thread.i, label %.lr.ph557.i

_RNvMNtCsgxBkk5gSRhY_4core5sliceSh11starts_withCs5XgW7KoffLW_12opendal_core.exit.thread.thread729.i: ; preds = %.lr.ph546.preheader.i, %.preheader418.i
  %i.ib = tail call noundef ptr @_RNvXs_NtNtNtCs4CtJ3uPHEZZ_4jiff5error3fmt7rfc2822NtB8_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB4_5ErrorE4from(i24 36) #24, !noalias !618
  br label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser20parse_zoned_internal.exit.thread.i

_RNvMNtCsgxBkk5gSRhY_4core5sliceSh11starts_withCs5XgW7KoffLW_12opendal_core.exit.thread.thread.i: ; preds = %.lr.ph546.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit111.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit126.i, %.lr.ph565.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit126.peel.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit111.peel.i
  %.sroa.0136.0.i.i.i = phi i8 [ %spec.store.select.i.i.i.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit126.peel.i ], [ 0, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit111.peel.i ], [ %spec.store.select.i.i.i.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit126.i ], [ %spec.store.select.i.i.i.i, %.lr.ph565.i ], [ 0, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit111.i ], [ 0, %.lr.ph546.i ] ; 2 uses
  %.sroa.0137.0.i.i.i = phi ptr [ %scevgep637.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit126.peel.i ], [ %scevgep635.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit111.peel.i ], [ %scevgep637.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit126.i ], [ %.sroa.0.0.i44.i563.i, %.lr.ph565.i ], [ %.sroa.0.0.i56.i545.i, %.lr.ph546.i ], [ %scevgep635.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit111.i ] ; 7 uses
  %.sroa.5140.0.i.i.i = phi i64 [ 0, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit126.peel.i ], [ 0, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit111.peel.i ], [ 0, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit126.i ], [ %.sroa.6.0.i43.i562.i, %.lr.ph565.i ], [ %.sroa.6.0.i55.i544.i, %.lr.ph546.i ], [ 0, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit111.i ] ; 4 uses
  %i.ic = tail call fastcc i48 @_RNvMNtNtCs5RLZBEkhFyl_9jiff_core5civil4dateNtB2_4Date3new(i16 noundef %.sroa.08.0.i.i.i.i, i8 noundef %.sroa.09.0.i.i.i.i, i8 noundef %i.ck) #25, !noalias !687 ; 2 uses
  %.sroa.0151.2.extract.shift.i.i.i = lshr i48 %i.ic, 16
  %.sroa.0151.2.extract.trunc.i.i.i = trunc nuw i48 %.sroa.0151.2.extract.shift.i.i.i to i32 ; 6 uses
  %i.id = trunc i48 %i.ic to i1
  br i1 %i.id, label %bb.cy, label %bb.cz, !prof !8

.lr.ph557.i:                                      ; preds = %.preheader417.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit117.i
  %.sroa.6.0.i49.i556.i = phi i64 [ %.sroa.6.0.i49.i.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit117.i ], [ %.sroa.6.0.i49.i551.i, %.preheader417.i ] ; 3 uses
  %.sroa.0.0.i56.i.pn554.i = phi ptr [ %.sroa.0.0.i50.i.ptr555.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit117.i ], [ %.sroa.0.0.i56.i545.lcssa.i18, %.preheader417.i ] ; 4 uses
  %.sroa.6.0.i49.i.in553.i = phi i64 [ %.sroa.6.0.i49.i556.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit117.i ], [ %.sroa.6.0.i55.i544.lcssa.i20, %.preheader417.i ] ; 2 uses
  %.sroa.0.0.i50.i.ptr555.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i56.i.pn554.i, i64 1 ; 2 uses
  %.val.i115.i = load i8, ptr %.sroa.0.0.i50.i.ptr555.i, align 1, !alias.scope !688, !noalias !689, !noundef !4 ; 3 uses
  switch i8 %.val.i115.i, label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser15skip_whitespace.exit53.i.i [
    i8 9, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit117.i
    i8 10, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit117.i
    i8 12, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit117.i
    i8 13, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit117.i
    i8 32, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit117.i
  ]

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit117.i: ; preds = %.lr.ph557.i, %.lr.ph557.i, %.lr.ph557.i, %.lr.ph557.i, %.lr.ph557.i
  %.sroa.6.0.i49.i.i = add nsw i64 %.sroa.6.0.i49.i556.i, -1 ; 2 uses
  %.not.i51.i.i = icmp eq i64 %.sroa.6.0.i49.i.i, 0
  br i1 %.not.i51.i.i, label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser15skip_whitespace.exit53.i.thread.i, label %.lr.ph557.i

_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser15skip_whitespace.exit53.i.i: ; preds = %.lr.ph557.i
  %i.ie = icmp eq i64 %.sroa.6.0.i49.i556.i, 1
  br i1 %i.ie, label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser15skip_whitespace.exit53.i.thread.i, label %bb.cs

bb.cs:                                            ; preds = %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser15skip_whitespace.exit53.i.i
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i56.i.pn554.i, i64 3
  %i.ig = add i8 %.val.i115.i, -48                ; 2 uses
  %or.cond.i34.i = icmp ult i8 %i.ig, 10
  br i1 %or.cond.i34.i, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %.sroa.0.0.i33.ptr.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i56.i.pn554.i, i64 2
  %i.ih = load i8, ptr %.sroa.0.0.i33.ptr.1.i, align 1, !alias.scope !690, !noalias !691, !noundef !4 ; 2 uses
  %i.ii = add i8 %i.ih, -48                       ; 2 uses
  %or.cond.i34.1.i = icmp ult i8 %i.ii, 10
  br i1 %or.cond.i34.1.i, label %_RNvNtNtCs4CtJ3uPHEZZ_4jiff4util5parse3i64.exit35.i, label %bb.cu

_RNvNtNtCs4CtJ3uPHEZZ_4jiff4util5parse3i64.exit35.i: ; preds = %bb.ct
  %narrow696.i = mul nuw nsw i8 %i.ig, 10
  %narrow776.i = add nuw nsw i8 %i.ii, %narrow696.i ; 3 uses
  %or.cond412.i = icmp samesign ugt i8 %narrow776.i, 60
  br i1 %or.cond412.i, label %bb.cv, label %bb.cx

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.lcssa593.i = phi i8 [ %.val.i115.i, %bb.cs ], [ %i.ih, %bb.ct ]
  %i.ij = tail call noundef ptr @_RNvXs1_NtNtCs4CtJ3uPHEZZ_4jiff5error4utilNtB7_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef 1, i8 %.lcssa593.i) #24, !noalias !692
  br label %bb.cw

bb.cv:                                            ; preds = %_RNvNtNtCs4CtJ3uPHEZZ_4jiff4util5parse3i64.exit35.i
  %i.ik = tail call noundef i8 @_RNvXsq_NtNtCs4CtJ3uPHEZZ_4jiff4util1bNtB5_10LeapSecondNtNtCs5RLZBEkhFyl_9jiff_core6bounds6Bounds5error() #24, !noalias !692
  %i.il = tail call noundef ptr @_RNvXNtNtCs4CtJ3uPHEZZ_4jiff4util1bNtNtB6_5error5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %i.ik), !noalias !692
  br label %bb.cw

_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser15skip_whitespace.exit53.i.thread.i: ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit117.i, %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser15skip_whitespace.exit53.i.i, %.preheader417.i
  %i.im = tail call noundef ptr @_RNvXs_NtNtNtCs4CtJ3uPHEZZ_4jiff5error3fmt7rfc2822NtB8_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB4_5ErrorE4from(i24 11) #24, !noalias !693
  br label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser20parse_zoned_internal.exit.thread.i

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.sroa.7172.0.ph.i = phi ptr [ %i.il, %bb.cv ], [ %i.ij, %bb.cu ]
  %i.in = tail call fastcc noundef ptr @_RNCINvXsk_NtCs4CtJ3uPHEZZ_4jiff5errorINtNtCsgxBkk5gSRhY_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt7rfc28225ErrorE0Cs5XgW7KoffLW_12opendal_core(i24 26, ptr noundef %.sroa.7172.0.ph.i) #25, !noalias !694
  br label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser20parse_zoned_internal.exit.thread.i

bb.cx:                                            ; preds = %_RNvNtNtCs4CtJ3uPHEZZ_4jiff4util5parse3i64.exit35.i
  %i.io = icmp eq i8 %narrow776.i, 60
  %spec.store.select.i.i.i.i = select i1 %i.io, i8 59, i8 %narrow776.i ; 3 uses
  %.not.i45.i560.i = icmp eq i64 %.sroa.6.0.i49.i.in553.i, 3
  br i1 %.not.i45.i560.i, label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser15skip_whitespace.exit47.i.i, label %.lr.ph565.preheader.i

.lr.ph565.preheader.i:                            ; preds = %bb.cx
  %scevgep637.i = getelementptr i8, ptr %.sroa.0.0.i56.i545.lcssa.i18, i64 %.sroa.6.0.i55.i544.lcssa.i20 ; 2 uses
  %.val.i124.peel.i = load i8, ptr %i.if, align 1, !alias.scope !695, !noalias !696, !noundef !4
  switch i8 %.val.i124.peel.i, label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser15skip_whitespace.exit47.i.i [
    i8 9, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit126.peel.i
    i8 10, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit126.peel.i
    i8 12, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit126.peel.i
    i8 13, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit126.peel.i
    i8 32, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit126.peel.i
  ]

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit126.peel.i: ; preds = %.lr.ph565.preheader.i, %.lr.ph565.preheader.i, %.lr.ph565.preheader.i, %.lr.ph565.preheader.i, %.lr.ph565.preheader.i
  %i.ip = add nsw i64 %.sroa.6.0.i49.i.in553.i, -4 ; 2 uses
  %.not.i45.i.peel.i = icmp eq i64 %i.ip, 0
  br i1 %.not.i45.i.peel.i, label %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh11starts_withCs5XgW7KoffLW_12opendal_core.exit.thread.thread.i, label %.lr.ph565.peel.next.i

.lr.ph565.peel.next.i:                            ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit126.peel.i
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i56.i.pn554.i, i64 4
  br label %.lr.ph565.i

.lr.ph565.i:                                      ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit126.i, %.lr.ph565.peel.next.i
  %.sroa.0.0.i44.i563.i = phi ptr [ %i.is, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit126.i ], [ %i.iq, %.lr.ph565.peel.next.i ] ; 3 uses
  %.sroa.6.0.i43.i562.i = phi i64 [ %i.ir, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit126.i ], [ %i.ip, %.lr.ph565.peel.next.i ] ; 2 uses
  %.val.i124.i = load i8, ptr %.sroa.0.0.i44.i563.i, align 1, !alias.scope !695, !noalias !696, !noundef !4
  switch i8 %.val.i124.i, label %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh11starts_withCs5XgW7KoffLW_12opendal_core.exit.thread.thread.i [
    i8 9, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit126.i
    i8 10, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit126.i
    i8 12, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit126.i
    i8 13, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit126.i
    i8 32, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit126.i
  ]

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit126.i: ; preds = %.lr.ph565.i, %.lr.ph565.i, %.lr.ph565.i, %.lr.ph565.i, %.lr.ph565.i
  %i.ir = add nsw i64 %.sroa.6.0.i43.i562.i, -1   ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i44.i563.i, i64 1
  %.not.i45.i.i = icmp eq i64 %i.ir, 0
  br i1 %.not.i45.i.i, label %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh11starts_withCs5XgW7KoffLW_12opendal_core.exit.thread.thread.i, label %.lr.ph565.i, !llvm.loop !524

_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser15skip_whitespace.exit47.i.i: ; preds = %.lr.ph565.preheader.i, %bb.cx
  %i.it = tail call noundef ptr @_RNvXs_NtNtNtCs4CtJ3uPHEZZ_4jiff5error3fmt7rfc2822NtB8_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB4_5ErrorE4from(i24 36) #24, !noalias !618
  br label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser20parse_zoned_internal.exit.thread.i

bb.cy:                                            ; preds = %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh11starts_withCs5XgW7KoffLW_12opendal_core.exit.thread.thread.i
  %i.iu = tail call noundef ptr @_RNvMs_NtCs4CtJ3uPHEZZ_4jiff5errorNtB4_5Error11jcore_range(i32 %.sroa.0151.2.extract.trunc.i.i.i) #24, !noalias !618
  %i.iv = tail call fastcc noundef ptr @_RNCINvXsk_NtCs4CtJ3uPHEZZ_4jiff5errorINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtNtBa_5civil4date4DateNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtNtB8_3fmt7rfc28225ErrorE0Cs5XgW7KoffLW_12opendal_core(ptr noundef %i.iu) #25
  br label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser20parse_zoned_internal.exit.thread.i

bb.cz:                                            ; preds = %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh11starts_withCs5XgW7KoffLW_12opendal_core.exit.thread.thread.i
  %or.cond2.i.i = icmp ult i8 %.sroa.0136.0.i.i.i, 60
  br i1 %or.cond2.i.i, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultNtNtNtCs4CtJ3uPHEZZ_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapCs5XgW7KoffLW_12opendal_core.exit.i.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.iw = tail call noundef ptr @_RNvMs_NtCs4CtJ3uPHEZZ_4jiff5errorNtB4_5Error11jcore_range(i32 5375) #24, !noalias !618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !697
  store ptr %i.iw, ptr %i.n, align 8, !noalias !697
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 43, ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #20
          to label %bb.de unwind label %bb.db, !noalias !698

bb.db:                                            ; preds = %bb.da
  %i.ix = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !699)
  call void @llvm.experimental.noalias.scope.decl(metadata !700), !noalias !701
  %i.iy = load ptr, ptr %i.n, align 8, !alias.scope !702, !noalias !703, !noundef !4 ; 2 uses
  %i.iz = icmp eq ptr %i.iy, null
  br i1 %i.iz, label %common.resume, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ja = atomicrmw sub ptr %i.iy, i64 1 release, align 8, !noalias !704
  %i.jb = icmp eq i64 %i.ja, 1
  br i1 %i.jb, label %bb.dd, label %common.resume

bb.dd:                                            ; preds = %bb.dc
  fence acquire, !noalias !701
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtCs4CtJ3uPHEZZ_4jiff5error10ErrorInnerE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #24
          to label %common.resume unwind label %bb.df, !noalias !705

bb.de:                                            ; preds = %bb.da
  unreachable

bb.df:                                            ; preds = %bb.dd
  %i.jc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #23, !noalias !698
  unreachable

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultNtNtNtCs4CtJ3uPHEZZ_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapCs5XgW7KoffLW_12opendal_core.exit.i.i.i: ; preds = %bb.cz
  %.sroa.12.10.insert.ext.i = zext nneg i8 %.sroa.0136.0.i.i.i to i64
  %.not.i28.i.i = icmp eq i8 %.sroa.14.0.i, 0
  %i.jd = load i8, ptr @_RNvNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc282223DEFAULT_DATETIME_PARSER, align 1, !range !706, !noalias !707
  %i.je = trunc nuw i8 %i.jd to i1
  %or.cond.i.i.i = select i1 %.not.i28.i.i, i1 true, i1 %i.je
  br i1 %or.cond.i.i.i, label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser14parse_datetime.exit.i.i, label %bb.dg

bb.dg:                                            ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultNtNtNtCs4CtJ3uPHEZZ_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapCs5XgW7KoffLW_12opendal_core.exit.i.i.i
  %i.jf = tail call fastcc noundef i8 @_RNvMNtNtCs4CtJ3uPHEZZ_4jiff5civil4dateNtB2_4Date7weekday(i32 noundef %.sroa.0151.2.extract.trunc.i.i.i) #25, !noalias !618
  %.not164.i.i.i = icmp eq i8 %.sroa.14.0.i, %i.jf
  br i1 %.not164.i.i.i, label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser14parse_datetime.exit.i.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.jg = tail call fastcc noundef i8 @_RNvMNtNtCs4CtJ3uPHEZZ_4jiff5civil4dateNtB2_4Date7weekday(i32 noundef %.sroa.0151.2.extract.trunc.i.i.i) #25, !noalias !618
  %.sroa.0158.1.insert.ext.i.i.i = zext nneg i8 %.sroa.14.0.i to i24
  %.sroa.0158.1.insert.shift.i.i.i = shl nuw nsw i24 %.sroa.0158.1.insert.ext.i.i.i, 8
  %.sroa.0158.2.insert.ext.i.i.i = zext nneg i8 %i.jg to i24
  %.sroa.0158.2.insert.shift.i.i.i = shl nuw nsw i24 %.sroa.0158.2.insert.ext.i.i.i, 16
  %.sroa.0158.1.insert.insert.i.i.i = or disjoint i24 %.sroa.0158.2.insert.shift.i.i.i, %.sroa.0158.1.insert.shift.i.i.i
  %.sroa.0158.2.insert.insert.i.i.i = or disjoint i24 %.sroa.0158.1.insert.insert.i.i.i, 15
  %i.jh = tail call noundef ptr @_RNvXs_NtNtNtCs4CtJ3uPHEZZ_4jiff5error3fmt7rfc2822NtB8_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB4_5ErrorE4from(i24 %.sroa.0158.2.insert.insert.i.i.i) #24, !noalias !618
  br label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser20parse_zoned_internal.exit.thread.i

_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser14parse_datetime.exit.i.i: ; preds = %bb.dg, %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultNtNtNtCs4CtJ3uPHEZZ_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapCs5XgW7KoffLW_12opendal_core.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !708
  %.not.i.i.i = icmp eq i64 %.sroa.5140.0.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser14parse_datetime.exit.i.i
  %i.ji = tail call noundef ptr @_RNvXs_NtNtNtCs4CtJ3uPHEZZ_4jiff5error3fmt7rfc2822NtB8_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB4_5ErrorE4from(i24 10) #24, !noalias !709
  br label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser12parse_offset.exit.i.thread.i

bb.dj:                                            ; preds = %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser14parse_datetime.exit.i.i
  %i.jj = load i8, ptr %.sroa.0137.0.i.i.i, align 1, !alias.scope !710, !noalias !709, !noundef !4
  switch i8 %i.jj, label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser12parse_offset.exit.i.i [
    i8 43, label %bb.dl
    i8 45, label %bb.dk
  ]

bb.dk:                                            ; preds = %bb.dj
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.sroa.020.0.i.i.i = phi i32 [ -1, %bb.dk ], [ 1, %bb.dj ]
  %i.jk = icmp samesign ult i64 %.sroa.5140.0.i.i.i, 5
  br i1 %i.jk, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0137.0.i.i.i, i64 5
  %i.jm = add nsw i64 %.sroa.5140.0.i.i.i, -5
  %.sroa.0.0.i41.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.0137.0.i.i.i, i64 1
  %i.jn = load i8, ptr %.sroa.0.0.i41.ptr.i, align 1, !alias.scope !711, !noalias !712, !noundef !4 ; 2 uses
  %i.jo = add i8 %i.jn, -48                       ; 2 uses
  %or.cond.i42.i = icmp ult i8 %i.jo, 10
  br i1 %or.cond.i42.i, label %bb.do, label %bb.dp

bb.dn:                                            ; preds = %bb.dl
  %i.jp = tail call noundef ptr @_RNvXs_NtNtNtCs4CtJ3uPHEZZ_4jiff5error3fmt7rfc2822NtB8_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB4_5ErrorE4from(i24 29) #24, !noalias !709
  br label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser12parse_offset.exit.i.thread.i

bb.do:                                            ; preds = %bb.dm
  %.sroa.0.0.i41.ptr.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0137.0.i.i.i, i64 2
  %i.jq = load i8, ptr %.sroa.0.0.i41.ptr.1.i, align 1, !alias.scope !711, !noalias !712, !noundef !4 ; 2 uses
  %i.jr = add i8 %i.jq, -48                       ; 2 uses
  %or.cond.i42.1.i = icmp ult i8 %i.jr, 10
  br i1 %or.cond.i42.1.i, label %_RNvNtNtCs4CtJ3uPHEZZ_4jiff4util5parse3i64.exit43.i, label %bb.dp

_RNvNtNtCs4CtJ3uPHEZZ_4jiff4util5parse3i64.exit43.i: ; preds = %bb.do
  %narrow697.i = mul nuw nsw i8 %i.jo, 10
  %narrow777.i = add nuw nsw i8 %i.jr, %narrow697.i ; 2 uses
  %i.js = icmp samesign ugt i8 %narrow777.i, 25
  br i1 %i.js, label %bb.dq, label %.preheader.preheader.i

bb.dp:                                            ; preds = %bb.do, %bb.dm
  %.lcssa590.i = phi i8 [ %i.jn, %bb.dm ], [ %i.jq, %bb.do ]
  %i.jt = tail call noundef ptr @_RNvXs1_NtNtCs4CtJ3uPHEZZ_4jiff5error4utilNtB7_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef 1, i8 %.lcssa590.i) #24, !noalias !713
  br label %bb.dr

.preheader.preheader.i:                           ; preds = %_RNvNtNtCs4CtJ3uPHEZZ_4jiff4util5parse3i64.exit43.i
  %.sroa.0.0.i37.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.0137.0.i.i.i, i64 3
  %i.ju = load i8, ptr %.sroa.0.0.i37.ptr.i, align 1, !alias.scope !714, !noalias !715, !noundef !4 ; 2 uses
  %i.jv = add i8 %i.ju, -48                       ; 2 uses
  %or.cond.i38.i = icmp ult i8 %i.jv, 10
  br i1 %or.cond.i38.i, label %.preheader.1.i, label %bb.dw

bb.dq:                                            ; preds = %_RNvNtNtCs4CtJ3uPHEZZ_4jiff4util5parse3i64.exit43.i
  %i.jw = tail call noundef i8 @_RNvXsE_NtNtCs4CtJ3uPHEZZ_4jiff4util1bNtB5_11OffsetHoursNtNtCs5RLZBEkhFyl_9jiff_core6bounds6Bounds5error() #24, !noalias !713
  %i.jx = tail call noundef ptr @_RNvXNtNtCs4CtJ3uPHEZZ_4jiff4util1bNtNtB6_5error5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %i.jw), !noalias !713
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.sroa.730.0.ph.i = phi ptr [ %i.jx, %bb.dq ], [ %i.jt, %bb.dp ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !716
  store ptr %.sroa.730.0.ph.i, ptr %i.i, align 8, !noalias !716
  %i.jy = invoke noundef ptr @_RNvXNtNtNtCs4CtJ3uPHEZZ_4jiff5error3fmt7rfc2822NtB2_5ErrorNtB6_9IntoError10into_error(i24 24)
          to label %_RNCINvXsk_NtCs4CtJ3uPHEZZ_4jiff5errorINtNtCsgxBkk5gSRhY_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt7rfc28225ErrorE0Cs5XgW7KoffLW_12opendal_core.exit135.i unwind label %bb.ds, !noalias !709

bb.ds:                                            ; preds = %bb.dr
  %i.jz = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ka = icmp eq ptr %.sroa.730.0.ph.i, null
  br i1 %i.ka, label %common.resume, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.kb = atomicrmw sub ptr %.sroa.730.0.ph.i, i64 1 release, align 8, !noalias !717
  %i.kc = icmp eq i64 %i.kb, 1
  br i1 %i.kc, label %bb.du, label %common.resume

bb.du:                                            ; preds = %bb.dt
  fence acquire, !noalias !718
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtCs4CtJ3uPHEZZ_4jiff5error10ErrorInnerE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #24
          to label %common.resume unwind label %bb.dv, !noalias !709

bb.dv:                                            ; preds = %bb.du
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #23, !noalias !709
  unreachable

_RNCINvXsk_NtCs4CtJ3uPHEZZ_4jiff5errorINtNtCsgxBkk5gSRhY_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt7rfc28225ErrorE0Cs5XgW7KoffLW_12opendal_core.exit135.i: ; preds = %bb.dr
  %i.ke = tail call noundef ptr @_RNvMs_NtCs4CtJ3uPHEZZ_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.730.0.ph.i, ptr noundef %i.jy), !noalias !709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !716
  br label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser12parse_offset.exit.i.thread.i

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %.sroa.0.0.i37.ptr.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0137.0.i.i.i, i64 4
end_hunk_0
