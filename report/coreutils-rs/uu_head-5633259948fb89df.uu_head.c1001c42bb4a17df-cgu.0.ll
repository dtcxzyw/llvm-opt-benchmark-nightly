Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_head-5633259948fb89df.uu_head.c1001c42bb4a17df-cgu.0?download=true
inline.NumInlined: 820
inline.NumDeleted: 501
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvCsgzkSwV7OBv7_7uu_head9head_file:bb.a
  %.not.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCsgzkSwV7OBv7_7uu_head.exit.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCsgzkSwV7OBv7_7uu_head.exit.thread.i

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCsgzkSwV7OBv7_7uu_head.exit.i: ; preds = %_RINvNtNtCs7tKScEop1B6_5alloc2io4copy4copyINtNtCsgzkSwV7OBv7_7uu_head4take9TakeLinesQINtNtNtB4_8buffered9bufreader9BufReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEEINtNtB1p_9bufwriter9BufWriterNtNtNtB22_2io5stdio10StdoutLockEEBI_.exit.i
  %i.dk = inttoptr i64 %.sroa.01.0.i.i.i.i to ptr
  %i.dl = call noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.at) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.dl, null
  br i1 %.not.i, label %_RINvCsgzkSwV7OBv7_7uu_head13print_n_linesINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEEB2_.exit, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCsgzkSwV7OBv7_7uu_head.exit.thread.i

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCsgzkSwV7OBv7_7uu_head.exit.thread.i: ; preds = %bb.f, %.split.i.i.i.i, %.split13.i.i.i.i, %.split12.i.i.i.i, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCsgzkSwV7OBv7_7uu_head.exit.i, %_RINvNtNtCs7tKScEop1B6_5alloc2io4copy4copyINtNtCsgzkSwV7OBv7_7uu_head4take9TakeLinesQINtNtNtB4_8buffered9bufreader9BufReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEEINtNtB1p_9bufwriter9BufWriterNtNtNtB22_2io5stdio10StdoutLockEEBI_.exit.i
  %.sroa.0.0.i24.sink.i = phi ptr [ %i.dj, %_RINvNtNtCs7tKScEop1B6_5alloc2io4copy4copyINtNtCsgzkSwV7OBv7_7uu_head4take9TakeLinesQINtNtNtB4_8buffered9bufreader9BufReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEEINtNtB1p_9bufwriter9BufWriterNtNtNtB22_2io5stdio10StdoutLockEEBI_.exit.i ], [ %i.dl, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCsgzkSwV7OBv7_7uu_head.exit.i ], [ %i.bu, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i ], [ %i.bu, %.split.i.i.i.i ], [ %i.bu, %.split12.i.i.i.i ], [ %i.bu, %.split13.i.i.i.i ], [ %i.be, %bb.f ]
  %i.dm = call fastcc noundef nonnull ptr @_RNvCsgzkSwV7OBv7_7uu_head20wrap_in_stdout_error(ptr noundef nonnull %.sroa.0.0.i24.sink.i) #26
  br label %_RINvCsgzkSwV7OBv7_7uu_head13print_n_linesINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEEB2_.exit

_RINvCsgzkSwV7OBv7_7uu_head13print_n_linesINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEEB2_.exit: ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCsgzkSwV7OBv7_7uu_head.exit.i, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCsgzkSwV7OBv7_7uu_head.exit.thread.i
  %.sroa.4.0.in.i = phi ptr [ %i.dm, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCsgzkSwV7OBv7_7uu_head.exit.thread.i ], [ %i.dk, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCsgzkSwV7OBv7_7uu_head.exit.i ]
  %.sroa.0.0.i = phi i64 [ 1, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCsgzkSwV7OBv7_7uu_head.exit.thread.i ], [ 0, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCsgzkSwV7OBv7_7uu_head.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !780)
  call void @llvm.experimental.noalias.scope.decl(metadata !783)
  %i.dn = load i8, ptr %i.as, align 8, !range !70, !alias.scope !786, !noundef !19
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %_RNvXs7_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsgzkSwV7OBv7_7uu_head.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_RINvCsgzkSwV7OBv7_7uu_head13print_n_linesINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEEB2_.exit
  %i.dp = call fastcc noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE9flush_bufCsgzkSwV7OBv7_7uu_head(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.af) #22 ; 4 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %_RNvXs7_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsgzkSwV7OBv7_7uu_head.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !787
  %i.dr = ptrtoint ptr %i.dp to i64               ; 2 uses
  %i.ds = and i64 %i.dr, 3
  switch i64 %i.ds, label %default.unreachable563 [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i10
    i64 3, label %bb.ae
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i10
    i64 1, label %bb.af
  ], !prof !80

bb.ae:                                            ; preds = %bb.ad
  %i.dt = icmp ult ptr %i.dp, inttoptr (i64 188978561024 to ptr)
  %i.du = and i64 %i.dr, 1095216660480
  %i.dv = icmp ne i64 %i.du, 1095216660480
  call void @llvm.assume(i1 %i.dt)
  call void @llvm.assume(i1 %i.dv)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i10

bb.af:                                            ; preds = %bb.ad
  %i.dw = getelementptr i8, ptr %i.dp, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dw) ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.dw, ptr %i.dx, align 8, !alias.scope !790, !noalias !787
  store i8 3, ptr %i.b, align 8, !alias.scope !790, !noalias !787
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dx) #22, !noalias !793
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i10

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i10: ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !787
  br label %_RNvXs7_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsgzkSwV7OBv7_7uu_head.exit.i

_RNvXs7_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsgzkSwV7OBv7_7uu_head.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i10, %bb.ac, %_RINvCsgzkSwV7OBv7_7uu_head13print_n_linesINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEEB2_.exit
  %.val1.i = load i64, ptr %i.af, align 8, !range !44, !alias.scope !780, !noundef !19 ; 2 uses
  %i.dy = icmp eq i64 %.val1.i, 0
  br i1 %i.dy, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgzkSwV7OBv7_7uu_head.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_RNvXs7_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsgzkSwV7OBv7_7uu_head.exit.i
  %.val2.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !780, !nonnull !19, !noundef !19
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %.val1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgzkSwV7OBv7_7uu_head.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgzkSwV7OBv7_7uu_head.exit.i: ; preds = %bb.ag, %_RNvXs7_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsgzkSwV7OBv7_7uu_head.exit.i
  %.val.i = load ptr, ptr %i.at, align 8, !alias.scope !780, !nonnull !19, !align !372, !noundef !19 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.val.i, i64 12 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !noundef !19
  %i.eb = add i32 %i.ea, -1                       ; 2 uses
  store i32 %i.eb, ptr %i.dz, align 4
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.ah, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgzkSwV7OBv7_7uu_head.exit

