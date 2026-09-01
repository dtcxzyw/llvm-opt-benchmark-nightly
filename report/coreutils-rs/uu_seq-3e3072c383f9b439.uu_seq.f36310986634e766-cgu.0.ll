Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_seq-3e3072c383f9b439.uu_seq.f36310986634e766-cgu.0?download=true
inline.NumInlined: 363
inline.NumDeleted: 198
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvCskTxFPE6q5z6_6uu_seq9print_seq:bb.a
  %i.ev = phi i64 [ %i.ff, %._crit_edge.thread.i.us.i ], [ %.pre192, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %.sroa.023.0151.us.i = phi i64 [ %i.ew, %._crit_edge.thread.i.us.i ], [ 0, %.lr.ph.split.us.i.preheader ]
  %i.ew = add nuw i64 %.sroa.023.0151.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !416)
  %i.ex = load i64, ptr %i.eq, align 8, !alias.scope !411, !noalias !414, !noundef !4 ; 4 uses
  %i.ey = icmp sgt i64 %i.ex, -1
  call void @llvm.assume(i1 %i.ey)
  %i.ez = sub nsw i64 %i.ev, %i.ex
  %i.fa = icmp ult i64 %i.et, %i.ez
  br i1 %i.fa, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.thread.us.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.us.i, !prof !170

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.us.i: ; preds = %.lr.ph.split.us.i
  %i.fb = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE14write_all_coldCskTxFPE6q5z6_6uu_seq(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eu, i64 noundef range(i64 0, -9223372036854775808) %i.et) #18, !noalias !372 ; 2 uses
  %.not36.us.i = icmp eq ptr %i.fb, null
  %.pre191 = load i64, ptr %i.x, align 8, !range !40, !alias.scope !411, !noalias !414
  br i1 %.not36.us.i, label %._crit_edge.thread.i.us.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskTxFPE6q5z6_6uu_seq.exit.thread.i

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.thread.us.i: ; preds = %.lr.ph.split.us.i
  call void @llvm.experimental.noalias.scope.decl(metadata !417)
  %i.fc = load ptr, ptr %i.er, align 8, !alias.scope !420, !noalias !421, !nonnull !4, !noundef !4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ex
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fd, ptr nonnull readonly align 1 %i.eu, i64 range(i64 0, -9223372036854775808) %i.et, i1 false), !noalias !423
  %i.fe = add nuw i64 %i.ex, %i.et
  store i64 %i.fe, ptr %i.eq, align 8, !alias.scope !420, !noalias !421
  br label %._crit_edge.thread.i.us.i

._crit_edge.thread.i.us.i:                        ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.thread.us.i, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.us.i
  %i.ff = phi i64 [ %i.ev, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.thread.us.i ], [ %.pre191, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.us.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !424)
  call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %exitcond179.not.i = icmp eq i64 %i.ew, %.sroa.01.0112.i
  br i1 %exitcond179.not.i, label %._crit_edge.thread.i, label %.lr.ph.split.us.i

._crit_edge.i:                                    ; preds = %_RNvNtNtCsh036I4OHgIr_6uucore8features8fast_inc8fast_inc.exit.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskTxFPE6q5z6_6uu_seq.exit.thread118.thread.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskTxFPE6q5z6_6uu_seq.exit.thread118.i
  %i.fg = phi ptr [ inttoptr (i64 1 to ptr), %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskTxFPE6q5z6_6uu_seq.exit.thread118.i ], [ %i.em, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskTxFPE6q5z6_6uu_seq.exit.thread118.thread.i ], [ %i.em, %_RNvNtNtCsh036I4OHgIr_6uucore8features8fast_inc8fast_inc.exit.i ]
  %.sroa.087.0.lcssa.i = phi i64 [ %..i54.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskTxFPE6q5z6_6uu_seq.exit.thread118.i ], [ %..i54.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskTxFPE6q5z6_6uu_seq.exit.thread118.thread.i ], [ %.sroa.087.1.i, %_RNvNtNtCsh036I4OHgIr_6uucore8features8fast_inc8fast_inc.exit.i ] ; 3 uses
  %i.fh = icmp ult i64 %..i.i, %.sroa.087.0.lcssa.i
  br i1 %i.fh, label %bb.ae, label %._crit_edge.thread.i, !prof !429

