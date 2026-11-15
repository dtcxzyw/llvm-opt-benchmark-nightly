Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.01?download=true
inline.NumInlined: 443
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvMs0_NtNtCs5XgW7KoffLW_12opendal_core3raw4timeNtB5_9Timestamp13parse_rfc2822:bb.a
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %2, ptr %i.w, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !643)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.x = icmp eq i64 %2, 0
  br i1 %i.x, label %bb.b, label %.preheader422.i

bb.b:                                             ; preds = %bb.a
  %i.y = tail call noundef ptr @_RNvXs_NtNtNtCs4CtJ3uPHEZZ_4jiff5error3fmt7rfc2822NtB8_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB4_5ErrorE4from(i24 4) #24, !noalias !644
  br label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser20parse_zoned_internal.exit.thread.i

.preheader422.i:                                  ; preds = %bb.a, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit.i
  %.sroa.0.0.i80.i463.i = phi ptr [ %i.aa, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit.i ], [ %1, %bb.a ] ; 6 uses
  %.sroa.6.0.i79.i462.i = phi i64 [ %i.z, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit.i ], [ %2, %bb.a ] ; 5 uses
  %.val.i.i = load i8, ptr %.sroa.0.0.i80.i463.i, align 1, !alias.scope !645, !noalias !646, !noundef !5 ; 6 uses
  switch i8 %.val.i.i, label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser15skip_whitespace.exit83.i.i [
    i8 9, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit.i
    i8 10, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit.i
    i8 12, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit.i
    i8 13, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit.i
    i8 32, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit.i
  ]

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %.preheader422.i, %.preheader422.i, %.preheader422.i, %.preheader422.i, %.preheader422.i
  %i.z = add nsw i64 %.sroa.6.0.i79.i462.i, -1    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i80.i463.i, i64 1
  %.not.i81.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i81.i.i, label %bb.c, label %.preheader422.i

bb.c:                                             ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit.i
  %i.ab = tail call noundef ptr @_RNvXs_NtNtNtCs4CtJ3uPHEZZ_4jiff5error3fmt7rfc2822NtB8_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB4_5ErrorE4from(i24 5) #24, !noalias !644
  br label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser20parse_zoned_internal.exit.thread.i

_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser15skip_whitespace.exit83.i.i: ; preds = %.preheader422.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647), !noalias !648
  %i.ac = add i8 %.val.i.i, -48
  %or.cond43.i.i.i.i = icmp ult i8 %i.ac, 10
  br i1 %or.cond43.i.i.i.i, label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser13parse_weekday.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser15skip_whitespace.exit83.i.i
  %or.cond44.i201.i.i.i = icmp ult i64 %.sroa.6.0.i79.i462.i, 4
  br i1 %or.cond44.i201.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.027.1.insert.ext.i.i.i.i = zext i8 %.val.i.i to i24
  %.sroa.027.1.insert.shift.i.i.i.i = shl nuw nsw i24 %.sroa.027.1.insert.ext.i.i.i.i, 8
  %i.ad = trunc nuw nsw i64 %.sroa.6.0.i79.i462.i to i24
  %.sroa.027.2.insert.shift.i.i.i.i = shl nuw nsw i24 %i.ad, 16
  %.sroa.027.1.insert.insert.i.i.i.i = or disjoint i24 %.sroa.027.1.insert.shift.i.i.i.i, %.sroa.027.2.insert.shift.i.i.i.i
  %.sroa.027.2.insert.insert.i.i.i.i = or disjoint i24 %.sroa.027.1.insert.insert.i.i.i.i, 30
  %i.ae = tail call noundef ptr @_RNvXs_NtNtNtCs4CtJ3uPHEZZ_4jiff5error3fmt7rfc2822NtB8_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB4_5ErrorE4from(i24 %.sroa.027.2.insert.insert.i.i.i.i) #24, !noalias !649
  br label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser20parse_zoned_internal.exit.thread.i