bb.ah:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgzkSwV7OBv7_7uu_head.exit.i
  store atomic i64 0, ptr %.val.i monotonic, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  %i.ee = atomicrmw xchg ptr %i.ed, i32 0 release, align 4
  %i.ef = icmp eq i32 %i.ee, 2
  br i1 %i.ef, label %bb.ai, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgzkSwV7OBv7_7uu_head.exit, !prof !98

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ed) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgzkSwV7OBv7_7uu_head.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgzkSwV7OBv7_7uu_head.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgzkSwV7OBv7_7uu_head.exit.i, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !698
  %i.eg = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.eh = insertvalue { i64, ptr } %i.eg, ptr %.sroa.4.0.in.i, 1
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef 65536, i64 noundef 1) #22
  br label %bb.ha

bb.aj:                                            ; preds = %bb.a, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !794)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !797
  call void @_RNvMs2_NtCs2vKOLqTMYjT_3std2fsNtB5_4File8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.ad, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0) #22, !noalias !794
  %i.ei = load i64, ptr %i.ad, align 8, !range !554, !noalias !797, !noundef !19
  %i.ej = icmp eq i64 %i.ei, 2
  br i1 %i.ej, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !noalias !797, !nonnull !19, !noundef !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !797
  br label %_RNvCsgzkSwV7OBv7_7uu_head19head_backwards_file.exit

bb.al:                                            ; preds = %bb.aj
  %.sroa.1426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %.sroa.1426.0.copyload.i = load i64, ptr %.sroa.1426.0..sroa_idx.i, align 8, !noalias !797
  %.sroa.1527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  %.sroa.1527.0.copyload.i = load i64, ptr %.sroa.1527.0..sroa_idx.i, align 8, !noalias !797 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !797
  %i.em = tail call { i64, ptr } @_RNvXsc_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs6JMX4GRUq9U_4core2io4seek4Seek15stream_position(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0) #22, !noalias !794 ; 2 uses
  %i.en = extractvalue { i64, ptr } %i.em, 0
  %i.eo = extractvalue { i64, ptr } %i.em, 1      ; 5 uses
  %i.ep = icmp eq i64 %i.en, 0
  br i1 %i.ep, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eo) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !799
  %i.eq = ptrtoint ptr %i.eo to i64               ; 2 uses
  %i.er = and i64 %i.eq, 3
  switch i64 %i.er, label %default.unreachable563 [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i
    i64 3, label %bb.an
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i
    i64 1, label %bb.ao
  ], !prof !80

bb.an:                                            ; preds = %bb.am
  %i.es = icmp ult ptr %i.eo, inttoptr (i64 188978561024 to ptr)
  %i.et = and i64 %i.eq, 1095216660480
  %i.eu = icmp ne i64 %i.et, 1095216660480
  tail call void @llvm.assume(i1 %i.es)
  tail call void @llvm.assume(i1 %i.eu)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.ev = getelementptr i8, ptr %i.eo, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ev) ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store ptr %i.ev, ptr %i.ew, align 8, !alias.scope !804, !noalias !799
  store i8 3, ptr %i.ac, align 8, !alias.scope !804, !noalias !799
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ew) #22, !noalias !807
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i: ; preds = %bb.ao, %bb.an, %bb.am, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !799
  br label %_RNvCsgzkSwV7OBv7_7uu_head11is_seekable.exit.i

bb.ap:                                            ; preds = %bb.al
  %i.ex = tail call { i64, ptr } @_RNvXsc_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs6JMX4GRUq9U_4core2io4seek4Seek4seek(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, i64 noundef 1, i64 noundef 0) #22, !noalias !794 ; 2 uses
  %i.ey = extractvalue { i64, ptr } %i.ex, 0
  %i.ez = extractvalue { i64, ptr } %i.ex, 1      ; 4 uses
  %i.fa = icmp eq i64 %i.ey, 0
  br i1 %i.fa, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultyNtNtNtB4_2io5error5ErrorE6unwrapCsgzkSwV7OBv7_7uu_head.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ez) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !808
  %i.fb = ptrtoint ptr %i.ez to i64               ; 2 uses
  %i.fc = and i64 %i.fb, 3
  switch i64 %i.fc, label %default.unreachable563 [
    i64 2, label %.thread.i.i
    i64 3, label %bb.ar
    i64 0, label %.thread.i.i
    i64 1, label %bb.as
  ], !prof !80

bb.ar:                                            ; preds = %bb.aq
  %i.fd = icmp ult ptr %i.ez, inttoptr (i64 188978561024 to ptr)
  %i.fe = and i64 %i.fb, 1095216660480
  %i.ff = icmp ne i64 %i.fe, 1095216660480
  tail call void @llvm.assume(i1 %i.fd)
  tail call void @llvm.assume(i1 %i.ff)
  br label %.thread.i.i

bb.as:                                            ; preds = %bb.aq
  %i.fg = getelementptr i8, ptr %i.ez, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fg) ]
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store ptr %i.fg, ptr %i.fh, align 8, !alias.scope !811, !noalias !808
  store i8 3, ptr %i.ab, align 8, !alias.scope !811, !noalias !808
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fh) #22, !noalias !814
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.as, %bb.ar, %bb.aq, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !808
  br label %_RNvCsgzkSwV7OBv7_7uu_head11is_seekable.exit.i

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultyNtNtNtB4_2io5error5ErrorE6unwrapCsgzkSwV7OBv7_7uu_head.exit.i.i: ; preds = %bb.ap
  %i.fi = ptrtoint ptr %i.eo to i64
  %i.fj = tail call { i64, ptr } @_RNvXsc_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs6JMX4GRUq9U_4core2io4seek4Seek4seek(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, i64 noundef 0, i64 noundef %i.fi) #22, !noalias !794 ; 2 uses
  %i.fk = extractvalue { i64, ptr } %i.fj, 0      ; 2 uses
  %i.fl = extractvalue { i64, ptr } %i.fj, 1      ; 4 uses
  %i.fm = icmp eq i64 %i.fk, 0
  %2 = trunc nuw i64 %i.fk to i1
  br i1 %2, label %bb.at, label %_RNvCsgzkSwV7OBv7_7uu_head11is_seekable.exit.i

bb.at:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultyNtNtNtB4_2io5error5ErrorE6unwrapCsgzkSwV7OBv7_7uu_head.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fl) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !815
  %i.fn = ptrtoint ptr %i.fl to i64               ; 2 uses
  %i.fo = and i64 %i.fn, 3
  switch i64 %i.fo, label %default.unreachable563 [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i14.i.i
    i64 3, label %bb.au
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i14.i.i
    i64 1, label %bb.av
  ], !prof !80