.lr.ph.split.i:                                   ; preds = %_RNvNtNtCsh036I4OHgIr_6uucore8features8fast_inc8fast_inc.exit.i, %.lr.ph.split.preheader.i
  %.sroa.023.0151.i = phi i64 [ %i.fi, %_RNvNtNtCsh036I4OHgIr_6uucore8features8fast_inc8fast_inc.exit.i ], [ 0, %.lr.ph.split.preheader.i ]
  %.sroa.087.0150.i = phi i64 [ %.sroa.087.1.i, %_RNvNtNtCsh036I4OHgIr_6uucore8features8fast_inc8fast_inc.exit.i ], [ %..i54.i, %.lr.ph.split.preheader.i ] ; 10 uses
  %i.fi = add nuw i64 %.sroa.023.0151.i, 1        ; 2 uses
  %i.fj = icmp ugt i64 %.sroa.087.0150.i, %i.dy
  br i1 %i.fj, label %.split.us.i, label %bb.am, !prof !135

._crit_edge.thread.i:                             ; preds = %._crit_edge.thread.i.us.i, %._crit_edge.i
  %.sroa.087.0.lcssa215.i = phi i64 [ %.sroa.087.0.lcssa.i, %._crit_edge.i ], [ %..i54.i, %._crit_edge.thread.i.us.i ] ; 2 uses
  %i.fk = phi ptr [ %i.fg, %._crit_edge.i ], [ inttoptr (i64 1 to ptr), %._crit_edge.thread.i.us.i ] ; 5 uses
  %i.fl = sub nuw i64 %..i.i, %.sroa.087.0.lcssa215.i ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 %.sroa.087.0.lcssa215.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !430)
  %i.fn = load i64, ptr %i.x, align 8, !range !40, !alias.scope !433, !noalias !434, !noundef !4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 4 uses
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !433, !noalias !434, !noundef !4 ; 4 uses
  %i.fq = icmp sgt i64 %i.fp, -1
  call void @llvm.assume(i1 %i.fq)
  %i.fr = sub nsw i64 %i.fn, %i.fp
  %i.fs = icmp ult i64 %i.fl, %i.fr
  br i1 %i.fs, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.thread.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.i, !prof !170

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.thread.i: ; preds = %._crit_edge.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !436)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !alias.scope !439, !noalias !440, !nonnull !4, !noundef !4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fp
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fv, ptr nonnull readonly align 1 %i.fm, i64 range(i64 0, -9223372036854775808) %i.fl, i1 false), !noalias !442
  %i.fw = add nuw i64 %i.fp, %i.fl                ; 2 uses
  store i64 %i.fw, ptr %i.fo, align 8, !alias.scope !439, !noalias !440
  br label %bb.af

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.i: ; preds = %._crit_edge.thread.i
  %i.fx = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE14write_all_coldCskTxFPE6q5z6_6uu_seq(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fm, i64 noundef range(i64 0, -9223372036854775808) %i.fl) #18, !noalias !372 ; 2 uses
  %.not33.i = icmp eq ptr %i.fx, null
  br i1 %.not33.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit._crit_edge.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskTxFPE6q5z6_6uu_seq.exit.thread.i

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit._crit_edge.i: ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.i
  %.pre180.i = load i64, ptr %i.fo, align 8, !alias.scope !443, !noalias !446
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge.i
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.087.0.lcssa.i, i64 noundef %..i.i, i64 noundef %i.dy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #20, !noalias !372
  unreachable