bb.f:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i80.i463.i, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !650, !noalias !651, !noundef !5 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i80.i463.i, i64 2
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !650, !noalias !651, !noundef !5 ; 2 uses
  %i.aj = add i8 %.val.i.i, -65
  %i.ak = icmp ult i8 %i.aj, 26
  %i.al = select i1 %i.ak, i8 32, i8 0
  %.sroa.024.0.i203.i.i.i = or i8 %i.al, %.val.i.i
  %i.am = add i8 %i.ag, -65
  %i.an = icmp ult i8 %i.am, 26
  %i.ao = select i1 %i.an, i8 32, i8 0
  %.sroa.025.0.i204.i.i.i = or i8 %i.ao, %i.ag    ; 5 uses
  %i.ap = add i8 %i.ai, -65
  %i.aq = icmp ult i8 %i.ap, 26
  %i.ar = select i1 %i.aq, i8 32, i8 0
  %.sroa.026.0.i.i.i.i = or i8 %i.ar, %i.ai       ; 7 uses
  switch i8 %.sroa.024.0.i203.i.i.i, label %bb.q [
    i8 115, label %bb.g
    i8 109, label %bb.h
    i8 116, label %bb.i
    i8 119, label %bb.j
    i8 102, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  switch i8 %.sroa.025.0.i204.i.i.i, label %bb.q [
    i8 117, label %bb.l
    i8 97, label %bb.m
  ]

bb.h:                                             ; preds = %bb.f
  %i.as = icmp eq i8 %.sroa.025.0.i204.i.i.i, 111
  %i.at = icmp eq i8 %.sroa.026.0.i.i.i.i, 110
  %or.cond.i209.i.i.i = and i1 %i.as, %i.at
  br i1 %or.cond.i209.i.i.i, label %.lr.ph.preheader.i, label %bb.q

bb.i:                                             ; preds = %bb.f
  switch i8 %.sroa.025.0.i204.i.i.i, label %bb.q [
    i8 117, label %bb.n
    i8 104, label %bb.o
  ]

bb.j:                                             ; preds = %bb.f
  %i.au = icmp eq i8 %.sroa.025.0.i204.i.i.i, 101
  %i.av = icmp eq i8 %.sroa.026.0.i.i.i.i, 100
  %or.cond1.i208.i.i.i = and i1 %i.au, %i.av
  br i1 %or.cond1.i208.i.i.i, label %.lr.ph.preheader.i, label %bb.q

bb.k:                                             ; preds = %bb.f
  %i.aw = icmp eq i8 %.sroa.025.0.i204.i.i.i, 114
  %i.ax = icmp eq i8 %.sroa.026.0.i.i.i.i, 105
  %or.cond2.i205.i.i.i = and i1 %i.aw, %i.ax
  br i1 %or.cond2.i205.i.i.i, label %.lr.ph.preheader.i, label %bb.q

bb.l:                                             ; preds = %bb.g
  %i.ay = icmp eq i8 %.sroa.026.0.i.i.i.i, 110
  br i1 %i.ay, label %.lr.ph.preheader.i, label %bb.q

bb.m:                                             ; preds = %bb.g
  %i.az = icmp eq i8 %.sroa.026.0.i.i.i.i, 116
  br i1 %i.az, label %.lr.ph.preheader.i, label %bb.q

.lr.ph.preheader.i:                               ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.h
  %.sroa.08.0.i206.i.i.i = phi i8 [ 3, %bb.j ], [ 7, %bb.l ], [ 6, %bb.m ], [ 1, %bb.h ], [ 2, %bb.n ], [ 4, %bb.o ], [ 5, %bb.k ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i80.i463.i, i64 3
  %i.bb = add nsw i64 %.sroa.6.0.i79.i462.i, -3
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit62.i, %.lr.ph.preheader.i
  %.sroa.0.0.i32.i466.i = phi ptr [ %i.bd, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit62.i ], [ %i.ba, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.6.0.i31.i465.i = phi i64 [ %i.bc, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit62.i ], [ %i.bb, %.lr.ph.preheader.i ] ; 2 uses
  %.val.i60.i = load i8, ptr %.sroa.0.0.i32.i466.i, align 1, !alias.scope !652, !noalias !653, !noundef !5 ; 2 uses
  switch i8 %.val.i60.i, label %bb.p [
    i8 9, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit62.i
    i8 10, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit62.i
    i8 12, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit62.i
    i8 13, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit62.i
    i8 32, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit62.i
    i8 44, label %.preheader421.i
  ]

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit62.i: ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.bc = add nsw i64 %.sroa.6.0.i31.i465.i, -1   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i32.i466.i, i64 1
  %.not.i33.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i33.i.i, label %._crit_edge.i, label %.lr.ph.i

bb.n:                                             ; preds = %bb.i
  %i.be = icmp eq i8 %.sroa.026.0.i.i.i.i, 101
  br i1 %i.be, label %.lr.ph.preheader.i, label %bb.q

bb.o:                                             ; preds = %bb.i
  %i.bf = icmp eq i8 %.sroa.026.0.i.i.i.i, 117
  br i1 %i.bf, label %.lr.ph.preheader.i, label %bb.q

._crit_edge.i:                                    ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit62.i
  %i.bg = tail call noundef ptr @_RNvXs_NtNtNtCs4CtJ3uPHEZZ_4jiff5error3fmt7rfc2822NtB8_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB4_5ErrorE4from(i24 6) #24, !noalias !654
  br label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser20parse_zoned_internal.exit.thread.i

.preheader421.i:                                  ; preds = %.lr.ph.i
  %.sroa.6.0.i.i468.i = add i64 %.sroa.6.0.i31.i465.i, -1 ; 2 uses
  %.not.i29.i469.i = icmp eq i64 %.sroa.6.0.i.i468.i, 0
  br i1 %.not.i29.i469.i, label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser13parse_weekday.exit.i.i.thread216.i, label %.lr.ph472.i

_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser13parse_weekday.exit.i.i.thread216.i: ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit66.i, %.preheader421.i
  %i.bh = tail call noundef ptr @_RNvXs_NtNtNtCs4CtJ3uPHEZZ_4jiff5error3fmt7rfc2822NtB8_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB4_5ErrorE4from(i24 3) #24, !noalias !655
  br label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser20parse_zoned_internal.exit.thread.i

.lr.ph472.i:                                      ; preds = %.preheader421.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit66.i
  %.sroa.6.0.i.i471.i = phi i64 [ %.sroa.6.0.i.i.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit66.i ], [ %.sroa.6.0.i.i468.i, %.preheader421.i ] ; 2 uses
  %.sroa.0.0.i.i470.pn.i = phi ptr [ %.sroa.0.0.i.i470.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit66.i ], [ %.sroa.0.0.i32.i466.i, %.preheader421.i ]
  %.sroa.0.0.i.i470.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i470.pn.i, i64 1 ; 3 uses
  %.val.i64.i = load i8, ptr %.sroa.0.0.i.i470.i, align 1, !alias.scope !656, !noalias !657, !noundef !5
  switch i8 %.val.i64.i, label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser13parse_weekday.exit.i.i.i [
    i8 9, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit66.i
    i8 10, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit66.i
    i8 12, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit66.i
    i8 13, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit66.i
    i8 32, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit66.i
  ]

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit66.i: ; preds = %.lr.ph472.i, %.lr.ph472.i, %.lr.ph472.i, %.lr.ph472.i, %.lr.ph472.i
  %.sroa.6.0.i.i.i = add i64 %.sroa.6.0.i.i471.i, -1 ; 2 uses
  %.not.i29.i.i = icmp eq i64 %.sroa.6.0.i.i.i, 0
  br i1 %.not.i29.i.i, label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser13parse_weekday.exit.i.i.thread216.i, label %.lr.ph472.i

bb.p:                                             ; preds = %.lr.ph.i
  %.sroa.031.1.insert.ext.i.i.i.i = zext i8 %.val.i60.i to i24
  %.sroa.031.1.insert.shift.i.i.i.i = shl nuw nsw i24 %.sroa.031.1.insert.ext.i.i.i.i, 8
  %.sroa.031.1.insert.insert.i.i.i.i = or disjoint i24 %.sroa.031.1.insert.shift.i.i.i.i, 32
  %i.bi = tail call noundef ptr @_RNvXs_NtNtNtCs4CtJ3uPHEZZ_4jiff5error3fmt7rfc2822NtB8_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB4_5ErrorE4from(i24 %.sroa.031.1.insert.insert.i.i.i.i) #24, !noalias !654
  br label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser20parse_zoned_internal.exit.thread.i

bb.q:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.033.1.insert.ext.i.i.i.i = zext i8 %.val.i.i to i24
  %.sroa.033.1.insert.shift.i.i.i.i = shl nuw nsw i24 %.sroa.033.1.insert.ext.i.i.i.i, 8
  %.sroa.033.1.insert.insert.i.i.i.i = or disjoint i24 %.sroa.033.1.insert.shift.i.i.i.i, 19
  %i.bj = tail call noundef ptr @_RNvXs_NtNtNtCs4CtJ3uPHEZZ_4jiff5error3fmt7rfc2822NtB8_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB4_5ErrorE4from(i24 %.sroa.033.1.insert.insert.i.i.i.i) #24, !noalias !649
  br label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser20parse_zoned_internal.exit.thread.i

_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser13parse_weekday.exit.i.i.i: ; preds = %.lr.ph472.i, %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser15skip_whitespace.exit83.i.i
  %.sroa.14.0.i = phi i8 [ 0, %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser15skip_whitespace.exit83.i.i ], [ %.sroa.08.0.i206.i.i.i, %.lr.ph472.i ] ; 3 uses
  %.sroa.1157.0.i = phi i64 [ %.sroa.6.0.i79.i462.i, %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser15skip_whitespace.exit83.i.i ], [ %.sroa.6.0.i.i471.i, %.lr.ph472.i ] ; 3 uses
  %.sroa.056.0.i = phi ptr [ %.sroa.0.0.i80.i463.i, %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser15skip_whitespace.exit83.i.i ], [ %.sroa.0.0.i.i470.i, %.lr.ph472.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  %cond.i = icmp eq i64 %.sroa.1157.0.i, 1
  br i1 %cond.i, label %.lr.ph476.preheader.i, label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser13parse_weekday.exit.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.056.0.i, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !659, !noalias !651, !noundef !5
  %i.bm = add i8 %i.bl, -48
  %or.cond.i.i = icmp ult i8 %i.bm, 10
  %spec.select.i.i = select i1 %or.cond.i.i, i64 2, i64 1
  br label %.lr.ph476.preheader.i

.lr.ph476.preheader.i:                            ; preds = %bb.r, %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser13parse_weekday.exit.i.i.i
  %.sroa.01.0.i.i14 = phi i64 [ %spec.select.i.i, %bb.r ], [ 1, %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser13parse_weekday.exit.i.i.i ] ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.056.0.i, i64 %.sroa.01.0.i.i14 ; 3 uses
  br label %.lr.ph476.i

.lr.ph476.i:                                      ; preds = %bb.u, %.lr.ph476.preheader.i
  %.sroa.0.0.i474.i = phi ptr [ %i.bn, %bb.u ], [ %.sroa.056.0.i, %.lr.ph476.preheader.i ] ; 2 uses
  %.sroa.012.0.i473.i = phi i64 [ %10, %bb.u ], [ 0, %.lr.ph476.preheader.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i474.i, i64 1 ; 2 uses
  %i.bo = load i8, ptr %.sroa.0.0.i474.i, align 1, !alias.scope !660, !noalias !661, !noundef !5 ; 2 uses
  %i.bp = add i8 %i.bo, -48                       ; 2 uses
  %or.cond.i31.i = icmp ult i8 %i.bp, 10
  br i1 %or.cond.i31.i, label %bb.s, label %bb.v

bb.s:                                             ; preds = %.lr.ph476.i
  %4 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.012.0.i473.i, i64 10) ; 2 uses
  %5 = extractvalue { i64, i1 } %4, 1
  br i1 %5, label %bb.v, label %bb.t, !prof !9

bb.t:                                             ; preds = %bb.s
  %6 = extractvalue { i64, i1 } %4, 0
  %7 = zext nneg i8 %i.bp to i64
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7) ; 2 uses
  %9 = extractvalue { i64, i1 } %8, 1
  br i1 %9, label %bb.v, label %bb.u, !prof !9

bb.u:                                             ; preds = %bb.t
  %10 = extractvalue { i64, i1 } %8, 0            ; 3 uses
  %11 = icmp eq ptr %i.bn, %3
  br i1 %11, label %_RNvNtNtCs4CtJ3uPHEZZ_4jiff4util5parse3i64.exit.i, label %.lr.ph476.i

bb.v:                                             ; preds = %bb.t, %bb.s, %.lr.ph476.i
  %.sroa.7205.1.ph.i = phi i8 [ 2, %bb.s ], [ 2, %bb.t ], [ 1, %.lr.ph476.i ]
  %i.bq = tail call noundef ptr @_RNvXs1_NtNtCs4CtJ3uPHEZZ_4jiff5error4utilNtB7_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef %.sroa.7205.1.ph.i, i8 %i.bo) #24, !noalias !662
  br label %bb.x

_RNvNtNtCs4CtJ3uPHEZZ_4jiff4util5parse3i64.exit.i: ; preds = %bb.u
  %i.br = add i64 %10, -32
  %or.cond.i = icmp ult i64 %i.br, -31
  br i1 %or.cond.i, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %_RNvNtNtCs4CtJ3uPHEZZ_4jiff4util5parse3i64.exit.i
  %i.bs = tail call noundef i8 @_RNvXsa_NtNtCs4CtJ3uPHEZZ_4jiff4util1bNtB5_3DayNtNtCs5RLZBEkhFyl_9jiff_core6bounds6Bounds5error() #24, !noalias !662
  %i.bt = tail call noundef ptr @_RNvXNtNtCs4CtJ3uPHEZZ_4jiff4util1bNtNtB6_5error5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %i.bs), !noalias !662
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.7198.0.ph.i = phi ptr [ %i.bt, %bb.w ], [ %i.bq, %bb.v ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !663
  store ptr %.sroa.7198.0.ph.i, ptr %i.m, align 8, !noalias !663
  %i.bu = invoke noundef ptr @_RNvXNtNtNtCs4CtJ3uPHEZZ_4jiff5error3fmt7rfc2822NtB2_5ErrorNtB6_9IntoError10into_error(i24 21)
          to label %_RNCINvXsk_NtCs4CtJ3uPHEZZ_4jiff5errorINtNtCsgxBkk5gSRhY_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt7rfc28225ErrorE0Cs5XgW7KoffLW_12opendal_core.exit.i unwind label %bb.y, !noalias !664

bb.y:                                             ; preds = %bb.x
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bw = icmp eq ptr %.sroa.7198.0.ph.i, null
  br i1 %i.bw, label %common.resume, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bx = atomicrmw add ptr %.sroa.7198.0.ph.i, i64 -1 release, align 8, !noalias !665
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.aa, label %common.resume

bb.aa:                                            ; preds = %bb.z
  fence acquire, !noalias !666
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtCs4CtJ3uPHEZZ_4jiff5error10ErrorInnerE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #24
          to label %common.resume unwind label %bb.ab, !noalias !664

bb.ab:                                            ; preds = %bb.aa
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #23, !noalias !664
  unreachable

common.resume:                                    ; preds = %bb.fl, %bb.fj, %bb.fk, %bb.ad, %bb.ae, %bb.af, %bb.y, %bb.z, %bb.aa, %bb.bq, %bb.br, %bb.bs, %bb.ce, %bb.cf, %bb.cg, %bb.co, %bb.cp, %bb.cq, %bb.db, %bb.dc, %bb.dd, %bb.ds, %bb.dt, %bb.du, %bb.dz, %bb.ea, %bb.eb, %bb.el, %bb.ep, %bb.eq, %bb.er, %bb.ev
  %common.resume.op = phi { ptr, i32 } [ %i.ch, %bb.ad ], [ %i.oz, %bb.ev ], [ %i.nv, %bb.ep ], [ %i.bv, %bb.y ], [ %i.fm, %bb.bq ], [ %i.gm, %bb.ce ], [ %i.hk, %bb.co ], [ %i.io, %bb.dd ], [ %i.jq, %bb.ds ], [ %i.kd, %bb.dz ], [ %i.nv, %bb.er ], [ %i.mw, %bb.el ], [ %i.bv, %bb.aa ], [ %i.bv, %bb.z ], [ %i.fm, %bb.bs ], [ %i.fm, %bb.br ], [ %i.gm, %bb.cg ], [ %i.gm, %bb.cf ], [ %i.hk, %bb.cq ], [ %i.hk, %bb.cp ], [ %i.io, %bb.dc ], [ %i.io, %bb.db ], [ %i.jq, %bb.du ], [ %i.jq, %bb.dt ], [ %i.kd, %bb.eb ], [ %i.kd, %bb.ea ], [ %i.nv, %bb.eq ], [ %i.ch, %bb.af ], [ %i.ch, %bb.ae ], [ %lpad.thr_comm, %bb.fk ], [ %lpad.thr_comm, %bb.fl ], [ %lpad.thr_comm, %bb.fj ]
  resume { ptr, i32 } %common.resume.op

_RNCINvXsk_NtCs4CtJ3uPHEZZ_4jiff5errorINtNtCsgxBkk5gSRhY_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt7rfc28225ErrorE0Cs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %bb.x
  %i.ca = tail call noundef ptr @_RNvMs_NtCs4CtJ3uPHEZZ_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.7198.0.ph.i, ptr noundef %i.bu), !noalias !664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !663
  br label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser20parse_zoned_internal.exit.thread.i

bb.ac:                                            ; preds = %_RNvNtNtCs4CtJ3uPHEZZ_4jiff4util5parse3i64.exit.i
  %i.cb = trunc nuw nsw i64 %10 to i8
  %.not.i33.i28477.i = icmp eq i64 %.sroa.1157.0.i, %.sroa.01.0.i.i14
  br i1 %.not.i33.i28477.i, label %.critedge.i, label %.lr.ph482.preheader.i

.lr.ph482.preheader.i:                            ; preds = %bb.ac
  %.val.i69.peel.i = load i8, ptr %3, align 1, !alias.scope !667, !noalias !668, !noundef !5
  switch i8 %.val.i69.peel.i, label %.critedge.i [
    i8 9, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit71.peel.i
    i8 10, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit71.peel.i
    i8 12, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit71.peel.i
    i8 13, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit71.peel.i
    i8 32, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit71.peel.i
  ]

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit71.peel.i: ; preds = %.lr.ph482.preheader.i, %.lr.ph482.preheader.i, %.lr.ph482.preheader.i, %.lr.ph482.preheader.i, %.lr.ph482.preheader.i
  %i.cc = xor i64 %.sroa.01.0.i.i14, -1
  %i.cd = add i64 %.sroa.1157.0.i, %i.cc          ; 2 uses
  %.not.i33.i28.peel.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i33.i28.peel.i, label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser9parse_day.exit.thread.i, label %.lr.ph482.i

.lr.ph482.i:                                      ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit71.peel.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit71.i
  %.sroa.0.0.i32.i27480.pn.i = phi ptr [ %.sroa.0.0.i32.i27480.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit71.i ], [ %3, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit71.peel.i ] ; 5 uses
  %.sroa.6.0.i.i26479.i = phi i64 [ %i.ce, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit71.i ], [ %i.cd, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit71.peel.i ] ; 5 uses
  %.sroa.0.0.i32.i27480.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i32.i27480.pn.i, i64 1 ; 2 uses
  %.val.i69.i = load i8, ptr %.sroa.0.0.i32.i27480.i, align 1, !alias.scope !667, !noalias !668, !noundef !5 ; 3 uses
  switch i8 %.val.i69.i, label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser9parse_day.exit.i [
    i8 9, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit71.i
    i8 10, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit71.i
    i8 12, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit71.i
    i8 13, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit71.i
    i8 32, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit71.i
  ]

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit71.i: ; preds = %.lr.ph482.i, %.lr.ph482.i, %.lr.ph482.i, %.lr.ph482.i, %.lr.ph482.i
  %i.ce = add nsw i64 %.sroa.6.0.i.i26479.i, -1   ; 2 uses
  %.not.i33.i28.i = icmp eq i64 %i.ce, 0
  br i1 %.not.i33.i28.i, label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser9parse_day.exit.thread.i, label %.lr.ph482.i, !llvm.loop !450

.critedge.i:                                      ; preds = %.lr.ph482.preheader.i, %bb.ac
  %i.cf = tail call noundef ptr @_RNvXs_NtNtNtCs4CtJ3uPHEZZ_4jiff5error3fmt7rfc2822NtB8_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB4_5ErrorE4from(i24 36) #24, !noalias !664 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !664
  store ptr %i.cf, ptr %i.a, align 8, !noalias !664
  %i.cg = invoke noundef ptr @_RNvXNtNtNtCs4CtJ3uPHEZZ_4jiff5error3fmt7rfc2822NtB2_5ErrorNtB6_9IntoError10into_error(i24 34)
          to label %_RNCINvXsk_NtCs4CtJ3uPHEZZ_4jiff5errorINtNtCsgxBkk5gSRhY_4core6result6ResultINtNtBa_3fmt6ParseduENtB8_5ErrorEINtB8_12ErrorContextB1b_B1w_E7contextNtNtNtB8_3fmt7rfc28225ErrorE0Cs5XgW7KoffLW_12opendal_core.exit unwind label %bb.ad, !noalias !664

bb.ad:                                            ; preds = %.critedge.i
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ci = icmp eq ptr %i.cf, null
  br i1 %i.ci, label %common.resume, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cj = atomicrmw add ptr %i.cf, i64 -1 release, align 8, !noalias !670
  %i.ck = icmp eq i64 %i.cj, 1
  br i1 %i.ck, label %bb.af, label %common.resume

bb.af:                                            ; preds = %bb.ae
  fence acquire, !noalias !664
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtCs4CtJ3uPHEZZ_4jiff5error10ErrorInnerE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #24
          to label %common.resume unwind label %bb.ag, !noalias !664

bb.ag:                                            ; preds = %bb.af
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #23, !noalias !664
  unreachable

_RNCINvXsk_NtCs4CtJ3uPHEZZ_4jiff5errorINtNtCsgxBkk5gSRhY_4core6result6ResultINtNtBa_3fmt6ParseduENtB8_5ErrorEINtB8_12ErrorContextB1b_B1w_E7contextNtNtNtB8_3fmt7rfc28225ErrorE0Cs5XgW7KoffLW_12opendal_core.exit: ; preds = %.critedge.i
  %i.cm = tail call noundef ptr @_RNvMs_NtCs4CtJ3uPHEZZ_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.cf, ptr noundef %i.cg), !noalias !664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !664
  br label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser20parse_zoned_internal.exit.thread.i

