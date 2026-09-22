Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_cat-8a8a5503c214c967.uu_cat.f0005ff5274a7231-cgu.0?download=true
inline.NumInlined: 454
inline.NumDeleted: 269
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMNtNtCs2vKOLqTMYjT_3std4sync9once_lockINtB3_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtB7_2io4pipe10PipeReaderNtB1y_10PipeWriterEEE10initializeNCINvB2_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_autoNtNtB1A_5stdio5StdinNtB3Z_6StdoutE0E0zECskBwnbTnIhiv_6uu_cat:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !332
  store ptr @_RNvNvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_auto10PIPE_CACHE, ptr %i.c, align 8, !noalias !332
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.a, ptr %i.f, align 8, !noalias !332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !332
  store ptr %i.c, ptr %i.b, align 8, !noalias !332
  call void @_RNvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_auto10PIPE_CACHE, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !332
  br label %_RINvMs0_NtNtCs2vKOLqTMYjT_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtBa_2io4pipe10PipeReaderNtB2j_10PipeWriterEEE10initializeNCINvB18_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_autoNtNtB2l_5stdio5StdinNtB4L_6StdoutE0E0zE0ECskBwnbTnIhiv_6uu_cat.exit

_RINvMs0_NtNtCs2vKOLqTMYjT_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtBa_2io4pipe10PipeReaderNtB2j_10PipeWriterEEE10initializeNCINvB18_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_autoNtNtB2l_5stdio5StdinNtB4L_6StdoutE0E0zE0ECskBwnbTnIhiv_6uu_cat.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: cold minsize nounwind nonlazybind optsize uwtable
define internal fastcc void @_RINvMNtNtCs2vKOLqTMYjT_3std4sync9once_lockINtB3_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtB7_2io4pipe10PipeReaderNtB1y_10PipeWriterEEE10initializeNCINvB2_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_autoNtNtB7_2fs4FileNtNtB1A_5stdio6StdoutE0E0zECskBwnbTnIhiv_6uu_cat() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_auto10PIPE_CACHE, i64 8) acquire, align 4, !noalias !335
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RINvMs0_NtNtCs2vKOLqTMYjT_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtBa_2io4pipe10PipeReaderNtB2j_10PipeWriterEEE10initializeNCINvB18_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_autoNtNtBa_2fs4FileNtNtB2l_5stdio6StdoutE0E0zE0ECskBwnbTnIhiv_6uu_cat.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !335
  store ptr @_RNvNvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_auto10PIPE_CACHE, ptr %i.c, align 8, !noalias !335
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.a, ptr %i.f, align 8, !noalias !335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !335
  store ptr %i.c, ptr %i.b, align 8, !noalias !335
  call void @_RNvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_auto10PIPE_CACHE, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @23, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !335
  br label %_RINvMs0_NtNtCs2vKOLqTMYjT_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtBa_2io4pipe10PipeReaderNtB2j_10PipeWriterEEE10initializeNCINvB18_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_autoNtNtBa_2fs4FileNtNtB2l_5stdio6StdoutE0E0zE0ECskBwnbTnIhiv_6uu_cat.exit

_RINvMs0_NtNtCs2vKOLqTMYjT_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtBa_2io4pipe10PipeReaderNtB2j_10PipeWriterEEE10initializeNCINvB18_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_autoNtNtBa_2fs4FileNtNtB2l_5stdio6StdoutE0E0zE0ECskBwnbTnIhiv_6uu_cat.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEECskBwnbTnIhiv_6uu_cat(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i8, ptr %i.b, align 8, !range !7, !alias.scope !340, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNvXs7_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCskBwnbTnIhiv_6uu_cat.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE9flush_bufCskBwnbTnIhiv_6uu_cat(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) #23 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RNvXs7_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCskBwnbTnIhiv_6uu_cat.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !340
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit.i.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit.i.i
    i64 1, label %bb.e
  ], !prof !13

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ult ptr %i.e, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.k)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.e, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !341, !noalias !340
  store i8 3, ptr %i.a, align 8, !alias.scope !341, !noalias !340
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !340
  br label %_RNvXs7_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCskBwnbTnIhiv_6uu_cat.exit

_RNvXs7_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCskBwnbTnIhiv_6uu_cat.exit: ; preds = %bb.a, %bb.b, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit.i.i
  %.val = load i64, ptr %0, align 8, !range !11, !noundef !8 ; 2 uses
  %i.n = icmp eq i64 %.val, 0
  br i1 %i.n, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECskBwnbTnIhiv_6uu_cat.exit, label %bb.f

bb.f:                                             ; preds = %_RNvXs7_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCskBwnbTnIhiv_6uu_cat.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.o, align 8, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECskBwnbTnIhiv_6uu_cat.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECskBwnbTnIhiv_6uu_cat.exit: ; preds = %_RNvXs7_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCskBwnbTnIhiv_6uu_cat.exit, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2 = load ptr, ptr %i.p, align 8, !nonnull !8, !align !17, !noundef !8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val2, i64 12 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !noundef !8
  %i.s = add i32 %i.r, -1                         ; 2 uses
  store i32 %i.s, ptr %i.q, align 4
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECskBwnbTnIhiv_6uu_cat.exit

bb.g:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECskBwnbTnIhiv_6uu_cat.exit
  store atomic i64 0, ptr %.val2 monotonic, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.val2, i64 8 ; 2 uses
  %i.v = atomicrmw xchg ptr %i.u, i32 0 release, align 4
  %i.w = icmp eq i32 %i.v, 2
  br i1 %i.w, label %bb.h, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECskBwnbTnIhiv_6uu_cat.exit, !prof !10

bb.h:                                             ; preds = %bb.g
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.u) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECskBwnbTnIhiv_6uu_cat.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECskBwnbTnIhiv_6uu_cat.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECskBwnbTnIhiv_6uu_cat.exit, %bb.g, %bb.h
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECskBwnbTnIhiv_6uu_cat(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0) unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !345, !noundef !8 ; 2 uses
  %i.a = icmp sgt i64 %.val, 0
  br i1 %i.a, label %bb.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECskBwnbTnIhiv_6uu_cat.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECskBwnbTnIhiv_6uu_cat.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECskBwnbTnIhiv_6uu_cat.exit: ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  %i.d = load i64, ptr %i.c, align 8, !range !347, !alias.scope !346, !noundef !8 ; 3 uses
  %i.e = icmp ne i64 %i.d, 3
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i64 %i.d, -2
  %i.g = icmp samesign ugt i64 %i.d, 1
  %i.h = select i1 %i.g, i64 %i.f, i64 1
  switch i64 %i.h, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECskBwnbTnIhiv_6uu_cat.exit [
    i64 0, label %bb.c
    i64 1, label %bb.e
    i64 2, label %bb.g
  ]

bb.c:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECskBwnbTnIhiv_6uu_cat.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load i64, ptr %i.i, align 8, !range !345, !alias.scope !346, !noundef !8 ; 2 uses
  %i.j = icmp sgt i64 %.val.i, 0
  br i1 %i.j, label %bb.d, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECskBwnbTnIhiv_6uu_cat.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i = load ptr, ptr %i.k, align 8, !alias.scope !346, !nonnull !8, !noundef !8
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !346
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECskBwnbTnIhiv_6uu_cat.exit

bb.e:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECskBwnbTnIhiv_6uu_cat.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val2.i = load i64, ptr %i.l, align 8, !range !345, !alias.scope !346, !noundef !8 ; 2 uses
  %i.m = icmp sgt i64 %.val2.i, 0
  br i1 %i.m, label %bb.f, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECskBwnbTnIhiv_6uu_cat.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val3.i = load ptr, ptr %i.n, align 8, !alias.scope !346, !nonnull !8, !noundef !8
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !346
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECskBwnbTnIhiv_6uu_cat.exit

bb.g:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECskBwnbTnIhiv_6uu_cat.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val4.i = load ptr, ptr %i.o, align 8, !alias.scope !346 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val5.i = load ptr, ptr %i.p, align 8, !alias.scope !346, !nonnull !8, !align !17, !noundef !8 ; 3 uses
  %i.q = load ptr, ptr %.val5.i, align 8, !invariant.load !8, !noalias !346 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  tail call void %i.q(ptr noundef nonnull %.val4.i) #25, !noalias !346, !inline_history !344
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !11, !invariant.load !8, !noalias !346 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECskBwnbTnIhiv_6uu_cat.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !348, !invariant.load !8, !noalias !346
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.v) #23, !noalias !346
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECskBwnbTnIhiv_6uu_cat.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECskBwnbTnIhiv_6uu_cat.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECskBwnbTnIhiv_6uu_cat.exit, %bb.c, %bb.d, %bb.e, %bb.f, %bb.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes10drain_pipeNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECskBwnbTnIhiv_6uu_cat(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  br label %bb.c

bb.b:                                             ; preds = %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.g, align 1
  store i8 0, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a, %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit
  %.sroa.0.048 = phi i64 [ %1, %bb.a ], [ %i.r, %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit ] ; 11 uses
  %i.h = tail call noundef i32 @_RNvXsy_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedNtNtNtBb_2io4pipe10PipeReaderNtB5_4AsFd5as_fd(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @_RNvNvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_auto10PIPE_CACHE) #23
  %i.i = zext i32 %i.h to i64
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = inttoptr i64 %.sroa.0.048 to ptr
  %i.l = tail call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},{r8},{r9},~{memory}"(ptr nonnull inttoptr (i64 275 to ptr), ptr %i.j, ptr null, ptr nonnull inttoptr (i64 1 to ptr), ptr null, ptr nonnull %i.k, ptr null) #23, !noalias !382, !srcloc !18
  %i.m = extractvalue { ptr, i32, i32 } %i.l, 0   ; 3 uses
  %.not.i.i = icmp sgt ptr %i.m, inttoptr (i64 -4096 to ptr)
  %i.n = icmp slt ptr %i.m, null
  %.sroa.0.0.i.i = and i1 %.not.i.i, %i.n
  br i1 %.sroa.0.0.i.i, label %bb.e, label %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit

bb.d:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECskBwnbTnIhiv_6uu_cat.exit, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.not.i = icmp slt i64 %.sroa.0.048, 0
  br i1 %.not.i, label %bb.f, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i, !prof !19

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.e
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !383
  %i.o = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.048, i64 noundef range(i64 1, 9) 1) #23, !noalias !383 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.g

_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit: ; preds = %bb.c
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %.sroa.0.048, %i.q               ; 2 uses
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.f:                                             ; preds = %bb.e, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.e ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %.sroa.0.048) #26
  unreachable