bb.au:                                            ; preds = %bb.at
  %i.fp = icmp ult ptr %i.fl, inttoptr (i64 188978561024 to ptr)
  %i.fq = and i64 %i.fn, 1095216660480
  %i.fr = icmp ne i64 %i.fq, 1095216660480
  tail call void @llvm.assume(i1 %i.fp)
  tail call void @llvm.assume(i1 %i.fr)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i14.i.i

bb.av:                                            ; preds = %bb.at
  %i.fs = getelementptr i8, ptr %i.fl, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fs) ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store ptr %i.fs, ptr %i.ft, align 8, !alias.scope !818, !noalias !815
  store i8 3, ptr %i.aa, align 8, !alias.scope !818, !noalias !815
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ft) #22, !noalias !821
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i14.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i14.i.i: ; preds = %bb.av, %bb.au, %bb.at, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !815
  br label %_RNvCsgzkSwV7OBv7_7uu_head11is_seekable.exit.i

_RNvCsgzkSwV7OBv7_7uu_head11is_seekable.exit.i:   ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i14.i.i, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultyNtNtNtB4_2io5error5ErrorE6unwrapCsgzkSwV7OBv7_7uu_head.exit.i.i, %.thread.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i
  %.not.i3.a = phi i1 [ false, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i ], [ false, %.thread.i.i ], [ %i.fm, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultyNtNtNtB4_2io5error5ErrorE6unwrapCsgzkSwV7OBv7_7uu_head.exit.i.i ], [ false, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i14.i.i ]
  %i.fu = add i64 %.sroa.1527.0.copyload.i, -536870913
  %i.fv = icmp ult i64 %i.fu, -536870912
  %.sroa.013.0.i = select i1 %i.fv, i64 512, i64 %.sroa.1527.0.copyload.i
  %.not.i3 = xor i1 %.not.i3.a, true
  %i.fw = icmp ule i64 %.sroa.1426.0.copyload.i, %.sroa.013.0.i
  %or.cond3.i = select i1 %.not.i3, i1 true, i1 %i.fw
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 42
  %i.fy = load i8, ptr %i.fx, align 2, !range !70, !alias.scope !794, !noalias !822
  %i.fz = trunc nuw i8 %i.fy to i1
  %or.cond6.i = select i1 %or.cond3.i, i1 true, i1 %i.fz
  br i1 %or.cond6.i, label %bb.aw, label %bb.fw

bb.aw:                                            ; preds = %_RNvCsgzkSwV7OBv7_7uu_head11is_seekable.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !823)
  switch i64 %i.ah, label %bb.ax [
    i64 1, label %bb.ay
    i64 3, label %bb.el
  ], !prof !826

bb.ax:                                            ; preds = %bb.aw
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #25, !noalias !827
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.ga = load i64, ptr %i.ai, align 8, !alias.scope !827, !noalias !828, !noundef !19 ; 6 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 43
  %i.gc = load i8, ptr %i.gb, align 1, !range !697, !alias.scope !827, !noalias !828, !noundef !19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !830
  %i.gd = call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stdout() #22, !noalias !833
  store ptr %i.gd, ptr %i.z, align 8, !noalias !830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !830
  %i.ge = call noundef nonnull align 8 ptr @_RNvMsa_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stdout4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z) #22, !noalias !833
  store ptr %i.ge, ptr %i.y, align 8, !noalias !830
  %i.gf = icmp eq i64 %i.ga, 0
  br i1 %i.gf, label %bb.az, label %bb.ci

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !834
  call void @_RNvXsf_NtNtNtNtCs2vKOLqTMYjT_3std3sys2io11kernel_copy5linuxNtNtBd_2fs4FileNtB5_8CopyRead10properties(ptr noalias nofree noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0) #22, !noalias !850
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !834
  call void @_RNvXsz_NtNtNtNtCs2vKOLqTMYjT_3std3sys2io11kernel_copy5linuxNtNtNtBd_2io5stdio10StdoutLockNtB5_9CopyWrite10properties(ptr noalias nofree noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y) #22, !noalias !851
  %.sroa.017.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !noalias !834 ; 2 uses
  %.sroa.320.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %.sroa.320.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.320.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !834 ; 2 uses
  %.sroa.828.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %.sroa.828.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.828.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !834
  %i.gg = getelementptr inbounds nuw i8, ptr %i.x, i64 176
  %i.gh = load i32, ptr %i.gg, align 8, !range !445, !noalias !834, !noundef !19
  %i.gi = getelementptr inbounds nuw i8, ptr %i.x, i64 180
  %i.gj = load i32, ptr %i.gi, align 4, !noalias !834 ; 3 uses
  %.sroa.038.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.w, align 8, !noalias !834 ; 3 uses
  %.sroa.645.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %.sroa.645.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.645.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !834 ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.w, i64 180
  %i.gl = load i32, ptr %i.gk, align 4, !noalias !834 ; 3 uses
  %i.gm = trunc nuw i32 %i.gh to i1
  %i.gn = getelementptr inbounds nuw i8, ptr %i.w, i64 176
  %i.go = load i32, ptr %i.gn, align 8, !range !445, !noalias !834
  %i.gp = trunc nuw i32 %i.go to i1
  %or.cond66.i.i.i.i.i.i.i.i = select i1 %i.gm, i1 %i.gp, i1 false
  br i1 %or.cond66.i.i.i.i.i.i.i.i, label %bb.ba, label %.thread.i.i.i.i9

bb.ba:                                            ; preds = %bb.az
  %i.gq = call noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y) #22, !noalias !851 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gq, null
  %i.gr = ptrtoint ptr %i.gq to i64               ; 8 uses
  br i1 %.not.i.not.i.i.i.i.i.i.i.i, label %bb.bb, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4copy4copyQNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtBI_2io5stdio10StdoutLockECsgzkSwV7OBv7_7uu_head.exit.thread.i.i.i

_RINvNtNtCs7tKScEop1B6_5alloc2io4copy4copyQNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtBI_2io5stdio10StdoutLockECsgzkSwV7OBv7_7uu_head.exit.thread.i.i.i: ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !834
  br label %bb.ed

