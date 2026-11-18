Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_fold-9fbef8c9ae416a1b.uu_fold.607f53ef74bdd1d0-cgu.0?download=true
inline.NumInlined: 349
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvCs8hEv8bFEvN4_7uu_fold21process_non_utf8_lineINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_:bb.a
  store i64 %i.cf, ptr %i.n, align 8
  %i.ch = load i64, ptr %i.d, align 8, !noundef !4
  %i.ci = tail call i64 @llvm.uadd.sat.i64(i64 %i.ch, i64 1)
  br label %bb.j

.loopexit.sink.split:                             ; preds = %_RINvCs8hEv8bFEvN4_7uu_fold27maybe_flush_unbroken_outputINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit, %_RINvCs8hEv8bFEvN4_7uu_fold27maybe_flush_unbroken_outputINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit44, %bb.p, %bb.e, %bb.c
  %.lcssa83.sink = phi { ptr, ptr } [ %i.aa, %bb.e ], [ %i.w, %bb.c ], [ %i.cb, %_RINvCs8hEv8bFEvN4_7uu_fold27maybe_flush_unbroken_outputINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit44 ], [ %i.bf, %bb.p ], [ %i.ba, %_RINvCs8hEv8bFEvN4_7uu_fold27maybe_flush_unbroken_outputINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit ]
  %.sroa.0.1.ph = phi ptr [ %i.ab, %bb.e ], [ %i.x, %bb.c ], [ %i.cc, %_RINvCs8hEv8bFEvN4_7uu_fold27maybe_flush_unbroken_outputINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit44 ], [ %i.bg, %bb.p ], [ %i.bb, %_RINvCs8hEv8bFEvN4_7uu_fold27maybe_flush_unbroken_outputINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit ]
  %i.cj = extractvalue { ptr, ptr } %.lcssa83.sink, 1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cj) ]
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge, %.loopexit.sink.split, %bb.a
  %.sroa.7.1 = phi ptr [ %i.cj, %.loopexit.sink.split ], [ undef, %bb.a ], [ undef, %.backedge ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.1.ph, %.loopexit.sink.split ], [ null, %bb.a ], [ null, %.backedge ]
  %i.ck = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1, 0
  %i.cl = insertvalue { ptr, ptr } %i.ck, ptr %.sroa.7.1, 1
  ret { ptr, ptr } %i.cl
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs8hEv8bFEvN4_7uu_fold(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !4 ; 2 uses
  %i.b = icmp sgt i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs8hEv8bFEvN4_7uu_fold.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs8hEv8bFEvN4_7uu_fold.exit: ; preds = %bb.a, %bb.b
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.a, i64 noundef range(i64 1, -9223372036854775807) 1) #19
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs8hEv8bFEvN4_7uu_fold.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockEECs8hEv8bFEvN4_7uu_fold(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8hEv8bFEvN4_7uu_fold.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = ptrtoint ptr %.val to i64                ; 2 uses
  %i.e = and i64 %i.d, 3
  switch i64 %i.e, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8hEv8bFEvN4_7uu_fold.exit.i
    i64 3, label %bb.c
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8hEv8bFEvN4_7uu_fold.exit.i
    i64 1, label %bb.d
  ], !prof !13

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.g = and i64 %i.d, 1095216660480
  %i.h = icmp ne i64 %i.g, 1095216660480
  tail call void @llvm.assume(i1 %i.f)
  tail call void @llvm.assume(i1 %i.h)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8hEv8bFEvN4_7uu_fold.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !217
  store i8 3, ptr %i.a, align 8, !alias.scope !217
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #19
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8hEv8bFEvN4_7uu_fold.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8hEv8bFEvN4_7uu_fold.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8hEv8bFEvN4_7uu_fold.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8hEv8bFEvN4_7uu_fold.exit: ; preds = %bb.a, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8hEv8bFEvN4_7uu_fold.exit.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std2fs4FileECs8hEv8bFEvN4_7uu_fold(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #0 {
bb.a:
  %.val = load i32, ptr %0, align 4, !range !14, !noundef !4
  %i.a = tail call noundef i32 @close(i32 noundef %.val) #19 ; 0 uses
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorECs8hEv8bFEvN4_7uu_fold(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.b = load i64, ptr %0, align 8, !range !12, !alias.scope !222, !noundef !4 ; 2 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs8hEv8bFEvN4_7uu_fold.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !222, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !222
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs8hEv8bFEvN4_7uu_fold.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs8hEv8bFEvN4_7uu_fold.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8hEv8bFEvN4_7uu_fold.exit
    i64 3, label %bb.c
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8hEv8bFEvN4_7uu_fold.exit
    i64 1, label %bb.d
  ], !prof !13

default.unreachable:                              ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs8hEv8bFEvN4_7uu_fold.exit
  unreachable

bb.c:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs8hEv8bFEvN4_7uu_fold.exit
  %i.h = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.j)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8hEv8bFEvN4_7uu_fold.exit