bb.g:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  store i64 %.sroa.0.048, ptr %i.f, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr %i.o, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  store i64 0, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @_RNvNvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_auto10PIPE_CACHE, ptr %i.e, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.0.048, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 7 uses
  store i64 %.sroa.0.048, ptr %i.v, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  %i.w = icmp samesign ult i64 %.sroa.0.048, 32
  br i1 %i.w, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge88.i, %bb.g
  %.pre81.i = phi i64 [ %.pre81.pre.i, %._crit_edge88.i ], [ %.sroa.0.048, %bb.g ]
  %.pre.i = phi i64 [ %.pr.pre, %._crit_edge88.i ], [ 0, %bb.g ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.af = call fastcc { i64, ptr } @_RINvNvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #23 ; 2 uses
  %i.ag = extractvalue { i64, ptr } %i.af, 0
  %i.ah = extractvalue { i64, ptr } %i.af, 1      ; 2 uses
  %i.ai = trunc nuw i64 %i.ag to i1
  br i1 %i.ai, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = icmp eq ptr %i.ah, null
  %.pr.pre = load i64, ptr %i.t, align 8          ; 2 uses
  br i1 %i.aj, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit.thread15, label %._crit_edge88.i

._crit_edge88.i:                                  ; preds = %bb.j
  %.pre81.pre.i = load i64, ptr %i.f, align 8, !range !11, !alias.scope !385, !noalias !384
  br label %bb.h

bb.k:                                             ; preds = %bb.z, %bb.h
  %i.ak = phi i64 [ %.pre81.i, %bb.h ], [ %i.bf, %bb.z ] ; 3 uses
  %i.al = phi i64 [ %.pre.i, %bb.h ], [ %i.dh, %bb.z ] ; 2 uses
  %.sroa.037.3.i = phi i64 [ 8192, %bb.h ], [ %.sroa.037.4.i, %bb.z ] ; 5 uses
  %i.am = icmp eq i64 %i.al, %i.ak
  %i.an = icmp eq i64 %i.ak, %.sroa.0.048
  %or.cond46.i = and i1 %i.an, %i.am
  br i1 %or.cond46.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i, %bb.k
  %i.ao = phi i64 [ %.pre83.i, %._crit_edge.i ], [ %i.ak, %bb.k ] ; 6 uses
  %i.ap = phi i64 [ %.pre82.i, %._crit_edge.i ], [ %i.al, %bb.k ] ; 7 uses
  %i.aq = icmp sgt i64 %i.ap, -1
  call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp eq i64 %i.ap, %i.ao
  %.pre84.i = load ptr, ptr %i.s, align 8, !alias.scope !385, !noalias !384 ; 2 uses
  br i1 %i.ar, label %bb.p, label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.as = call fastcc { i64, ptr } @_RINvNvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #23 ; 2 uses
  %i.at = extractvalue { i64, ptr } %i.as, 0
  %i.au = extractvalue { i64, ptr } %i.as, 1      ; 2 uses
  %i.av = trunc nuw i64 %i.at to i1
  br i1 %i.av, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = icmp eq ptr %i.au, null
  %.pre82.i = load i64, ptr %i.t, align 8         ; 3 uses
  br i1 %i.aw, label %bb.o, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.n
  %.pre83.i = load i64, ptr %i.f, align 8, !range !11, !alias.scope !385, !noalias !384
  br label %bb.l

bb.o:                                             ; preds = %bb.n
  %i.ax = icmp sgt i64 %.pre82.i, -1
  call void @llvm.assume(i1 %i.ax)
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit.thread15

bb.p:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !386)
  call void @llvm.experimental.noalias.scope.decl(metadata !387)
  %i.ay = add nuw i64 %i.ao, 32
  %i.az = shl nuw i64 %i.ao, 1
  %..i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.ay, i64 range(i64 0, -1) %i.az) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !388
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskBwnbTnIhiv_6uu_cat(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, i64 %i.ao, ptr %.pre84.i, i64 noundef %..i.i.i.i, i64 noundef 1, i64 noundef 1) #23, !noalias !389
  %i.ba = load i64, ptr %i.c, align 8, !range !20, !noalias !388, !noundef !8
  %i.bb = trunc nuw i64 %i.ba to i1
  br i1 %i.bb, label %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCskBwnbTnIhiv_6uu_cat.exit.i, label %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCskBwnbTnIhiv_6uu_cat.exit.thread.i

_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCskBwnbTnIhiv_6uu_cat.exit.thread.i: ; preds = %bb.p
  %i.bc = load ptr, ptr %i.x, align 8, !noalias !388, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !388
  store ptr %i.bc, ptr %i.s, align 8, !alias.scope !389, !noalias !384
  %i.bd = icmp sgt i64 %..i.i.i.i, -1
  call void @llvm.assume(i1 %i.bd)
  store i64 %..i.i.i.i, ptr %i.f, align 8, !alias.scope !389, !noalias !384
  %.pre.i.i = sub nuw nsw i64 %..i.i.i.i, %i.ao
  %i.be = icmp samesign ugt i64 %.pre.i.i, 31
  call void @llvm.assume(i1 %i.be)
  br label %bb.q

_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCskBwnbTnIhiv_6uu_cat.exit.i: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !388
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit.thread

bb.q:                                             ; preds = %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCskBwnbTnIhiv_6uu_cat.exit.thread.i, %bb.l
  %i.bf = phi i64 [ %i.ao, %bb.l ], [ %..i.i.i.i, %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCskBwnbTnIhiv_6uu_cat.exit.thread.i ] ; 2 uses
  %i.bg = phi ptr [ %.pre84.i, %bb.l ], [ %i.bc, %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCskBwnbTnIhiv_6uu_cat.exit.thread.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ap
  %i.bi = sub nsw i64 %i.bf, %i.ap                ; 2 uses
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.037.3.i, i64 %i.bi) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !390
  store ptr %i.bh, ptr %i.d, align 8, !noalias !390
  store i64 %..i.i, ptr %i.y, align 8, !noalias !390
  store i64 0, ptr %i.z, align 8, !noalias !390
  store i8 0, ptr %i.aa, align 8, !noalias !390
  %i.bj = load i64, ptr %i.v, align 8, !alias.scope !391, !noalias !392, !noundef !8 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.thread.thread.i, label %.lr.ph.i

_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.thread.thread.i: ; preds = %bb.q
  store i64 %i.ap, ptr %i.t, align 8, !alias.scope !385, !noalias !384
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit.thread19

.lr.ph.i:                                         ; preds = %bb.q, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit.i
  %i.bl = phi i64 [ %i.df, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit.i ], [ %i.bj, %bb.q ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !393)
  call void @llvm.experimental.noalias.scope.decl(metadata !394)
  %i.bm = load i64, ptr %i.y, align 8, !alias.scope !394, !noalias !395, !noundef !8
  %i.bn = load i64, ptr %i.z, align 8, !alias.scope !394, !noalias !395, !noundef !8 ; 4 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = icmp ult i64 %i.bl, %i.bo
  br i1 %i.bp, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i
  %i.bq = call noundef ptr @_RNvXs4_NtNtCs2vKOLqTMYjT_3std2io4pipeRNtB5_10PipeReaderNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) #23, !noalias !385
  %i.br = load i64, ptr %i.z, align 8, !alias.scope !394, !noalias !395, !noundef !8 ; 2 uses
  %.neg.i.i = sub i64 %i.bn, %i.br
  %i.bs = load i64, ptr %i.v, align 8, !alias.scope !396, !noalias !397, !noundef !8
  %i.bt = add i64 %.neg.i.i, %i.bs
  store i64 %i.bt, ptr %i.v, align 8, !alias.scope !396, !noalias !397
  br label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.i

bb.s:                                             ; preds = %.lr.ph.i
  %i.bu = load i8, ptr %i.aa, align 8, !range !7, !alias.scope !394, !noalias !395, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !398
  %i.bv = load ptr, ptr %i.d, align 8, !alias.scope !394, !noalias !395, !nonnull !8, !noundef !8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn ; 2 uses
  %i.bx = trunc nuw i8 %i.bu to i1
  store ptr %i.bw, ptr %i.b, align 8, !noalias !398
  store i64 %i.bl, ptr %i.ab, align 8, !noalias !398
  store i64 0, ptr %i.ac, align 8, !noalias !398
  store i8 0, ptr %i.ad, align 8, !noalias !398
  br i1 %i.bx, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = call noundef ptr @_RNvXs4_NtNtCs2vKOLqTMYjT_3std2io4pipeRNtB5_10PipeReaderNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #23, !noalias !397 ; 2 uses
  %i.bz = load i8, ptr %i.ad, align 8, !range !7, !noalias !398, !noundef !8
  %i.ca = trunc nuw i8 %i.bz to i1
  %i.cb = load i64, ptr %i.ac, align 8, !noalias !398, !noundef !8 ; 2 uses
  br i1 %i.ca, label %_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCskBwnbTnIhiv_6uu_cat.exit.i.i, label %bb.v

bb.u:                                             ; preds = %bb.s
  store i8 1, ptr %i.ad, align 8, !noalias !398
  %i.cc = call noundef ptr @_RNvXs4_NtNtCs2vKOLqTMYjT_3std2io4pipeRNtB5_10PipeReaderNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #23, !noalias !397
  %i.cd = load i64, ptr %i.ac, align 8, !noalias !398, !noundef !8
  br label %bb.v

bb.v:                                             ; preds = %_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCskBwnbTnIhiv_6uu_cat.exit.i.i, %bb.u, %bb.t
  %.sroa.09.0.i.i = phi i64 [ %i.cd, %bb.u ], [ %i.cb, %_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCskBwnbTnIhiv_6uu_cat.exit.i.i ], [ %i.cb, %bb.t ] ; 2 uses
  %.sroa.01.0.i.i = phi ptr [ %i.cc, %bb.u ], [ %i.by, %_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCskBwnbTnIhiv_6uu_cat.exit.i.i ], [ %i.by, %bb.t ]
  %i.ce = add i64 %.sroa.09.0.i.i, %i.bn          ; 2 uses
  store i64 %i.ce, ptr %i.z, align 8, !alias.scope !394, !noalias !395
  %i.cf = load i64, ptr %i.v, align 8, !alias.scope !396, !noalias !397, !noundef !8
  %i.cg = sub i64 %i.cf, %.sroa.09.0.i.i
  store i64 %i.cg, ptr %i.v, align 8, !alias.scope !396, !noalias !397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !398
  br label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.i

_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCskBwnbTnIhiv_6uu_cat.exit.i.i: ; preds = %bb.t
  %i.ch = sub nuw i64 %i.bo, %i.bl
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bl
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ci, i8 0, i64 range(i64 0, -9223372036854775808) %i.ch, i1 false), !alias.scope !399, !noalias !400
  store i8 1, ptr %i.aa, align 8, !alias.scope !394, !noalias !395
  br label %bb.v

_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.i: ; preds = %bb.v, %bb.r
  %i.cj = phi i64 [ %i.br, %bb.r ], [ %i.ce, %bb.v ]
  %.sroa.0.0.i48.i = phi ptr [ %i.bq, %bb.r ], [ %.sroa.01.0.i.i, %bb.v ] ; 7 uses
  %i.ck = ptrtoint ptr %.sroa.0.0.i48.i to i64    ; 4 uses
  %.not45.i = icmp eq ptr %.sroa.0.0.i48.i, null
  br i1 %.not45.i, label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.thread.i, label %bb.w

bb.w:                                             ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.i
  %i.cl = and i64 %i.ck, 3
  switch i64 %i.cl, label %default.unreachable [
    i64 2, label %.split.i
    i64 3, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i
    i64 0, label %.split58.i
    i64 1, label %.split57.i
  ], !prof !13

default.unreachable:                              ; preds = %bb.w
  unreachable

.split.i:                                         ; preds = %bb.w
  %i.cm = lshr i64 %i.ck, 32
  %i.cn = trunc nuw i64 %i.cm to i32
  %i.co = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #23, !noalias !385
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !385, !nonnull !8, !noundef !8
  %i.cr = call noundef zeroext i1 %i.cq(i32 noundef %i.cn) #23, !noalias !385, !inline_history !370
  br i1 %i.cr, label %.thread61.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit

