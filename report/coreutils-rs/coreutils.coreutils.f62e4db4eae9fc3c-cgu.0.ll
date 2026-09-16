Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/coreutils.coreutils.f62e4db4eae9fc3c-cgu.0?download=true
inline.NumInlined: 9927
inline.NumDeleted: 3951
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RINvCsdit6BuOJVAc_5uu_od6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBy_6cloned6ClonedINtNtNtBC_5slice4iter4IterB29_EEEECsl8pJiQOn4hA_9coreutils:bb.a
  %.val.i66.i = load ptr, ptr %i.bz, align 8, !alias.scope !11581, !noalias !11474, !nonnull !12, !align !23, !noundef !12 ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.val.i66.i, i64 12 ; 2 uses
  %i.ot = load i32, ptr %i.os, align 4, !noalias !11582, !noundef !12
  %i.ou = add i32 %i.ot, -1                       ; 2 uses
  store i32 %i.ou, ptr %i.os, align 4, !noalias !11582
  %i.ov = icmp eq i32 %i.ou, 0
  br i1 %i.ov, label %bb.df, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECsl8pJiQOn4hA_9coreutils.exit67.i

bb.df:                                            ; preds = %bb.de
  store atomic i64 0, ptr %.val.i66.i monotonic, align 8, !noalias !11582
  %i.ow = getelementptr inbounds nuw i8, ptr %.val.i66.i, i64 8 ; 2 uses
  %i.ox = atomicrmw xchg ptr %i.ow, i32 0 release, align 4, !noalias !11582
  %i.oy = icmp eq i32 %i.ox, 2
  br i1 %i.oy, label %bb.dg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECsl8pJiQOn4hA_9coreutils.exit67.i, !prof !18

bb.dg:                                            ; preds = %bb.df
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ow) #45, !noalias !11582
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECsl8pJiQOn4hA_9coreutils.exit67.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECsl8pJiQOn4hA_9coreutils.exit67.i: ; preds = %bb.dg, %bb.df, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !11474
  call void @llvm.experimental.noalias.scope.decl(metadata !11583)
  %i.oz = icmp eq i64 %.sroa.647.sroa.8.0.copyload.i, 0
  br i1 %i.oz, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i75.i, label %.lr.ph.i.i.i.i70.i

.lr.ph.i.i.i.i70.i:                               ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECsl8pJiQOn4hA_9coreutils.exit67.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i74.i
  %.sroa.0.03.i.i.i.i71.i = phi i64 [ %i.pb, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i74.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECsl8pJiQOn4hA_9coreutils.exit67.i ] ; 2 uses
  %i.pa = getelementptr inbounds nuw [24 x i8], ptr %.sroa.647.sroa.7.0.copyload.i, i64 %.sroa.0.03.i.i.i.i71.i ; 2 uses
  %i.pb = add nuw nsw i64 %.sroa.0.03.i.i.i.i71.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11584)
  call void @llvm.experimental.noalias.scope.decl(metadata !11585)
  %.val.i.i.i.i.i.i72.i = load i64, ptr %i.pa, align 8, !range !19, !alias.scope !11586, !noalias !11587, !noundef !12 ; 2 uses
  %i.pc = icmp eq i64 %.val.i.i.i.i.i.i72.i, 0
  br i1 %i.pc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i74.i, label %bb.dh

bb.dh:                                            ; preds = %.lr.ph.i.i.i.i70.i
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  %.val1.i.i.i.i.i.i73.i = load ptr, ptr %i.pd, align 8, !alias.scope !11586, !noalias !11587, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i73.i, i64 noundef %.val.i.i.i.i.i.i72.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !11588
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i74.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i74.i: ; preds = %bb.dh, %.lr.ph.i.i.i.i70.i
  %i.pe = icmp eq i64 %i.pb, %.sroa.647.sroa.8.0.copyload.i
  br i1 %i.pe, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i75.i, label %.lr.ph.i.i.i.i70.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i75.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i74.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECsl8pJiQOn4hA_9coreutils.exit67.i
  %i.pf = icmp eq i64 %.sroa.647.sroa.6.0.copyload.i, 0
  br i1 %i.pf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECsl8pJiQOn4hA_9coreutils.exit.i77.i, label %bb.di

bb.di:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i75.i
  %i.pg = mul nuw i64 %.sroa.647.sroa.6.0.copyload.i, 24
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.647.sroa.7.0.copyload.i, i64 noundef %i.pg, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !11587
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECsl8pJiQOn4hA_9coreutils.exit.i77.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECsl8pJiQOn4hA_9coreutils.exit.i77.i: ; preds = %bb.di, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i75.i
  %i.ph = icmp eq i64 %.sroa.647.sroa.9.0.copyload.i, 0
  br i1 %i.ph, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdit6BuOJVAc_5uu_od9OdOptionsECsl8pJiQOn4hA_9coreutils.exit80.i, label %bb.dj

bb.dj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECsl8pJiQOn4hA_9coreutils.exit.i77.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.647.sroa.10.0.copyload.i) ]
  %i.pi = mul nuw i64 %.sroa.647.sroa.9.0.copyload.i, 40
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.647.sroa.10.0.copyload.i, i64 noundef %i.pi, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !11589
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdit6BuOJVAc_5uu_od9OdOptionsECsl8pJiQOn4hA_9coreutils.exit80.i