bb.d:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs8hEv8bFEvN4_7uu_fold.exit
  %i.k = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !223
  store i8 3, ptr %i.a, align 8, !alias.scope !223
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #19
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8hEv8bFEvN4_7uu_fold.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8hEv8bFEvN4_7uu_fold.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs8hEv8bFEvN4_7uu_fold.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs8hEv8bFEvN4_7uu_fold.exit, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8hEv8bFEvN4_7uu_fold(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 17) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !6, !alias.scope !226, !noundef !4 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 range(i64 0, -1) %i.e)
  %i.f = icmp eq i64 %4, 1
  %.sroa.08.0.i = select i1 %i.f, i64 8, i64 4
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !226
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !alias.scope !226
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs8hEv8bFEvN4_7uu_fold(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 17) %4) #19, !noalias !226
  %i.h = load i64, ptr %i.a, align 8, !range !10, !noalias !226, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !range !227, !noalias !226, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !226
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #23
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !226, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !226
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !226
  %i.o = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !226
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCs8hEv8bFEvN4_7uu_fold15handle_obsolete(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 384307168202282326) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %.idx = mul nuw nsw i64 %2, 24                  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %_RINvXNvMNtCs7tKScEop1B6_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs8hEv8bFEvN4_7uu_fold.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit
  %.sroa.0.084 = phi ptr [ %i.e, %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit ], [ %1, %bb.a ] ; 3 uses
  %.sroa.8.083 = phi i64 [ %i.f, %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit ], [ 0, %bb.a ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.084, i64 24 ; 2 uses
  %i.f = add nuw nsw i64 %.sroa.8.083, 1
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.084, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.084, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !4 ; 8 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs8hEv8bFEvN4_7uu_fold.exit

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs8hEv8bFEvN4_7uu_fold.exit: ; preds = %.lr.ph
  %rhsc = load i8, ptr %i.h, align 1
  %i.k = icmp eq i8 %rhsc, 45
  br i1 %i.k, label %bb.e, label %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !250
  %i.l = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.idx, i64 noundef range(i64 1, 9) 8) #19, !noalias !250 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %.idx) #23, !noalias !251
  unreachable