bb.af:                                            ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit._crit_edge.i, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.thread.i
  %i.fy = phi i64 [ %.pre180.i, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit._crit_edge.i ], [ %i.fw, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.thread.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !448)
  %i.fz = load i64, ptr %i.x, align 8, !range !40, !alias.scope !443, !noalias !446, !noundef !4
  %i.ga = icmp sgt i64 %i.fy, -1
  call void @llvm.assume(i1 %i.ga)
  %i.gb = sub nsw i64 %i.fz, %i.fy
  %i.gc = icmp ult i64 %4, %i.gb
  br i1 %i.gc, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit58.thread.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit58.i, !prof !170

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit58.thread.i: ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !449)
  %i.gd = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !alias.scope !452, !noalias !453, !nonnull !4, !noundef !4
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.fy
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gf, ptr nonnull readonly align 1 %3, i64 range(i64 0, -9223372036854775808) %4, i1 false), !noalias !455
  %i.gg = add nuw i64 %i.fy, %4
  store i64 %i.gg, ptr %i.fo, align 8, !alias.scope !452, !noalias !453
  br label %bb.ag

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit58.i: ; preds = %bb.af
  %i.gh = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE14write_all_coldCskTxFPE6q5z6_6uu_seq(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) #18, !noalias !456 ; 2 uses
  %.not34.i = icmp eq ptr %i.gh, null
  br i1 %.not34.i, label %bb.ag, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskTxFPE6q5z6_6uu_seq.exit.thread.i

bb.ag:                                            ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit58.i, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit58.thread.i
  %i.gi = call fastcc noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE9flush_bufCskTxFPE6q5z6_6uu_seq(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x) #19, !noalias !456 ; 2 uses
  %.not.i59.i = icmp eq ptr %i.gi, null
  br i1 %.not.i59.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskTxFPE6q5z6_6uu_seq.exit.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskTxFPE6q5z6_6uu_seq.exit.thread.i

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskTxFPE6q5z6_6uu_seq.exit.i: ; preds = %bb.ag
  %i.gj = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.gk = call noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gj) #19, !noalias !456 ; 2 uses
  %.not35.i = icmp eq ptr %i.gk, null
  br i1 %.not35.i, label %bb.ah, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskTxFPE6q5z6_6uu_seq.exit.thread.i