bb.bb:                                            ; preds = %bb.ba
  %i.gs = call i64 @llvm.usub.sat.i64(i64 %.sroa.017.0.copyload.i.i.i.i.i.i.i.i, i64 1)
  switch i64 %i.gs, label %bb.be [
    i64 0, label %bb.bc
    i64 1, label %bb.bs
    i64 2, label %bb.bw
    i64 3, label %bb.bv
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.gt = and i32 %.sroa.320.0.copyload.i.i.i.i.i.i.i.i, 61440 ; 3 uses
  %i.gu = icmp eq i32 %i.gt, 32768
  %i.gv = icmp ne i64 %.sroa.828.0.copyload.i.i.i.i.i.i.i.i, 0 ; 2 uses
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.gu, i1 %i.gv, i1 false
  %i.gw = icmp ult i64 %.sroa.038.0.copyload.i.i.i.i.i.i.i.i, 2 ; 3 uses
  %or.cond67.i.i.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i.i, i1 %i.gw, i1 false
  %i.gx = and i32 %.sroa.645.0.copyload.i.i.i.i.i.i.i.i, 61440
  %i.gy = icmp eq i32 %i.gx, 32768
  %or.cond69.i.i.i.i.i.i.i.i = select i1 %or.cond67.i.i.i.i.i.i.i.i, i1 %i.gy, i1 false
  br i1 %or.cond69.i.i.i.i.i.i.i.i, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !834
  call void @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys2io11kernel_copy5linux18copy_regular_files(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i32 noundef %i.gj, i32 noundef %i.gl, i64 noundef -1) #22, !noalias !851
  %i.gz = load i64, ptr %i.v, align 8, !range !554, !noalias !834, !noundef !19
  switch i64 %i.gz, label %default.unreachable563 [
    i64 0, label %bb.bf
    i64 1, label %bb.bg
    i64 2, label %.thread82.i.i.i.i.i.i.i.i
  ]

bb.be:                                            ; preds = %bb.bs, %bb.bb
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.ha = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.hb = load i64, ptr %i.ha, align 8, !noalias !834, !noundef !19
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bd
  %i.hc = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !noalias !834, !nonnull !19, !noundef !19
  %i.he = ptrtoint ptr %i.hd to i64
  br label %bb.bh

.thread82.i.i.i.i.i.i.i.i:                        ; preds = %bb.bd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.hg = load i64, ptr %i.hf, align 8, !noalias !834, !noundef !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !834
  br label %bb.bm

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.sroa.12.0.i.i.i.i = phi i64 [ %i.hb, %bb.bf ], [ %i.he, %bb.bg ]
  %.sroa.0.01.i.i.i.i = phi i64 [ 0, %bb.bf ], [ 2, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !834
  br label %_RINvXs_NtNtNtCs7tKScEop1B6_5alloc2io4copy14specializationQNtNtCs2vKOLqTMYjT_3std2fs4FileNtB5_13SpecCopyInner4copyNtNtNtBY_2io5stdio10StdoutLockECsgzkSwV7OBv7_7uu_head.exit.i.i.i.i

bb.bi:                                            ; preds = %bb.bc
  %trunc.i.i.i.i.i.i.i.i = trunc nuw i32 %i.gt to i16
  switch i16 %trunc.i.i.i.i.i.i.i.i, label %bb.br [
    i16 -32768, label %bb.bj
    i16 24576, label %bb.bk
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.hh = select i1 %i.gv, i1 %i.gw, i1 false
  br i1 %i.hh, label %bb.bm, label %bb.br

bb.bk:                                            ; preds = %bb.bi
  br i1 %i.gw, label %bb.bm, label %bb.br

bb.bl:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !834
  call void @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys2io11kernel_copy5linux15sendfile_splice(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i1 noundef zeroext false, i32 noundef %i.gj, i32 noundef %i.gl, i64 noundef -1) #22, !noalias !851
  %i.hi = load i64, ptr %i.u, align 8, !range !554, !noalias !834, !noundef !19
  switch i64 %i.hi, label %default.unreachable563 [
    i64 0, label %bb.bn
    i64 1, label %bb.bo
    i64 2, label %bb.bp
  ]

bb.bm:                                            ; preds = %bb.bk, %bb.bj, %.thread82.i.i.i.i.i.i.i.i
  %.sroa.0.17584.i.i.i.i.i.i.i.i = phi i64 [ %i.hg, %.thread82.i.i.i.i.i.i.i.i ], [ %i.gr, %bb.bk ], [ %i.gr, %bb.bj ] ; 4 uses
  %i.hj = trunc i32 %.sroa.645.0.copyload.i.i.i.i.i.i.i.i to i16
  %trunc61.i.i.i.i.i.i.i.i = and i16 %i.hj, -4096
  switch i16 %trunc61.i.i.i.i.i.i.i.i, label %bb.bl [
    i16 4096, label %bb.br
    i16 -16384, label %bb.br
  ]

bb.bn:                                            ; preds = %bb.bl
  %i.hk = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.hl = load i64, ptr %i.hk, align 8, !noalias !834, !noundef !19
  %i.hm = add i64 %i.hl, %.sroa.0.17584.i.i.i.i.i.i.i.i
  br label %bb.bq

bb.bo:                                            ; preds = %bb.bl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !noalias !834, !nonnull !19, !noundef !19
  %i.hp = ptrtoint ptr %i.ho to i64
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bl
  %i.hq = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.hr = load i64, ptr %i.hq, align 8, !noalias !834, !noundef !19
  %i.hs = add i64 %i.hr, %.sroa.0.17584.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !834
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo, %bb.bn
  %.sroa.12.1.i.i.i.i = phi i64 [ %i.hm, %bb.bn ], [ %i.hp, %bb.bo ]
  %.sroa.0.12.i.i.i.i = phi i64 [ 0, %bb.bn ], [ 2, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !834
  br label %_RINvXs_NtNtNtCs7tKScEop1B6_5alloc2io4copy14specializationQNtNtCs2vKOLqTMYjT_3std2fs4FileNtB5_13SpecCopyInner4copyNtNtNtBY_2io5stdio10StdoutLockECsgzkSwV7OBv7_7uu_head.exit.i.i.i.i

bb.br:                                            ; preds = %bb.bp, %bb.bm, %bb.bm, %bb.bk, %bb.bj, %bb.bi
  %.sroa.0.2.i.i.i.i.i.i.i.i = phi i64 [ %i.gr, %bb.bi ], [ %i.hs, %bb.bp ], [ %.sroa.0.17584.i.i.i.i.i.i.i.i, %bb.bm ], [ %.sroa.0.17584.i.i.i.i.i.i.i.i, %bb.bm ], [ %i.gr, %bb.bk ], [ %i.gr, %bb.bj ] ; 2 uses
  %i.ht = icmp eq i32 %i.gt, 4096
  br i1 %i.ht, label %.thread87.i.i.i.i.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bb
  %.sroa.0.3.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.2.i.i.i.i.i.i.i.i, %bb.br ], [ %i.gr, %bb.bb ] ; 4 uses
  %i.hu = call i64 @llvm.usub.sat.i64(i64 %.sroa.038.0.copyload.i.i.i.i.i.i.i.i, i64 1)
  switch i64 %i.hu, label %bb.be [
    i64 0, label %bb.bu
    i64 1, label %.thread.i.i.i.i9
    i64 2, label %bb.bt
    i64 3, label %bb.bt
  ]

bb.bt:                                            ; preds = %bb.bu, %bb.bs, %bb.bs
  %i.hv = icmp ult i64 %.sroa.017.0.copyload.i.i.i.i.i.i.i.i, 2
  br i1 %i.hv, label %.thread87.i.i.i.i.i.i.i.i, label %bb.bw
end_hunk_0
begin_hunk_1_@_RNvMs1_CsgzkSwV7OBv7_7uu_headNtB5_11HeadOptions8get_from:bb.a
    i8 43, label %.loopexit.i.i
    i8 45, label %.loopexit.i.i
  ]

thread-pre-split.i.i.i:                           ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14ParseSizeErrorNtB5_12SpecToString14spec_to_stringCsgzkSwV7OBv7_7uu_head.exit.i.i
  %.pr.i.i.i = load i8, ptr %.sroa.5.0.copyload4.i.i, align 1, !alias.scope !1141, !noalias !1144
  br label %bb.i

bb.i:                                             ; preds = %thread-pre-split.i.i.i, %bb.h
  %i.bo = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.bn, %bb.h ]
  switch i8 %i.bo, label %bb.p [
    i8 43, label %bb.j
    i8 45, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload4.i.i, i64 1
  %i.bq = add nsw i64 %.sroa.8.0.copyload7.i.i, -1
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload4.i.i, i64 1 ; 2 uses
  %i.bs = add nsw i64 %.sroa.8.0.copyload7.i.i, -1 ; 3 uses
  %i.bt = icmp samesign ult i64 %.sroa.8.0.copyload7.i.i, 17
  br i1 %i.bt, label %.preheader114.i.i.i, label %.lr.ph.i.i.i

.preheader114.i.i.i:                              ; preds = %bb.k
  %.not103137.i.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not103137.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph141.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k, %bb.n
  %.sroa.0.1136.i.i.i = phi ptr [ %i.bu, %bb.n ], [ %i.br, %bb.k ] ; 2 uses
  %.sroa.26.1135.i.i.i = phi i64 [ %i.bv, %bb.n ], [ %i.bs, %bb.k ]
  %.sroa.084.0134.i.i.i = phi i64 [ %i.cg, %bb.n ], [ 0, %bb.k ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i.i, i64 1
  %i.bv = add nsw i64 %.sroa.26.1135.i.i.i, -1    ; 2 uses
  %i.bw = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i.i, i64 10) ; 2 uses
  %i.bx = extractvalue { i64, i1 } %i.bw, 0
  %i.by = extractvalue { i64, i1 } %i.bw, 1
  br i1 %i.by, label %.loopexit.i.i, label %bb.l, !prof !98

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.bz = load i8, ptr %.sroa.0.1136.i.i.i, align 1, !alias.scope !1141, !noalias !1144, !noundef !19
  %i.ca = zext i8 %i.bz to i32
  %i.cb = add nsw i32 %i.ca, -48                  ; 2 uses
  %i.cc = icmp ult i32 %i.cb, 10
  br i1 %i.cc, label %bb.m, label %.loopexit.i.i

bb.m:                                             ; preds = %bb.l
  %i.cd = zext nneg i32 %i.cb to i64
  %i.ce = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.bx, i64 %i.cd) ; 2 uses
  %i.cf = extractvalue { i64, i1 } %i.ce, 1
  br i1 %i.cf, label %.loopexit.i.i, label %bb.n, !prof !98

bb.n:                                             ; preds = %bb.m
  %i.cg = extractvalue { i64, i1 } %i.ce, 0       ; 2 uses
  %.not102.i.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not102.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i

.lr.ph141.i.i.i:                                  ; preds = %.preheader114.i.i.i, %bb.o
  %.sroa.0.2140.i.i.i = phi ptr [ %i.cn, %bb.o ], [ %i.br, %.preheader114.i.i.i ] ; 2 uses
  %.sroa.26.2139.i.i.i = phi i64 [ %i.cm, %bb.o ], [ %i.bs, %.preheader114.i.i.i ]
  %.sroa.084.2138.i.i.i = phi i64 [ %i.cp, %bb.o ], [ 0, %.preheader114.i.i.i ]
  %i.ch = load i8, ptr %.sroa.0.2140.i.i.i, align 1, !alias.scope !1141, !noalias !1144, !noundef !19
  %i.ci = zext i8 %i.ch to i32
  %i.cj = add nsw i32 %i.ci, -48                  ; 2 uses
  %i.ck = icmp ult i32 %i.cj, 10
  br i1 %i.ck, label %bb.o, label %.loopexit.i.i

bb.o:                                             ; preds = %.lr.ph141.i.i.i
  %i.cl = mul i64 %.sroa.084.2138.i.i.i, 10
  %i.cm = add nsw i64 %.sroa.26.2139.i.i.i, -1    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i.i.i, i64 1
  %i.co = zext nneg i32 %i.cj to i64
  %i.cp = sub i64 %i.cl, %i.co                    ; 2 uses
  %.not103.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not103.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph141.i.i.i

bb.p:                                             ; preds = %bb.j, %bb.i
  %.sroa.26.0.i.i.i = phi i64 [ %i.bq, %bb.j ], [ %.sroa.8.0.copyload7.i.i, %bb.i ] ; 4 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.bp, %bb.j ], [ %.sroa.5.0.copyload4.i.i, %bb.i ] ; 2 uses
  %i.cq = icmp samesign ult i64 %.sroa.26.0.i.i.i, 16
  br i1 %i.cq, label %.preheader.i.i.i, label %.preheader111.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.p
  %.not105146.i.i.i = icmp eq i64 %.sroa.26.0.i.i.i, 0
  br i1 %.not105146.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph150.i.i.i