bb.c:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.c
  %.sroa.0.021.i = phi ptr [ %i.p, %bb.c ], [ %1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 2 uses
  %.sroa.7.020.i = phi i64 [ %i.o, %bb.c ], [ 0, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 2 uses
  %.sroa.10.019.i = phi i64 [ %i.n, %bb.c ], [ %2, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ]
  %i.n = add nsw i64 %.sroa.10.019.i, -1          ; 2 uses
  %i.o = add nuw nsw i64 %.sroa.7.020.i, 1
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 24
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.sroa.7.020.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !251
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.021.i) #19, !noalias !252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !251
  %i.r = icmp eq i64 %i.n, 0
  br i1 %i.r, label %_RINvXNvMNtCs7tKScEop1B6_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs8hEv8bFEvN4_7uu_fold.exit, label %bb.c

_RINvXNvMNtCs7tKScEop1B6_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs8hEv8bFEvN4_7uu_fold.exit: ; preds = %bb.c, %bb.a
  %.sroa.10.0.i29.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.l, %bb.c ]
  store i64 %2, ptr %0, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i29.i, ptr %.sroa.451.0..sroa_idx, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.552.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8hEv8bFEvN4_7uu_fold.exit.thread74, %_RINvXNvMNtCs7tKScEop1B6_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs8hEv8bFEvN4_7uu_fold.exit
  %.sink101 = phi i64 [ 40, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8hEv8bFEvN4_7uu_fold.exit.thread74 ], [ 24, %_RINvXNvMNtCs7tKScEop1B6_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs8hEv8bFEvN4_7uu_fold.exit ]
  %.sink = phi i64 [ %i.bu, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8hEv8bFEvN4_7uu_fold.exit.thread74 ], [ -1, %_RINvXNvMNtCs7tKScEop1B6_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs8hEv8bFEvN4_7uu_fold.exit ]
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink101
  store i64 %.sink, ptr %.sroa.519.0..sroa_idx, align 8
  ret void

_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit: ; preds = %.lr.ph, %bb.e, %bb.h, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs8hEv8bFEvN4_7uu_fold.exit
  %i.s = icmp eq ptr %i.e, %i.c
  br i1 %i.s, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i, label %.lr.ph

bb.e:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs8hEv8bFEvN4_7uu_fold.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 3 uses
  %i.u = icmp samesign eq i64 %i.j, 1
  br i1 %i.u, label %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.t, align 1, !noalias !253, !noundef !4 ; 5 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %bb.g, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.y = and i8 %i.v, 31
  %i.z = zext nneg i8 %i.y to i32                 ; 3 uses
  %i.aa = icmp samesign ne i64 %i.j, 2
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = load i8, ptr %i.x, align 1, !noalias !253, !noundef !4
  %i.ac = shl nuw nsw i32 %i.z, 6
  %i.ad = and i8 %i.ab, 63
  %i.ae = zext nneg i8 %i.ad to i32               ; 2 uses
  %i.af = or disjoint i32 %i.ac, %i.ae
  %i.ag = icmp samesign ugt i8 %i.v, -33
  br i1 %i.ag, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = zext nneg i8 %i.v to i32
  br label %bb.h

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %i.aj = icmp samesign ne i64 %i.j, 3
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = load i8, ptr %i.ai, align 1, !noalias !253, !noundef !4
  %i.al = shl nuw nsw i32 %i.ae, 6
  %i.am = and i8 %i.ak, 63
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = or disjoint i32 %i.al, %i.an            ; 2 uses
  %i.ap = shl nuw nsw i32 %i.z, 12
  %i.aq = or disjoint i32 %i.ao, %i.ap
  %i.ar = icmp samesign ugt i8 %i.v, -17
  br i1 %i.ar, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i, label %bb.h

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.at = icmp samesign ne i64 %i.j, 4
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load i8, ptr %i.as, align 1, !noalias !253, !noundef !4
  %i.av = shl nuw nsw i32 %i.z, 18
  %i.aw = and i32 %i.av, 1835008
  %i.ax = shl nuw nsw i32 %i.ao, 6
  %i.ay = and i8 %i.au, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.aw
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i
  %.sroa.4.0.i.ph = phi i32 [ %i.aq, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i ], [ %i.bb, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i ], [ %i.af, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i ], [ %i.ah, %bb.g ] ; 2 uses
  %i.bc = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = add nsw i32 %.sroa.4.0.i.ph, -48
  %or.cond = icmp ult i32 %i.bd, 10
  br i1 %or.cond, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i27, label %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i27: ; preds = %bb.h
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !254
  %i.be = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.idx, i64 noundef range(i64 1, 9) 8) #19, !noalias !254 ; 4 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i27
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %.idx) #23, !noalias !255
  unreachable