bb.ah:                                            ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskTxFPE6q5z6_6uu_seq.exit.i
  br i1 %i.el, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskTxFPE6q5z6_6uu_seq.exit63.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fk, i64 noundef %i.ek, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !457
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskTxFPE6q5z6_6uu_seq.exit63.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskTxFPE6q5z6_6uu_seq.exit63.i: ; preds = %bb.ai, %bb.ah
  br i1 %i.dz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECskTxFPE6q5z6_6uu_seq.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskTxFPE6q5z6_6uu_seq.exit63.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i, i64 noundef %i.dy, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !456
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECskTxFPE6q5z6_6uu_seq.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECskTxFPE6q5z6_6uu_seq.exit.i: ; preds = %bb.aj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskTxFPE6q5z6_6uu_seq.exit63.i
  %i.gl = icmp eq i64 %.sroa.079.0.copyload.i, 0
  br i1 %i.gl, label %_RINvCskTxFPE6q5z6_6uu_seq14fast_print_seqINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEEB2_.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskTxFPE6q5z6_6uu_seq.exit73.sink.split.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskTxFPE6q5z6_6uu_seq.exit73.sink.split.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECskTxFPE6q5z6_6uu_seq.exit70.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECskTxFPE6q5z6_6uu_seq.exit.i
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.0.1.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECskTxFPE6q5z6_6uu_seq.exit70.i ], [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECskTxFPE6q5z6_6uu_seq.exit.i ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i, i64 noundef %.sroa.079.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !456
  br label %_RINvCskTxFPE6q5z6_6uu_seq14fast_print_seqINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEEB2_.exit

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskTxFPE6q5z6_6uu_seq.exit.thread.i: ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.i, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.us.i, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskTxFPE6q5z6_6uu_seq.exit.i, %bb.ag, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit58.i, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.i
  %i.gm = phi ptr [ %i.fk, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskTxFPE6q5z6_6uu_seq.exit.i ], [ %i.fk, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit58.i ], [ %i.fk, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.i ], [ %i.fk, %bb.ag ], [ inttoptr (i64 1 to ptr), %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.us.i ], [ %i.em, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.i ]
  %.sroa.0.1.i = phi ptr [ %i.gk, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskTxFPE6q5z6_6uu_seq.exit.i ], [ %i.gh, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit58.i ], [ %i.fx, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.i ], [ %i.gi, %bb.ag ], [ %i.fb, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.us.i ], [ %i.gy, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.i ] ; 2 uses
  br i1 %i.el, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskTxFPE6q5z6_6uu_seq.exit69.i, label %bb.ak

bb.ak:                                            ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskTxFPE6q5z6_6uu_seq.exit.thread.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gm, i64 noundef %i.ek, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !460
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskTxFPE6q5z6_6uu_seq.exit69.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskTxFPE6q5z6_6uu_seq.exit69.i: ; preds = %bb.ak, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskTxFPE6q5z6_6uu_seq.exit.thread.i
  br i1 %i.dz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECskTxFPE6q5z6_6uu_seq.exit70.i, label %bb.al

bb.al:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskTxFPE6q5z6_6uu_seq.exit69.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i, i64 noundef %i.dy, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !456
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECskTxFPE6q5z6_6uu_seq.exit70.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECskTxFPE6q5z6_6uu_seq.exit70.i: ; preds = %bb.al, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskTxFPE6q5z6_6uu_seq.exit69.i
  %i.gn = icmp eq i64 %.sroa.079.0.copyload.i, 0
  br i1 %i.gn, label %_RINvCskTxFPE6q5z6_6uu_seq14fast_print_seqINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEEB2_.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskTxFPE6q5z6_6uu_seq.exit73.sink.split.i

bb.am:                                            ; preds = %.lr.ph.split.i
  %i.go = sub nuw nsw i64 %i.dy, %.sroa.087.0150.i ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 %.sroa.087.0150.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !416)
  %i.gq = load i64, ptr %i.x, align 8, !range !40, !alias.scope !411, !noalias !414, !noundef !4
  %i.gr = load i64, ptr %i.eo, align 8, !alias.scope !411, !noalias !414, !noundef !4 ; 4 uses
  %i.gs = icmp sgt i64 %i.gr, -1
  call void @llvm.assume(i1 %i.gs)
  %i.gt = sub nsw i64 %i.gq, %i.gr
  %i.gu = icmp ult i64 %i.go, %i.gt
  br i1 %i.gu, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.thread.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.i, !prof !170

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.thread.i: ; preds = %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !417)
  %i.gv = load ptr, ptr %i.ep, align 8, !alias.scope !420, !noalias !421, !nonnull !4, !noundef !4
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gw, ptr nonnull readonly align 1 %i.gp, i64 range(i64 0, -9223372036854775808) %i.go, i1 false), !noalias !423
  %i.gx = add nuw i64 %i.gr, %i.go
  store i64 %i.gx, ptr %i.eo, align 8, !alias.scope !420, !noalias !421
  br label %.lr.ph.i.preheader.i

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.i: ; preds = %bb.am
  %i.gy = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE14write_all_coldCskTxFPE6q5z6_6uu_seq(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gp, i64 noundef range(i64 0, -9223372036854775808) %i.go) #18, !noalias !372 ; 2 uses
  %.not36.i = icmp eq ptr %i.gy, null
  br i1 %.not36.i, label %.lr.ph.i.preheader.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskTxFPE6q5z6_6uu_seq.exit.thread.i

.split.us.i:                                      ; preds = %.lr.ph.split.i, %.lr.ph.split.us.preheader.i
  %.us-phi.i = phi i64 [ %..i54.i, %.lr.ph.split.us.preheader.i ], [ %.sroa.087.0150.i, %.lr.ph.split.i ]
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.us-phi.i, i64 noundef %i.dy, i64 noundef %i.dy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20, !noalias !372
  unreachable

.lr.ph.i.preheader.i:                             ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.i, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !424)
  call void @llvm.experimental.noalias.scope.decl(metadata !427)
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.ay
  %8 = icmp ult i8 %.sroa.09.0.i.i, 58
  br i1 %8, label %._crit_edge.thread.i.i, label %bb.an