_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser9parse_day.exit.thread.i: ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit71.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0ECs5XgW7KoffLW_12opendal_core.exit71.peel.i
  %i.cn = tail call noundef ptr @_RNvXs_NtNtNtCs4CtJ3uPHEZZ_4jiff5error3fmt7rfc2822NtB8_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB4_5ErrorE4from(i24 9) #24, !noalias !671
  br label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser20parse_zoned_internal.exit.thread.i

_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser9parse_day.exit.i: ; preds = %.lr.ph482.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !672), !noalias !648
  %or.cond44.i.i.i.i = icmp ult i64 %.sroa.6.0.i.i26479.i, 3
  br i1 %or.cond44.i.i.i.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser9parse_day.exit.i
  %i.co = trunc nuw nsw i64 %.sroa.6.0.i.i26479.i to i24
  %.sroa.032.1.insert.shift.i.i.i.i = shl nuw nsw i24 %i.co, 8
  %.sroa.032.1.insert.insert.i.i.i.i = or disjoint i24 %.sroa.032.1.insert.shift.i.i.i.i, 28
  %i.cp = tail call noundef ptr @_RNvXs_NtNtNtCs4CtJ3uPHEZZ_4jiff5error3fmt7rfc2822NtB8_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB4_5ErrorE4from(i24 %.sroa.032.1.insert.insert.i.i.i.i) #24, !noalias !671
  br label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser20parse_zoned_internal.exit.thread.i