bb.j:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i27, %bb.j
  %.sroa.0.021.i29 = phi ptr [ %i.bi, %bb.j ], [ %1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i27 ] ; 2 uses
  %.sroa.7.020.i30 = phi i64 [ %i.bh, %bb.j ], [ 0, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i27 ] ; 2 uses
  %.sroa.10.019.i31 = phi i64 [ %i.bg, %bb.j ], [ %2, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i27 ]
  %i.bg = add nsw i64 %.sroa.10.019.i31, -1       ; 2 uses
  %i.bh = add nuw nsw i64 %.sroa.7.020.i30, 1
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i29, i64 24
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %.sroa.7.020.i30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !255
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.021.i29) #19, !noalias !256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !255
  %i.bk = icmp eq i64 %i.bg, 0
  br i1 %i.bk, label %_RINvXNvMNtCs7tKScEop1B6_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs8hEv8bFEvN4_7uu_fold.exit37, label %bb.j

_RINvXNvMNtCs7tKScEop1B6_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs8hEv8bFEvN4_7uu_fold.exit37: ; preds = %bb.j
  %.not.i.i = icmp samesign ult i64 %.sroa.8.083, %2
  br i1 %.not.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10try_removeCs8hEv8bFEvN4_7uu_fold.exit.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10try_removeCs8hEv8bFEvN4_7uu_fold.exit.thread.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10try_removeCs8hEv8bFEvN4_7uu_fold.exit.i: ; preds = %_RINvXNvMNtCs7tKScEop1B6_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs8hEv8bFEvN4_7uu_fold.exit37
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %.sroa.8.083 ; 4 uses
  %.sroa.0.0.copyload1.i = load i64, ptr %i.bl, align 8, !noalias !257 ; 2 uses
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.sroa.6.i.sroa.0.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx2.i, align 8, !noalias !257 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = xor i64 %.sroa.8.083, -1
  %i.bo = add nsw i64 %2, %i.bn
  %i.bp = mul nuw nsw i64 %i.bo, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bl, ptr nonnull align 8 %i.bm, i64 %i.bp, i1 false), !noalias !258
  %i.bq = add nsw i64 %2, -1                      ; 2 uses
  switch i64 %.sroa.0.0.copyload1.i, label %bb.k [
    i64 -1, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10try_removeCs8hEv8bFEvN4_7uu_fold.exit.thread.i
    i64 0, label %_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit
  ], !prof !259

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10try_removeCs8hEv8bFEvN4_7uu_fold.exit.thread.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10try_removeCs8hEv8bFEvN4_7uu_fold.exit.i, %_RINvXNvMNtCs7tKScEop1B6_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs8hEv8bFEvN4_7uu_fold.exit37
  %i.br = phi i64 [ %2, %_RINvXNvMNtCs7tKScEop1B6_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs8hEv8bFEvN4_7uu_fold.exit37 ], [ %i.bq, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10try_removeCs8hEv8bFEvN4_7uu_fold.exit.i ]
  tail call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %.sroa.8.083, i64 noundef %i.br, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #21, !noalias !260
  unreachable

bb.k:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10try_removeCs8hEv8bFEvN4_7uu_fold.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.i.sroa.0.0.copyload) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.i.sroa.0.0.copyload, i64 noundef %.sroa.0.0.copyload1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19
  br label %_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit

_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10try_removeCs8hEv8bFEvN4_7uu_fold.exit.i, %bb.k
  %i.bs = load i8, ptr %i.t, align 1, !alias.scope !261, !noundef !4
  %i.bt = icmp sgt i8 %i.bs, -65
  %i.bu = add i64 %i.j, -1                        ; 6 uses
  br i1 %i.bt, label %bb.l, label %bb.m, !prof !9

bb.l:                                             ; preds = %_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit
  %.not.i40 = icmp slt i64 %i.bu, 0
  br i1 %.not.i40, label %bb.n, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i, !prof !15

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.l
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !262
  %i.bv = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bu, i64 noundef range(i64 1, 9) 1) #19, !noalias !262 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.n, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8hEv8bFEvN4_7uu_fold.exit.thread74

bb.m:                                             ; preds = %_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit
  tail call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j, i64 noundef 1, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #21
  unreachable