.preheader111.i.i.i:                              ; preds = %bb.p, %bb.s
  %.sroa.0.3145.i.i.i = phi ptr [ %i.cr, %bb.s ], [ %.sroa.0.0.i.i.i, %bb.p ] ; 2 uses
  %.sroa.26.3144.i.i.i = phi i64 [ %i.cs, %bb.s ], [ %.sroa.26.0.i.i.i, %bb.p ]
  %.sroa.084.3143.i.i.i = phi i64 [ %i.dd, %bb.s ], [ 0, %bb.p ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i.i.i, i64 1
  %i.cs = add nsw i64 %.sroa.26.3144.i.i.i, -1    ; 2 uses
  %i.ct = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i.i.i, i64 10) ; 2 uses
  %i.cu = extractvalue { i64, i1 } %i.ct, 0
  %i.cv = extractvalue { i64, i1 } %i.ct, 1
  br i1 %i.cv, label %.loopexit.i.i, label %bb.q, !prof !98

bb.q:                                             ; preds = %.preheader111.i.i.i
  %i.cw = load i8, ptr %.sroa.0.3145.i.i.i, align 1, !alias.scope !1141, !noalias !1144, !noundef !19
  %i.cx = zext i8 %i.cw to i32
  %i.cy = add nsw i32 %i.cx, -48                  ; 2 uses
  %i.cz = icmp ult i32 %i.cy, 10
  br i1 %i.cz, label %bb.r, label %.loopexit.i.i