bb.ai:                                            ; preds = %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser9parse_day.exit.i
  %i.cq = add i8 %.val.i69.i, -65
  %i.cr = icmp ult i8 %i.cq, 26
  %i.cs = select i1 %i.cr, i8 32, i8 0
  %.sroa.023.0.i.i.i.i = or i8 %i.cs, %.val.i69.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i32.i27480.pn.i, i64 2
  %i.cu = load i8, ptr %i.ct, align 1, !alias.scope !673, !noalias !651, !noundef !5 ; 2 uses
  %i.cv = add i8 %i.cu, -65
  %i.cw = icmp ult i8 %i.cv, 26
  %i.cx = select i1 %i.cw, i8 32, i8 0
  %.sroa.024.0.i.i.i.i = or i8 %i.cx, %i.cu       ; 8 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i32.i27480.pn.i, i64 3
  %i.cz = load i8, ptr %i.cy, align 1, !alias.scope !673, !noalias !651, !noundef !5 ; 2 uses
  %i.da = add i8 %i.cz, -65
  %i.db = icmp ult i8 %i.da, 26
  %i.dc = select i1 %i.db, i8 32, i8 0
  %.sroa.025.0.i.i.i.i = or i8 %i.dc, %i.cz       ; 10 uses
  switch i8 %.sroa.023.0.i.i.i.i, label %bb.aj [
    i8 106, label %bb.ak
    i8 102, label %bb.al
    i8 109, label %bb.am
    i8 97, label %bb.an
    i8 115, label %bb.ao
    i8 111, label %bb.ap
    i8 110, label %bb.aq
    i8 100, label %bb.ar
  ]