bb.dk:                                            ; preds = %bb.cv
  %.sroa.550.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %.sroa.537.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.537.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.550.0..sroa_idx.i, i64 24, i1 false), !noalias !11474
  %.sroa.752.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %.sroa.739.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.739.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.752.0..sroa_idx.i, i64 88, i1 false), !noalias !11474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !11474
  store ptr %i.nq, ptr %i.bw, align 8, !noalias !11474
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  store ptr %i.ns, ptr %.sroa.436.0..sroa_idx.i, align 8, !noalias !11474
  %.sroa.638.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  store i64 %i.no, ptr %.sroa.638.0..sroa_idx.i, align 8, !noalias !11474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !11474
  call void @llvm.experimental.noalias.scope.decl(metadata !11590)
  %i.pj = add i64 %.sroa.647.sroa.13.0.copyload.i, 4 ; 6 uses
  %.not.i.i.i81.i = icmp slt i64 %i.pj, 0
  br i1 %.not.i.i.i81.i, label %bb.do, label %bb.dl, !prof !27

bb.dl:                                            ; preds = %bb.dk
  %i.pk = icmp eq i64 %i.pj, 0
  br i1 %i.pk, label %_RNvMNtCsdit6BuOJVAc_5uu_od13input_decoderINtB2_12InputDecoderINtNtB4_11peek_reader10PeekReaderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderINtNtB4_14partial_reader13PartialReaderNtNtB4_16multifile_reader15MultifileReaderEEEE3newCsl8pJiQOn4hA_9coreutils.exit.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !11591
  %i.pl = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.pj, i64 noundef range(i64 1, 17) 1) #45, !noalias !11591 ; 2 uses
  %i.pm = icmp eq ptr %i.pl, null
  br i1 %i.pm, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.pn = ptrtoint ptr %i.pl to i64
  br label %_RNvMNtCsdit6BuOJVAc_5uu_od13input_decoderINtB2_12InputDecoderINtNtB4_11peek_reader10PeekReaderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderINtNtB4_14partial_reader13PartialReaderNtNtB4_16multifile_reader15MultifileReaderEEEE3newCsl8pJiQOn4hA_9coreutils.exit.i

bb.do:                                            ; preds = %bb.dm, %bb.dk
  %.sroa.4.0.ph.i.i83.i = phi i64 [ 1, %bb.dm ], [ 0, %bb.dk ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i83.i, i64 %i.pj) #52, !noalias !11592
  unreachable

_RNvMNtCsdit6BuOJVAc_5uu_od13input_decoderINtB2_12InputDecoderINtNtB4_11peek_reader10PeekReaderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderINtNtB4_14partial_reader13PartialReaderNtNtB4_16multifile_reader15MultifileReaderEEEE3newCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.dn, %bb.dl
  %.sroa.10.0.i.i.i = phi i64 [ %i.pn, %bb.dn ], [ 1, %bb.dl ]
  %i.po = inttoptr i64 %.sroa.10.0.i.i.i to ptr
  %i.pp = getelementptr inbounds nuw i8, ptr %i.bu, i64 24 ; 4 uses
  store ptr %i.bw, ptr %i.pp, align 8, !alias.scope !11590, !noalias !11593
  store i64 %i.pj, ptr %i.bu, align 8, !alias.scope !11590, !noalias !11593
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 4 uses
  store ptr %i.po, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !11590, !noalias !11593
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 4 uses
  store i64 %i.pj, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !11590, !noalias !11593
  %i.pq = getelementptr inbounds nuw i8, ptr %i.bu, i64 32 ; 3 uses
  store i64 4, ptr %i.pq, align 8, !alias.scope !11590, !noalias !11593
  %i.pr = getelementptr inbounds nuw i8, ptr %i.bu, i64 40 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.bu, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pr, i8 0, i64 16, i1 false), !alias.scope !11590, !noalias !11593
  store i8 %.sroa.647.sroa.15.0.copyload.i, ptr %i.ps, align 8, !alias.scope !11590, !noalias !11593
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !11474
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.647.sroa.10.0.copyload.i) ]
  %i.pt = trunc nuw i8 %.sroa.647.sroa.14.0.copyload.i to i1
  call void @_RNvMNtCsdit6BuOJVAc_5uu_od11output_infoNtB2_10OutputInfo3new(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.bt, i64 noundef %.sroa.647.sroa.13.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.647.sroa.10.0.copyload.i, i64 noundef %.sroa.647.sroa.11.0.copyload.i, i1 noundef zeroext %i.pt) #45, !noalias !11474
  call void @llvm.experimental.noalias.scope.decl(metadata !11594)
  call void @llvm.experimental.noalias.scope.decl(metadata !11595)
  call void @llvm.experimental.noalias.scope.decl(metadata !11596)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !11597
  store i64 0, ptr %i.aq, align 8, !noalias !11597
  %i.pu = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.pu, align 8, !noalias !11597
  %i.pv = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  store i64 0, ptr %i.pv, align 8, !noalias !11597
  %i.pw = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.px = load i64, ptr %i.pw, align 8, !alias.scope !11596, !noalias !11598, !noundef !12 ; 3 uses
  %i.py = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !11599, !noalias !11600, !noundef !12 ; 2 uses
  %i.pz = load i64, ptr %i.pq, align 8, !alias.scope !11599, !noalias !11600, !noundef !12 ; 2 uses
  %.not.i.i224.i.i = icmp ult i64 %i.py, %i.pz
  br i1 %.not.i.i224.i.i, label %._crit_edge.i87.i, label %.lr.ph226.i.i, !prof !11601