.split58.i:                                       ; preds = %bb.w
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i48.i, i64 16
  %i.ct = load i8, ptr %i.cs, align 8, !range !14, !noalias !385, !noundef !8
  %i.cu = icmp eq i8 %i.ct, 35
  br i1 %i.cu, label %.thread61.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit

.split57.i:                                       ; preds = %bb.w
  %i.cv = getelementptr i8, ptr %.sroa.0.0.i48.i, i64 31
  %i.cw = load i8, ptr %i.cv, align 8, !range !14, !noalias !385, !noundef !8
  %i.cx = icmp eq i8 %i.cw, 35
  br i1 %i.cx, label %bb.y, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i: ; preds = %bb.w
  %i.cy = lshr i64 %i.ck, 32
  %i.cz = icmp ult ptr %.sroa.0.0.i48.i, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i = trunc i64 %i.cy to i8
  %spec.select.i.i.i.i = select i1 %i.cz, i8 %switch.idx.cast.i.i.i.i, i8 -1 ; 2 uses
  %i.da = icmp ne i8 %spec.select.i.i.i.i, -1
  call void @llvm.assume(i1 %i.da)
  %i.db = icmp eq i8 %spec.select.i.i.i.i, 35
  br i1 %i.db, label %bb.x, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit

.thread61.i:                                      ; preds = %.split58.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !390
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit.i

bb.x:                                             ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !390
  %i.dc = and i64 %i.ck, 1095216660480
  %i.dd = icmp ne i64 %i.dc, 1095216660480
  call void @llvm.assume(i1 %i.cz)
  call void @llvm.assume(i1 %i.dd)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit.i

bb.y:                                             ; preds = %.split57.i
  %i.de = getelementptr i8, ptr %.sroa.0.0.i48.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.de) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !390
  store ptr %i.de, ptr %i.ae, align 8, !alias.scope !401, !noalias !390
  store i8 3, ptr %i.a, align 8, !alias.scope !401, !noalias !390
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae) #23, !noalias !385
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit.i: ; preds = %bb.y, %bb.x, %.thread61.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !390
  %i.df = load i64, ptr %i.v, align 8, !alias.scope !402, !noalias !403, !noundef !8 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit._RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.thread.loopexit_crit_edge.i, label %.lr.ph.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit._RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.thread.loopexit_crit_edge.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit.i
  %.pre86.pre.i = load i64, ptr %i.z, align 8, !noalias !390
  br label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.thread.i

_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.thread.i: ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit._RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.thread.loopexit_crit_edge.i
  %.pre86.i = phi i64 [ %.pre86.pre.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit._RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.thread.loopexit_crit_edge.i ], [ %i.cj, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.i ] ; 3 uses
  %.pre87.i = load i8, ptr %i.aa, align 8, !range !7, !noalias !390
  %i.dh = add i64 %.pre86.i, %i.ap                ; 3 uses
  store i64 %i.dh, ptr %i.t, align 8, !alias.scope !385, !noalias !384
  %i.di = icmp eq i64 %.pre86.i, 0
  br i1 %i.di, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit.thread19, label %bb.aa

bb.z:                                             ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.sroa.037.4.i = phi i64 [ -1, %bb.ad ], [ %i.dm, %bb.ac ], [ %.sroa.037.3.i, %bb.ab ], [ -1, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !390
  br label %bb.k

bb.aa:                                            ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.thread.i
  %i.dj = trunc nuw i8 %.pre87.i to i1
  br i1 %i.dj, label %bb.ab, label %bb.z

bb.ab:                                            ; preds = %bb.aa
  %i.dk = icmp uge i64 %i.bi, %.sroa.037.3.i
  %i.dl = icmp eq i64 %.pre86.i, %..i.i
  %or.cond.i = and i1 %i.dk, %i.dl
  br i1 %or.cond.i, label %bb.ac, label %bb.z

bb.ac:                                            ; preds = %bb.ab
  %i.dm = shl nuw i64 %.sroa.037.3.i, 1
  %i.dn = icmp slt i64 %.sroa.037.3.i, 0
  br i1 %i.dn, label %bb.ad, label %bb.z, !prof !10

bb.ad:                                            ; preds = %bb.ac
  br label %bb.z

_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit.thread19: ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.thread.i, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.thread.thread.i
  %.pr74 = phi i64 [ %i.ap, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.thread.thread.i ], [ %i.dh, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCskBwnbTnIhiv_6uu_cat.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !390
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit.thread15

_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit: ; preds = %.split58.i, %.split57.i, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !390
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit.thread

_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit.thread: ; preds = %bb.m, %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCskBwnbTnIhiv_6uu_cat.exit.i, %bb.i, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit
  %i.do = phi ptr [ %.sroa.0.0.i48.i, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit ], [ inttoptr (i64 163208757251 to ptr), %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCskBwnbTnIhiv_6uu_cat.exit.i ], [ %i.ah, %bb.i ], [ %i.au, %bb.m ]
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.do, ptr %i.dp, align 8
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ak

_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit.thread15: ; preds = %bb.j, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit.thread19, %bb.o
  %i.dq = phi i64 [ %.pre82.i, %bb.o ], [ %.pr74, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit.thread19 ], [ %.pr.pre, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %.loopexit, label %.lr.ph.i14.preheader

.lr.ph.i14.preheader:                             ; preds = %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit.thread15
  %i.ds = load ptr, ptr %i.s, align 8, !nonnull !8, !noundef !8
  br label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %.lr.ph.i14.preheader, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit.i15
  %.sroa.0.022.i = phi ptr [ %.sroa.0.113.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit.i15 ], [ %i.ds, %.lr.ph.i14.preheader ] ; 3 uses
  %.sroa.6.021.i = phi i64 [ %.sroa.6.111.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit.i15 ], [ %i.dq, %.lr.ph.i14.preheader ] ; 6 uses
  %i.dt = inttoptr i64 %.sroa.6.021.i to ptr
  %i.du = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},~{memory}"(ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull readonly %.sroa.0.022.i, ptr nonnull %i.dt) #24, !noalias !404, !srcloc !16
  %i.dv = extractvalue { ptr, i32, i32 } %i.du, 0 ; 4 uses
  %.not.i.i.i.i = icmp sgt ptr %i.dv, inttoptr (i64 -4096 to ptr)
  %i.dw = icmp slt ptr %i.dv, null
  %.sroa.0.0.i.i.i.i = and i1 %.not.i.i.i.i, %i.dw
  %i.dx = ptrtoint ptr %i.dv to i64               ; 5 uses
  br i1 %.sroa.0.0.i.i.i.i, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %.lr.ph.i14
  %i.dy = load atomic ptr, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !405
  %.not.i.i.i = icmp eq ptr %i.dy, @19
  br i1 %.not.i.i.i, label %.split.i16, label %bb.af, !prof !12

bb.af:                                            ; preds = %bb.ae
  call void @_RNvNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #23
  br label %.split.i16

.split.i16:                                       ; preds = %bb.af, %bb.ae
  %.neg.i.i17 = mul i64 %i.dx, -4294967296        ; 2 uses
  %i.dz = lshr exact i64 %.neg.i.i17, 32
  %i.ea = trunc nuw i64 %i.dz to i32
  %i.eb = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #23
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !nonnull !8, !noundef !8
  %i.ee = call noundef zeroext i1 %i.ed(i32 noundef %i.ea) #23, !inline_history !381
  br i1 %i.ee, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit.i15, label %.split.loop.exit.i

bb.ag:                                            ; preds = %.lr.ph.i14
  %i.ef = icmp eq ptr %i.dv, null
  br i1 %i.ef, label %_RNvYINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawWriterRRNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskBwnbTnIhiv_6uu_cat.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eg = icmp ult i64 %.sroa.6.021.i, %i.dx
  br i1 %i.eg, label %bb.ai, label %bb.aj, !prof !10

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.dx, i64 noundef %.sroa.6.021.i, i64 noundef %.sroa.6.021.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #21
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.eh = sub nuw nsw i64 %.sroa.6.021.i, %i.dx
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i, i64 %i.dx
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit.i15

.split.loop.exit.i:                               ; preds = %.split.i16
  %i.ej = or disjoint i64 %.neg.i.i17, 2
  %i.ek = inttoptr i64 %i.ej to ptr
  br label %_RNvYINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawWriterRRNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskBwnbTnIhiv_6uu_cat.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit.i15: ; preds = %bb.aj, %.split.i16
  %.sroa.0.113.i = phi ptr [ %i.ei, %bb.aj ], [ %.sroa.0.022.i, %.split.i16 ]
  %.sroa.6.111.i = phi i64 [ %i.eh, %bb.aj ], [ %.sroa.6.021.i, %.split.i16 ] ; 2 uses
  %i.el = icmp eq i64 %.sroa.6.111.i, 0
  br i1 %i.el, label %.loopexit, label %.lr.ph.i14

_RNvYINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawWriterRRNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskBwnbTnIhiv_6uu_cat.exit: ; preds = %bb.ag, %.split.loop.exit.i
  %.sroa.07.1.i = phi ptr [ %i.ek, %.split.loop.exit.i ], [ @71, %bb.ag ]
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.07.1.i, ptr %i.em, align 8
  store i8 1, ptr %0, align 8
  br label %bb.ak

.loopexit:                                        ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit.i15, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit.thread15
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.en, align 1
  store i8 0, ptr %0, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit, %_RNvYINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawWriterRRNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskBwnbTnIhiv_6uu_cat.exit, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat.exit.thread
  %.val = load i64, ptr %i.f, align 8, !range !11, !noundef !8 ; 2 uses
  %i.eo = icmp eq i64 %.val, 0
  br i1 %i.eo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECskBwnbTnIhiv_6uu_cat.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.val13 = load ptr, ptr %i.s, align 8, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECskBwnbTnIhiv_6uu_cat.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECskBwnbTnIhiv_6uu_cat.exit: ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.d
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskBwnbTnIhiv_6uu_cat(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 17) %4) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !11, !alias.scope !408, !noundef !8 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 range(i64 0, -1) %i.e)
  %i.f = icmp eq i64 %4, 1
  %.sroa.08.0.i = select i1 %i.f, i64 8, i64 4
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !408
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !alias.scope !408
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskBwnbTnIhiv_6uu_cat(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 17) %4) #23, !noalias !408
  %i.h = load i64, ptr %i.a, align 8, !range !20, !noalias !408, !noundef !8
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !range !409, !noalias !408, !noundef !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !408
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #26
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !408, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !408
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !408
  %i.o = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !408
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECskBwnbTnIhiv_6uu_cat(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !420, !noalias !421, !noundef !8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCskBwnbTnIhiv_6uu_cat.exit.i.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit
  %i.g = phi i64 [ %i.d, %.lr.ph ], [ %i.be, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit ]
  %..i.i = call noundef range(i64 1, 33) i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.g, i64 32)
  %i.h = call { i64, ptr } @_RNvXs4_NtNtCs2vKOLqTMYjT_3std2io4pipeRNtB5_10PipeReaderNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull %i.b, i64 noundef %..i.i) #23 ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 15 uses
  %i.k = trunc nuw i64 %i.i to i1
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %2 = ptrtoint ptr %i.j to i64                   ; 2 uses
  %i.l = load i64, ptr %i.c, align 8, !alias.scope !420, !noalias !421, !noundef !8 ; 2 uses
  %.not.i = icmp ult i64 %i.l, %2
  br i1 %.not.i, label %bb.d, label %.loopexit, !prof !10

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @67, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #21
  unreachable