.lr.ph.i.i:                                       ; preds = %bb.ay, %.lr.ph.i.preheader.i
  %.sroa.0.042.i.i = phi i64 [ %i.ha, %bb.ay ], [ %..i.i, %.lr.ph.i.preheader.i ]
  %.sroa.06.041.i.i = phi i8 [ %.sroa.06.1.i.i, %bb.ay ], [ 0, %.lr.ph.i.preheader.i ]
  %.sroa.013.040.i.i = phi i64 [ %i.gz, %bb.ay ], [ %i.ek, %.lr.ph.i.preheader.i ]
  %i.gz = add nsw i64 %.sroa.013.040.i.i, -1      ; 3 uses
  %i.ha = add i64 %.sroa.0.042.i.i, -1            ; 11 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.gz
  %i.hc = load i8, ptr %i.hb, align 1, !alias.scope !427, !noalias !463, !noundef !4
  %i.hd = add i8 %i.hc, %.sroa.06.041.i.i         ; 2 uses
  %.not20.i.i = icmp ult i64 %i.ha, %.sroa.087.0150.i
  br i1 %.not20.i.i, label %bb.av, label %bb.au

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ha, i64 %.sroa.087.0150.i)
  br label %_RNvNtNtCsh036I4OHgIr_6uucore8features8fast_inc8fast_inc.exit.i

bb.an:                                            ; preds = %._crit_edge.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !465)
  %i.he = icmp ugt i64 %i.ha, %.sroa.087.0150.i
  br i1 %i.he, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.as, %bb.an
  %i.hf = add nsw i64 %.sroa.087.0150.i, -1       ; 4 uses
  %i.hg = icmp ult i64 %i.hf, %i.dy
  br i1 %i.hg, label %bb.ao, label %bb.ap

.lr.ph.i.i.i:                                     ; preds = %bb.an, %bb.as
  %.sroa.0.020.i.i.i = phi i64 [ %i.hh, %bb.as ], [ %i.ha, %bb.an ]
  %i.hh = add nsw i64 %.sroa.0.020.i.i.i, -1      ; 5 uses
  %i.hi = icmp ult i64 %i.hh, %i.dy
  br i1 %i.hi, label %bb.aq, label %bb.ar

bb.ao:                                            ; preds = %._crit_edge.i.i.i
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 %i.hf
  store i8 49, ptr %i.hj, align 1, !alias.scope !468, !noalias !469
  br label %_RNvNtNtCsh036I4OHgIr_6uucore8features8fast_inc8fast_inc.exit.i

bb.ap:                                            ; preds = %._crit_edge.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.hf, i64 noundef range(i64 0, -9223372036854775808) %i.dy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #20, !noalias !471
  unreachable

bb.aq:                                            ; preds = %.lr.ph.i.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 %i.hh ; 3 uses
  %i.hl = load i8, ptr %i.hk, align 1, !alias.scope !468, !noalias !469, !noundef !4 ; 2 uses
  %i.hm = icmp eq i8 %i.hl, 57
  br i1 %i.hm, label %bb.as, label %bb.at

bb.ar:                                            ; preds = %.lr.ph.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.hh, i64 noundef range(i64 0, -9223372036854775808) %i.dy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #20, !noalias !471
  unreachable

bb.as:                                            ; preds = %bb.aq
  store i8 48, ptr %i.hk, align 1, !alias.scope !468, !noalias !469
  %i.hn = icmp ugt i64 %i.hh, %.sroa.087.0150.i
  br i1 %i.hn, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.at:                                            ; preds = %bb.aq
  %i.ho = add i8 %i.hl, 1
  store i8 %i.ho, ptr %i.hk, align 1, !alias.scope !468, !noalias !469
  br label %_RNvNtNtCsh036I4OHgIr_6uucore8features8fast_inc8fast_inc.exit.i

bb.au:                                            ; preds = %.lr.ph.i.i
  %i.hp = icmp ult i64 %i.ha, %i.dy
  br i1 %i.hp, label %bb.aw, label %bb.ax

bb.av:                                            ; preds = %bb.aw, %.lr.ph.i.i
  %.sroa.09.0.i.i = phi i8 [ %i.hu, %bb.aw ], [ %i.hd, %.lr.ph.i.i ] ; 4 uses
  %i.hq = icmp ult i64 %i.ha, %i.dy
  br i1 %i.hq, label %bb.ay, label %bb.az

bb.aw:                                            ; preds = %bb.au
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 %i.ha
  %i.hs = load i8, ptr %i.hr, align 1, !alias.scope !424, !noalias !472, !noundef !4
  %i.ht = add i8 %i.hd, -48
  %i.hu = add i8 %i.ht, %i.hs
  br label %bb.av

