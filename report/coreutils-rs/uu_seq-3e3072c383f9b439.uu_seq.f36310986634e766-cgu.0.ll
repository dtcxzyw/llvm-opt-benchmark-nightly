Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_seq-3e3072c383f9b439.uu_seq.f36310986634e766-cgu.0?download=true
inline.NumInlined: 363
inline.NumDeleted: 198
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskTxFPE6q5z6_6uu_seq:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.o, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE14write_all_coldCskTxFPE6q5z6_6uu_seq(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.d = icmp sgt i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = sub nsw i64 %i.a, %i.c
  %i.f = icmp ugt i64 %2, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE9flush_bufCskTxFPE6q5z6_6uu_seq(ptr noalias nofree noundef align 8 dereferenceable(40) %0) #19 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i64, ptr %0, align 8, !range !5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.h = phi i64 [ %.pre, %._crit_edge ], [ %i.a, %bb.a ]
  %.not4 = icmp samesign ult i64 %2, %i.h
  br i1 %.not4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  %i.i = load i64, ptr %i.b, align 8, !alias.scope !523, !noundef !4 ; 3 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !523, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !523
  %i.n = add nuw i64 %i.i, %2
  store i64 %i.n, ptr %i.b, align 8, !alias.scope !523
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = tail call noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #19
  store i8 0, ptr %i.o, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.sroa.0.0 = phi ptr [ null, %bb.d ], [ %i.q, %bb.e ], [ %i.g, %bb.b ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE9flush_bufCskTxFPE6q5z6_6uu_seq(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
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
  %i.j = call { ptr, i64 } @_RNvMNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB7_9BufWriterpE9flush_bufNtB2_8BufGuard9remaining(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b) #19 ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0
  %i.l = extractvalue { ptr, i64 } %i.j, 1
  %i.m = call { i64, ptr } @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.l) #19 ; 2 uses
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
  ], !prof !7

default.unreachable:                              ; preds = %bb.c
  unreachable

.split:                                           ; preds = %bb.c
  %i.s = lshr i64 %i.p, 32
  %i.t = trunc nuw i64 %i.s to i32
  %i.u = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #19
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4
  %i.x = call noundef zeroext i1 %i.w(i32 noundef %i.t) #19, !inline_history !524
  br i1 %i.x, label %.thread, label %._crit_edge

.split4:                                          ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.z = load i8, ptr %i.y, align 8, !range !527, !noundef !4
  %i.aa = icmp eq i8 %i.z, 35
  br i1 %i.aa, label %.thread, label %._crit_edge

.split3:                                          ; preds = %bb.c
  %i.ab = getelementptr i8, ptr %i.o, i64 31
  %i.ac = load i8, ptr %i.ab, align 8, !range !527, !noundef !4
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
  %i.aj = load i64, ptr %i.c, align 8, !noundef !4
  %i.ak = add i64 %i.aj, %i.p                     ; 2 uses
  store i64 %i.ak, ptr %i.c, align 8
  br label %bb.h

._crit_edge:                                      ; preds = %bb.d, %.split4, %.split3, %.split, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.h, %bb.a
  %.sroa.0.1 = phi ptr [ null, %bb.a ], [ null, %bb.h ], [ @37, %bb.d ], [ %i.o, %.split4 ], [ %i.o, %.split3 ], [ %i.o, %.split ], [ %i.o, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @_RNvXs_NvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB9_9BufWriterpE9flush_bufNtB4_8BufGuardNtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.1

.thread:                                          ; preds = %.split4, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskTxFPE6q5z6_6uu_seq.exit

bb.f:                                             ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.al = icmp ult ptr %i.o, inttoptr (i64 188978561024 to ptr)
  %i.am = and i64 %i.p, 1095216660480
  %i.an = icmp ne i64 %i.am, 1095216660480
  call void @llvm.assume(i1 %i.al)
  call void @llvm.assume(i1 %i.an)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskTxFPE6q5z6_6uu_seq.exit

bb.g:                                             ; preds = %.split3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ao = getelementptr i8, ptr %i.o, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  store ptr %i.ao, ptr %i.i, align 8, !alias.scope !528
  store i8 3, ptr %i.a, align 8, !alias.scope !528
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #19
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskTxFPE6q5z6_6uu_seq.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskTxFPE6q5z6_6uu_seq.exit: ; preds = %.thread, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre = load i64, ptr %i.c, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskTxFPE6q5z6_6uu_seq.exit
  %i.ap = phi i64 [ %i.ak, %bb.e ], [ %.pre, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskTxFPE6q5z6_6uu_seq.exit ]
  %i.aq = load ptr, ptr %i.b, align 8, !nonnull !4, !align !8, !noundef !4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !noundef !4 ; 2 uses
  %i.at = icmp sgt i64 %i.as, -1
  call void @llvm.assume(i1 %i.at)
  %.not = icmp ult i64 %i.ap, %i.as
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXNtCskTxFPE6q5z6_6uu_seq11numberparseNtNtB4_6number13PreciseNumberNtNtNtCs6JMX4GRUq9U_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.11 = alloca [24 x i8], align 8           ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 3 uses
  %i.c = alloca [64 x i8], align 8                ; 9 uses
  call void @_RNvXs3_NtNtNtCsh036I4OHgIr_6uucore8features6parser10num_parserNtNtB9_18extendedbigdecimal18ExtendedBigDecimalNtB5_14ExtendedParser14extended_parse(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #19
  %i.d = load i64, ptr %i.c, align 8, !range !598, !noundef !4 ; 3 uses
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.b, label %3

3:                                                ; preds = %bb.a
  %4 = icmp ne i64 %i.d, -9223372036854775807
  call void @llvm.assume(i1 %4)
  %5 = icmp eq i64 %i.d, -9223372036854775805
  br i1 %5, label %bb.g, label %bb.bh

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.e, align 8 ; 7 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8 ; 5 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.f = icmp slt i64 %.sroa.0.0.copyload, -9223372036854775803
  %i.g = add i64 %.sroa.0.0.copyload, -9223372036854775807
  %i.h = select i1 %i.f, i64 %i.g, i64 0
  switch i64 %i.h, label %bb.c [
    i64 0, label %.thread
    i64 1, label %bb.d
    i64 2, label %bb.d
    i64 3, label %.thread
    i64 4, label %bb.e
    i64 5, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.b
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.8.0.copyload, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  br label %.thread39

bb.e:                                             ; preds = %bb.b, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.i, align 8
  store i64 2, ptr %0, align 8
  switch i64 %.sroa.0.0.copyload, label %bb.f [
    i64 -1, label %.thread39
    i64 -9223372036854775804, label %.thread39
    i64 -9223372036854775805, label %.thread39
    i64 -9223372036854775806, label %.thread39
    i64 -9223372036854775807, label %.thread39
    i64 -9223372036854775808, label %.thread39
    i64 0, label %.thread39
  ]

bb.f:                                             ; preds = %bb.e
  %i.j = shl nuw i64 %.sroa.0.0.copyload, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #19
  br label %.thread39

bb.g:                                             ; preds = %3
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.014.0.copyload = load i64, ptr %i.k, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.417.0.copyload = load ptr, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.b, %bb.g
  %.sroa.5.0..sroa_idx22.sink = phi ptr [ %.sroa.5.0..sroa_idx22, %bb.g ], [ %.sroa.9.0..sroa_idx, %bb.b ], [ %.sroa.9.0..sroa_idx, %bb.b ]
  %.sroa.014.038 = phi i64 [ %.sroa.014.0.copyload, %bb.g ], [ %.sroa.0.0.copyload, %bb.b ], [ %.sroa.0.0.copyload, %bb.b ]
  %.sroa.417.037 = phi ptr [ %.sroa.417.0.copyload, %bb.g ], [ %.sroa.8.0.copyload, %bb.b ], [ %.sroa.8.0.copyload, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx22.sink, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.experimental.noalias.scope.decl(metadata !599)
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !601
  call void @_RNvMs3_NtCs7tKScEop1B6_5alloc3stre12to_lowercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #19, !noalias !602
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !noalias !601, !nonnull !4, !noundef !4 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !601, !noundef !4 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !603)
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o ; 6 uses
  %i.q = icmp samesign eq i64 %i.o, 0
  br i1 %i.q, label %.lr.ph.split.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.thread, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskTxFPE6q5z6_6uu_seq.exit.i.i.i.i
  %i.r = phi i64 [ %i.bg, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskTxFPE6q5z6_6uu_seq.exit.i.i.i.i ], [ 0, %.thread ] ; 4 uses
  %i.s = phi ptr [ %i.bc, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskTxFPE6q5z6_6uu_seq.exit.i.i.i.i ], [ %i.m, %.thread ] ; 6 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 3 uses
  %i.v = load i8, ptr %i.s, align 1, !alias.scope !603, !noalias !604, !noundef !4 ; 5 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %bb.h, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskTxFPE6q5z6_6uu_seq.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskTxFPE6q5z6_6uu_seq.exit12.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.x = and i8 %i.v, 31
  %i.y = zext nneg i8 %i.x to i32                 ; 3 uses
  %i.z = icmp ne ptr %i.u, %i.p
  call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 2 ; 3 uses
  %i.ab = load i8, ptr %i.u, align 1, !alias.scope !603, !noalias !604, !noundef !4
  %i.ac = shl nuw nsw i32 %i.y, 6
  %i.ad = and i8 %i.ab, 63
  %i.ae = zext nneg i8 %i.ad to i32               ; 2 uses
  %i.af = or disjoint i32 %i.ac, %i.ae
  %i.ag = icmp samesign ugt i8 %i.v, -33
  br i1 %i.ag, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskTxFPE6q5z6_6uu_seq.exit14.i.i.i.i.i.i.i, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ah = zext nneg i8 %i.v to i32
  br label %bb.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskTxFPE6q5z6_6uu_seq.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskTxFPE6q5z6_6uu_seq.exit12.i.i.i.i.i.i.i
  %i.ai = icmp ne ptr %i.aa, %i.p
  call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 3 ; 3 uses
  %i.ak = load i8, ptr %i.aa, align 1, !alias.scope !603, !noalias !604, !noundef !4
  %i.al = shl nuw nsw i32 %i.ae, 6
  %i.am = and i8 %i.ak, 63
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = or disjoint i32 %i.al, %i.an            ; 2 uses
  %i.ap = shl nuw nsw i32 %i.y, 12
  %i.aq = or disjoint i32 %i.ao, %i.ap
  %i.ar = icmp samesign ugt i8 %i.v, -17
  br i1 %i.ar, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskTxFPE6q5z6_6uu_seq.exit16.i.i.i.i.i.i.i, label %bb.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskTxFPE6q5z6_6uu_seq.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskTxFPE6q5z6_6uu_seq.exit14.i.i.i.i.i.i.i
  %i.as = icmp ne ptr %i.aj, %i.p
  call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.au = load i8, ptr %i.aj, align 1, !alias.scope !603, !noalias !604, !noundef !4
  %i.av = shl nuw nsw i32 %i.y, 18
  %i.aw = and i32 %i.av, 1835008
  %i.ax = shl nuw nsw i32 %i.ao, 6
  %i.ay = and i8 %i.au, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.aw
  br label %bb.i

bb.i:                                             ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskTxFPE6q5z6_6uu_seq.exit16.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskTxFPE6q5z6_6uu_seq.exit14.i.i.i.i.i.i.i, %bb.h, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskTxFPE6q5z6_6uu_seq.exit12.i.i.i.i.i.i.i
  %i.bc = phi ptr [ %i.aj, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskTxFPE6q5z6_6uu_seq.exit14.i.i.i.i.i.i.i ], [ %i.at, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskTxFPE6q5z6_6uu_seq.exit16.i.i.i.i.i.i.i ], [ %i.aa, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskTxFPE6q5z6_6uu_seq.exit12.i.i.i.i.i.i.i ], [ %i.u, %bb.h ] ; 3 uses
  %.sroa.4.0.i.ph.i.i.i.i.i.i = phi i32 [ %i.aq, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskTxFPE6q5z6_6uu_seq.exit14.i.i.i.i.i.i.i ], [ %i.bb, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskTxFPE6q5z6_6uu_seq.exit16.i.i.i.i.i.i.i ], [ %i.af, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskTxFPE6q5z6_6uu_seq.exit12.i.i.i.i.i.i.i ], [ %i.ah, %bb.h ] ; 8 uses
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.bd)
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.r, %i.t
  %i.bg = add i64 %i.bf, %i.be
  switch i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, label %bb.j [
    i32 32, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskTxFPE6q5z6_6uu_seq.exit.i.i.i.i
    i32 13, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskTxFPE6q5z6_6uu_seq.exit.i.i.i.i
    i32 12, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskTxFPE6q5z6_6uu_seq.exit.i.i.i.i
    i32 11, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskTxFPE6q5z6_6uu_seq.exit.i.i.i.i
    i32 10, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskTxFPE6q5z6_6uu_seq.exit.i.i.i.i
    i32 9, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskTxFPE6q5z6_6uu_seq.exit.i.i.i.i
  ]

bb.j:                                             ; preds = %bb.i
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 133
  br i1 %i.bh, label %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECskTxFPE6q5z6_6uu_seq.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = lshr i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 8
  switch i32 %i.bi, label %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECskTxFPE6q5z6_6uu_seq.exit.i [
    i32 0, label %bb.n
    i32 22, label %bb.l
    i32 32, label %bb.o
    i32 48, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.bj = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 5760
  %i.bk = zext i1 %i.bj to i8
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskTxFPE6q5z6_6uu_seq.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bl = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 12288
  %i.bm = zext i1 %i.bl to i8
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskTxFPE6q5z6_6uu_seq.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.k
  %i.bn = and i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 255
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !noalias !605, !noundef !4
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskTxFPE6q5z6_6uu_seq.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.k
  %i.br = and i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 255
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !605, !noundef !4
  %i.bv = lshr i8 %i.bu, 1
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskTxFPE6q5z6_6uu_seq.exit.i.i.i.i.i

_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskTxFPE6q5z6_6uu_seq.exit.i.i.i.i.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i8 [ %i.bm, %bb.m ], [ %i.bq, %bb.n ], [ %i.bk, %bb.l ], [ %i.bv, %bb.o ]
  %i.bw = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.bw, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskTxFPE6q5z6_6uu_seq.exit.i.i.i.i, label %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECskTxFPE6q5z6_6uu_seq.exit.i

_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskTxFPE6q5z6_6uu_seq.exit.i.i.i.i: ; preds = %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskTxFPE6q5z6_6uu_seq.exit.i.i.i.i.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  %i.bx = icmp eq ptr %i.bc, %i.p
  br i1 %i.bx, label %.lr.ph.split.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i

_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECskTxFPE6q5z6_6uu_seq.exit.i: ; preds = %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskTxFPE6q5z6_6uu_seq.exit.i.i.i.i.i, %bb.k, %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.r ; 3 uses
  %.not.i.i = icmp eq i64 %i.o, %i.r
  br i1 %.not.i.i, label %.lr.ph.split.preheader.i.i.i.i.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCskTxFPE6q5z6_6uu_seq.exit.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCskTxFPE6q5z6_6uu_seq.exit.i: ; preds = %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECskTxFPE6q5z6_6uu_seq.exit.i
  %i.bz = sub nuw i64 %i.o, %i.r
  %rhsc.i = load i8, ptr %i.by, align 1, !noalias !602
  %i.ca = icmp eq i8 %rhsc.i, 43                  ; 2 uses
  %i.cb = sext i1 %i.ca to i64
  %.sroa.11.0.i = add i64 %i.bz, %i.cb            ; 9 uses
  %.sroa.0.0.idx.i = zext i1 %i.ca to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.by, i64 %.sroa.0.0.idx.i ; 10 uses
  %.not.i50.i = icmp samesign ult i64 %.sroa.11.0.i, 2
  br i1 %.not.i50.i, label %.lr.ph.split.preheader.i.i.i.i.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCskTxFPE6q5z6_6uu_seq.exit53.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCskTxFPE6q5z6_6uu_seq.exit53.i: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCskTxFPE6q5z6_6uu_seq.exit.i
  %i.cc = load i16, ptr %.sroa.0.0.i, align 1
  %i.cd = icmp ne i16 30768, %i.cc
  %i.ce = zext i1 %i.cd to i32
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.bd, label %bb.p

bb.p:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCskTxFPE6q5z6_6uu_seq.exit53.i
  %.not.i54.i = icmp eq i64 %.sroa.11.0.i, 2
  br i1 %.not.i54.i, label %.lr.ph.split.preheader.i.i.i.i.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCskTxFPE6q5z6_6uu_seq.exit57.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCskTxFPE6q5z6_6uu_seq.exit57.i: ; preds = %bb.p
  %i.cg = load i16, ptr %.sroa.0.0.i, align 1
  %i.ch = xor i16 12333, %i.cg
  %i.ci = getelementptr i8, ptr %.sroa.0.0.i, i64 2
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = zext i8 %i.cj to i16
  %i.cl = xor i16 120, %i.ck
  %i.cm = or i16 %i.ch, %i.cl
  %i.cn = icmp ne i16 %i.cm, 0
  %i.co = zext i1 %i.cn to i32
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.bd, label %.lr.ph.split.preheader.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i:                 ; preds = %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskTxFPE6q5z6_6uu_seq.exit.i.i.i.i, %.thread, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCskTxFPE6q5z6_6uu_seq.exit57.i, %bb.p, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCskTxFPE6q5z6_6uu_seq.exit.i, %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECskTxFPE6q5z6_6uu_seq.exit.i
  %.sroa.0.0197.i = phi ptr [ %.sroa.0.0.i, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCskTxFPE6q5z6_6uu_seq.exit57.i ], [ %.sroa.0.0.i, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCskTxFPE6q5z6_6uu_seq.exit.i ], [ %.sroa.0.0.i, %bb.p ], [ %i.by, %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECskTxFPE6q5z6_6uu_seq.exit.i ], [ %i.p, %.thread ], [ %i.p, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskTxFPE6q5z6_6uu_seq.exit.i.i.i.i ] ; 7 uses
  %.sroa.11.0196.i = phi i64 [ %.sroa.11.0.i, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCskTxFPE6q5z6_6uu_seq.exit57.i ], [ %.sroa.11.0.i, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCskTxFPE6q5z6_6uu_seq.exit.i ], [ 2, %bb.p ], [ 0, %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECskTxFPE6q5z6_6uu_seq.exit.i ], [ 0, %.thread ], [ 0, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskTxFPE6q5z6_6uu_seq.exit.i.i.i.i ] ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !606
  br label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.i.i.i.i.i:                           ; preds = %bb.t, %.lr.ph.split.preheader.i.i.i.i.i
  %i.cq = phi i64 [ %i.df, %bb.t ], [ 0, %.lr.ph.split.preheader.i.i.i.i.i ] ; 4 uses
  %i.cr = sub nuw i64 %.sroa.11.0196.i, %i.cq     ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.0197.i, i64 %i.cq ; 2 uses
  %i.ct = icmp samesign ult i64 %i.cr, 16
  br i1 %i.ct, label %.preheader.i.i.i.i.i.i, label %bb.q

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cr, 0
end_hunk_0
begin_hunk_1_@_RNvXNtCskTxFPE6q5z6_6uu_seq11numberparseNtNtB4_6number13PreciseNumberNtNtNtCs6JMX4GRUq9U_4core3str6traits7FromStr8from_str:bb.a
  br i1 %i.gt, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %bb.as, !prof !9

bb.as:                                            ; preds = %bb.ar
  %i.gu = extractvalue { i64, i1 } %i.gs, 0       ; 2 uses
  %.not102.i.i = icmp eq i64 %i.gj, 0
  br i1 %.not102.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph.i.i

.lr.ph141.i.i:                                    ; preds = %.preheader114.i.i, %bb.at
  %.sroa.0.2140.i.i = phi ptr [ %i.hb, %bb.at ], [ %i.gf, %.preheader114.i.i ] ; 2 uses
  %.sroa.26.2139.i.i = phi i64 [ %i.ha, %bb.at ], [ %i.gg, %.preheader114.i.i ]
  %.sroa.084.2138.i.i = phi i64 [ %i.hd, %bb.at ], [ 0, %.preheader114.i.i ]
  %i.gv = load i8, ptr %.sroa.0.2140.i.i, align 1, !alias.scope !622, !noalias !602, !noundef !4
  %i.gw = zext i8 %i.gv to i32
  %i.gx = add nsw i32 %i.gw, -48                  ; 2 uses
  %i.gy = icmp ult i32 %i.gx, 10
  br i1 %i.gy, label %bb.at, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i

bb.at:                                            ; preds = %.lr.ph141.i.i
  %i.gz = mul i64 %.sroa.084.2138.i.i, 10
  %i.ha = add nsw i64 %.sroa.26.2139.i.i, -1      ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i.i, i64 1
  %i.hc = zext nneg i32 %i.gx to i64
  %i.hd = sub i64 %i.gz, %i.hc                    ; 2 uses
  %.not103.i.i = icmp eq i64 %i.ha, 0
  br i1 %.not103.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph141.i.i

bb.au:                                            ; preds = %bb.ao, %bb.an
  %.sroa.26.0.i.i = phi i64 [ %i.ge, %bb.ao ], [ %i.ga, %bb.an ] ; 4 uses
  %.sroa.0.0.i65.i = phi ptr [ %i.gd, %bb.ao ], [ %i.fy, %bb.an ] ; 2 uses
  %i.he = icmp samesign ult i64 %.sroa.26.0.i.i, 16
  br i1 %i.he, label %.preheader.i.i, label %.preheader111.i.i

.preheader.i.i:                                   ; preds = %bb.au
  %.not105146.i.i = icmp eq i64 %.sroa.26.0.i.i, 0
  br i1 %.not105146.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph150.i.i

.preheader111.i.i:                                ; preds = %bb.au, %bb.ax
  %.sroa.0.3145.i.i = phi ptr [ %i.hf, %bb.ax ], [ %.sroa.0.0.i65.i, %bb.au ] ; 2 uses
  %.sroa.26.3144.i.i = phi i64 [ %i.hg, %bb.ax ], [ %.sroa.26.0.i.i, %bb.au ]
  %.sroa.084.3143.i.i = phi i64 [ %i.hr, %bb.ax ], [ 0, %bb.au ]
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i.i, i64 1
  %i.hg = add nsw i64 %.sroa.26.3144.i.i, -1      ; 2 uses
  %i.hh = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i.i, i64 10) ; 2 uses
  %i.hi = extractvalue { i64, i1 } %i.hh, 0
  %i.hj = extractvalue { i64, i1 } %i.hh, 1
  br i1 %i.hj, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %bb.av, !prof !9

bb.av:                                            ; preds = %.preheader111.i.i
  %i.hk = load i8, ptr %.sroa.0.3145.i.i, align 1, !alias.scope !622, !noalias !602, !noundef !4
  %i.hl = zext i8 %i.hk to i32
  %i.hm = add nsw i32 %i.hl, -48                  ; 2 uses
  %i.hn = icmp ult i32 %i.hm, 10
  br i1 %i.hn, label %bb.aw, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i

bb.aw:                                            ; preds = %bb.av
  %i.ho = zext nneg i32 %i.hm to i64
  %i.hp = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.hi, i64 %i.ho) ; 2 uses
  %i.hq = extractvalue { i64, i1 } %i.hp, 1
  br i1 %i.hq, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %bb.ax, !prof !9

bb.ax:                                            ; preds = %bb.aw
  %i.hr = extractvalue { i64, i1 } %i.hp, 0       ; 2 uses
  %.not104.i.i = icmp eq i64 %i.hg, 0
  br i1 %.not104.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.preheader111.i.i

.lr.ph150.i.i:                                    ; preds = %.preheader.i.i, %bb.ay
  %.sroa.0.4149.i.i = phi ptr [ %i.hy, %bb.ay ], [ %.sroa.0.0.i65.i, %.preheader.i.i ] ; 2 uses
  %.sroa.26.4148.i.i = phi i64 [ %i.hx, %bb.ay ], [ %.sroa.26.0.i.i, %.preheader.i.i ]
  %.sroa.084.4147.i.i = phi i64 [ %i.ia, %bb.ay ], [ 0, %.preheader.i.i ]
  %i.hs = load i8, ptr %.sroa.0.4149.i.i, align 1, !alias.scope !622, !noalias !602, !noundef !4
  %i.ht = zext i8 %i.hs to i32
  %i.hu = add nsw i32 %i.ht, -48                  ; 2 uses
  %i.hv = icmp ult i32 %i.hu, 10
  br i1 %i.hv, label %bb.ay, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i

bb.ay:                                            ; preds = %.lr.ph150.i.i
  %i.hw = mul i64 %.sroa.084.4147.i.i, 10
  %i.hx = add nsw i64 %.sroa.26.4148.i.i, -1      ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i.i, i64 1
  %i.hz = zext nneg i32 %i.hu to i64
  %i.ia = add i64 %i.hw, %i.hz                    ; 2 uses
  %.not105.i.i = icmp eq i64 %i.hx, 0
  br i1 %.not105.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph150.i.i

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i: ; preds = %bb.as, %bb.ar, %bb.aq, %.lr.ph.i.i, %bb.at, %.lr.ph141.i.i, %bb.ax, %bb.aw, %bb.av, %.preheader111.i.i, %bb.ay, %.lr.ph150.i.i, %.preheader.i.i, %.preheader114.i.i, %bb.am, %bb.am, %bb.al
  %.sink.i.i = phi i64 [ 0, %bb.am ], [ %i.hd, %bb.at ], [ 0, %.lr.ph150.i.i ], [ 0, %.preheader.i.i ], [ 0, %bb.aw ], [ 0, %.preheader114.i.i ], [ %i.ga, %bb.al ], [ 0, %bb.am ], [ %i.ia, %bb.ay ], [ 0, %bb.av ], [ 0, %.preheader111.i.i ], [ %i.hr, %bb.ax ], [ 0, %.lr.ph141.i.i ], [ %i.gu, %bb.as ], [ 0, %bb.aq ], [ 0, %.lr.ph.i.i ], [ 0, %bb.ar ] ; 3 uses
  %i.ib = call i64 @llvm.smax.i64(i64 %.sink.i.i, i64 0)
  %.sroa.022.2.i = add i64 %i.ib, %.sroa.022.0.i  ; 2 uses
  %i.ic = icmp slt i64 %.sink.i.i, %.sroa.024.0.i
  br i1 %i.ic, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i
  %i.id = zext i64 %.sroa.024.0.i to i128
  %i.ie = sext i64 %.sink.i.i to i128
  %i.if = sub nsw i128 %i.id, %i.ie               ; 2 uses
  %or.cond.i = icmp ugt i128 %i.if, 18446744073709551615
  %i.ig = trunc nuw i128 %i.if to i64
  %.sroa.024.1.i = select i1 %or.cond.i, i64 0, i64 %i.ig
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, %bb.ai
  %.sroa.024.2.i = phi i64 [ %.sroa.024.1.i, %bb.az ], [ %.sroa.024.0.i, %bb.ai ], [ 0, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i ] ; 2 uses
  %.sroa.022.3.i = phi i64 [ %.sroa.022.2.i, %bb.az ], [ %.sroa.022.0.i, %bb.ai ], [ %.sroa.022.2.i, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !alias.scope !602
  %i.ih = icmp eq i64 %.sroa.0.0.copyload100.i, 0
  br i1 %i.ih, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECskTxFPE6q5z6_6uu_seq.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ii = shl nuw i64 %.sroa.0.0.copyload100.i, 4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload101.i, i64 noundef %i.ii, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !602
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECskTxFPE6q5z6_6uu_seq.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECskTxFPE6q5z6_6uu_seq.exit.i: ; preds = %bb.bb, %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !623)
  %.val.i.i = load i64, ptr %i.b, align 8, !range !5, !alias.scope !623, !noalias !601, !noundef !4 ; 2 uses
  %i.ij = icmp eq i64 %.val.i.i, 0
  br i1 %i.ij, label %_RNvNtCskTxFPE6q5z6_6uu_seq11numberparse18compute_num_digits.exit, label %bb.bc

bb.bc:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECskTxFPE6q5z6_6uu_seq.exit.i
  %.val1.i.i = load ptr, ptr %i.l, align 8, !alias.scope !623, !noalias !601, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !624
  br label %_RNvNtCskTxFPE6q5z6_6uu_seq11numberparse18compute_num_digits.exit

bb.bd:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCskTxFPE6q5z6_6uu_seq.exit57.i, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCskTxFPE6q5z6_6uu_seq.exit53.i
  %i.ik = icmp samesign ult i64 %.sroa.11.0.i, 16
  br i1 %i.ik, label %.lr.ph.i.i.i, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.bd, %bb.be
  %.sroa.01.05.i.i.i = phi i64 [ %i.io, %bb.be ], [ 0, %bb.bd ] ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.01.05.i.i.i
  %i.im = load i8, ptr %i.il, align 1, !alias.scope !625, !noalias !602, !noundef !4
  %i.in = icmp eq i8 %i.im, 46
  br i1 %i.in, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i.i.i
  %i.io = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.io, %.sroa.11.0.i
  br i1 %exitcond.not.i.i.i, label %.lr.ph.i.i69.i, label %.lr.ph.i.i.i

_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i: ; preds = %bb.bd
  %i.ip = call { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef 46, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.11.0.i) #19, !noalias !602
  %i.iq = extractvalue { i64, i64 } %i.ip, 0
  %i.ir = icmp eq i64 %i.iq, 1
  br i1 %i.ir, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit72.i

.lr.ph.i.i69.i:                                   ; preds = %bb.be, %bb.bf
  %.sroa.01.05.i.i70.i = phi i64 [ %i.iv, %bb.bf ], [ 0, %bb.be ] ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.01.05.i.i70.i
  %i.it = load i8, ptr %i.is, align 1, !alias.scope !626, !noalias !602, !noundef !4
  %i.iu = icmp eq i8 %i.it, 112
  br i1 %i.iu, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i.i69.i
  %i.iv = add nuw nsw i64 %.sroa.01.05.i.i70.i, 1 ; 2 uses
  %exitcond.not.i.i71.i = icmp eq i64 %i.iv, %.sroa.11.0.i
  br i1 %exitcond.not.i.i71.i, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit72.thread114.i, label %.lr.ph.i.i69.i

_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit72.i: ; preds = %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i
  %i.iw = call { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef 112, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.11.0.i) #19, !noalias !602
  %i.ix = extractvalue { i64, i64 } %i.iw, 0
  %i.iy = icmp eq i64 %i.ix, 1
  br i1 %i.iy, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit72.thread114.i

_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit72.thread114.i: ; preds = %bb.bf, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit72.i
  %.sroa.018.0.i = phi i64 [ 0, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i ], [ 1, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit72.i ], [ 1, %bb.bf ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !alias.scope !602
  call void @llvm.experimental.noalias.scope.decl(metadata !627)
  %.val.i73.i = load i64, ptr %i.b, align 8, !range !5, !alias.scope !627, !noalias !601, !noundef !4 ; 2 uses
  %i.iz = icmp eq i64 %.val.i73.i, 0
  br i1 %i.iz, label %_RNvNtCskTxFPE6q5z6_6uu_seq11numberparse18compute_num_digits.exit, label %bb.bg

bb.bg:                                            ; preds = %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit72.thread114.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %.val.i73.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !628
  br label %_RNvNtCskTxFPE6q5z6_6uu_seq11numberparse18compute_num_digits.exit

_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i69.i, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit72.i, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i
  br label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit72.thread114.i

_RNvNtCskTxFPE6q5z6_6uu_seq11numberparse18compute_num_digits.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECskTxFPE6q5z6_6uu_seq.exit.i, %bb.bc, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit72.thread114.i, %bb.bg
  %.sroa.13.0 = phi i64 [ %.sroa.022.3.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECskTxFPE6q5z6_6uu_seq.exit.i ], [ %.sroa.022.3.i, %bb.bc ], [ 0, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit72.thread114.i ], [ 0, %bb.bg ]
  %.sroa.526.0 = phi i64 [ %.sroa.024.2.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECskTxFPE6q5z6_6uu_seq.exit.i ], [ %.sroa.024.2.i, %bb.bc ], [ 0, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit72.thread114.i ], [ 0, %bb.bg ]
  %.sroa.025.0 = phi i64 [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECskTxFPE6q5z6_6uu_seq.exit.i ], [ 1, %bb.bc ], [ %.sroa.018.0.i, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit72.thread114.i ], [ %.sroa.018.0.i, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !601
  store i64 %.sroa.025.0, ptr %0, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.526.0, ptr %.sroa.526.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.014.038, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.927.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.417.037, ptr %.sroa.927.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11, i64 24, i1 false)
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  br label %.thread39

.thread39:                                        ; preds = %bb.bh, %bb.d, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.f, %_RNvNtCskTxFPE6q5z6_6uu_seq11numberparse18compute_num_digits.exit
  ret void

bb.bh:                                            ; preds = %3
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ja, align 8
  store i64 2, ptr %0, align 8
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCsh036I4OHgIr_6uucore8features6parser10num_parser19ExtendedParserErrorNtNtBI_18extendedbigdecimal18ExtendedBigDecimalEECskTxFPE6q5z6_6uu_seq(ptr noalias nofree noundef align 8 dereferenceable(64) %i.c) #19
  br label %.thread39
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtB2_7AdapterINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEENtNtB8_3fmt5Write9write_strCskTxFPE6q5z6_6uu_seq(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !8, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !635)
  %i.c = load i64, ptr %i.b, align 8, !range !5, !alias.scope !635, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !635, !noundef !4 ; 4 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = sub nsw i64 %i.c, %i.e
  %i.h = icmp ult i64 %2, %i.g
  br i1 %i.h, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.thread, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit, !prof !12

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.thread: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !637, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !637
  %i.l = add nuw i64 %i.e, %2
  store i64 %i.l, ptr %i.d, align 8, !alias.scope !637
  br label %bb.f

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit: ; preds = %bb.a
  %i.m = tail call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE14write_all_coldCskTxFPE6q5z6_6uu_seq(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) #18 ; 2 uses
  %.not.not = icmp eq ptr %i.m, null
  br i1 %.not.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.n, align 8, !noundef !4 ; 4 uses
  %i.o = icmp eq ptr %.val, null
  br i1 %i.o, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskTxFPE6q5z6_6uu_seq.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = ptrtoint ptr %.val to i64                ; 2 uses
  %i.q = and i64 %i.p, 3
  switch i64 %i.q, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskTxFPE6q5z6_6uu_seq.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskTxFPE6q5z6_6uu_seq.exit.i
    i64 1, label %bb.e
  ], !prof !7

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.s = and i64 %i.p, 1095216660480
  %i.t = icmp ne i64 %i.s, 1095216660480
  tail call void @llvm.assume(i1 %i.r)
  tail call void @llvm.assume(i1 %i.t)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskTxFPE6q5z6_6uu_seq.exit.i

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !alias.scope !638
  store i8 3, ptr %i.a, align 8, !alias.scope !638
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v) #19
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskTxFPE6q5z6_6uu_seq.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskTxFPE6q5z6_6uu_seq.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskTxFPE6q5z6_6uu_seq.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskTxFPE6q5z6_6uu_seq.exit: ; preds = %bb.b, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskTxFPE6q5z6_6uu_seq.exit.i
  store ptr %i.m, ptr %i.n, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.thread, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskTxFPE6q5z6_6uu_seq.exit
  %.not6 = phi i1 [ false, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.thread ], [ false, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit ], [ true, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskTxFPE6q5z6_6uu_seq.exit ]
  ret i1 %.not6
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtCskTxFPE6q5z6_6uu_seq5errorNtB5_8SeqErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 10 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [16 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 13 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = load i64, ptr %0, align 8, !range !669, !noundef !4 ; 2 uses
  %i.ab = icmp slt i64 %i.aa, 0
  %i.ac = add i64 %i.aa, -9223372036854775807
  %i.ad = select i1 %i.ab, i64 %i.ac, i64 0
  switch i64 %i.ad, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.g
    i64 2, label %bb.v
    i64 3, label %bb.x
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i64 0, ptr %i.y, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %.val = load i8, ptr %i.ae, align 8, !range !6, !noundef !4
  %i.af = trunc nuw i8 %.val to i1
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 24) #19
  br label %_RNvNtCskTxFPE6q5z6_6uu_seq5error16parse_error_type.exit

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 26) #19
  br label %_RNvNtCskTxFPE6q5z6_6uu_seq5error16parse_error_type.exit