bb.r:                                             ; preds = %bb.q
  %i.da = zext nneg i32 %i.cy to i64
  %i.db = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.cu, i64 %i.da) ; 2 uses
  %i.dc = extractvalue { i64, i1 } %i.db, 1
  br i1 %i.dc, label %.loopexit.i.i, label %bb.s, !prof !98

bb.s:                                             ; preds = %bb.r
  %i.dd = extractvalue { i64, i1 } %i.db, 0       ; 2 uses
  %.not104.i.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not104.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader111.i.i.i

.lr.ph150.i.i.i:                                  ; preds = %.preheader.i.i.i, %bb.t
  %.sroa.0.4149.i.i.i = phi ptr [ %i.dk, %bb.t ], [ %.sroa.0.0.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.sroa.26.4148.i.i.i = phi i64 [ %i.dj, %bb.t ], [ %.sroa.26.0.i.i.i, %.preheader.i.i.i ]
  %.sroa.084.4147.i.i.i = phi i64 [ %i.dm, %bb.t ], [ 0, %.preheader.i.i.i ]
  %i.de = load i8, ptr %.sroa.0.4149.i.i.i, align 1, !alias.scope !1141, !noalias !1144, !noundef !19
  %i.df = zext i8 %i.de to i32
  %i.dg = add nsw i32 %i.df, -48                  ; 2 uses
  %i.dh = icmp ult i32 %i.dg, 10
  br i1 %i.dh, label %bb.t, label %.loopexit.i.i

bb.t:                                             ; preds = %.lr.ph150.i.i.i
  %i.di = mul i64 %.sroa.084.4147.i.i.i, 10
  %i.dj = add nsw i64 %.sroa.26.4148.i.i.i, -1    ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i.i.i, i64 1
  %i.dl = zext nneg i32 %i.dg to i64
  %i.dm = add i64 %i.di, %i.dl                    ; 2 uses
  %.not105.i.i.i = icmp eq i64 %i.dj, 0
  br i1 %.not105.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph150.i.i.i

.loopexit.i.i:                                    ; preds = %bb.m, %bb.l, %.lr.ph.i.i.i, %.lr.ph141.i.i.i, %bb.r, %bb.q, %.preheader111.i.i.i, %.lr.ph150.i.i.i, %bb.h, %bb.h, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14ParseSizeErrorNtB5_12SpecToString14spec_to_stringCsgzkSwV7OBv7_7uu_head.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1133
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload4.i.i, i64 noundef %.sroa.8.0.copyload7.i.i) #27, !noalias !1146
  %i.dn = load i8, ptr %i.v, align 8, !range !70, !noalias !1133, !noundef !19
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.w, label %bb.x

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i: ; preds = %bb.n, %bb.o, %bb.s, %bb.t, %.preheader.i.i.i, %.preheader114.i.i.i
  %.sroa.1511.0.i.i = phi i64 [ %i.dm, %bb.t ], [ %i.cp, %bb.o ], [ %i.dd, %bb.s ], [ 0, %.preheader.i.i.i ], [ 0, %.preheader114.i.i.i ], [ %i.cg, %bb.n ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgzkSwV7OBv7_7uu_head(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 3, i64 noundef %.sroa.1511.0.i.i) #22, !noalias !1146
  br label %bb.u

bb.u:                                             ; preds = %bb.x, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !1133
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 24, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.t) #22, !noalias !1106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1133
  %i.dp = icmp eq i64 %.sroa.0.0.copyload1.i.i, 0
  br i1 %i.dp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgzkSwV7OBv7_7uu_head.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload4.i.i, i64 noundef %.sroa.0.0.copyload1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1147
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgzkSwV7OBv7_7uu_head.exit.i.i

bb.w:                                             ; preds = %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1133
  store i64 %.sroa.0.0.copyload1.i.i, ptr %i.u, align 8, !noalias !1133
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.sroa.5.0.copyload4.i.i, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !noalias !1133
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.sroa.8.0.copyload7.i.i, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !1133
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgzkSwV7OBv7_7uu_head(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.u) #22, !noalias !1146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !1133
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 24, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.t) #22, !noalias !1106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1133
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgzkSwV7OBv7_7uu_head.exit.i.i

bb.x:                                             ; preds = %.loopexit.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.dr = load double, ptr %i.dq, align 8, !noalias !1133, !noundef !19
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgzkSwV7OBv7_7uu_head(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 3, double noundef %i.dr) #22, !noalias !1146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1133
  br label %bb.u

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgzkSwV7OBv7_7uu_head.exit.i.i: ; preds = %bb.w, %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1133
  call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  %i.ds = icmp eq i64 %i.bc, 0
  br i1 %i.ds, label %_RNCNvMs0_CsgzkSwV7OBv7_7uu_headNtB7_4Mode4from0B7_.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgzkSwV7OBv7_7uu_head.exit.sink.split.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgzkSwV7OBv7_7uu_head.exit.sink.split.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgzkSwV7OBv7_7uu_head.exit.i.i
  %.val1.i8.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1153, !noalias !1146, !nonnull !19, !noundef !19
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i8.i.i.i, i64 noundef %i.bc, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1154
  br label %_RNCNvMs0_CsgzkSwV7OBv7_7uu_headNtB7_4Mode4from0B7_.exit.i

_RNCNvMs0_CsgzkSwV7OBv7_7uu_headNtB7_4Mode4from0B7_.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgzkSwV7OBv7_7uu_head.exit.sink.split.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgzkSwV7OBv7_7uu_head.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1106
  br label %_RNvMs0_CsgzkSwV7OBv7_7uu_headNtB5_4Mode4from.exit

bb.y:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1117
  %.not155.i = trunc i8 %i.be to i1
  %spec.select.i = select i1 %.not155.i, i64 3, i64 2
  br label %_RNvMs0_CsgzkSwV7OBv7_7uu_headNtB5_4Mode4from.exit.thread