.lr.ph226.i.i:                                    ; preds = %_RNvMNtCsdit6BuOJVAc_5uu_od13input_decoderINtB2_12InputDecoderINtNtB4_11peek_reader10PeekReaderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderINtNtB4_14partial_reader13PartialReaderNtNtB4_16multifile_reader15MultifileReaderEEEE3newCsl8pJiQOn4hA_9coreutils.exit.i
  %i.qa = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.qb = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.qc = load i64, ptr %i.qb, align 8, !alias.scope !11596, !noalias !11598 ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.qe = load i8, ptr %i.qd, align 8, !range !21, !alias.scope !11596, !noalias !11598
  %i.qf = trunc nuw i8 %i.qe to i1
  %i.qg = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.qi = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.qk = load ptr, ptr %i.qj, align 8, !alias.scope !11596, !noalias !11598, !nonnull !12 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.qm = load i64, ptr %i.ql, align 8, !alias.scope !11596, !noalias !11598 ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.qm, 168
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qk, i64 %.idx.i.i.i
  %i.qo = icmp eq i64 %i.qm, 0
  %.sroa.4.0..sroa_idx.i55.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 10 uses
  %.sroa.5.0..sroa_idx.i56.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 18 uses
  %i.qp = icmp eq i64 %i.qc, 0
  %i.qq = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.432.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.qr = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.qs = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.qt = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.qu = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.qv = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.qw = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.qx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.qy = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.qz = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ra = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.rb = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.rc = load i64, ptr %i.rb, align 8, !alias.scope !11596, !noalias !11598
  %i.rd = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.453.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.re = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.458.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.rf = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.rg = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.483.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.rh = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.sroa.474.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.rj = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.sroa.488.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.rl = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br label %bb.dp

._crit_edge.i87.i:                                ; preds = %bb.il, %_RNvMNtCsdit6BuOJVAc_5uu_od13input_decoderINtB2_12InputDecoderINtNtB4_11peek_reader10PeekReaderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderINtNtB4_14partial_reader13PartialReaderNtNtB4_16multifile_reader15MultifileReaderEEEE3newCsl8pJiQOn4hA_9coreutils.exit.i
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1044, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1045) #50, !noalias !11602
  unreachable

bb.dp:                                            ; preds = %bb.il, %.lr.ph226.i.i
  %.sroa.31.96.131139.i = phi i64 [ %.sroa.647.sroa.12.0.copyload.i, %.lr.ph226.i.i ], [ %i.xs, %bb.il ]
  %.sroa.11.24.137.i = phi i64 [ %.sroa.647.sroa.0.0.copyload.i, %.lr.ph226.i.i ], [ %.sroa.11.24.138.i, %bb.il ] ; 2 uses
  %.sroa.9127.16.load135.i = phi i64 [ %i.hb, %.lr.ph226.i.i ], [ %.sroa.9127.16.load136.i, %bb.il ]
  %i.rn = phi i64 [ %i.pz, %.lr.ph226.i.i ], [ %i.adv, %bb.il ] ; 3 uses
  %i.ro = phi i64 [ %i.py, %.lr.ph226.i.i ], [ %i.adu, %bb.il ] ; 6 uses
  %.sroa.01.0225.i.i = phi i1 [ false, %.lr.ph226.i.i ], [ %.sroa.01.1.i.i, %bb.il ]
  %i.rp = load ptr, ptr %i.pp, align 8, !alias.scope !11603, !noalias !11600, !nonnull !12, !align !23, !noundef !12 ; 9 uses
  %i.rq = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !11603, !noalias !11600, !nonnull !12, !noundef !12 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11604)
  call void @llvm.experimental.noalias.scope.decl(metadata !11605)
  call void @llvm.experimental.noalias.scope.decl(metadata !11606)
  call void @llvm.experimental.noalias.scope.decl(metadata !11607)
  call void @llvm.experimental.noalias.scope.decl(metadata !11608)
  call void @llvm.experimental.noalias.scope.decl(metadata !11609)
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rp, i64 120 ; 4 uses
  %i.rs = load ptr, ptr %i.rr, align 8, !alias.scope !11610, !noalias !11611, !nonnull !12, !noundef !12 ; 3 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rp, i64 128 ; 9 uses
  %i.ru = load i64, ptr %i.rt, align 8, !alias.scope !11610, !noalias !11611, !noundef !12 ; 4 uses
  %..i.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.ro, i64 range(i64 0, -9223372036854775808) %i.ru) ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rq, ptr nonnull readonly align 1 %i.rs, i64 range(i64 0, -9223372036854775808) %..i.i.i.i.i.i.i.i, i1 false), !alias.scope !11612, !noalias !11613
  %i.rv = icmp sgt i64 %i.ru, -1
  call void @llvm.assume(i1 %i.rv)
  store i64 0, ptr %i.rt, align 8, !alias.scope !11614, !noalias !11615
  %i.rw = sub nuw nsw i64 %i.ru, %..i.i.i.i.i.i.i.i ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rs, i64 %..i.i.i.i.i.i.i.i
  %i.ry = icmp samesign eq i64 %..i.i.i.i.i.i.i.i, 0
  %.not.i.i.i.i.not.i.i.i.i.i.i = icmp samesign ugt i64 %i.ru, %i.ro ; 2 uses
  br i1 %i.ry, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  br i1 %.not.i.i.i.i.not.i.i.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.sink.split.i.i.i.i.i.i, label %_RNvMs_NtCsdit6BuOJVAc_5uu_od11peek_readerINtB4_10PeekReaderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderINtNtB6_14partial_reader13PartialReaderNtNtB6_16multifile_reader15MultifileReaderEEE20read_from_tempbufferCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i

bb.dr:                                            ; preds = %bb.dp
  br i1 %.not.i.i.i.i.not.i.i.i.i.i.i, label %bb.ds, label %_RNvMs_NtCsdit6BuOJVAc_5uu_od11peek_readerINtB4_10PeekReaderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderINtNtB6_14partial_reader13PartialReaderNtNtB6_16multifile_reader15MultifileReaderEEE20read_from_tempbufferCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.rs, ptr nonnull align 1 %i.rx, i64 %i.rw, i1 false), !noalias !11616
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.sink.split.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.sink.split.i.i.i.i.i.i: ; preds = %bb.ds, %bb.dq
  store i64 %i.rw, ptr %i.rt, align 8, !alias.scope !11610, !noalias !11617
  br label %_RNvMs_NtCsdit6BuOJVAc_5uu_od11peek_readerINtB4_10PeekReaderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderINtNtB6_14partial_reader13PartialReaderNtNtB6_16multifile_reader15MultifileReaderEEE20read_from_tempbufferCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i