bb.e:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %3 = ptrtoint ptr %i.j to i64                   ; 4 uses
  %i.m = and i64 %3, 3
  switch i64 %i.m, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit
    i64 0, label %.split10
    i64 1, label %.split9
  ], !prof !13

default.unreachable:                              ; preds = %bb.e
  unreachable

.split:                                           ; preds = %bb.e
  %i.n = lshr i64 %3, 32
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #23
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !8, !noundef !8
  %i.s = call noundef zeroext i1 %i.r(i32 noundef %i.o) #23, !inline_history !2
  br i1 %i.s, label %.thread, label %.loopexit12

.split10:                                         ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !14, !noundef !8
  %i.v = icmp eq i8 %i.u, 35
  br i1 %i.v, label %.thread, label %.loopexit12

.split9:                                          ; preds = %bb.e
  %i.w = getelementptr i8, ptr %i.j, i64 31
  %i.x = load i8, ptr %i.w, align 8, !range !14, !noundef !8
  %i.y = icmp eq i8 %i.x, 35
  br i1 %i.y, label %bb.j, label %.loopexit12

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %bb.e
  %i.z = lshr i64 %3, 32
  %i.aa = icmp ult ptr %i.j, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.z to i8
  %spec.select.i.i.i = select i1 %i.aa, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.ab = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.ac, label %bb.i, label %.loopexit12

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCskBwnbTnIhiv_6uu_cat.exit.i.thread: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !422, !noundef !8 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, -1
  call void @llvm.assume(i1 %i.af)
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCskBwnbTnIhiv_6uu_cat.exit

.loopexit:                                        ; preds = %bb.c
  %i.ag = sub nuw i64 %i.l, %2
  store i64 %i.ag, ptr %i.c, align 8, !alias.scope !420, !noalias !421
  %i.ah = ptrtoint ptr %i.j to i64                ; 6 uses
  %i.ai = icmp ult ptr %i.j, inttoptr (i64 33 to ptr)
  br i1 %i.ai, label %bb.f, label %bb.h, !prof !423

bb.f:                                             ; preds = %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !424)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !425, !noundef !8 ; 5 uses
  %i.al = load i64, ptr %1, align 8, !range !11, !alias.scope !425, !noundef !8
  %i.am = sub i64 %i.al, %i.ak
  %i.an = icmp ult i64 %i.am, %i.ah
  br i1 %i.an, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCskBwnbTnIhiv_6uu_cat.exit.thread.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCskBwnbTnIhiv_6uu_cat.exit.i, !prof !426

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCskBwnbTnIhiv_6uu_cat.exit.thread.i: ; preds = %bb.f
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskBwnbTnIhiv_6uu_cat(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ak, i64 noundef %i.ah, i64 noundef 1, i64 noundef 1) #23
  %i.ao = load i64, ptr %i.aj, align 8, !alias.scope !424, !noundef !8 ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, -1
  call void @llvm.assume(i1 %i.ap)
  br label %bb.g

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCskBwnbTnIhiv_6uu_cat.exit.i: ; preds = %bb.f
  %i.aq = icmp sgt i64 %i.ak, -1
  call void @llvm.assume(i1 %i.aq)
  %.not.i3 = icmp eq ptr %i.j, null
  br i1 %.not.i3, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCskBwnbTnIhiv_6uu_cat.exit, label %bb.g

bb.g:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCskBwnbTnIhiv_6uu_cat.exit.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCskBwnbTnIhiv_6uu_cat.exit.thread.i
  %i.ar = phi i64 [ %i.ao, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCskBwnbTnIhiv_6uu_cat.exit.thread.i ], [ %i.ak, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCskBwnbTnIhiv_6uu_cat.exit.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !424, !nonnull !8, !noundef !8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr nonnull readonly align 1 %i.b, i64 %i.ah, i1 false), !noalias !424
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCskBwnbTnIhiv_6uu_cat.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCskBwnbTnIhiv_6uu_cat.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCskBwnbTnIhiv_6uu_cat.exit.i.thread, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCskBwnbTnIhiv_6uu_cat.exit.i, %bb.g
  %i.av = phi ptr [ %i.aj, %bb.g ], [ %i.aj, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCskBwnbTnIhiv_6uu_cat.exit.i ], [ %i.ad, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCskBwnbTnIhiv_6uu_cat.exit.i.thread ]
  %.sroa.4.0.i.ph3035 = phi ptr [ %i.j, %bb.g ], [ null, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCskBwnbTnIhiv_6uu_cat.exit.i ], [ null, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCskBwnbTnIhiv_6uu_cat.exit.i.thread ]
  %i.aw = phi i64 [ %i.ah, %bb.g ], [ %i.ah, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCskBwnbTnIhiv_6uu_cat.exit.i ], [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCskBwnbTnIhiv_6uu_cat.exit.i.thread ]
  %i.ax = phi i64 [ %i.ar, %bb.g ], [ %i.ak, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCskBwnbTnIhiv_6uu_cat.exit.i ], [ %i.ae, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCskBwnbTnIhiv_6uu_cat.exit.i.thread ]
  %i.ay = add i64 %i.ax, %i.aw
  store i64 %i.ay, ptr %i.av, align 8, !alias.scope !424
  br label %.loopexit12

bb.h:                                             ; preds = %.loopexit
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ah, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #21
  unreachable

.loopexit12:                                      ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split9, %.split10, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCskBwnbTnIhiv_6uu_cat.exit
  %.sroa.3.0 = phi ptr [ %.sroa.4.0.i.ph3035, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCskBwnbTnIhiv_6uu_cat.exit ], [ %i.j, %.split10 ], [ %i.j, %.split9 ], [ %i.j, %.split ], [ %i.j, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  %.sroa.0.0 = phi i64 [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCskBwnbTnIhiv_6uu_cat.exit ], [ 1, %.split10 ], [ 1, %.split9 ], [ 1, %.split ], [ 1, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.az = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.ba = insertvalue { i64, ptr } %i.az, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.ba

.thread:                                          ; preds = %.split, %.split10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit

bb.i:                                             ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bb = and i64 %3, 1095216660480
  %i.bc = icmp ne i64 %i.bb, 1095216660480
  call void @llvm.assume(i1 %i.aa)
  call void @llvm.assume(i1 %i.bc)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit

bb.j:                                             ; preds = %.split9
  %i.bd = getelementptr i8, ptr %i.j, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bd) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bd, ptr %i.f, align 8, !alias.scope !427
  store i8 3, ptr %i.a, align 8, !alias.scope !427
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit: ; preds = %bb.i, %bb.j, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.be = load i64, ptr %i.c, align 8, !alias.scope !420, !noalias !421, !noundef !8 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCskBwnbTnIhiv_6uu_cat.exit.i.thread, label %bb.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs2vKOLqTMYjT_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtBc_2io4pipe10PipeReaderNtB2l_10PipeWriterEEE10initializeNCINvB1a_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_autoNtNtB2n_5stdio5StdinNtB4N_6StdoutE0E0zE0E0CskBwnbTnIhiv_6uu_cat(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 4                 ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !8, !align !17, !noundef !8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !align !21, !noundef !8 ; 3 uses
  store ptr null, ptr %i.d, align 8
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.f, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !436
  call void @_RNvNtNtNtCs2vKOLqTMYjT_3std3sys4pipe4unix4pipe(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b) #23, !noalias !436
  %i.f = load i32, ptr %i.b, align 8, !range !22, !noalias !436, !noundef !8
  %i.g = trunc nuw i32 %i.f to i1
  br i1 %i.g, label %bb.c, label %_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes4pipeKb0_ECskBwnbTnIhiv_6uu_cat.exit.i.i.i

_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes4pipeKb0_ECskBwnbTnIhiv_6uu_cat.exit.i.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.i = load i32, ptr %i.h, align 4, !range !23, !noalias !436, !noundef !8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i32, ptr %i.j, align 8, !range !23, !noalias !436, !noundef !8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !436
  store i32 %i.i, ptr %i.c, align 4, !noalias !436
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.k, ptr %i.l, align 4, !noalias !436
  %i.m = call noundef i32 @_RNvXsy_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedNtNtNtBb_2io4pipe10PipeReaderNtB5_4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c) #23, !noalias !436
  %i.n = zext i32 %i.m to i64
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},~{memory}"(ptr nonnull inttoptr (i64 72 to ptr), ptr %i.o, ptr nonnull inttoptr (i64 1031 to ptr), ptr nonnull inttoptr (i64 1048576 to ptr)) #24, !noalias !437, !srcloc !16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !436
  br label %_RNCINvMNtNtCs2vKOLqTMYjT_3std4sync9once_lockINtB5_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtB9_2io4pipe10PipeReaderNtB1A_10PipeWriterEEE10initializeNCINvB4_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_autoNtNtB1C_5stdio5StdinNtB41_6StdoutE0E0zE0CskBwnbTnIhiv_6uu_cat.exit

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !436, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !436
  %i.s = ptrtoint ptr %i.r to i64                 ; 3 uses
  %.sroa.9.8.extract.trunc9.i.i.i = trunc i64 %i.s to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !438
  %i.t = and i64 %i.s, 3
  switch i64 %i.t, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit.i.i.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit.i.i.i
    i64 1, label %bb.e
  ], !prof !13

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.u = icmp ult ptr %i.r, inttoptr (i64 188978561024 to ptr)
  %i.v = and i64 %i.s, 1095216660480
  %i.w = icmp ne i64 %i.v, 1095216660480
  tail call void @llvm.assume(i1 %i.u)
  tail call void @llvm.assume(i1 %i.w)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr i8, ptr %i.r, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !alias.scope !439, !noalias !438
  store i8 3, ptr %i.a, align 8, !alias.scope !439, !noalias !438
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y) #23, !noalias !438
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !438
  br label %_RNCINvMNtNtCs2vKOLqTMYjT_3std4sync9once_lockINtB5_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtB9_2io4pipe10PipeReaderNtB1A_10PipeWriterEEE10initializeNCINvB4_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_autoNtNtB1C_5stdio5StdinNtB41_6StdoutE0E0zE0CskBwnbTnIhiv_6uu_cat.exit