bb.ax:                                            ; preds = %bb.au
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.ha, i64 noundef range(i64 0, -9223372036854775808) %i.dy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #20, !noalias !473
  unreachable

bb.ay:                                            ; preds = %bb.av
  %i.hv = icmp ugt i8 %.sroa.09.0.i.i, 57         ; 2 uses
  %.sroa.06.1.i.i = zext i1 %i.hv to i8
  %i.hw = add i8 %.sroa.09.0.i.i, -10
  %.sroa.09.1.i.i = select i1 %i.hv, i8 %i.hw, i8 %.sroa.09.0.i.i
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 %i.ha
  store i8 %.sroa.09.1.i.i, ptr %i.hx, align 1, !alias.scope !424, !noalias !472
  %.not.i76.i = icmp eq i64 %i.gz, 0
  br i1 %.not.i76.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.az:                                            ; preds = %bb.av
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.ha, i64 noundef range(i64 0, -9223372036854775808) %i.dy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #20, !noalias !473
  unreachable

_RNvNtNtCsh036I4OHgIr_6uucore8features8fast_inc8fast_inc.exit.i: ; preds = %bb.at, %bb.ao, %._crit_edge.thread.i.i
  %.sroa.087.1.i = phi i64 [ %..i.i.i, %._crit_edge.thread.i.i ], [ %i.hf, %bb.ao ], [ %.sroa.087.0150.i, %bb.at ] ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fi, %.sroa.01.0112.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.split.i

_RINvCskTxFPE6q5z6_6uu_seq14fast_print_seqINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEEB2_.exit: ; preds = %.split.loop.exit17.i.i.i.i.i.i.i.i, %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECskTxFPE6q5z6_6uu_seq.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskTxFPE6q5z6_6uu_seq.exit73.sink.split.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECskTxFPE6q5z6_6uu_seq.exit70.i
  %.sroa.0.0.i = phi ptr [ null, %.split.loop.exit17.i.i.i.i.i.i.i.i ], [ null, %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i ], [ %.sroa.0.1.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECskTxFPE6q5z6_6uu_seq.exit70.i ], [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECskTxFPE6q5z6_6uu_seq.exit.i ], [ %.sroa.0.0.ph.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskTxFPE6q5z6_6uu_seq.exit73.sink.split.i ]
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEECskTxFPE6q5z6_6uu_seq(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x) #19, !noalias !456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %.val33 = load i64, ptr %i.y, align 8, !range !144, !noundef !4 ; 2 uses
  %i.hy = icmp sgt i64 %.val33, 0
  br i1 %i.hy, label %bb.ba, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit59

bb.ba:                                            ; preds = %_RINvCskTxFPE6q5z6_6uu_seq14fast_print_seqINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEEB2_.exit
  %.val34 = load ptr, ptr %.sroa.18.40..sroa_idx100, align 8, !nonnull !4, !noundef !4
  %i.hz = shl nuw i64 %.val33, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val34, i64 noundef %i.hz, i64 noundef range(i64 1, -9223372036854775807) 8) #19
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit59

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit59: ; preds = %_RINvCskTxFPE6q5z6_6uu_seq14fast_print_seqINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEEB2_.exit, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %.val31 = load i64, ptr %i.z, align 8, !range !144, !noundef !4 ; 2 uses
  %i.ia = icmp sgt i64 %.val31, 0
  br i1 %i.ia, label %bb.bb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit62

bb.bb:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit59
  %.val32 = load ptr, ptr %.sroa.12.16..sroa_idx93, align 8, !nonnull !4, !noundef !4
  %i.ib = shl nuw i64 %.val31, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val32, i64 noundef %i.ib, i64 noundef range(i64 1, -9223372036854775807) 8) #19
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit62

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit62: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit59, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %.val53 = load i64, ptr %i.ad, align 8, !range !137, !noundef !4 ; 2 uses
  switch i64 %.val53, label %bb.bc [
    i64 -1, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit
    i64 -9223372036854775804, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit
    i64 -9223372036854775805, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit
    i64 -9223372036854775806, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit
    i64 -9223372036854775807, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit
    i64 -9223372036854775808, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit
  ]