_RNvNtCskTxFPE6q5z6_6uu_seq5error16parse_error_type.exit: ; preds = %bb.d, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !4 ; 14 uses
  %.not.i = icmp slt i64 %i.aj, 0
  br i1 %.not.i, label %bb.z, label %bb.f, !prof !15

bb.f:                                             ; preds = %_RNvNtCskTxFPE6q5z6_6uu_seq5error16parse_error_type.exit
  %i.ak = icmp eq i64 %i.aj, 0                    ; 3 uses
  br i1 %i.ak, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskTxFPE6q5z6_6uu_seq.exit.thread212, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.f
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !670
  %i.al = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aj, i64 noundef range(i64 1, 9) 1) #19, !noalias !670 ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.z, label %bb.ao

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 0, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !4, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !4
  store i64 0, ptr %i.n, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.ao, ptr %.sroa.427.0..sroa_idx, align 8
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.aq, ptr %.sroa.528.0..sroa_idx, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i8 1, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !671
  store i64 0, ptr %i.e, align 8, !noalias !671
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !671
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !671
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 1610612768, ptr %i.as, align 8, !noalias !671
  store ptr %i.e, ptr %i.d, align 8, !noalias !671
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @53, ptr %i.at, align 8, !noalias !671
  %i.au = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #19, !noalias !672
end_hunk_1