_RNvMs_NtCsdit6BuOJVAc_5uu_od11peek_readerINtB4_10PeekReaderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderINtNtB6_14partial_reader13PartialReaderNtNtB6_16multifile_reader15MultifileReaderEEE20read_from_tempbufferCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.sink.split.i.i.i.i.i.i, %bb.dr, %bb.dq
  %i.rz = sub nuw nsw i64 %i.ro, %..i.i.i.i.i.i.i.i ; 3 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rq, i64 %..i.i.i.i.i.i.i.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11618)
  call void @llvm.experimental.noalias.scope.decl(metadata !11619)
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rp, i64 16 ; 5 uses
  %i.sc = load i64, ptr %i.sb, align 8, !alias.scope !11620, !noalias !11621, !noundef !12 ; 5 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rp, i64 24 ; 2 uses
  %i.se = load i64, ptr %i.sd, align 8, !alias.scope !11620, !noalias !11621, !noundef !12 ; 4 uses
  %i.sf = icmp ne i64 %i.sc, %i.se
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %i.sh = load i64, ptr %i.sg, align 8, !alias.scope !11620, !noalias !11621 ; 4 uses
  %.not.i.i.i.i.i.i = icmp ult i64 %i.rz, %i.sh
  %or.cond.i.i.i.i.i.i = select i1 %i.sf, i1 true, i1 %.not.i.i.i.i.i.i
  %i.si = getelementptr inbounds nuw i8, ptr %i.rp, i64 40 ; 2 uses
  br i1 %or.cond.i.i.i.i.i.i, label %bb.dt, label %bb.dy

bb.dt:                                            ; preds = %_RNvMs_NtCsdit6BuOJVAc_5uu_od11peek_readerINtB4_10PeekReaderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderINtNtB6_14partial_reader13PartialReaderNtNtB6_16multifile_reader15MultifileReaderEEE20read_from_tempbufferCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11622)
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.sc, %i.se
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.rp, align 8, !alias.scope !11623, !noalias !11624 ; 6 uses
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtB1p_16multifile_reader15MultifileReaderEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rp, i64 32 ; 3 uses
  %i.sk = load i8, ptr %i.sj, align 8, !range !21, !alias.scope !11623, !noalias !11624, !noundef !12
  %i.sl = trunc nuw i8 %i.sk to i1
  br i1 %i.sl, label %_RNvMs6_NtNtCs6JMX4GRUq9U_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_init.exit.i.i.i.i.i.i.i.i.i.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.pre.i.i.i.i.i.i.i, i8 0, i64 %i.sh, i1 false), !noalias !11625
  br label %_RNvMs6_NtNtCs6JMX4GRUq9U_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_init.exit.i.i.i.i.i.i.i.i.i.i

_RNvMs6_NtNtCs6JMX4GRUq9U_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_init.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dv, %bb.du
  %i.sm = call fastcc { i64, ptr } @_RNvXs_NtCsdit6BuOJVAc_5uu_od14partial_readerINtB4_13PartialReaderNtNtB6_16multifile_reader15MultifileReaderENtNtNtCs7tKScEop1B6_5alloc2io4read4Read4readCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.si, ptr noalias nofree noundef nonnull %.pre.i.i.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.sh) #45, !noalias !11626 ; 2 uses
  %i.sn = extractvalue { i64, ptr } %i.sm, 0
  %i.so = extractvalue { i64, ptr } %i.sm, 1      ; 2 uses
  %i.sp = ptrtoint ptr %i.so to i64               ; 5 uses
  %i.sq = trunc nuw i64 %i.sn to i1
  br i1 %i.sq, label %_RNvXNtNtCs7tKScEop1B6_5alloc2io5implsQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtBF_16multifile_reader15MultifileReaderENtNtB4_4read4Read8read_bufCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %_RNvMs6_NtNtCs6JMX4GRUq9U_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_init.exit.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.sh, %i.sp
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.dx, label %_RNvXNtNtCs7tKScEop1B6_5alloc2io5implsQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtBF_16multifile_reader15MultifileReaderENtNtB4_4read4Read8read_bufCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i.i.i.i.i, !prof !18

_RNvXNtNtCs7tKScEop1B6_5alloc2io5implsQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtBF_16multifile_reader15MultifileReaderENtNtB4_4read4Read8read_bufCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.dw
  store i64 0, ptr %i.sb, align 8, !alias.scope !11623, !noalias !11624
  store i64 %i.sp, ptr %i.sd, align 8, !alias.scope !11623, !noalias !11624
  store i8 1, ptr %i.sj, align 8, !alias.scope !11623, !noalias !11624
  br label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtB1p_16multifile_reader15MultifileReaderEECsl8pJiQOn4hA_9coreutils.exit.thread16.i.i.i.i.i.i

bb.dx:                                            ; preds = %bb.dw
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @330) #50, !noalias !11626
  unreachable

_RNvXNtNtCs7tKScEop1B6_5alloc2io5implsQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtBF_16multifile_reader15MultifileReaderENtNtB4_4read4Read8read_bufCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs6_NtNtCs6JMX4GRUq9U_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_init.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sb, i8 0, i64 16, i1 false), !alias.scope !11623, !noalias !11624
  store i8 1, ptr %i.sj, align 8, !alias.scope !11623, !noalias !11624
  %.not3.i.i.i.i.i.i.i = icmp eq ptr %i.so, null
  br i1 %.not3.i.i.i.i.i.i.i, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtB1p_16multifile_reader15MultifileReaderEECsl8pJiQOn4hA_9coreutils.exit.thread16.i.i.i.i.i.i, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtB1p_16multifile_reader15MultifileReaderEECsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i.i.i.i