bb.bc:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit62
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.val54 = load ptr, ptr %i.ic, align 8, !nonnull !4, !noundef !4
  %i.id = shl nuw i64 %.val53, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val54, i64 noundef %i.id, i64 noundef range(i64 1, -9223372036854775807) 8) #19
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit62, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit62, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit62, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit62, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit62, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit62, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit62, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %.val51 = load i64, ptr %i.ae, align 8, !range !137, !noundef !4 ; 2 uses
  switch i64 %.val51, label %bb.bd [
    i64 -1, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit63
    i64 -9223372036854775804, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit63
    i64 -9223372036854775805, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit63
    i64 -9223372036854775806, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit63
    i64 -9223372036854775807, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit63
    i64 -9223372036854775808, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit63
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit63
  ]

bb.bd:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.val52 = load ptr, ptr %i.ie, align 8, !nonnull !4, !noundef !4
  %i.if = shl nuw i64 %.val51, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val52, i64 noundef %i.if, i64 noundef range(i64 1, -9223372036854775807) 8) #19
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit63

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit63: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %.val49 = load i64, ptr %i.af, align 8, !range !137, !noundef !4 ; 2 uses
  switch i64 %.val49, label %bb.be [
    i64 -1, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit64
    i64 -9223372036854775804, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit64
    i64 -9223372036854775805, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit64
    i64 -9223372036854775806, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit64
    i64 -9223372036854775807, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit64
    i64 -9223372036854775808, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit64
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit64
  ]

bb.be:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit63
  %i.ig = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.val50 = load ptr, ptr %i.ig, align 8, !nonnull !4, !noundef !4
  %i.ih = shl nuw i64 %.val49, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val50, i64 noundef %i.ih, i64 noundef range(i64 1, -9223372036854775807) 8) #19
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit64

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit64: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit63, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit63, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit63, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit63, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit63, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit63, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit63, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.du

bb.bf:                                            ; preds = %bb.h
  %i.ii = shl nuw i64 %.sroa.7.16.copyload, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.16.copyload) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.12.16.copyload, i64 noundef %i.ii, i64 noundef range(i64 1, -9223372036854775807) 8) #19
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit67

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit67: ; preds = %bb.h, %bb.bf
  %.sroa.1397.40.copyload.off = add i64 %.sroa.1397.40.copyload, -1
  %switch125 = icmp ult i64 %.sroa.1397.40.copyload.off, -3
  br i1 %switch125, label %bb.bg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit70

bb.bg:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit67
  %i.ij = shl nuw i64 %.sroa.1397.40.copyload, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.18.40.copyload) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.18.40.copyload, i64 noundef %i.ij, i64 noundef range(i64 1, -9223372036854775807) 8) #19
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit70

bb.bh:                                            ; preds = %_RNvXs9_NtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimalNtB5_18ExtendedBigDecimalNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit70
  %.sroa.02.0 = phi i1 [ true, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit70 ], [ false, %_RNvXs9_NtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimalNtB5_18ExtendedBigDecimalNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !474
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(32) @52, i64 32, i1 false), !noalias !474
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !479, !noalias !474
  %i.ik = call noundef i8 @_RNvXs6_NtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimalNtB5_18ExtendedBigDecimalNtNtCs6JMX4GRUq9U_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k) #19, !noalias !482
  %i.il = icmp sgt i8 %i.ik, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !474
  %i.im = call noundef i8 @_RNvXs6_NtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimalNtB5_18ExtendedBigDecimalNtNtCs6JMX4GRUq9U_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ad) #19 ; 3 uses
  br i1 %i.il, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit4.i, label %_RINvCskTxFPE6q5z6_6uu_seq13done_printingNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalEB2_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit4.i: ; preds = %bb.bh
  %i.in = icmp sgt i8 %i.im, 0
  br i1 %i.in, label %bb.bj, label %bb.bi