bb.z:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsgzkSwV7OBv7_7uu_head.exit78.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !1106, !nonnull !19, !noundef !19
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !1106, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1155
  call void @_RNvNtNtNtCsh036I4OHgIr_6uucore8features6parser16parse_signed_num20parse_signed_num_max(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.du, i64 noundef %i.dw) #22, !noalias !1159
  %i.dx = load i64, ptr %i.q, align 8, !range !1122, !noalias !1155, !noundef !19 ; 2 uses
  %.not.i79.i = icmp eq i64 %i.dx, -1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !noalias !1155 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.eb = load i8, ptr %i.ea, align 8, !noalias !1155 ; 2 uses
  br i1 %.not.i79.i, label %bb.at, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.617.0..sroa_idx.i84.i = getelementptr inbounds nuw i8, ptr %i.q, i64 17
  %.sroa.6146.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !1106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.6146.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.617.0..sroa_idx.i84.i, i64 15, i1 false), !noalias !1106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1155
  store i64 %i.dx, ptr %i.af, align 8, !noalias !1106
  %.sroa.4144.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.dz, ptr %.sroa.4144.0..sroa_idx.i, align 8, !noalias !1106
  %.sroa.5145.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  store i8 %i.eb, ptr %.sroa.5145.0..sroa_idx.i, align 8, !noalias !1106
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1163
  store i64 0, ptr %i.p, align 8, !noalias !1163
  %.sroa.4.0..sroa_idx.i91.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i91.i, align 8, !noalias !1163
  %.sroa.5.0..sroa_idx.i92.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i92.i, align 8, !noalias !1163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1165
  store i64 0, ptr %i.l, align 8, !noalias !1165
  %.sroa.4.0..sroa_idx.i.i93.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i93.i, align 8, !noalias !1165
  %.sroa.5.0..sroa_idx.i.i94.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i94.i, align 8, !noalias !1165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1165
  %i.ec = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 1610612768, ptr %i.ec, align 8, !noalias !1165
  store ptr %i.l, ptr %i.k, align 8, !noalias !1165
  %i.ed = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @112, ptr %i.ed, align 8, !noalias !1165
  %i.ee = call noundef zeroext i1 @_RNvXs2_NtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_sizeNtB5_14ParseSizeErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #22, !noalias !1169
  br i1 %i.ee, label %bb.ab, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14ParseSizeErrorNtB5_12SpecToString14spec_to_stringCsgzkSwV7OBv7_7uu_head.exit.i95.i, !prof !98

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @113, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @68, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #25, !noalias !1169
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14ParseSizeErrorNtB5_12SpecToString14spec_to_stringCsgzkSwV7OBv7_7uu_head.exit.i95.i: ; preds = %bb.aa
  %.sroa.0.0.copyload1.i96.i = load i64, ptr %i.l, align 8, !noalias !1170 ; 3 uses
  %.sroa.5.0.copyload4.i97.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i93.i, align 8, !noalias !1170, !nonnull !19, !noundef !19 ; 8 uses
  %.sroa.8.0.copyload7.i98.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i94.i, align 8, !noalias !1170 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1165
  switch i64 %.sroa.8.0.copyload7.i98.i, label %thread-pre-split.i.i134.i [
    i64 0, label %.loopexit.i99.i
    i64 1, label %bb.ac
  ]

bb.ac:                                            ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14ParseSizeErrorNtB5_12SpecToString14spec_to_stringCsgzkSwV7OBv7_7uu_head.exit.i95.i
  %i.ef = load i8, ptr %.sroa.5.0.copyload4.i97.i, align 1, !alias.scope !1171, !noalias !1174, !noundef !19 ; 2 uses
  switch i8 %i.ef, label %bb.ad [
    i8 43, label %.loopexit.i99.i
    i8 45, label %.loopexit.i99.i
  ]

thread-pre-split.i.i134.i:                        ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14ParseSizeErrorNtB5_12SpecToString14spec_to_stringCsgzkSwV7OBv7_7uu_head.exit.i95.i
  %.pr.i.i135.i = load i8, ptr %.sroa.5.0.copyload4.i97.i, align 1, !alias.scope !1171, !noalias !1174
  br label %bb.ad

bb.ad:                                            ; preds = %thread-pre-split.i.i134.i, %bb.ac
  %i.eg = phi i8 [ %.pr.i.i135.i, %thread-pre-split.i.i134.i ], [ %i.ef, %bb.ac ]
  switch i8 %i.eg, label %bb.ak [
    i8 43, label %bb.ae
    i8 45, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload4.i97.i, i64 1
  %i.ei = add nsw i64 %.sroa.8.0.copyload7.i98.i, -1
  br label %bb.ak

bb.af:                                            ; preds = %bb.ad
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload4.i97.i, i64 1 ; 2 uses
  %i.ek = add nsw i64 %.sroa.8.0.copyload7.i98.i, -1 ; 3 uses
  %i.el = icmp samesign ult i64 %.sroa.8.0.copyload7.i98.i, 17
  br i1 %i.el, label %.preheader114.i.i113.i, label %.lr.ph.i.i106.i

.preheader114.i.i113.i:                           ; preds = %bb.af
  %.not103137.i.i114.i = icmp eq i64 %i.ek, 0
  br i1 %.not103137.i.i114.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i111.i, label %.lr.ph141.i.i115.i

.lr.ph.i.i106.i:                                  ; preds = %bb.af, %bb.ai
  %.sroa.0.1136.i.i107.i = phi ptr [ %i.em, %bb.ai ], [ %i.ej, %bb.af ] ; 2 uses
  %.sroa.26.1135.i.i108.i = phi i64 [ %i.en, %bb.ai ], [ %i.ek, %bb.af ]
  %.sroa.084.0134.i.i109.i = phi i64 [ %i.ey, %bb.ai ], [ 0, %bb.af ]
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i107.i, i64 1
  %i.en = add nsw i64 %.sroa.26.1135.i.i108.i, -1 ; 2 uses
  %i.eo = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i109.i, i64 10) ; 2 uses
  %i.ep = extractvalue { i64, i1 } %i.eo, 0
  %i.eq = extractvalue { i64, i1 } %i.eo, 1
  br i1 %i.eq, label %.loopexit.i99.i, label %bb.ag, !prof !98

bb.ag:                                            ; preds = %.lr.ph.i.i106.i
  %i.er = load i8, ptr %.sroa.0.1136.i.i107.i, align 1, !alias.scope !1171, !noalias !1174, !noundef !19
  %i.es = zext i8 %i.er to i32
  %i.et = add nsw i32 %i.es, -48                  ; 2 uses
  %i.eu = icmp ult i32 %i.et, 10
  br i1 %i.eu, label %bb.ah, label %.loopexit.i99.i