bb.aj:                                            ; preds = %bb.ay, %bb.ax, %bb.av, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.ai
  %i.dd = tail call noundef ptr @_RNvXs_NtNtNtCs4CtJ3uPHEZZ_4jiff5error3fmt7rfc2822NtB8_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB4_5ErrorE4from(i24 17) #24, !noalias !671
  br label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser20parse_zoned_internal.exit.thread.i

bb.ak:                                            ; preds = %bb.ai
  switch i8 %.sroa.024.0.i.i.i.i, label %bb.aj [
    i8 97, label %bb.as
    i8 117, label %bb.at
  ]

bb.al:                                            ; preds = %bb.ai
  %i.de = icmp eq i8 %.sroa.024.0.i.i.i.i, 101
  %i.df = icmp eq i8 %.sroa.025.0.i.i.i.i, 98
  %or.cond.i169.i.i.i = and i1 %i.de, %i.df
  br i1 %or.cond.i169.i.i.i, label %bb.az, label %bb.aj

bb.am:                                            ; preds = %bb.ai
  %i.dg = icmp eq i8 %.sroa.024.0.i.i.i.i, 97
  br i1 %i.dg, label %bb.av, label %bb.aj

bb.an:                                            ; preds = %bb.ai
  switch i8 %.sroa.024.0.i.i.i.i, label %bb.aj [
    i8 112, label %bb.ax
    i8 117, label %bb.ay
  ]