_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtB1p_16multifile_reader15MultifileReaderEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i: ; preds = %bb.dt
  %i.sr = sub nuw i64 %i.se, %i.sc                ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i.i, i64 %i.sc
  %i.st = icmp eq ptr %.pre.i.i.i.i.i.i.i, null
  br i1 %i.st, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtB1p_16multifile_reader15MultifileReaderEECsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i.i.i.i, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtB1p_16multifile_reader15MultifileReaderEECsl8pJiQOn4hA_9coreutils.exit.thread16.i.i.i.i.i.i

bb.dy:                                            ; preds = %_RNvMs_NtCsdit6BuOJVAc_5uu_od11peek_readerINtB4_10PeekReaderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderINtNtB6_14partial_reader13PartialReaderNtNtB6_16multifile_reader15MultifileReaderEEE20read_from_tempbufferCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sb, i8 0, i64 16, i1 false), !alias.scope !11620, !noalias !11621
  %i.su = call fastcc { i64, ptr } @_RNvXs_NtCsdit6BuOJVAc_5uu_od14partial_readerINtB4_13PartialReaderNtNtB6_16multifile_reader15MultifileReaderENtNtNtCs7tKScEop1B6_5alloc2io4read4Read4readCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(72) %i.si, ptr noalias nofree noundef nonnull %i.sa, i64 noundef range(i64 0, -9223372036854775808) %i.rz) #45, !noalias !11627
  br label %_RNvXs0_NtCsdit6BuOJVAc_5uu_od11peek_readerINtB5_10PeekReaderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderINtNtB7_14partial_reader13PartialReaderNtNtB7_16multifile_reader15MultifileReaderEEENtNtB13_4read4Read4readCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtB1p_16multifile_reader15MultifileReaderEECsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i.i.i.i: ; preds = %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtB1p_16multifile_reader15MultifileReaderEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i, %_RNvXNtNtCs7tKScEop1B6_5alloc2io5implsQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtBF_16multifile_reader15MultifileReaderENtNtB4_4read4Read8read_bufCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i
  %.sroa.69.012.i.i.i.i.i.i = phi i64 [ %i.sr, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtB1p_16multifile_reader15MultifileReaderEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ], [ %i.sp, %_RNvXNtNtCs7tKScEop1B6_5alloc2io5implsQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtBF_16multifile_reader15MultifileReaderENtNtB4_4read4Read8read_bufCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i ]
  %i.sv = inttoptr i64 %.sroa.69.012.i.i.i.i.i.i to ptr
  %i.sw = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.sv, 1
  br label %_RNvXs0_NtCsdit6BuOJVAc_5uu_od11peek_readerINtB5_10PeekReaderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderINtNtB7_14partial_reader13PartialReaderNtNtB7_16multifile_reader15MultifileReaderEEENtNtB13_4read4Read4readCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtB1p_16multifile_reader15MultifileReaderEECsl8pJiQOn4hA_9coreutils.exit.thread16.i.i.i.i.i.i: ; preds = %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtB1p_16multifile_reader15MultifileReaderEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i, %_RNvXNtNtCs7tKScEop1B6_5alloc2io5implsQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtBF_16multifile_reader15MultifileReaderENtNtB4_4read4Read8read_bufCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i, %_RNvXNtNtCs7tKScEop1B6_5alloc2io5implsQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtBF_16multifile_reader15MultifileReaderENtNtB4_4read4Read8read_bufCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i.i.i.i.i
  %i.sx = phi ptr [ %i.ss, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtB1p_16multifile_reader15MultifileReaderEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i, %_RNvXNtNtCs7tKScEop1B6_5alloc2io5implsQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtBF_16multifile_reader15MultifileReaderENtNtB4_4read4Read8read_bufCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i, %_RNvXNtNtCs7tKScEop1B6_5alloc2io5implsQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtBF_16multifile_reader15MultifileReaderENtNtB4_4read4Read8read_bufCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.sy = phi i64 [ %i.sr, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtB1p_16multifile_reader15MultifileReaderEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ], [ %i.sp, %_RNvXNtNtCs7tKScEop1B6_5alloc2io5implsQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtBF_16multifile_reader15MultifileReaderENtNtB4_4read4Read8read_bufCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i.i.i.i.i ], [ 0, %_RNvXNtNtCs7tKScEop1B6_5alloc2io5implsQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtBF_16multifile_reader15MultifileReaderENtNtB4_4read4Read8read_bufCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i ]
  %i.sz = phi i64 [ %i.sc, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtB1p_16multifile_reader15MultifileReaderEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ], [ 0, %_RNvXNtNtCs7tKScEop1B6_5alloc2io5implsQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtBF_16multifile_reader15MultifileReaderENtNtB4_4read4Read8read_bufCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i.i.i.i.i ], [ 0, %_RNvXNtNtCs7tKScEop1B6_5alloc2io5implsQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtBF_16multifile_reader15MultifileReaderENtNtB4_4read4Read8read_bufCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i ]
  %i.ta = phi i64 [ %i.se, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtB1p_16multifile_reader15MultifileReaderEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ], [ %i.sp, %_RNvXNtNtCs7tKScEop1B6_5alloc2io5implsQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtBF_16multifile_reader15MultifileReaderENtNtB4_4read4Read8read_bufCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i.i.i.i.i ], [ 0, %_RNvXNtNtCs7tKScEop1B6_5alloc2io5implsQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtBF_16multifile_reader15MultifileReaderENtNtB4_4read4Read8read_bufCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !11628)
  %..i.i.i7.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.sy, i64 range(i64 0, -9223372036854775808) %i.rz) ; 4 uses
  %i.tb = icmp eq i64 %..i.i.i7.i.i.i.i.i, 1
  br i1 %i.tb, label %bb.dz, label %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i