_RNCINvMNtNtCs2vKOLqTMYjT_3std4sync9once_lockINtB5_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtB9_2io4pipe10PipeReaderNtB1A_10PipeWriterEEE10initializeNCINvB4_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_autoNtNtB1C_5stdio5StdinNtB41_6StdoutE0E0zE0CskBwnbTnIhiv_6uu_cat.exit: ; preds = %_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes4pipeKb0_ECskBwnbTnIhiv_6uu_cat.exit.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit.i.i.i
  %.sroa.0.015.i.i.i = phi i32 [ -1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit.i.i.i ], [ %i.i, %_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes4pipeKb0_ECskBwnbTnIhiv_6uu_cat.exit.i.i.i ]
  %.sroa.9.8.extract.trunc13.i.i.i = phi i32 [ %.sroa.9.8.extract.trunc9.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit.i.i.i ], [ %i.k, %_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes4pipeKb0_ECskBwnbTnIhiv_6uu_cat.exit.i.i.i ]
  store i32 %.sroa.0.015.i.i.i, ptr %i.e, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %.sroa.9.8.extract.trunc13.i.i.i, ptr %i.z, align 4
  ret void

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #21
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs2vKOLqTMYjT_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtBc_2io4pipe10PipeReaderNtB2l_10PipeWriterEEE10initializeNCINvB1a_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_autoNtNtBc_2fs4FileNtNtB2n_5stdio6StdoutE0E0zE0E0CskBwnbTnIhiv_6uu_cat(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 4                 ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !8, !align !17, !noundef !8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !align !21, !noundef !8 ; 3 uses
  store ptr null, ptr %i.d, align 8
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.f, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !448
  call void @_RNvNtNtNtCs2vKOLqTMYjT_3std3sys4pipe4unix4pipe(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b) #23, !noalias !448
  %i.f = load i32, ptr %i.b, align 8, !range !22, !noalias !448, !noundef !8
  %i.g = trunc nuw i32 %i.f to i1
  br i1 %i.g, label %bb.c, label %_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes4pipeKb0_ECskBwnbTnIhiv_6uu_cat.exit.i.i.i

_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes4pipeKb0_ECskBwnbTnIhiv_6uu_cat.exit.i.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.i = load i32, ptr %i.h, align 4, !range !23, !noalias !448, !noundef !8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i32, ptr %i.j, align 8, !range !23, !noalias !448, !noundef !8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !448
  store i32 %i.i, ptr %i.c, align 4, !noalias !448
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.k, ptr %i.l, align 4, !noalias !448
  %i.m = call noundef i32 @_RNvXsy_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedNtNtNtBb_2io4pipe10PipeReaderNtB5_4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c) #23, !noalias !448
  %i.n = zext i32 %i.m to i64
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},~{memory}"(ptr nonnull inttoptr (i64 72 to ptr), ptr %i.o, ptr nonnull inttoptr (i64 1031 to ptr), ptr nonnull inttoptr (i64 1048576 to ptr)) #24, !noalias !449, !srcloc !16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !448
  br label %_RNCINvMNtNtCs2vKOLqTMYjT_3std4sync9once_lockINtB5_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtB9_2io4pipe10PipeReaderNtB1A_10PipeWriterEEE10initializeNCINvB4_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_autoNtNtB9_2fs4FileNtNtB1C_5stdio6StdoutE0E0zE0CskBwnbTnIhiv_6uu_cat.exit

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !448, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !448
  %i.s = ptrtoint ptr %i.r to i64                 ; 3 uses
  %.sroa.9.8.extract.trunc9.i.i.i = trunc i64 %i.s to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !450
  %i.t = and i64 %i.s, 3
  switch i64 %i.t, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit.i.i.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit.i.i.i
    i64 1, label %bb.e
  ], !prof !13

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.u = icmp ult ptr %i.r, inttoptr (i64 188978561024 to ptr)
  %i.v = and i64 %i.s, 1095216660480
  %i.w = icmp ne i64 %i.v, 1095216660480
  tail call void @llvm.assume(i1 %i.u)
  tail call void @llvm.assume(i1 %i.w)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr i8, ptr %i.r, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !alias.scope !451, !noalias !450
  store i8 3, ptr %i.a, align 8, !alias.scope !451, !noalias !450
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y) #23, !noalias !450
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !450
  br label %_RNCINvMNtNtCs2vKOLqTMYjT_3std4sync9once_lockINtB5_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtB9_2io4pipe10PipeReaderNtB1A_10PipeWriterEEE10initializeNCINvB4_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_autoNtNtB9_2fs4FileNtNtB1C_5stdio6StdoutE0E0zE0CskBwnbTnIhiv_6uu_cat.exit

_RNCINvMNtNtCs2vKOLqTMYjT_3std4sync9once_lockINtB5_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtB9_2io4pipe10PipeReaderNtB1A_10PipeWriterEEE10initializeNCINvB4_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_autoNtNtB9_2fs4FileNtNtB1C_5stdio6StdoutE0E0zE0CskBwnbTnIhiv_6uu_cat.exit: ; preds = %_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes4pipeKb0_ECskBwnbTnIhiv_6uu_cat.exit.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit.i.i.i
  %.sroa.0.015.i.i.i = phi i32 [ -1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit.i.i.i ], [ %i.i, %_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes4pipeKb0_ECskBwnbTnIhiv_6uu_cat.exit.i.i.i ]
  %.sroa.9.8.extract.trunc13.i.i.i = phi i32 [ %.sroa.9.8.extract.trunc9.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit.i.i.i ], [ %i.k, %_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes4pipeKb0_ECskBwnbTnIhiv_6uu_cat.exit.i.i.i ]
  store i32 %.sroa.0.015.i.i.i, ptr %i.e, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %.sroa.9.8.extract.trunc13.i.i.i, ptr %i.z, align 4
  ret void

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #21
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs2vKOLqTMYjT_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtBh_2io4pipe10PipeReaderNtB2q_10PipeWriterEEE10initializeNCINvB1f_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_autoNtNtB2s_5stdio5StdinNtB4S_6StdoutE0E0zE0E0INtNtNtB1Q_3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCskBwnbTnIhiv_6uu_cat(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 4                 ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !8, !align !17, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !464, !noalias !465, !align !21, !noundef !8 ; 3 uses
  store ptr null, ptr %i.d, align 8, !alias.scope !464, !noalias !465
end_hunk_0
begin_hunk_1_@_RNvCskBwnbTnIhiv_6uu_cat6uu_app:_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command14override_usageNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit
  %.sroa.71143.0..sroa_idx1144 = getelementptr inbounds nuw i8, ptr %i.d, i64 504
  store i64 %.sroa.31339.0.copyload, ptr %.sroa.71143.0..sroa_idx1144, align 8
  %.sroa.71143.sroa.5.0..sroa.71143.0..sroa_idx1144.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 512
  store i64 -1, ptr %.sroa.71143.sroa.5.0..sroa.71143.0..sroa_idx1144.sroa_idx, align 8
  %.sroa.71143.sroa.7.0..sroa.71143.0..sroa_idx1144.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 552
  store i64 -2, ptr %.sroa.71143.sroa.7.0..sroa.71143.0..sroa_idx1144.sroa_idx, align 8
  %.sroa.71143.sroa.9.0..sroa.71143.0..sroa_idx1144.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 576
  store ptr @49, ptr %.sroa.71143.sroa.9.0..sroa.71143.0..sroa_idx1144.sroa_idx, align 8
  %.sroa.71143.sroa.10.0..sroa.71143.0..sroa_idx1144.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 584
  store i64 16, ptr %.sroa.71143.sroa.10.0..sroa.71143.0..sroa_idx1144.sroa_idx, align 8
  %.sroa.71143.sroa.11.0..sroa.71143.0..sroa_idx1144.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 592
  store ptr @49, ptr %.sroa.71143.sroa.11.0..sroa.71143.0..sroa_idx1144.sroa_idx, align 8
  %.sroa.71143.sroa.12.0..sroa.71143.0..sroa_idx1144.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 600
  store i64 16, ptr %.sroa.71143.sroa.12.0..sroa.71143.0..sroa_idx1144.sroa_idx, align 8
  %.sroa.71143.sroa.13.0..sroa.71143.0..sroa_idx1144.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 608
  store ptr null, ptr %.sroa.71143.sroa.13.0..sroa.71143.0..sroa_idx1144.sroa_idx, align 8
  %.sroa.71143.sroa.15.0..sroa.71143.0..sroa_idx1144.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 624
  store i32 118, ptr %.sroa.71143.sroa.15.0..sroa.71143.0..sroa_idx1144.sroa_idx, align 8
  %.sroa.71143.sroa.16.0..sroa.71143.0..sroa_idx1144.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 628
  store i32 -1, ptr %.sroa.71143.sroa.16.0..sroa.71143.0..sroa_idx1144.sroa_idx, align 4
  %.sroa.71143.sroa.17.0..sroa.71143.0..sroa_idx1144.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 632
  store i32 0, ptr %.sroa.71143.sroa.17.0..sroa.71143.0..sroa_idx1144.sroa_idx, align 8
  %.sroa.71143.sroa.18.0..sroa.71143.0..sroa_idx1144.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 2, ptr %.sroa.71143.sroa.18.0..sroa.71143.0..sroa_idx1144.sroa_idx, align 4
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.aj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.d) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.ak, ptr noundef nonnull align 8 dereferenceable(712) %i.aj, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 18) #23
  %.sroa.01343.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.21344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.21344.0.copyload = load ptr, ptr %.sroa.21344.0..sroa_idx, align 8
  %.sroa.31345.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.31345.0.copyload = load i64, ptr %.sroa.31345.0..sroa_idx, align 8
  store i64 0, ptr %i.b, align 8
  %.sroa.01210.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.01210.sroa.5.0..sroa_idx, align 8
  %.sroa.01210.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %.sroa.01210.sroa.7.0..sroa_idx, align 8
  %.sroa.01210.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 0, ptr %.sroa.01210.sroa.9.0..sroa_idx, align 8
  %.sroa.01210.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 -1, ptr %.sroa.01210.sroa.11.0..sroa_idx, align 8
  %.sroa.01210.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 0, ptr %.sroa.01210.sroa.13.0..sroa_idx, align 8
  %.sroa.01210.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01210.sroa.14.0..sroa_idx, align 8
  %.sroa.01210.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01210.sroa.15.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.01210.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01210.sroa.16.0..sroa_idx, align 8
  %.sroa.01210.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01210.sroa.17.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.01210.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01210.sroa.18.0..sroa_idx, align 8
  %.sroa.01210.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01210.sroa.19.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.01210.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01210.sroa.20.0..sroa_idx, align 8
  %.sroa.01210.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01210.sroa.21.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.01210.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01210.sroa.22.0..sroa_idx, align 8
  %.sroa.01210.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01210.sroa.23.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.01210.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01210.sroa.24.0..sroa_idx, align 8
  %.sroa.01210.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01210.sroa.25.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.01210.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01210.sroa.26.0..sroa_idx, align 8
  %.sroa.01210.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01210.sroa.27.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.01210.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01210.sroa.28.0..sroa_idx, align 8
  %.sroa.01210.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %.sroa.01210.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01210.sroa.29.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01210.sroa.31.0..sroa_idx, align 8
  %.sroa.01210.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01210.sroa.32.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.01210.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.01210.sroa.33.0..sroa_idx, align 8
  %.sroa.01210.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01210.sroa.34.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.01210.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01210.sroa.35.0..sroa_idx, align 8
  %.sroa.01210.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %.sroa.01210.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01210.sroa.36.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01210.sroa.38.0..sroa_idx, align 8
  %.sroa.01210.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01210.sroa.39.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.01210.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01210.sroa.40.0..sroa_idx, align 8
  %.sroa.01210.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01210.sroa.41.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.01210.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01210.sroa.42.0..sroa_idx, align 8
  %.sroa.01210.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  %.sroa.01210.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01210.sroa.43.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01210.sroa.45.0..sroa_idx, align 8
  %.sroa.01210.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01210.sroa.46.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.01210.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01210.sroa.47.0..sroa_idx, align 8
  %.sroa.01210.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  store i64 0, ptr %.sroa.01210.sroa.48.0..sroa_idx, align 8
  %.sroa.41211.0..sroa_idx1212 = getelementptr inbounds nuw i8, ptr %i.b, i64 488
  store i64 %.sroa.01343.0.copyload, ptr %.sroa.41211.0..sroa_idx1212, align 8
  %.sroa.61214.0..sroa_idx1215 = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  store ptr %.sroa.21344.0.copyload, ptr %.sroa.61214.0..sroa_idx1215, align 8
  %.sroa.71217.0..sroa_idx1218 = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  store i64 %.sroa.31345.0.copyload, ptr %.sroa.71217.0..sroa_idx1218, align 8
  %.sroa.71217.sroa.5.0..sroa.71217.0..sroa_idx1218.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  store i64 -1, ptr %.sroa.71217.sroa.5.0..sroa.71217.0..sroa_idx1218.sroa_idx, align 8
  %.sroa.71217.sroa.7.0..sroa.71217.0..sroa_idx1218.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 552
  store i64 -2, ptr %.sroa.71217.sroa.7.0..sroa.71217.0..sroa_idx1218.sroa_idx, align 8
  %.sroa.71217.sroa.9.0..sroa.71217.0..sroa_idx1218.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 576
  store ptr @55, ptr %.sroa.71217.sroa.9.0..sroa.71217.0..sroa_idx1218.sroa_idx, align 8
  %.sroa.71217.sroa.10.0..sroa.71217.0..sroa_idx1218.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 584
  store i64 9, ptr %.sroa.71217.sroa.10.0..sroa.71217.0..sroa_idx1218.sroa_idx, align 8
  %.sroa.71217.sroa.11.0..sroa.71217.0..sroa_idx1218.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  store ptr null, ptr %.sroa.71217.sroa.11.0..sroa.71217.0..sroa_idx1218.sroa_idx, align 8
  %.sroa.71217.sroa.13.0..sroa.71217.0..sroa_idx1218.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  store ptr null, ptr %.sroa.71217.sroa.13.0..sroa.71217.0..sroa_idx1218.sroa_idx, align 8
  %.sroa.71217.sroa.15.0..sroa.71217.0..sroa_idx1218.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 624
  store i32 117, ptr %.sroa.71217.sroa.15.0..sroa.71217.0..sroa_idx1218.sroa_idx, align 8
  %.sroa.71217.sroa.16.0..sroa.71217.0..sroa_idx1218.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 628
  store i32 -1, ptr %.sroa.71217.sroa.16.0..sroa.71217.0..sroa_idx1218.sroa_idx, align 4
  %.sroa.71217.sroa.17.0..sroa.71217.0..sroa_idx1218.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 632
  store i32 0, ptr %.sroa.71217.sroa.17.0..sroa.71217.0..sroa_idx1218.sroa_idx, align 8
  %.sroa.71217.sroa.18.0..sroa.71217.0..sroa_idx1218.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 2, ptr %.sroa.71217.sroa.18.0..sroa.71217.0..sroa_idx1218.sroa_idx, align 4
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.ak, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.b) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(712) %i.ak, i64 712, i1 false)
  %.val = load i64, ptr %i.y, align 8, !range !11, !noundef !8 ; 2 uses
  %i.bo = icmp eq i64 %.val, 0
  br i1 %i.bo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECskBwnbTnIhiv_6uu_cat.exit395
  %.val1 = load ptr, ptr %i.al, align 8, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECskBwnbTnIhiv_6uu_cat.exit395, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCskBwnbTnIhiv_6uu_cat8cat_path(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly captures(none) dereferenceable(5) %2, ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(64) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 18 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [31744 x i8], align 1             ; 7 uses
  %i.g = alloca [144 x i8], align 8               ; 6 uses
  %i.h = alloca [144 x i8], align 8               ; 6 uses
  %i.i = alloca [144 x i8], align 8               ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [40 x i8], align 8                ; 18 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [31744 x i8], align 1             ; 7 uses
  %i.p = alloca [144 x i8], align 8               ; 6 uses
  %i.q = alloca [144 x i8], align 8               ; 6 uses
  %i.r = alloca [144 x i8], align 8               ; 7 uses
  %i.s = alloca [16 x i8], align 16               ; 4 uses
  %i.t = alloca [176 x i8], align 8               ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [4 x i8], align 4                 ; 6 uses
  %i.w = alloca [8 x i8], align 4                 ; 9 uses
  %i.x = alloca [16 x i8], align 8                ; 7 uses
  %i.y = alloca [4 x i8], align 4                 ; 6 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.ab, align 8            ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val28 = load i64, ptr %i.ac, align 8, !noundef !8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !749)
  %i.ad = icmp eq i64 %.val28, 1
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %lhsc.i = load i8, ptr %.val, align 1, !noalias !749
  %i.ae = icmp eq i8 %lhsc.i, 45
  br i1 %i.ae, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !749
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !750
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val28) #23, !noalias !750
  %i.af = load i64, ptr %i.t, align 8, !range !751, !noalias !750, !noundef !8
  %i.ag = icmp eq i64 %i.af, 2
  br i1 %i.ag, label %bb.d, label %bb.f

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !750, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !750
  %i.aj = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.ak = and i64 %i.aj, 3
  switch i64 %i.ak, label %default.unreachable [
    i64 2, label %bb.g
    i64 3, label %bb.e
    i64 0, label %bb.h
    i64 1, label %bb.h
  ], !prof !13