bb.ah:                                            ; preds = %bb.ag
  %i.ev = zext nneg i32 %i.et to i64
  %i.ew = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ep, i64 %i.ev) ; 2 uses
  %i.ex = extractvalue { i64, i1 } %i.ew, 1
  br i1 %i.ex, label %.loopexit.i99.i, label %bb.ai, !prof !98

bb.ai:                                            ; preds = %bb.ah
  %i.ey = extractvalue { i64, i1 } %i.ew, 0       ; 2 uses
  %.not102.i.i110.i = icmp eq i64 %i.en, 0
  br i1 %.not102.i.i110.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i111.i, label %.lr.ph.i.i106.i

.lr.ph141.i.i115.i:                               ; preds = %.preheader114.i.i113.i, %bb.aj
  %.sroa.0.2140.i.i116.i = phi ptr [ %i.ff, %bb.aj ], [ %i.ej, %.preheader114.i.i113.i ] ; 2 uses
  %.sroa.26.2139.i.i117.i = phi i64 [ %i.fe, %bb.aj ], [ %i.ek, %.preheader114.i.i113.i ]
  %.sroa.084.2138.i.i118.i = phi i64 [ %i.fh, %bb.aj ], [ 0, %.preheader114.i.i113.i ]
  %i.ez = load i8, ptr %.sroa.0.2140.i.i116.i, align 1, !alias.scope !1171, !noalias !1174, !noundef !19
  %i.fa = zext i8 %i.ez to i32
  %i.fb = add nsw i32 %i.fa, -48                  ; 2 uses
  %i.fc = icmp ult i32 %i.fb, 10
  br i1 %i.fc, label %bb.aj, label %.loopexit.i99.i

bb.aj:                                            ; preds = %.lr.ph141.i.i115.i
  %i.fd = mul i64 %.sroa.084.2138.i.i118.i, 10
  %i.fe = add nsw i64 %.sroa.26.2139.i.i117.i, -1 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i.i116.i, i64 1
  %i.fg = zext nneg i32 %i.fb to i64
  %i.fh = sub i64 %i.fd, %i.fg                    ; 2 uses
  %.not103.i.i119.i = icmp eq i64 %i.fe, 0
  br i1 %.not103.i.i119.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i111.i, label %.lr.ph141.i.i115.i

bb.ak:                                            ; preds = %bb.ae, %bb.ad
  %.sroa.26.0.i.i120.i = phi i64 [ %i.ei, %bb.ae ], [ %.sroa.8.0.copyload7.i98.i, %bb.ad ] ; 4 uses
  %.sroa.0.0.i.i121.i = phi ptr [ %i.eh, %bb.ae ], [ %.sroa.5.0.copyload4.i97.i, %bb.ad ] ; 2 uses
  %i.fi = icmp samesign ult i64 %.sroa.26.0.i.i120.i, 16
  br i1 %i.fi, label %.preheader.i.i127.i, label %.preheader111.i.i122.i

.preheader.i.i127.i:                              ; preds = %bb.ak
  %.not105146.i.i128.i = icmp eq i64 %.sroa.26.0.i.i120.i, 0
  br i1 %.not105146.i.i128.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i111.i, label %.lr.ph150.i.i129.i

.preheader111.i.i122.i:                           ; preds = %bb.ak, %bb.an
  %.sroa.0.3145.i.i123.i = phi ptr [ %i.fj, %bb.an ], [ %.sroa.0.0.i.i121.i, %bb.ak ] ; 2 uses
  %.sroa.26.3144.i.i124.i = phi i64 [ %i.fk, %bb.an ], [ %.sroa.26.0.i.i120.i, %bb.ak ]
  %.sroa.084.3143.i.i125.i = phi i64 [ %i.fv, %bb.an ], [ 0, %bb.ak ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i.i123.i, i64 1
  %i.fk = add nsw i64 %.sroa.26.3144.i.i124.i, -1 ; 2 uses
  %i.fl = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i.i125.i, i64 10) ; 2 uses
  %i.fm = extractvalue { i64, i1 } %i.fl, 0
  %i.fn = extractvalue { i64, i1 } %i.fl, 1
  br i1 %i.fn, label %.loopexit.i99.i, label %bb.al, !prof !98

bb.al:                                            ; preds = %.preheader111.i.i122.i
  %i.fo = load i8, ptr %.sroa.0.3145.i.i123.i, align 1, !alias.scope !1171, !noalias !1174, !noundef !19
  %i.fp = zext i8 %i.fo to i32
  %i.fq = add nsw i32 %i.fp, -48                  ; 2 uses
  %i.fr = icmp ult i32 %i.fq, 10
  br i1 %i.fr, label %bb.am, label %.loopexit.i99.i

bb.am:                                            ; preds = %bb.al
  %i.fs = zext nneg i32 %i.fq to i64
  %i.ft = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.fm, i64 %i.fs) ; 2 uses
  %i.fu = extractvalue { i64, i1 } %i.ft, 1
  br i1 %i.fu, label %.loopexit.i99.i, label %bb.an, !prof !98

bb.an:                                            ; preds = %bb.am
  %i.fv = extractvalue { i64, i1 } %i.ft, 0       ; 2 uses
  %.not104.i.i126.i = icmp eq i64 %i.fk, 0
  br i1 %.not104.i.i126.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i111.i, label %.preheader111.i.i122.i

.lr.ph150.i.i129.i:                               ; preds = %.preheader.i.i127.i, %bb.ao
  %.sroa.0.4149.i.i130.i = phi ptr [ %i.gc, %bb.ao ], [ %.sroa.0.0.i.i121.i, %.preheader.i.i127.i ] ; 2 uses
  %.sroa.26.4148.i.i131.i = phi i64 [ %i.gb, %bb.ao ], [ %.sroa.26.0.i.i120.i, %.preheader.i.i127.i ]
  %.sroa.084.4147.i.i132.i = phi i64 [ %i.ge, %bb.ao ], [ 0, %.preheader.i.i127.i ]
  %i.fw = load i8, ptr %.sroa.0.4149.i.i130.i, align 1, !alias.scope !1171, !noalias !1174, !noundef !19
  %i.fx = zext i8 %i.fw to i32
  %i.fy = add nsw i32 %i.fx, -48                  ; 2 uses
  %i.fz = icmp ult i32 %i.fy, 10
  br i1 %i.fz, label %bb.ao, label %.loopexit.i99.i

bb.ao:                                            ; preds = %.lr.ph150.i.i129.i
  %i.ga = mul i64 %.sroa.084.4147.i.i132.i, 10
  %i.gb = add nsw i64 %.sroa.26.4148.i.i131.i, -1 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i.i130.i, i64 1
  %i.gd = zext nneg i32 %i.fy to i64
end_hunk_1