bb.ao:                                            ; preds = %bb.ai
  %i.dh = icmp eq i8 %.sroa.024.0.i.i.i.i, 101
  %i.di = icmp eq i8 %.sroa.025.0.i.i.i.i, 112
  %or.cond1.i.i.i.i = and i1 %i.dh, %i.di
  br i1 %or.cond1.i.i.i.i, label %bb.az, label %bb.aj

bb.ap:                                            ; preds = %bb.ai
  %i.dj = icmp eq i8 %.sroa.024.0.i.i.i.i, 99
  %i.dk = icmp eq i8 %.sroa.025.0.i.i.i.i, 116
  %or.cond2.i.i.i.i = and i1 %i.dj, %i.dk
  br i1 %or.cond2.i.i.i.i, label %bb.az, label %bb.aj

bb.aq:                                            ; preds = %bb.ai
  %i.dl = icmp eq i8 %.sroa.024.0.i.i.i.i, 111
  %i.dm = icmp eq i8 %.sroa.025.0.i.i.i.i, 118
  %or.cond3.i.i.i.i = and i1 %i.dl, %i.dm
  br i1 %or.cond3.i.i.i.i, label %bb.az, label %bb.aj

bb.ar:                                            ; preds = %bb.ai
  %i.dn = icmp eq i8 %.sroa.024.0.i.i.i.i, 101
  %i.do = icmp eq i8 %.sroa.025.0.i.i.i.i, 99
  %or.cond4.i.i.i.i = and i1 %i.dn, %i.do
  br i1 %or.cond4.i.i.i.i, label %bb.az, label %bb.aj