default.unreachable:                              ; preds = %bb.ec, %bb.cl, %bb.bp, %bb.y, %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.al = icmp ult ptr %i.ai, inttoptr (i64 188978561024 to ptr)
  %i.am = and i64 %i.aj, 1095216660480
  %i.an = icmp ne i64 %i.am, 1095216660480
  call void @llvm.assume(i1 %i.al)
  call void @llvm.assume(i1 %i.an)
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %.sroa.81.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %.sroa.81.0.copyload.i = load i32, ptr %.sroa.81.0..sroa_idx.i, align 8, !noalias !752 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !750
  store i32 %.sroa.81.0.copyload.i, ptr %i.v, align 4, !noalias !749
  %i.ao = lshr i32 %.sroa.81.0.copyload.i, 12
  %i.ap = and i32 %i.ao, 15
  %switch.tableidx = add nsw i32 %i.ap, -1        ; 3 uses
  %i.aq = icmp ult i32 %switch.tableidx, 12
  %switch.maskindex = trunc nsw i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 2731, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.aq, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %_RNvCskBwnbTnIhiv_6uu_cat14get_input_type.exit

bb.g:                                             ; preds = %bb.d
  %.mask.i = and i64 %i.aj, -4294967296
  %i.ar = icmp eq i64 %.mask.i, 171798691840
  br i1 %i.ar, label %_RNvCskBwnbTnIhiv_6uu_cat14get_input_type.exit.thread385, label %bb.h

_RNvCskBwnbTnIhiv_6uu_cat14get_input_type.exit.thread385: ; preds = %bb.g, %bb.h
  %.pr341 = phi i64 [ -9223372036854775808, %bb.h ], [ -9223372036854775803, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !749
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.d, %bb.d
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ai, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !749
  br label %_RNvCskBwnbTnIhiv_6uu_cat14get_input_type.exit.thread385

switch.lookup:                                    ; preds = %bb.f
  %i.as = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvCskBwnbTnIhiv_6uu_cat8cat_path, i64 %i.as
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i8 %switch.load, ptr %i.at, align 8, !alias.scope !749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !749
  br label %bb.j

_RNvCskBwnbTnIhiv_6uu_cat14get_input_type.exit:   ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !749
  store ptr %i.v, ptr %i.u, align 8, !noalias !749
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXsv_NtCs2vKOLqTMYjT_3std2fsNtB5_8FileTypeNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !749
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, ptr noundef nonnull @28, ptr noundef nonnull %i.u) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !749
  %.pr.pre.pre = load i64, ptr %i.aa, align 8     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !749
  %.not = icmp eq i64 %.pr.pre.pre, -1
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNvCskBwnbTnIhiv_6uu_cat14get_input_type.exit.thread385, %_RNvCskBwnbTnIhiv_6uu_cat14get_input_type.exit
  %.pr388 = phi i64 [ %.pr341, %_RNvCskBwnbTnIhiv_6uu_cat14get_input_type.exit.thread385 ], [ %.pr.pre.pre, %_RNvCskBwnbTnIhiv_6uu_cat14get_input_type.exit ]
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.420.0.copyload = load i8, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 9
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.524.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.521.0..sroa_idx, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store i64 %.pr388, ptr %0, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.420.0.copyload, ptr %.sroa.423.0..sroa_idx, align 8
  br label %bb.en

bb.j:                                             ; preds = %_RNvCskBwnbTnIhiv_6uu_cat14get_input_type.exit, %switch.lookup
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !753
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  switch i8 %.pre, label %bb.k [
    i8 0, label %bb.l
    i8 2, label %bb.m
    i8 7, label %bb.u
  ]

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !754
  store i128 18446745954905227264, ptr %i.s, align 16, !noalias !754
  call void @_RNvMsj_NtCs2vKOLqTMYjT_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val28) #23, !noalias !755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !754
  %i.au = load i32, ptr %i.x, align 8, !range !22, !noundef !8
  %i.av = trunc nuw i32 %i.au to i1
  br i1 %i.av, label %bb.bz, label %bb.ca

bb.l:                                             ; preds = %bb.j
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.en

bb.m:                                             ; preds = %.thread, %bb.j
  %i.aw = call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio5stdin() #23
  %i.ax = call noundef i32 @isatty(i32 noundef 0) #23
  %i.ay = icmp ne i32 %i.ax, 0
  %i.az = call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stdout() #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !756
  %i.ba = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},~{memory}"(ptr nonnull inttoptr (i64 5 to ptr), ptr null, ptr nonnull %i.q) #23, !noalias !756, !srcloc !757
  %i.bb = extractvalue { ptr, i32, i32 } %i.ba, 0
  %.not.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !756
  %i.bc = load atomic ptr, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !758
  %.not.i2.i.i = icmp eq ptr %i.bc, @19
  br i1 %.not.i2.i.i, label %_RINvNtNtCskBwnbTnIhiv_6uu_cat8platform4unix17is_safe_overwriteNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinNtB10_6StdoutEB6_.exit.thread, label %bb.o, !prof !12

bb.o:                                             ; preds = %bb.n
  call void @_RNvNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #23, !noalias !758
  br label %_RINvNtNtCskBwnbTnIhiv_6uu_cat8platform4unix17is_safe_overwriteNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinNtB10_6StdoutEB6_.exit.thread

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit.i: ; preds = %bb.m
  %.sroa.71.i.sroa.3.4.copyload.i = load i64, ptr %i.q, align 8, !noalias !758
  %.sroa.71.i.sroa.5.4..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.71.i.sroa.5.4.copyload.i = load i64, ptr %.sroa.71.i.sroa.5.4..sroa_idx.i, align 8, !noalias !758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !756
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !759
  %i.bd = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},~{memory}"(ptr nonnull inttoptr (i64 5 to ptr), ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull %i.p) #23, !noalias !759, !srcloc !757
  %i.be = extractvalue { ptr, i32, i32 } %i.bd, 0
  %.not.i.i21.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i21.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit29.i, label %bb.p

bb.p:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !759
  %i.bf = load atomic ptr, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !760
  %.not.i2.i23.i = icmp eq ptr %i.bf, @19
  br i1 %.not.i2.i23.i, label %_RINvNtNtCskBwnbTnIhiv_6uu_cat8platform4unix17is_safe_overwriteNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinNtB10_6StdoutEB6_.exit.thread, label %bb.q, !prof !12