bb.dz:                                            ; preds = %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtB1p_16multifile_reader15MultifileReaderEECsl8pJiQOn4hA_9coreutils.exit.thread16.i.i.i.i.i.i
  %i.tc = load i8, ptr %i.sx, align 1, !noalias !11629, !noundef !12
  store i8 %i.tc, ptr %i.sa, align 1, !alias.scope !11630, !noalias !11631
  br label %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i: ; preds = %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtB1p_16multifile_reader15MultifileReaderEECsl8pJiQOn4hA_9coreutils.exit.thread16.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sa, ptr nonnull readonly align 1 %i.sx, i64 range(i64 0, -9223372036854775808) %..i.i.i7.i.i.i.i.i, i1 false), !alias.scope !11632, !noalias !11633
  br label %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i.i.i.i.i.i

_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i, %bb.dz
  %i.td = inttoptr i64 %..i.i.i7.i.i.i.i.i to ptr
  %i.te = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.td, 1
  %i.tf = add i64 %i.sz, %..i.i.i7.i.i.i.i.i
  %..i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ta, i64 %i.tf)
  store i64 %..i.i.i.i.i.i.i, ptr %i.sb, align 8, !alias.scope !11620, !noalias !11621
  br label %_RNvXs0_NtCsdit6BuOJVAc_5uu_od11peek_readerINtB5_10PeekReaderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderINtNtB7_14partial_reader13PartialReaderNtNtB7_16multifile_reader15MultifileReaderEEENtNtB13_4read4Read4readCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RNvXs0_NtCsdit6BuOJVAc_5uu_od11peek_readerINtB5_10PeekReaderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderINtNtB7_14partial_reader13PartialReaderNtNtB7_16multifile_reader15MultifileReaderEEENtNtB13_4read4Read4readCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i.i.i.i.i.i, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtB1p_16multifile_reader15MultifileReaderEECsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i.i.i.i, %bb.dy
  %.merged.i.i.i.i.i.i = phi { i64, ptr } [ %i.su, %bb.dy ], [ %i.sw, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtCsdit6BuOJVAc_5uu_od14partial_reader13PartialReaderNtNtB1p_16multifile_reader15MultifileReaderEECsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i.i.i.i ], [ %i.te, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i.i.i.i.i.i ] ; 3 uses
  %i.tg = extractvalue { i64, ptr } %.merged.i.i.i.i.i.i, 0
  %i.th = trunc nuw i64 %i.tg to i1               ; 2 uses
  %i.ti = extractvalue { i64, ptr } %.merged.i.i.i.i.i.i, 1
  %i.tj = ptrtoint ptr %i.ti to i64               ; 2 uses
  %i.tk = add i64 %..i.i.i.i.i.i.i.i, %i.tj       ; 2 uses
  %i.tl = inttoptr i64 %i.tk to ptr
  %i.tm = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.tl, 1
  %.merged.i.i.i.i.i = select i1 %i.th, { i64, ptr } %.merged.i.i.i.i.i.i, { i64, ptr } %i.tm
  %i.tn = extractvalue { i64, ptr } %.merged.i.i.i.i.i, 0
  %i.to = select i1 %i.th, i64 %i.tj, i64 %i.tk   ; 7 uses
  %i.tp = trunc nuw i64 %i.tn to i1
  br i1 %i.tp, label %bb.eh, label %bb.ea

bb.ea:                                            ; preds = %_RNvXs0_NtCsdit6BuOJVAc_5uu_od11peek_readerINtB5_10PeekReaderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderINtNtB7_14partial_reader13PartialReaderNtNtB7_16multifile_reader15MultifileReaderEEENtNtB13_4read4Read4readCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  %i.tq = sub i64 %i.ro, %i.to                    ; 3 uses
  %.not6.i.i.i.i = icmp ugt i64 %i.rn, %i.tq
  br i1 %.not6.i.i.i.i, label %bb.eb, label %bb.fc

bb.eb:                                            ; preds = %bb.ea
  %i.tr = sub nuw nsw i64 %i.rn, %i.tq            ; 7 uses
  %i.ts = sub i64 %i.to, %i.tr                    ; 4 uses
  %.not7.i.i.i.i = icmp ult i64 %i.ro, %i.to
  br i1 %.not7.i.i.i.i, label %bb.ec, label %bb.ed, !prof !56

bb.ec:                                            ; preds = %bb.eb
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.ts, i64 noundef %i.to, i64 noundef range(i64 0, -9223372036854775808) %i.ro, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1046) #50, !noalias !11627
  unreachable

bb.ed:                                            ; preds = %bb.eb
  %i.tt = getelementptr inbounds nuw i8, ptr %i.rq, i64 %i.ts
  call void @llvm.experimental.noalias.scope.decl(metadata !11634)
  %i.tu = getelementptr inbounds nuw i8, ptr %i.rp, i64 112 ; 4 uses
  %i.tv = load i64, ptr %i.rt, align 8, !alias.scope !11635, !noalias !11636, !noundef !12 ; 10 uses
  %i.tw = icmp sgt i64 %i.tv, -1
  call void @llvm.assume(i1 %i.tw)
  store i64 0, ptr %i.rt, align 8, !alias.scope !11635, !noalias !11636
  %i.tx = load ptr, ptr %i.rr, align 8, !alias.scope !11635, !noalias !11636, !nonnull !12, !noundef !12 ; 3 uses
  %i.ty = icmp eq i64 %i.tv, 0                    ; 2 uses
  br i1 %i.ty, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtB6_5drain5DrainhEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !11637
  %i.tz = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.tv, i64 noundef range(i64 1, 9) 1) #45, !noalias !11637 ; 3 uses
  %i.ua = icmp eq ptr %i.tz, null
  br i1 %i.ua, label %bb.ef, label %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i

.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i:             ; preds = %bb.ee
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.tz, ptr nonnull align 1 %i.tx, i64 %i.tv, i1 false), !noalias !11638
  br label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtB6_5drain5DrainhEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i