bb.as:                                            ; preds = %bb.ak
  %i.dp = icmp eq i8 %.sroa.025.0.i.i.i.i, 110
  br i1 %i.dp, label %bb.az, label %bb.aj

bb.at:                                            ; preds = %bb.ak
  switch i8 %.sroa.025.0.i.i.i.i, label %bb.aj [
    i8 110, label %bb.az
    i8 108, label %bb.au
  ]

bb.au:                                            ; preds = %bb.at
  br label %bb.az

bb.av:                                            ; preds = %bb.am
  switch i8 %.sroa.025.0.i.i.i.i, label %bb.aj [
    i8 114, label %bb.az
    i8 121, label %bb.aw
  ]

bb.aw:                                            ; preds = %bb.av
  br label %bb.az

bb.ax:                                            ; preds = %bb.an
  %i.dq = icmp eq i8 %.sroa.025.0.i.i.i.i, 114
  br i1 %i.dq, label %bb.az, label %bb.aj

bb.ay:                                            ; preds = %bb.an
  %i.dr = icmp eq i8 %.sroa.025.0.i.i.i.i, 103
  br i1 %i.dr, label %bb.az, label %bb.aj

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.al
  %.sroa.09.0.i.i.i.i = phi i8 [ 11, %bb.aq ], [ 1, %bb.as ], [ 7, %bb.au ], [ 6, %bb.at ], [ 2, %bb.al ], [ 5, %bb.aw ], [ 3, %bb.av ], [ 4, %bb.ax ], [ 8, %bb.ay ], [ 9, %bb.ao ], [ 10, %bb.ap ], [ 12, %bb.ar ]
  %.not.i39.i490.i = icmp eq i64 %.sroa.6.0.i.i26479.i, 3
  br i1 %.not.i39.i490.i, label %.critedge583.i, label %.lr.ph495.preheader.i

end_hunk_0