bb.q:                                             ; preds = %bb.p
  call void @_RNvNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #23, !noalias !760
  br label %_RINvNtNtCskBwnbTnIhiv_6uu_cat8platform4unix17is_safe_overwriteNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinNtB10_6StdoutEB6_.exit.thread

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit29.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit.i
  %.sroa.71.i19.sroa.3.4.copyload.i = load ptr, ptr %i.p, align 8, !noalias !760 ; 2 uses
  %.sroa.71.i19.sroa.5.4..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.138.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.138.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.71.i19.sroa.5.4..sroa_idx.i, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !759
  store ptr %.sroa.71.i19.sroa.3.4.copyload.i, ptr %i.r, align 8
  %.cast.i = ptrtoint ptr %.sroa.71.i19.sroa.3.4.copyload.i to i64
  %i.bg = icmp eq i64 %.sroa.71.i.sroa.3.4.copyload.i, %.cast.i
  %i.bh = load i64, ptr %.sroa.138.8..sroa_idx.i, align 8
  %.not.i = icmp eq i64 %.sroa.71.i.sroa.5.4.copyload.i, %i.bh
  %or.cond.i = select i1 %i.bg, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.r, label %.split.thread

bb.r:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit29.i
  %i.bi = call noundef i64 @_RNvMNtNtCsh036I4OHgIr_6uucore8features2fsNtB2_15FileInformation9file_size(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.r) #23 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %.split.thread, label %_RINvNtNtCscC7ZI6NG8RX_6rustix2fs2fd4seekRNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinECskBwnbTnIhiv_6uu_cat.exit.i

_RINvNtNtCscC7ZI6NG8RX_6rustix2fs2fd4seekRNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinECskBwnbTnIhiv_6uu_cat.exit.i: ; preds = %bb.r
  %i.bk = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},~{memory}"(ptr nonnull inttoptr (i64 8 to ptr), ptr null, ptr null, ptr nonnull inttoptr (i64 1 to ptr)) #24, !noalias !761, !srcloc !16
  %i.bl = extractvalue { ptr, i32, i32 } %i.bk, 0 ; 5 uses
  %i.bm = ptrtoint ptr %i.bl to i64
  %.not.i.i.i.i = icmp sle ptr %i.bl, inttoptr (i64 -4096 to ptr)
  %i.bn = icmp sge ptr %i.bl, null
  %.sroa.0.0.i.i.i.not.i = or i1 %.not.i.i.i.i, %i.bn ; 2 uses
  %i.bo = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},~{memory}"(ptr nonnull inttoptr (i64 8 to ptr), ptr nonnull inttoptr (i64 1 to ptr), ptr null, ptr nonnull inttoptr (i64 1 to ptr)) #24, !noalias !762, !srcloc !16
  %i.bp = extractvalue { ptr, i32, i32 } %i.bo, 0 ; 3 uses
  %.not.i.i.i30.i = icmp sgt ptr %i.bp, inttoptr (i64 -4096 to ptr)
  %i.bq = icmp slt ptr %i.bp, null
  %.sroa.0.0.i.i.i31.i = and i1 %.not.i.i.i30.i, %i.bq
  %i.br = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},~{memory}"(ptr nonnull inttoptr (i64 72 to ptr), ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull inttoptr (i64 3 to ptr)) #24
  %i.bs = extractvalue { ptr, i32, i32 } %i.br, 0 ; 3 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %.not.i.i.i33.i = icmp sle ptr %i.bs, inttoptr (i64 -4096 to ptr)
end_hunk_1
begin_hunk_2_@_RNvCskBwnbTnIhiv_6uu_cat8cat_path:bb.a
bb.dz:                                            ; preds = %bb.dy
  %i.oc = call fastcc noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE9flush_bufCskBwnbTnIhiv_6uu_cat(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d) #23, !noalias !886 ; 2 uses
  %.not.i.i.i.i89 = icmp eq ptr %i.oc, null
  br i1 %.not.i.i.i.i89, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskBwnbTnIhiv_6uu_cat.exit.i.i.i90, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskBwnbTnIhiv_6uu_cat.exit.thread.i.i.i75

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskBwnbTnIhiv_6uu_cat.exit.i.i.i90: ; preds = %bb.dz
  %i.od = call noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.kb) #23, !noalias !886 ; 2 uses
  %.not10.i.i.i91 = icmp eq ptr %i.od, null
  br i1 %.not10.i.i.i91, label %_RINvCskBwnbTnIhiv_6uu_cat17write_end_of_lineINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEEB2_.exit.i.i78, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskBwnbTnIhiv_6uu_cat.exit.thread.i.i.i75

bb.ea:                                            ; preds = %bb.dt
  %i.oe = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.nk
  call void @_RINvNtCs6JMX4GRUq9U_4core9panicking13assert_failedhhECsdAYBYoqr1XX_12aho_corasick(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.oe, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @3, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #21, !noalias !850
  unreachable

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskBwnbTnIhiv_6uu_cat.exit.thread.i.i.i75: ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskBwnbTnIhiv_6uu_cat.exit.i.i.i90, %bb.dz, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskBwnbTnIhiv_6uu_cat.exit.i.i.i73
  %.sroa.8.0.ph.i.i76 = phi ptr [ %i.ob, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskBwnbTnIhiv_6uu_cat.exit.i.i.i73 ], [ %i.oc, %bb.dz ], [ %i.od, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskBwnbTnIhiv_6uu_cat.exit.i.i.i90 ]
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !851, !noalias !852
  %.sroa.468.0..sroa_idx.i.i77 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0.ph.i.i76, ptr %.sroa.468.0..sroa_idx.i.i77, align 8, !alias.scope !851, !noalias !852
  br label %_RINvCskBwnbTnIhiv_6uu_cat11print_linesNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.i

_RINvCskBwnbTnIhiv_6uu_cat17write_end_of_lineINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEEB2_.exit.i.i78: ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskBwnbTnIhiv_6uu_cat.exit.i.i.i90, %bb.dy
  store i8 1, ptr %i.kd, align 8, !alias.scope !855, !noalias !856
  br label %bb.dw

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskBwnbTnIhiv_6uu_cat.exit.thread.i.i83: ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskBwnbTnIhiv_6uu_cat.exit.i.i86, %.loopexit.i.i81
  %.sroa.0.0.i4972.i.i84 = phi ptr [ %i.lg, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskBwnbTnIhiv_6uu_cat.exit.i.i86 ], [ %i.lf, %.loopexit.i.i81 ]
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !851, !noalias !852
  %.sroa.434.0..sroa_idx.i.i85 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i4972.i.i84, ptr %.sroa.434.0..sroa_idx.i.i85, align 8, !alias.scope !851, !noalias !852
  br label %_RINvCskBwnbTnIhiv_6uu_cat11print_linesNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.i

bb.eb:                                            ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i.i108
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !851, !noalias !852
  %.sroa.4.0..sroa_idx.i.i110 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.kl, ptr %.sroa.4.0..sroa_idx.i.i110, align 8, !alias.scope !851, !noalias !852
  br label %_RINvCskBwnbTnIhiv_6uu_cat11print_linesNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.i

bb.ec:                                            ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i.i108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !845
  switch i64 %i.ko, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit.i.i111
    i64 3, label %bb.ed
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit.i.i111
    i64 1, label %bb.ee
  ], !prof !13

bb.ed:                                            ; preds = %bb.ec
  %i.of = icmp ult ptr %i.kl, inttoptr (i64 188978561024 to ptr)
  %i.og = and i64 %i.km, 1095216660480
  %i.oh = icmp ne i64 %i.og, 1095216660480
  call void @llvm.assume(i1 %i.of)
  call void @llvm.assume(i1 %i.oh)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit.i.i111

bb.ee:                                            ; preds = %bb.ec
  %i.oi = getelementptr i8, ptr %i.kl, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.oi) ]
  store ptr %i.oi, ptr %i.ki, align 8, !alias.scope !887, !noalias !845
  store i8 3, ptr %i.b, align 8, !alias.scope !887, !noalias !845
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ki) #23, !noalias !850
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit.i.i111

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit.i.i111: ; preds = %bb.ee, %bb.ed, %bb.ec, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !845
  br label %.backedge80.i.i88.backedge

.backedge80.i.i88.backedge:                       ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit.i.i111, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskBwnbTnIhiv_6uu_cat.exit.i.i86
  br label %.backedge80.i.i88

_RINvCskBwnbTnIhiv_6uu_cat11print_linesNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.i: ; preds = %bb.eb, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskBwnbTnIhiv_6uu_cat.exit.thread.i.i83, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskBwnbTnIhiv_6uu_cat.exit.thread.i.i.i75, %bb.dp, %bb.dh, %bb.dc, %bb.cw, %bb.cr
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEECskBwnbTnIhiv_6uu_cat(ptr noalias nofree noundef align 8 dereferenceable(40) %i.d) #23, !noalias !850
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !845
  br label %_RINvCskBwnbTnIhiv_6uu_cat10cat_handleNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit

bb.ef:                                            ; preds = %_RINvNtNtCskBwnbTnIhiv_6uu_cat8platform4unix17is_safe_overwriteNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtB12_2io5stdio6StdoutEB6_.exit.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !888)
  %i.oj = call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stdout() #23, !noalias !889 ; 0 uses
  %i.ok = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_auto10PIPE_CACHE, i64 8) acquire, align 4, !noalias !890
  %i.ol = icmp eq i32 %i.ok, 0
  br i1 %i.ol, label %_RINvMNtNtCs2vKOLqTMYjT_3std4sync9once_lockINtB3_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtB7_2io4pipe10PipeReaderNtB1y_10PipeWriterEEE15get_or_try_initNCINvB2_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_autoNtNtB7_2fs4FileNtNtB1A_5stdio6StdoutE0E0zECskBwnbTnIhiv_6uu_cat.exit.i.i.i, label %bb.eg, !prof !12

bb.eg:                                            ; preds = %bb.ef
  call fastcc void @_RINvMNtNtCs2vKOLqTMYjT_3std4sync9once_lockINtB3_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtB7_2io4pipe10PipeReaderNtB1y_10PipeWriterEEE10initializeNCINvB2_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_autoNtNtB7_2fs4FileNtNtB1A_5stdio6StdoutE0E0zECskBwnbTnIhiv_6uu_cat() #23, !noalias !891
  br label %_RINvMNtNtCs2vKOLqTMYjT_3std4sync9once_lockINtB3_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtB7_2io4pipe10PipeReaderNtB1y_10PipeWriterEEE15get_or_try_initNCINvB2_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_autoNtNtB7_2fs4FileNtNtB1A_5stdio6StdoutE0E0zECskBwnbTnIhiv_6uu_cat.exit.i.i.i

_RINvMNtNtCs2vKOLqTMYjT_3std4sync9once_lockINtB3_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtB7_2io4pipe10PipeReaderNtB1y_10PipeWriterEEE15get_or_try_initNCINvB2_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_autoNtNtB7_2fs4FileNtNtB1A_5stdio6StdoutE0E0zECskBwnbTnIhiv_6uu_cat.exit.i.i.i: ; preds = %bb.eg, %bb.ef
  %i.om = load i32, ptr @_RNvNvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_auto10PIPE_CACHE, align 4, !noalias !890, !noundef !8
  %.not.i.i11.i57 = icmp eq i32 %i.om, -1
  br i1 %.not.i.i11.i57, label %.loopexit.i12.i63, label %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls18fcntl_setpipe_size.exit.i.i.i58