_RINvCskTxFPE6q5z6_6uu_seq13done_printingNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalEB2_.exit: ; preds = %bb.bh
  %.not.i.i71 = icmp ne i8 %i.im, -2
  %i.io = icmp slt i8 %i.im, 0
  %.sroa.0.0.i.i72 = and i1 %.not.i.i71, %i.io
  br i1 %.sroa.0.0.i.i72, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit4.i, %_RINvCskTxFPE6q5z6_6uu_seq13done_printingNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalEB2_.exit
  %.pre190 = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8 ; 5 uses
  br i1 %.sroa.02.0, label %bb.bl, label %bb.bk

bb.bj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit4.i, %_RINvCskTxFPE6q5z6_6uu_seq13done_printingNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalEB2_.exit
  br i1 %.sroa.02.0, label %bb.dn, label %bb.dm

bb.bk:                                            ; preds = %bb.bi
  %i.ip = load i64, ptr %i.ag, align 8, !range !40, !noundef !4
  %i.iq = icmp sgt i64 %.pre190, -1
  call void @llvm.assume(i1 %i.iq)
  %i.ir = sub nsw i64 %i.ip, %.pre190
  %i.is = icmp ult i64 %2, %i.ir
  br i1 %i.is, label %bb.cv, label %bb.cu, !prof !170

bb.bl:                                            ; preds = %._crit_edge, %bb.cv, %bb.bi
  %i.it = phi i64 [ %.pre189, %._crit_edge ], [ %i.la, %bb.cv ], [ %.pre190, %bb.bi ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !483)
  call void @llvm.experimental.noalias.scope.decl(metadata !486)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.ag, ptr %i.j, align 8, !noalias !488
  call void @llvm.experimental.noalias.scope.decl(metadata !490)
  %i.iu = load i64, ptr %i.ag, align 8, !range !40, !alias.scope !493, !noalias !494, !noundef !4
  %i.iv = icmp sgt i64 %i.it, -1
  call void @llvm.assume(i1 %i.iv)
  %i.iw = sub nsw i64 %i.iu, %i.it
  %i.ix = icmp ult i64 %i.at, %i.iw
  br i1 %i.ix, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core2io5implsQINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtB6_5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.thread.i, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core2io5implsQINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtB6_5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.i, !prof !170

_RNvXs_NtNtCs6JMX4GRUq9U_4core2io5implsQINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtB6_5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.thread.i: ; preds = %bb.bl
  call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.iy = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !501, !noalias !502, !nonnull !4, !noundef !4
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.it
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iz, ptr nonnull readonly align 1 %i.ar, i64 range(i64 0, -9223372036854775808) %i.at, i1 false), !noalias !504
  %i.ja = add nuw i64 %i.it, %i.at
  store i64 %i.ja, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !501, !noalias !502
  br label %bb.bm

_RNvXs_NtNtCs6JMX4GRUq9U_4core2io5implsQINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtB6_5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.i: ; preds = %bb.bl
  %i.jb = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE14write_all_coldCskTxFPE6q5z6_6uu_seq(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef range(i64 0, -9223372036854775808) %i.at) #18, !noalias !505 ; 2 uses
  %.not.i73 = icmp eq ptr %i.jb, null
  br i1 %.not.i73, label %bb.bm, label %_RINvMs6_NtNtCsh036I4OHgIr_6uucore8features6formatINtB6_6FormatNtNtB6_10num_format5FloatRNtNtB8_18extendedbigdecimal18ExtendedBigDecimalE3fmtQINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEECskTxFPE6q5z6_6uu_seq.exit.thread

bb.bm:                                            ; preds = %_RNvXs_NtNtCs6JMX4GRUq9U_4core2io5implsQINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtB6_5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.i, %_RNvXs_NtNtCs6JMX4GRUq9U_4core2io5implsQINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtB6_5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !506)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !488
  %i.jc = load i64, ptr %i.w, align 8, !range !137, !alias.scope !509, !noalias !510, !noundef !4 ; 3 uses
  %i.jd = icmp slt i64 %i.jc, -9223372036854775803
  %i.je = add i64 %i.jc, -9223372036854775807
  %i.jf = select i1 %i.jd, i64 %i.je, i64 0
  switch i64 %i.jf, label %bb.bn [
    i64 0, label %bb.bo
    i64 1, label %bb.bz
    i64 2, label %bb.ca
end_hunk_0