bb.n:                                             ; preds = %bb.l, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.454.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.l ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.454.0.ph, i64 %i.bu) #23
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8hEv8bFEvN4_7uu_fold.exit.thread74: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bv, ptr nonnull align 1 %i.t, i64 %i.bu, i1 false)
  store i64 %2, ptr %0, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %.sroa.449.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bq, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bu, ptr %i.bx, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bv, ptr %.sroa.418.0..sroa_idx, align 8
  br label %bb.d
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, ptr } @_RNvCs8hEv8bFEvN4_7uu_fold4fold(ptr noalias nofree noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.0.i.i58 = alloca [24 x i8], align 8      ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 15 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.0.i.i = alloca [24 x i8], align 8        ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 10 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = alloca [16 x i8], align 16               ; 4 uses
  %.sroa.0.i = alloca [24 x i8], align 8          ; 4 uses
  %i.t = alloca [16 x i8], align 16               ; 4 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 5 uses
  %i.y = alloca [8 x i8], align 8                 ; 6 uses
  %i.z = alloca [16 x i8], align 8                ; 10 uses
  %i.aa = alloca [4 x i8], align 4                ; 7 uses
  %i.ab = alloca [8 x i8], align 8                ; 5 uses
  %i.ac = alloca [40 x i8], align 8               ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.ad = tail call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stdout() #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !408
  %i.ae = tail call noundef dereferenceable_or_null(8192) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 8192, i64 noundef range(i64 1, 9) 1) #19, !noalias !408 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.b, label %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE13with_capacityCs8hEv8bFEvN4_7uu_fold.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 8192) #23, !noalias !407
  unreachable

_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE13with_capacityCs8hEv8bFEvN4_7uu_fold.exit: ; preds = %bb.a
  store i64 8192, ptr %i.ac, align 8, !alias.scope !407
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 7 uses
  store ptr %i.ae, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !407
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 11 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !407
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 3 uses
  store i8 0, ptr %i.ag, align 8, !alias.scope !407
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  store ptr %i.ad, ptr %i.ah, align 8, !alias.scope !407
  %.idx = mul nuw nsw i64 %1, 24
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.aj = icmp eq i64 %1, 0
  br i1 %i.aj, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE13with_capacityCs8hEv8bFEvN4_7uu_fold.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.ax = zext i1 %4 to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 41
  %i.az = zext i1 %3 to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.bs = icmp samesign eq i64 %5, 0
  %.not98.i446 = icmp samesign ne i64 %5, 0
  %or.cond.not = select i1 %4, i1 %.not98.i446, i1 false
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.backedge
  %.sroa.01.0192 = phi ptr [ %0, %.lr.ph ], [ %i.bt, %.backedge ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.01.0192, i64 24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.01.0192, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.01.0192, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !4 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.e, label %bb.f

._crit_edge:                                      ; preds = %.backedge, %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE13with_capacityCs8hEv8bFEvN4_7uu_fold.exit
  %i.bz = call fastcc noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE9flush_bufCs8hEv8bFEvN4_7uu_fold(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ac) #19 ; 2 uses
  %.not.i = icmp eq ptr %i.bz, null
  br i1 %.not.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCs8hEv8bFEvN4_7uu_fold.exit, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCs8hEv8bFEvN4_7uu_fold.exit.thread

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCs8hEv8bFEvN4_7uu_fold.exit: ; preds = %._crit_edge
  %i.ca = call noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah) #19 ; 2 uses
  %.not.i41 = icmp eq ptr %i.ca, null
  br i1 %.not.i41, label %bb.cu, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCs8hEv8bFEvN4_7uu_fold.exit.thread

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCs8hEv8bFEvN4_7uu_fold.exit.thread: ; preds = %._crit_edge, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCs8hEv8bFEvN4_7uu_fold.exit
  %.sroa.0.0.i114 = phi ptr [ %i.ca, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCs8hEv8bFEvN4_7uu_fold.exit ], [ %i.bz, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.0.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 26) #19
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !409
  %i.cb = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef 8) #19, !noalias !409 ; 4 uses
end_hunk_0