_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls18fcntl_setpipe_size.exit.i.i.i58: ; preds = %_RINvMNtNtCs2vKOLqTMYjT_3std4sync9once_lockINtB3_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtB7_2io4pipe10PipeReaderNtB1y_10PipeWriterEEE15get_or_try_initNCINvB2_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_autoNtNtB7_2fs4FileNtNtB1A_5stdio6StdoutE0E0zECskBwnbTnIhiv_6uu_cat.exit.i.i.i
  %i.on = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},~{memory}"(ptr nonnull inttoptr (i64 72 to ptr), ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull inttoptr (i64 1031 to ptr), ptr nonnull inttoptr (i64 1048576 to ptr)) #24, !noalias !892, !srcloc !16 ; 0 uses
  %i.oo = call noundef range(i32 0, -1) i32 @_RNvXs3_NtNtNtCs2vKOLqTMYjT_3std3sys2fd4unixNtB5_8FileDescNtNtNtNtBb_2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.w) #23, !noalias !893
  %i.op = zext i32 %i.oo to i64
  %i.oq = inttoptr i64 %i.op to ptr
  %i.or = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},~{memory}"(ptr nonnull inttoptr (i64 221 to ptr), ptr %i.oq, ptr null, ptr null, ptr nonnull inttoptr (i64 2 to ptr)) #24, !noalias !893, !srcloc !821 ; 0 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.eh

bb.eh:                                            ; preds = %bb.ej, %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls18fcntl_setpipe_size.exit.i.i.i58
  %i.ot = call noundef range(i32 0, -1) i32 @_RNvXs3_NtNtNtCs2vKOLqTMYjT_3std3sys2fd4unixNtB5_8FileDescNtNtNtNtBb_2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.w) #23, !noalias !893
  %i.ou = call noundef i32 @_RNvXsA_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedNtNtNtBb_2io4pipe10PipeWriterNtB5_4AsFd5as_fd(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_auto10PIPE_CACHE, i64 4)) #23, !noalias !893
  %i.ov = zext i32 %i.ot to i64
  %i.ow = inttoptr i64 %i.ov to ptr
  %i.ox = zext i32 %i.ou to i64
  %i.oy = inttoptr i64 %i.ox to ptr
  %i.oz = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},{r8},{r9},~{memory}"(ptr nonnull inttoptr (i64 275 to ptr), ptr %i.ow, ptr null, ptr %i.oy, ptr null, ptr nonnull inttoptr (i64 1048576 to ptr), ptr null) #23, !noalias !894, !srcloc !18
  %i.pa = extractvalue { ptr, i32, i32 } %i.oz, 0 ; 4 uses
  %i.pb = ptrtoint ptr %i.pa to i64
  %.not.i.i3.i.i.i59 = icmp sgt ptr %i.pa, inttoptr (i64 -4096 to ptr)
  %i.pc = icmp slt ptr %i.pa, null
  %.sroa.0.0.i.i4.i.i.i60 = and i1 %.not.i.i3.i.i.i59, %i.pc
  br i1 %.sroa.0.0.i.i4.i.i.i60, label %.loopexit.i12.i63, label %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit.i.i.i61

_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit.i.i.i61: ; preds = %bb.eh
  %i.pd = icmp eq ptr %i.pa, null
  br i1 %i.pd, label %bb.el, label %bb.ei

bb.ei:                                            ; preds = %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit.i.i.i61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !890
  call fastcc void @_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes10drain_pipeNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECskBwnbTnIhiv_6uu_cat(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.a, i64 noundef %i.pb) #25
  %i.pe = load i8, ptr %i.a, align 8, !range !7, !noalias !890, !noundef !8
  %i.pf = trunc nuw i8 %i.pe to i1
  br i1 %i.pf, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.pg = load i8, ptr %i.os, align 1, !range !7, !noalias !890, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !890
  %.not2.i.i.i62 = icmp eq i8 %i.pg, 0
  br i1 %.not2.i.i.i62, label %bb.eh, label %.loopexit.i12.i63

bb.ek:                                            ; preds = %bb.ei
  %i.ph = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.pi = load ptr, ptr %i.ph, align 8, !noalias !890, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !890
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !895, !noalias !896
  %.sroa.4.0..sroa_idx.i13.i64 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.pi, ptr %.sroa.4.0..sroa_idx.i13.i64, align 8, !alias.scope !895, !noalias !896
  br label %_RINvCskBwnbTnIhiv_6uu_cat10cat_handleNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit

.loopexit.i12.i63:                                ; preds = %bb.ej, %bb.eh, %_RINvMNtNtCs2vKOLqTMYjT_3std4sync9once_lockINtB3_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtB7_2io4pipe10PipeReaderNtB1y_10PipeWriterEEE15get_or_try_initNCINvB2_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_autoNtNtB7_2fs4FileNtNtB1A_5stdio6StdoutE0E0zECskBwnbTnIhiv_6uu_cat.exit.i.i.i
  call fastcc void @_RINvCskBwnbTnIhiv_6uu_cat16print_unbufferedNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 4 dereferenceable(8) %i.w) #22
  br label %_RINvCskBwnbTnIhiv_6uu_cat10cat_handleNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit

bb.el:                                            ; preds = %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit.i.i.i61
  store i64 -1, ptr %0, align 8, !alias.scope !895, !noalias !896
  br label %_RINvCskBwnbTnIhiv_6uu_cat10cat_handleNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit

_RINvCskBwnbTnIhiv_6uu_cat10cat_handleNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit: ; preds = %bb.ek, %.loopexit.i12.i63, %bb.el, %_RINvCskBwnbTnIhiv_6uu_cat11print_linesNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.i
  %.val30 = load i32, ptr %i.w, align 4, !range !23, !noundef !8
  %i.pj = call noundef i32 @close(i32 noundef %.val30) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.en

bb.em:                                            ; preds = %bb.ci, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.en

bb.en:                                            ; preds = %bb.i, %bb.v, %bb.em, %bb.l, %bb.u, %_RINvCskBwnbTnIhiv_6uu_cat10cat_handleNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEB2_.exit, %_RINvCskBwnbTnIhiv_6uu_cat10cat_handleNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMCskBwnbTnIhiv_6uu_catNtB2_10LineNumber3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i8], align 1                ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.a, i8 48, i64 25, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, ptr noundef nonnull align 1 dereferenceable(7) @43, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) %i.a, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 25, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 30, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 31, ptr %i.e, align 8
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskBwnbTnIhiv_6uu_cat(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 1, 17) %3) unnamed_addr #4 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !19
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %4 = mul nuw i64 %3, %.0.val                    ; 2 uses
  %i.f = icmp uge i64 %i.b, %4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %4, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #23
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.j = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, 9) %2) #23
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.n, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE14write_all_coldCskBwnbTnIhiv_6uu_cat(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 2 uses
  %i.d = icmp sgt i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = sub nsw i64 %i.a, %i.c
  %i.f = icmp ugt i64 %2, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE9flush_bufCskBwnbTnIhiv_6uu_cat(ptr noalias nofree noundef align 8 dereferenceable(40) %0) #23 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i64, ptr %0, align 8, !range !11
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.h = phi i64 [ %.pre, %._crit_edge ], [ %i.a, %bb.a ]
  %.not4 = icmp samesign ult i64 %2, %i.h
  br i1 %.not4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !900)
  %i.i = load i64, ptr %i.b, align 8, !alias.scope !900, !noalias !901, !noundef !8 ; 3 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !900, !noalias !901, !nonnull !8, !noundef !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %1, i64 range(i64 0, 9223372036854775807) %2, i1 false), !noalias !900
  %i.n = add nuw i64 %i.i, %2
  store i64 %i.n, ptr %i.b, align 8, !alias.scope !900, !noalias !901
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = tail call noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #23
  store i8 0, ptr %i.o, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.sroa.0.0 = phi ptr [ null, %bb.d ], [ %i.q, %bb.e ], [ %i.g, %bb.b ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE9flush_bufCskBwnbTnIhiv_6uu_cat(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !8 ; 2 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %.not5.not = icmp eq i64 %i.e, 0
  br i1 %.not5.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  store i8 1, ptr %i.g, align 8
  %i.j = call { ptr, i64 } @_RNvMNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB7_9BufWriterpE9flush_bufNtB2_8BufGuard9remaining(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b) #23 ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0
  %i.l = extractvalue { ptr, i64 } %i.j, 1
  %i.m = call { i64, ptr } @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.l) #23 ; 2 uses
  %i.n = extractvalue { i64, ptr } %i.m, 0
  %i.o = extractvalue { i64, ptr } %i.m, 1        ; 12 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 5 uses
  store i8 0, ptr %i.g, align 8
  %i.q = trunc nuw i64 %i.n to i1
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.r = and i64 %i.p, 3
  switch i64 %i.r, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit
    i64 0, label %.split4
    i64 1, label %.split3
  ], !prof !13

default.unreachable:                              ; preds = %bb.c
  unreachable

.split:                                           ; preds = %bb.c
  %i.s = lshr i64 %i.p, 32
  %i.t = trunc nuw i64 %i.s to i32
  %i.u = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #23
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !8, !noundef !8
  %i.x = call noundef zeroext i1 %i.w(i32 noundef %i.t) #23, !inline_history !2
  br i1 %i.x, label %.thread, label %._crit_edge

.split4:                                          ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.z = load i8, ptr %i.y, align 8, !range !14, !noundef !8
  %i.aa = icmp eq i8 %i.z, 35
  br i1 %i.aa, label %.thread, label %._crit_edge

.split3:                                          ; preds = %bb.c
  %i.ab = getelementptr i8, ptr %i.o, i64 31
  %i.ac = load i8, ptr %i.ab, align 8, !range !14, !noundef !8
  %i.ad = icmp eq i8 %i.ac, 35
  br i1 %i.ad, label %bb.g, label %._crit_edge

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %bb.c
  %i.ae = lshr i64 %i.p, 32
  %i.af = icmp ult ptr %i.o, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.ae to i8
  %spec.select.i.i.i = select i1 %i.af, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.ag = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.ah, label %bb.f, label %._crit_edge

bb.d:                                             ; preds = %bb.b
  %i.ai = icmp eq ptr %i.o, null
  br i1 %i.ai, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = load i64, ptr %i.c, align 8, !noundef !8
  %i.ak = add i64 %i.aj, %i.p                     ; 2 uses
  store i64 %i.ak, ptr %i.c, align 8
  br label %bb.h

._crit_edge:                                      ; preds = %bb.d, %.split4, %.split3, %.split, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.h, %bb.a
  %.sroa.0.1 = phi ptr [ null, %bb.a ], [ null, %bb.h ], [ @46, %bb.d ], [ %i.o, %.split4 ], [ %i.o, %.split3 ], [ %i.o, %.split ], [ %i.o, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @_RNvXs_NvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB9_9BufWriterpE9flush_bufNtB4_8BufGuardNtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.1

.thread:                                          ; preds = %.split4, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskBwnbTnIhiv_6uu_cat.exit

bb.f:                                             ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.al = icmp ult ptr %i.o, inttoptr (i64 188978561024 to ptr)
  %i.am = and i64 %i.p, 1095216660480
  %i.an = icmp ne i64 %i.am, 1095216660480
end_hunk_2