bb.ef:                                            ; preds = %bb.ee
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %i.tv) #52, !noalias !11639
  unreachable

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtB6_5drain5DrainhEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i, %bb.ed
  %.sroa.10.0.i15.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.ed ], [ %i.tz, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11640)
  %i.ub = load i64, ptr %i.tu, align 8, !range !19, !alias.scope !11641, !noalias !11642, !noundef !12 ; 3 uses
  %i.uc = icmp samesign ugt i64 %i.tr, %i.ub
  br i1 %i.uc, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i, !prof !18

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i.i.i.i: ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtB6_5drain5DrainhEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.tu, i64 noundef 0, i64 noundef range(i64 0, -9223372036854775808) %i.tr, i64 noundef 1, i64 noundef 1) #45, !noalias !11643
  %i.ud = load i64, ptr %i.rt, align 8, !alias.scope !11644, !noalias !11642, !noundef !12 ; 2 uses
  %i.ue = icmp sgt i64 %i.ud, -1
  call void @llvm.assume(i1 %i.ue)
  %.pre.i.i.i.i.i = load ptr, ptr %i.rr, align 8, !alias.scope !11644, !noalias !11642
  %.pre9.pre.i.i.i.i.i = load i64, ptr %i.tu, align 8, !range !19, !alias.scope !11645, !noalias !11646
  br label %1

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i: ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtB6_5drain5DrainhEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i
  %.not.i.i8.i.i.i.i = icmp eq i64 %i.rn, %i.tq
  br i1 %.not.i.i8.i.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.a, label %1

1:                                                ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i.i.i.i
  %.pre9.i.i.i.i.i = phi i64 [ %.pre9.pre.i.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i.i.i.i ], [ %i.ub, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ]
  %2 = phi ptr [ %.pre.i.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i.i.i.i ], [ %i.tx, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ] ; 2 uses
  %3 = phi i64 [ %i.ud, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i.i.i.i ], [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ] ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %4, ptr nonnull readonly align 1 %i.tt, i64 range(i64 0, -9223372036854775808) %i.tr, i1 false), !noalias !11647
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.a

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.a: ; preds = %1, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  %i.uf = phi ptr [ %2, %1 ], [ %i.tx, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ]
  %i.ug = phi i64 [ %.pre9.i.i.i.i.i, %1 ], [ %i.ub, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ]
  %5 = phi i64 [ %3, %1 ], [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ]
  %i.uh = add nuw i64 %5, %i.tr                   ; 5 uses
  store i64 %i.uh, ptr %i.rt, align 8, !alias.scope !11644, !noalias !11642
  call void @llvm.experimental.noalias.scope.decl(metadata !11648)
  call void @llvm.experimental.noalias.scope.decl(metadata !11649)
  %i.ui = sub i64 %i.ug, %i.uh
  %i.uj = icmp ugt i64 %i.tv, %i.ui
  br i1 %i.uj, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i.i.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i, !prof !18

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i.i.i.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.a
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.tu, i64 noundef %i.uh, i64 noundef %i.tv, i64 noundef 1, i64 noundef 1) #45, !noalias !11650
  %i.uk = load i64, ptr %i.rt, align 8, !alias.scope !11651, !noalias !11646, !noundef !12 ; 2 uses
  %i.ul = icmp sgt i64 %i.uk, -1
  call void @llvm.assume(i1 %i.ul)
  %.pre10.i.i.i.i.i = load ptr, ptr %i.rr, align 8, !alias.scope !11651, !noalias !11646
  br label %bb.eg

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.a
  %i.um = icmp sgt i64 %i.uh, -1
  call void @llvm.assume(i1 %i.um)
  br i1 %i.ty, label %bb.fc, label %bb.eg

bb.eg:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i.i.i.i.i
  %i.un = phi ptr [ %.pre10.i.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i.i.i.i.i ], [ %i.uf, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i ]
  %i.uo = phi i64 [ %i.uk, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i.i.i.i.i ], [ %i.uh, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.un, i64 %i.uo
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.up, ptr nonnull readonly align 1 %.sroa.10.0.i15.i.i.i.i.i.i, i64 %i.tv, i1 false), !noalias !11652
  %i.uq = add nuw i64 %i.uo, %i.tv
  store i64 %i.uq, ptr %i.rt, align 8, !alias.scope !11651, !noalias !11646
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i15.i.i.i.i.i.i, i64 noundef %i.tv, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !11653
  br label %bb.fc

bb.eh:                                            ; preds = %_RNvXs0_NtCsdit6BuOJVAc_5uu_od11peek_readerINtB5_10PeekReaderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderINtNtB7_14partial_reader13PartialReaderNtNtB7_16multifile_reader15MultifileReaderEEENtNtB13_4read4Read4readCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  %i.ur = inttoptr i64 %i.to to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !11597
  %i.us = icmp ne i64 %i.to, 0
  call void @llvm.assume(i1 %i.us)
  store ptr %i.ur, ptr %i.an, align 8, !noalias !11597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !11597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !11597
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.al, align 8, !noalias !11597
  %i.ut = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #45, !noalias !11654
  store ptr %i.ut, ptr %i.am, align 8, !noalias !11597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !11597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !11597
  %i.uu = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #45, !noalias !11654 ; 2 uses
  %i.uv = extractvalue { ptr, i64 } %i.uu, 0
  %i.uw = extractvalue { ptr, i64 } %i.uu, 1
  store ptr %i.uv, ptr %i.ak, align 8, !noalias !11597
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %i.uw, ptr %i.ux, align 8, !noalias !11597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !11597
  store ptr %i.ak, ptr %i.aj, align 8, !noalias !11597
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.420.0..sroa_idx.i.i, align 8, !noalias !11597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !11655
  store ptr %i.am, ptr %i.ah, align 8, !noalias !11655
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  store ptr null, ptr %i.uy, align 8, !noalias !11655
  %i.uz = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @324, ptr noundef nonnull @5, ptr noundef nonnull %i.aj) #45, !noalias !11654
  %i.va = load ptr, ptr %i.uy, align 8, !noalias !11655, !noundef !12 ; 7 uses
  %.not.i5.i.i98.i = icmp eq ptr %i.va, null      ; 2 uses
  br i1 %i.uz, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  br i1 %.not.i5.i.i98.i, label %bb.en, label %bb.eo, !prof !18

bb.ej:                                            ; preds = %bb.eh
  br i1 %.not.i5.i.i98.i, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i.thread.i100.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !11656
  %i.vb = ptrtoint ptr %i.va to i64               ; 2 uses
  %i.vc = and i64 %i.vb, 3
  switch i64 %i.vc, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i99.i
    i64 3, label %bb.el
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i99.i
    i64 1, label %bb.em
  ], !prof !22

bb.el:                                            ; preds = %bb.ek
  %i.vd = icmp ult ptr %i.va, inttoptr (i64 188978561024 to ptr)
  %i.ve = and i64 %i.vb, 1095216660480
  %i.vf = icmp ne i64 %i.ve, 1095216660480
  call void @llvm.assume(i1 %i.vd)
  call void @llvm.assume(i1 %i.vf)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i99.i

bb.em:                                            ; preds = %bb.ek
  %i.vg = getelementptr i8, ptr %i.va, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.vg) ]
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  store ptr %i.vg, ptr %i.vh, align 8, !alias.scope !11657, !noalias !11656
  store i8 3, ptr %i.ag, align 8, !alias.scope !11657, !noalias !11656
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.vh) #45, !noalias !11658
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i99.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i99.i: ; preds = %bb.em, %bb.el, %bb.ek, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !11656
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i.thread.i100.i

bb.en:                                            ; preds = %bb.ei
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @319, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #50, !noalias !11654
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i.thread.i100.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i99.i, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !11655
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i101.i

bb.eo:                                            ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !11655
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !11659
  %i.vi = ptrtoint ptr %i.va to i64               ; 2 uses
  %i.vj = and i64 %i.vi, 3
  switch i64 %i.vj, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i104.i
    i64 3, label %bb.ep
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i104.i
    i64 1, label %bb.eq
  ], !prof !22

bb.ep:                                            ; preds = %bb.eo
  %i.vk = icmp ult ptr %i.va, inttoptr (i64 188978561024 to ptr)
  %i.vl = and i64 %i.vi, 1095216660480
  %i.vm = icmp ne i64 %i.vl, 1095216660480
  call void @llvm.assume(i1 %i.vk)
  call void @llvm.assume(i1 %i.vm)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i104.i

bb.eq:                                            ; preds = %bb.eo
  %i.vn = getelementptr i8, ptr %i.va, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.vn) ]
  %i.vo = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr %i.vn, ptr %i.vo, align 8, !alias.scope !11660, !noalias !11659
  store i8 3, ptr %i.af, align 8, !alias.scope !11660, !noalias !11659
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.vo) #45, !noalias !11661
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i104.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i104.i: ; preds = %bb.eq, %bb.ep, %bb.eo, %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !11659
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i101.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i101.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i104.i, %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i.thread.i100.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !11597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !11597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !11597
  store ptr %i.an, ptr %i.ai, align 8, !noalias !11597
  %.sroa.424.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @_RNvXs3_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.424.0..sroa_idx.i.i, align 8, !noalias !11597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !11662
  store ptr %i.am, ptr %i.ae, align 8, !noalias !11662
  %i.vp = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  store ptr null, ptr %i.vp, align 8, !noalias !11662
  %i.vq = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @324, ptr noundef nonnull @6, ptr noundef nonnull %i.ai) #45, !noalias !11654
  %i.vr = load ptr, ptr %i.vp, align 8, !noalias !11662, !noundef !12 ; 7 uses
  %.not.i5.i44.i.i = icmp eq ptr %i.vr, null      ; 2 uses
  br i1 %i.vq, label %bb.er, label %bb.es

bb.er:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i101.i
  br i1 %.not.i5.i44.i.i, label %bb.ew, label %bb.ex, !prof !18

bb.es:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i101.i
  br i1 %.not.i5.i44.i.i, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i46.thread.i.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !11663
  %i.vs = ptrtoint ptr %i.vr to i64               ; 2 uses
  %i.vt = and i64 %i.vs, 3
  switch i64 %i.vt, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i45.i.i
    i64 3, label %bb.eu
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i45.i.i
    i64 1, label %bb.ev
  ], !prof !22

bb.eu:                                            ; preds = %bb.et
  %i.vu = icmp ult ptr %i.vr, inttoptr (i64 188978561024 to ptr)
  %i.vv = and i64 %i.vs, 1095216660480
  %i.vw = icmp ne i64 %i.vv, 1095216660480
  call void @llvm.assume(i1 %i.vu)
  call void @llvm.assume(i1 %i.vw)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i45.i.i

bb.ev:                                            ; preds = %bb.et
  %i.vx = getelementptr i8, ptr %i.vr, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.vx) ]
  %i.vy = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  store ptr %i.vx, ptr %i.vy, align 8, !alias.scope !11664, !noalias !11663
  store i8 3, ptr %i.ad, align 8, !alias.scope !11664, !noalias !11663
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.vy) #45, !noalias !11665
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i45.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i45.i.i: ; preds = %bb.ev, %bb.eu, %bb.et, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !11663
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i46.thread.i.i

bb.ew:                                            ; preds = %bb.er
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @319, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #50, !noalias !11654
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i46.thread.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i45.i.i, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !11662
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit53.i.i

bb.ex:                                            ; preds = %bb.er
end_hunk_0
