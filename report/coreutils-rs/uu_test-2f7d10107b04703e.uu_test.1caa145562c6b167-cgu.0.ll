Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_test-2f7d10107b04703e.uu_test.1caa145562c6b167-cgu.0?download=true
inline.NumInlined: 491
inline.NumDeleted: 233
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvCs2szWGFz6wmN_7uu_test4eval:bb.a
  %i.ba = icmp samesign ult i64 %i.z, 3
  %or.cond = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %or.cond, label %bb.n, label %_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit337.thread

_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit337.thread: ; preds = %bb.e, %bb.m, %_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RNvCs2szWGFz6wmN_7uu_test4eval(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #21
  %i.bb = load i64, ptr %i.r, align 8, !range !12, !noundef !4 ; 2 uses
  %.not240 = icmp eq i64 %i.bb, -1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bd = load i8, ptr %i.bc, align 8             ; 4 uses
  br i1 %.not240, label %bb.q, label %bb.p

bb.m:                                             ; preds = %_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit
  %.old = icmp samesign ult i64 %i.z, 3
  br i1 %.old, label %bb.n, label %_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit337.thread

bb.n:                                             ; preds = %_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit337, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 1, ptr %i.s, align 8
  %.sroa.4179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.an, ptr %.sroa.4179.0..sroa_idx, align 8
  %.sroa.5180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.am, ptr %.sroa.5180.0..sroa_idx, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i8 1, ptr %i.be, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !228
  store i64 0, ptr %i.o, align 8, !noalias !228
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !228
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !228
  %i.bf = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 1610612768, ptr %i.bf, align 8, !noalias !228
  store ptr %i.o, ptr %i.n, align 8, !noalias !228
  %i.bg = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @47, ptr %i.bg, align 8, !noalias !228
  %i.bh = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #21, !noalias !229
  br i1 %i.bh, label %bb.o, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2szWGFz6wmN_7uu_test.exit, !prof !13

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #22, !noalias !229
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2szWGFz6wmN_7uu_test.exit: ; preds = %bb.n
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4106.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !228
  store i64 6, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.v

bb.p:                                             ; preds = %_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit337.thread
  %.sroa.5186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 9
  %.sroa.5189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5189.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5186.0..sroa_idx, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store i64 %i.bb, ptr %0, align 8
  %.sroa.4188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.bd, ptr %.sroa.4188.0..sroa_idx, align 8
  br label %bb.v

bb.q:                                             ; preds = %_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit337.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvCs2szWGFz6wmN_7uu_test4eval(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #21
  %i.bi = load i64, ptr %i.q, align 8, !range !12, !noundef !4 ; 2 uses
  %.not241 = icmp eq i64 %i.bi, -1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bk = load i8, ptr %i.bj, align 8             ; 4 uses
  br i1 %.not241, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.5195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 9
  %.sroa.5198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5198.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5195.0..sroa_idx, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 %i.bi, ptr %0, align 8
  %.sroa.4197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.bk, ptr %.sroa.4197.0..sroa_idx, align 8
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br i1 %i.ao, label %_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit340, label %_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit340.thread

_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit340.thread: ; preds = %bb.s
  %spec.select552 = or i8 %i.bk, %i.bd
  br label %bb.t

_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit340: ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  %bcmp.i339 = tail call i32 @bcmp(ptr nonnull readonly %i.an, ptr nonnull readonly @2, i64 %i.am)
  %bcmp.i339.fr = freeze i32 %bcmp.i339
  %i.bl = icmp eq i32 %bcmp.i339.fr, 0
  %spec.select = or i8 %i.bk, %i.bd
  %spec.select243 = and i8 %i.bk, %i.bd
  %spec.select596 = select i1 %i.bl, i8 %spec.select243, i8 %spec.select
  br label %bb.t

bb.t:                                             ; preds = %_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit340, %_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit340.thread
  %i.bm = phi i8 [ %spec.select552, %_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit340.thread ], [ %spec.select596, %_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit340 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.bm, ptr %i.bn, align 8
  store i64 -1, ptr %0, align 8
  %i.bo = icmp eq i64 %.sroa.4131.0.copyload, 0
  br i1 %i.bo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef %.sroa.4131.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit

bb.v:                                             ; preds = %bb.p, %bb.r, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2szWGFz6wmN_7uu_test.exit
  %i.bp = icmp eq i64 %.sroa.4131.0.copyload, 0
  br i1 %i.bp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef %.sroa.4131.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit

bb.x:                                             ; preds = %bb.h
  br i1 %i.av, label %.thread555, label %bb.aa

bb.y:                                             ; preds = %bb.h
  br i1 %i.av, label %.thread559, label %bb.ar

bb.z:                                             ; preds = %bb.h
  br i1 %i.av, label %.thread574, label %bb.bz

bb.aa:                                            ; preds = %bb.x
  %i.bq = add nsw i64 %i.z, -2                    ; 4 uses
  store i64 %i.bq, ptr %i.y, align 8
  %i.br = icmp samesign ult i64 %i.bq, %i.ac
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = getelementptr inbounds nuw [40 x i8], ptr %i.af, i64 %i.bq ; 4 uses
  %.sroa.0633.0.copyload = load i64, ptr %i.bs, align 8
  %.sroa.4634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.4634.0.copyload = load i64, ptr %.sroa.4634.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %.sroa.5635.0.copyload = load ptr, ptr %.sroa.5635.0..sroa_idx, align 8 ; 10 uses
  %.sroa.6636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %.sroa.6636.0.copyload = load i64, ptr %.sroa.6636.0..sroa_idx, align 8 ; 8 uses
  %i.bt = icmp eq i64 %.sroa.0633.0.copyload, 3
  br i1 %i.bt, label %bb.ab, label %.thread555, !prof !230

.thread555:                                       ; preds = %bb.x, %bb.aa
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.bu = icmp eq i64 %i.bq, 0
  br i1 %i.bu, label %.thread557, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bv = add nsw i64 %i.z, -3                    ; 3 uses
  store i64 %i.bv, ptr %i.y, align 8
  %i.bw = icmp samesign ult i64 %i.bv, %i.ac
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw [40 x i8], ptr %i.af, i64 %i.bv ; 4 uses
  %.sroa.0638.0.copyload = load i64, ptr %i.bx, align 8
  %.sroa.4639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.4639.0.copyload = load i64, ptr %.sroa.4639.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %.sroa.5640.0.copyload = load ptr, ptr %.sroa.5640.0..sroa_idx, align 8 ; 10 uses
  %.sroa.6641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %.sroa.6641.0.copyload = load i64, ptr %.sroa.6641.0..sroa_idx, align 8 ; 6 uses
  %i.by = icmp eq i64 %.sroa.0638.0.copyload, 3
  br i1 %i.by, label %bb.ad, label %.thread557, !prof !230

.thread557:                                       ; preds = %bb.ab, %bb.ac
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22
  unreachable

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5132.sroa.4.0.copyload) ]
  switch i64 %.sroa.5132.sroa.5.0.copyload, label %bb.ag [
    i64 2, label %bb.ae
    i64 1, label %bb.ao
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.bz = load i8, ptr %.sroa.5132.sroa.4.0.copyload, align 1, !noundef !4
  %i.ca = icmp eq i8 %i.bz, 33
  br i1 %i.ca, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.5132.sroa.4.0.copyload, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !noundef !4
  %i.cd = icmp eq i8 %i.cc, 61
  br i1 %i.cd, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.ad, %bb.ao, %bb.af, %bb.ae
  %i.ce = icmp eq i64 %.sroa.6641.0.copyload, %.sroa.6636.0.copyload
  br i1 %i.ce, label %bb.ah, label %_RNvXs8_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq.exit

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5635.0.copyload), "nonnull"(ptr %.sroa.5640.0.copyload) ]
  %bcmp.i344 = tail call i32 @bcmp(ptr nonnull readonly %.sroa.5640.0.copyload, ptr nonnull readonly %.sroa.5635.0.copyload, i64 %.sroa.6636.0.copyload)
  %i.cf = icmp eq i32 %bcmp.i344, 0
  %i.cg = zext i1 %i.cf to i8
  br label %_RNvXs8_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq.exit

_RNvXs8_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq.exit: ; preds = %bb.ag, %bb.ah
  %.sroa.0.0.i343 = phi i8 [ %i.cg, %bb.ah ], [ 0, %bb.ag ]
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0.0.i343, ptr %i.ch, align 8
  br label %bb.ak

bb.ai:                                            ; preds = %bb.af
  %i.ci = icmp eq i64 %.sroa.6641.0.copyload, %.sroa.6636.0.copyload
  br i1 %i.ci, label %bb.aj, label %_RNvXs8_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq.exit347

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5635.0.copyload), "nonnull"(ptr %.sroa.5640.0.copyload) ]
  %bcmp.i346 = tail call i32 @bcmp(ptr nonnull readonly %.sroa.5640.0.copyload, ptr nonnull readonly %.sroa.5635.0.copyload, i64 %.sroa.6636.0.copyload)
  %i.cj = icmp ne i32 %bcmp.i346, 0
  %i.ck = zext i1 %i.cj to i8
  br label %_RNvXs8_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq.exit347

_RNvXs8_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq.exit347: ; preds = %bb.ai, %bb.aj
  %.sroa.0.0.i345 = phi i8 [ %i.ck, %bb.aj ], [ 1, %bb.ai ]
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0.0.i345, ptr %i.cl, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aq, %bb.ap, %_RNvXs8_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq.exit347, %_RNvXs8_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq.exit
  store i64 -1, ptr %0, align 8
  %i.cm = icmp eq i64 %.sroa.4639.0.copyload, 0
  br i1 %i.cm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit348, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5640.0.copyload) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5640.0.copyload, i64 noundef %.sroa.4639.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit348

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit348: ; preds = %bb.ak, %bb.al
  %i.cn = icmp eq i64 %.sroa.4634.0.copyload, 0
  br i1 %i.cn, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit349, label %bb.am

bb.am:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit348
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5635.0.copyload) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5635.0.copyload, i64 noundef %.sroa.4634.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit349

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit349: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit348, %bb.am
  %i.co = icmp eq i64 %.sroa.5132.sroa.0.0.copyload, 0
  br i1 %i.co, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit, label %bb.an

bb.an:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit349
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5132.sroa.4.0.copyload, i64 noundef %.sroa.5132.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit

bb.ao:                                            ; preds = %bb.ad
  %i.cp = load i8, ptr %.sroa.5132.sroa.4.0.copyload, align 1, !noundef !4
  switch i8 %i.cp, label %bb.ag [
    i8 60, label %bb.ap
    i8 62, label %bb.aq
  ]

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5640.0.copyload), "nonnull"(ptr %.sroa.5635.0.copyload) ]
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %.sroa.6641.0.copyload, i64 %.sroa.6636.0.copyload)
  %i.cq = tail call i32 @memcmp(ptr nonnull readonly %.sroa.5640.0.copyload, ptr nonnull readonly %.sroa.5635.0.copyload, i64 %spec.store.select.i), !alias.scope !231 ; 2 uses
  %i.cr = sext i32 %i.cq to i64
  %i.cs = icmp eq i32 %i.cq, 0
  %i.ct = sub i64 %.sroa.6641.0.copyload, %.sroa.6636.0.copyload
  %spec.select.i = select i1 %i.cs, i64 %i.ct, i64 %i.cr
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %spec.select.i.lobit = lshr i64 %spec.select.i, 63
  %i.cv = trunc nuw nsw i64 %spec.select.i.lobit to i8
  store i8 %i.cv, ptr %i.cu, align 8
  br label %bb.ak

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5640.0.copyload), "nonnull"(ptr %.sroa.5635.0.copyload) ]
  %spec.store.select.i351 = tail call i64 @llvm.umin.i64(i64 %.sroa.6641.0.copyload, i64 %.sroa.6636.0.copyload)
  %i.cw = tail call i32 @memcmp(ptr nonnull readonly %.sroa.5640.0.copyload, ptr nonnull readonly %.sroa.5635.0.copyload, i64 %spec.store.select.i351), !alias.scope !232 ; 2 uses
  %i.cx = sext i32 %i.cw to i64
  %i.cy = icmp eq i32 %i.cw, 0
  %i.cz = sub i64 %.sroa.6641.0.copyload, %.sroa.6636.0.copyload
  %spec.select.i352 = select i1 %i.cy, i64 %i.cz, i64 %i.cx
  %i.da = icmp sgt i64 %spec.select.i352, 0
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dc = zext i1 %i.da to i8
  store i8 %i.dc, ptr %i.db, align 8
  br label %bb.ak

bb.ar:                                            ; preds = %bb.y
  %i.dd = add nsw i64 %i.z, -2                    ; 4 uses
  store i64 %i.dd, ptr %i.y, align 8
  %i.de = icmp samesign ult i64 %i.dd, %i.ac
  tail call void @llvm.assume(i1 %i.de)
  %i.df = getelementptr inbounds nuw [40 x i8], ptr %i.af, i64 %i.dd ; 4 uses
  %.sroa.0628.0.copyload = load i64, ptr %i.df, align 8
  %.sroa.4629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.sroa.4629.0.copyload = load i64, ptr %.sroa.4629.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %.sroa.5630.0.copyload = load ptr, ptr %.sroa.5630.0..sroa_idx, align 8 ; 5 uses
  %.sroa.6631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %.sroa.6631.0.copyload = load i64, ptr %.sroa.6631.0..sroa_idx, align 8 ; 2 uses
  %i.dg = icmp eq i64 %.sroa.0628.0.copyload, 3
  br i1 %i.dg, label %bb.as, label %.thread559, !prof !230

.thread559:                                       ; preds = %bb.y, %bb.ar
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22
  unreachable

bb.as:                                            ; preds = %bb.ar
  %i.dh = icmp eq i64 %i.dd, 0
  br i1 %i.dh, label %.thread561, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.di = add nsw i64 %i.z, -3                    ; 3 uses
  store i64 %i.di, ptr %i.y, align 8
  %i.dj = icmp samesign ult i64 %i.di, %i.ac
  tail call void @llvm.assume(i1 %i.dj)
  %i.dk = getelementptr inbounds nuw [40 x i8], ptr %i.af, i64 %i.di ; 4 uses
  %.sroa.0643.0.copyload = load i64, ptr %i.dk, align 8
  %.sroa.4644.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.sroa.4644.0.copyload = load i64, ptr %.sroa.4644.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5645.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %.sroa.5645.0.copyload = load ptr, ptr %.sroa.5645.0..sroa_idx, align 8 ; 5 uses
  %.sroa.6646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %.sroa.6646.0.copyload = load i64, ptr %.sroa.6646.0..sroa_idx, align 8 ; 2 uses
  %i.dl = icmp eq i64 %.sroa.0643.0.copyload, 3
  br i1 %i.dl, label %bb.au, label %.thread561, !prof !230

.thread561:                                       ; preds = %bb.as, %bb.at
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22
  unreachable

bb.au:                                            ; preds = %bb.at
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5645.0.copyload), "nonnull"(ptr %.sroa.5630.0.copyload), "nonnull"(ptr %.sroa.5132.sroa.4.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !233
  call fastcc void @_RNvMCs2szWGFz6wmN_7uu_testNtB2_7Integer5parse(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5645.0.copyload, i64 noundef %.sroa.6646.0.copyload) #21, !noalias !234
  %i.dm = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.dn = load i8, ptr %i.dm, align 8, !range !235, !noalias !233, !noundef !4 ; 2 uses
  %.not.i = icmp eq i8 %i.dn, 2
  br i1 %.not.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.sroa.0110.0.copyload.i = load ptr, ptr %i.m, align 8, !noalias !233 ; 2 uses
  %.sroa.4111.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.4111.0.copyload.i = load i64, ptr %.sroa.4111.0..sroa_idx.i, align 8, !noalias !233 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !233
  call fastcc void @_RNvMCs2szWGFz6wmN_7uu_testNtB2_7Integer5parse(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5630.0.copyload, i64 noundef %.sroa.6631.0.copyload) #21, !noalias !236
  %i.do = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.dp = load i8, ptr %i.do, align 8, !range !235, !noalias !233, !noundef !4 ; 2 uses
  %.not56.i = icmp eq i8 %i.dp, 2
  br i1 %.not56.i, label %bb.be, label %bb.ay

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !233
  store i64 1, ptr %i.j, align 8, !noalias !233
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.5645.0.copyload, ptr %.sroa.435.0..sroa_idx.i, align 8, !noalias !233
  %.sroa.5.0..sroa_idx.i355 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6646.0.copyload, ptr %.sroa.5.0..sroa_idx.i355, align 8, !noalias !233
  %i.dq = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i8 1, ptr %i.dq, align 8, !noalias !233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !237
  store i64 0, ptr %i.g, align 8, !noalias !237
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !237
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !237
  %i.dr = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 1610612768, ptr %i.dr, align 8, !noalias !237
  store ptr %i.g, ptr %i.f, align 8, !noalias !237
  %i.ds = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @47, ptr %i.ds, align 8, !noalias !237
  %i.dt = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #21, !noalias !238
  br i1 %i.dt, label %bb.ax, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2szWGFz6wmN_7uu_test.exit.i, !prof !13

bb.ax:                                            ; preds = %bb.aw
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #22, !noalias !238
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2szWGFz6wmN_7uu_test.exit.i: ; preds = %bb.aw
  %.sroa.0106.0.copyload.i = load ptr, ptr %i.g, align 8, !noalias !239
  %.sroa.4107.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !239
  %.sroa.5108.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !239
  %.sroa.6109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6109.0..sroa_idx.i, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !233
  br label %bb.br

bb.ay:                                            ; preds = %bb.av
  %.sroa.0128.0.copyload.i = load ptr, ptr %i.l, align 8, !noalias !233 ; 2 uses
  %.sroa.4129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.4129.0.copyload.i = load i64, ptr %.sroa.4129.0..sroa_idx.i, align 8, !noalias !233 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !233
  %i.du = trunc nuw i8 %i.dn to i1                ; 2 uses
  %i.dv = trunc nuw i8 %i.dp to i1                ; 2 uses
  br i1 %i.du, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  br i1 %i.dv, label %_RNvXs_Cs2szWGFz6wmN_7uu_testNtB4_7IntegerNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i, label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  br i1 %i.dv, label %bb.bb, label %_RNvXs_Cs2szWGFz6wmN_7uu_testNtB4_7IntegerNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.dw = tail call i8 @llvm.ucmp.i8.i64(i64 %.sroa.4111.0.copyload.i, i64 %.sroa.4129.0.copyload.i)
  %i.dx = icmp eq i64 %.sroa.4111.0.copyload.i, %.sroa.4129.0.copyload.i
  br i1 %i.dx, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0128.0.copyload.i), "nonnull"(ptr %.sroa.0110.0.copyload.i) ]
  %i.dy = tail call i32 @memcmp(ptr nonnull %.sroa.0110.0.copyload.i, ptr nonnull %.sroa.0128.0.copyload.i, i64 %.sroa.4111.0.copyload.i), !noalias !240
  %i.dz = tail call i8 @llvm.scmp.i8.i32(i32 %i.dy, i32 0)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.sroa.0.1.i.i = phi i8 [ %i.dz, %bb.bc ], [ %i.dw, %bb.bb ] ; 2 uses
  %switch.offset.i.i = sub nsw i8 0, %.sroa.0.1.i.i
  %spec.select.i353 = select i1 %i.du, i8 %switch.offset.i.i, i8 %.sroa.0.1.i.i
  br label %_RNvXs_Cs2szWGFz6wmN_7uu_testNtB4_7IntegerNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i

_RNvXs_Cs2szWGFz6wmN_7uu_testNtB4_7IntegerNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i: ; preds = %bb.bd, %bb.ba, %bb.az
  %.sroa.0.0.i.i = phi i8 [ -1, %bb.ba ], [ %spec.select.i353, %bb.bd ], [ 1, %bb.az ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !233
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5132.sroa.4.0.copyload, i64 noundef %.sroa.5132.sroa.5.0.copyload) #21, !noalias !241
  %i.ea = load i64, ptr %i.h, align 8, !range !10, !noalias !233, !noundef !4
  %i.eb = trunc nuw i64 %i.ea to i1
  br i1 %i.eb, label %bb.bg, label %bb.bh

bb.be:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !233
  store i64 1, ptr %i.i, align 8, !noalias !233
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.sroa.5630.0.copyload, ptr %.sroa.445.0..sroa_idx.i, align 8, !noalias !233
  %.sroa.546.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.6631.0.copyload, ptr %.sroa.546.0..sroa_idx.i, align 8, !noalias !233
  %i.ec = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i8 1, ptr %i.ec, align 8, !noalias !233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !242
  store i64 0, ptr %i.e, align 8, !noalias !242
  %.sroa.4.0..sroa_idx.i66.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i66.i, align 8, !noalias !242
  %.sroa.5.0..sroa_idx.i67.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i67.i, align 8, !noalias !242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !242
  %i.ed = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 1610612768, ptr %i.ed, align 8, !noalias !242
  store ptr %i.e, ptr %i.d, align 8, !noalias !242
  %i.ee = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @47, ptr %i.ee, align 8, !noalias !242
  %i.ef = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #21, !noalias !243
  br i1 %i.ef, label %bb.bf, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2szWGFz6wmN_7uu_test.exit68.i, !prof !13

bb.bf:                                            ; preds = %bb.be
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #22, !noalias !243
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2szWGFz6wmN_7uu_test.exit68.i: ; preds = %bb.be
  %.sroa.0124.0.copyload.i = load ptr, ptr %i.e, align 8, !noalias !244
  %.sroa.4125.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i66.i, align 8, !noalias !244
  %.sroa.5126.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i67.i, align 8, !noalias !244
  %.sroa.6127.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6127.0..sroa_idx.i, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !233
  br label %bb.br

bb.bg:                                            ; preds = %_RNvXs_Cs2szWGFz6wmN_7uu_testNtB4_7IntegerNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !233
  br label %.critedge65.i

bb.bh:                                            ; preds = %_RNvXs_Cs2szWGFz6wmN_7uu_testNtB4_7IntegerNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !noalias !233, !nonnull !4, !noundef !4 ; 12 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !noalias !233, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !233
  %i.ek = icmp eq i64 %i.ej, 3
  br i1 %i.ek, label %bb.bi, label %.critedge65.i

bb.bi:                                            ; preds = %bb.bh
  %i.el = load i16, ptr %i.eh, align 1
  %i.em = xor i16 %i.el, 25901
  %i.en = getelementptr i8, ptr %i.eh, i64 2
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = zext i8 %i.eo to i16
  %i.eq = xor i16 %i.ep, 113
  %i.er = or i16 %i.em, %i.eq
  %i.es = icmp ne i16 %i.er, 0
  %i.et = zext i1 %i.es to i32
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ev = icmp eq i8 %.sroa.0.0.i.i, 0
  %i.ew = zext i1 %i.ev to i8
  br label %bb.bv

bb.bk:                                            ; preds = %bb.bi
  %i.ex = load i16, ptr %i.eh, align 1
  %i.ey = xor i16 %i.ex, 28205
  %i.ez = getelementptr i8, ptr %i.eh, i64 2
  %i.fa = load i8, ptr %i.ez, align 1
  %i.fb = zext i8 %i.fa to i16
  %i.fc = xor i16 %i.fb, 101
  %i.fd = or i16 %i.ey, %i.fc
  %i.fe = icmp ne i16 %i.fd, 0
  %i.ff = zext i1 %i.fe to i32
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.bl, label %.critedge.i

bb.bl:                                            ; preds = %bb.bk
  %i.fh = icmp ne i8 %.sroa.0.0.i.i, 0
  %i.fi = zext i1 %i.fh to i8
  br label %bb.bv

.critedge.i:                                      ; preds = %bb.bk
  %i.fj = load i16, ptr %i.eh, align 1
  %i.fk = xor i16 %i.fj, 26413
  %i.fl = getelementptr i8, ptr %i.eh, i64 2
  %i.fm = load i8, ptr %i.fl, align 1
  %i.fn = zext i8 %i.fm to i16
  %i.fo = xor i16 %i.fn, 116
  %i.fp = or i16 %i.fk, %i.fo
  %i.fq = icmp ne i16 %i.fp, 0
  %i.fr = zext i1 %i.fq to i32
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.bm, label %.critedge62.i

bb.bm:                                            ; preds = %.critedge.i
  %i.ft = icmp sgt i8 %.sroa.0.0.i.i, 0
  %i.fu = zext i1 %i.ft to i8
  br label %bb.bv

.critedge62.i:                                    ; preds = %.critedge.i
  %i.fv = load i16, ptr %i.eh, align 1
  %i.fw = xor i16 %i.fv, 26413
  %i.fx = getelementptr i8, ptr %i.eh, i64 2
  %i.fy = load i8, ptr %i.fx, align 1
  %i.fz = zext i8 %i.fy to i16
  %i.ga = xor i16 %i.fz, 101
  %i.gb = or i16 %i.fw, %i.ga
  %i.gc = icmp ne i16 %i.gb, 0
  %i.gd = zext i1 %i.gc to i32
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %bb.bn, label %.critedge63.i

bb.bn:                                            ; preds = %.critedge62.i
  %i.gf = icmp sgt i8 %.sroa.0.0.i.i, -1
  %i.gg = zext i1 %i.gf to i8
  br label %bb.bv

.critedge63.i:                                    ; preds = %.critedge62.i
  %i.gh = load i16, ptr %i.eh, align 1
  %i.gi = xor i16 %i.gh, 27693
  %i.gj = getelementptr i8, ptr %i.eh, i64 2
  %i.gk = load i8, ptr %i.gj, align 1
  %i.gl = zext i8 %i.gk to i16
  %i.gm = xor i16 %i.gl, 116
  %i.gn = or i16 %i.gi, %i.gm
  %i.go = icmp ne i16 %i.gn, 0
  %i.gp = zext i1 %i.go to i32
  %i.gq = icmp eq i32 %i.gp, 0
  br i1 %i.gq, label %bb.bo, label %.critedge64.i

bb.bo:                                            ; preds = %.critedge63.i
  %.lobit.i = lshr i8 %.sroa.0.0.i.i, 7
  br label %bb.bv

.critedge64.i:                                    ; preds = %.critedge63.i
  %i.gr = load i16, ptr %i.eh, align 1
  %i.gs = xor i16 %i.gr, 27693
  %i.gt = getelementptr i8, ptr %i.eh, i64 2
  %i.gu = load i8, ptr %i.gt, align 1
  %i.gv = zext i8 %i.gu to i16
  %i.gw = xor i16 %i.gv, 101
  %i.gx = or i16 %i.gs, %i.gw
  %i.gy = icmp ne i16 %i.gx, 0
  %i.gz = zext i1 %i.gy to i32
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %bb.bq, label %.critedge65.i

.critedge65.i:                                    ; preds = %.critedge64.i, %bb.bh, %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !233
  store i64 1, ptr %i.k, align 8, !noalias !233
  %.sroa.454.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.5132.sroa.4.0.copyload, ptr %.sroa.454.0..sroa_idx.i, align 8, !noalias !233
  %.sroa.555.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.5132.sroa.5.0.copyload, ptr %.sroa.555.0..sroa_idx.i, align 8, !noalias !233
  %i.hb = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i8 1, ptr %i.hb, align 8, !noalias !233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !245
  store i64 0, ptr %i.c, align 8, !noalias !245
  %.sroa.4.0..sroa_idx.i69.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i69.i, align 8, !noalias !245
  %.sroa.5.0..sroa_idx.i70.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i70.i, align 8, !noalias !245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !245
  %i.hc = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.hc, align 8, !noalias !245
  store ptr %i.c, ptr %i.b, align 8, !noalias !245
  %i.hd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @47, ptr %i.hd, align 8, !noalias !245
  %i.he = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #21, !noalias !246
  br i1 %i.he, label %bb.bp, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2szWGFz6wmN_7uu_test.exit71.i, !prof !13

bb.bp:                                            ; preds = %.critedge65.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #22, !noalias !246
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2szWGFz6wmN_7uu_test.exit71.i: ; preds = %.critedge65.i
  %.sroa.9436.8.copyload = load ptr, ptr %i.c, align 8, !noalias !247
  %.sroa.16.8.copyload = load i64, ptr %.sroa.4.0..sroa_idx.i69.i, align 8, !noalias !247
  %.sroa.18.8.copyload = load i8, ptr %.sroa.5.0..sroa_idx.i70.i, align 8, !noalias !247
  %.sroa.20.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20.8..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !233
  br label %bb.br

bb.bq:                                            ; preds = %.critedge64.i
  %i.hf = icmp slt i8 %.sroa.0.0.i.i, 1
  %i.hg = zext i1 %i.hf to i8
  br label %bb.bv

bb.br:                                            ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2szWGFz6wmN_7uu_test.exit.i, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2szWGFz6wmN_7uu_test.exit68.i, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2szWGFz6wmN_7uu_test.exit71.i
  %.sroa.9436.0.ph = phi ptr [ %.sroa.9436.8.copyload, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2szWGFz6wmN_7uu_test.exit71.i ], [ %.sroa.0124.0.copyload.i, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2szWGFz6wmN_7uu_test.exit68.i ], [ %.sroa.0106.0.copyload.i, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2szWGFz6wmN_7uu_test.exit.i ]
  %.sroa.18.0.ph = phi i8 [ %.sroa.18.8.copyload, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2szWGFz6wmN_7uu_test.exit71.i ], [ %.sroa.5126.0.copyload.i, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2szWGFz6wmN_7uu_test.exit68.i ], [ %.sroa.5108.0.copyload.i, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2szWGFz6wmN_7uu_test.exit.i ]
  %.sroa.16.0.ph = phi i64 [ %.sroa.16.8.copyload, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2szWGFz6wmN_7uu_test.exit71.i ], [ %.sroa.4125.0.copyload.i, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2szWGFz6wmN_7uu_test.exit68.i ], [ %.sroa.4107.0.copyload.i, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2szWGFz6wmN_7uu_test.exit.i ]
  %.sroa.0434.0.ph = phi i64 [ 4, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2szWGFz6wmN_7uu_test.exit71.i ], [ 5, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2szWGFz6wmN_7uu_test.exit68.i ], [ 5, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2szWGFz6wmN_7uu_test.exit.i ]
  %i.hh = ptrtoint ptr %.sroa.9436.0.ph to i64
  store i64 %.sroa.0434.0.ph, ptr %0, align 8
  %.sroa.4149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.hh, ptr %.sroa.4149.0..sroa_idx, align 8
  %.sroa.5150.sroa.4.0..sroa.5150.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.16.0.ph, ptr %.sroa.5150.sroa.4.0..sroa.5150.0..sroa_idx.sroa_idx, align 8
  %.sroa.5150.sroa.5.0..sroa.5150.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.18.0.ph, ptr %.sroa.5150.sroa.5.0..sroa.5150.0..sroa_idx.sroa_idx, align 8
  %.sroa.5150.sroa.6.0..sroa.5150.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5150.sroa.6.0..sroa.5150.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20, i64 7, i1 false)
  %i.hi = icmp eq i64 %.sroa.4644.0.copyload, 0
  br i1 %i.hi, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit356, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5645.0.copyload, i64 noundef %.sroa.4644.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit356

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit356: ; preds = %bb.br, %bb.bs
  %i.hj = icmp eq i64 %.sroa.4629.0.copyload, 0
  br i1 %i.hj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit357, label %bb.bt

bb.bt:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit356
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5630.0.copyload, i64 noundef %.sroa.4629.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit357

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit357: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit356, %bb.bt
  %i.hk = icmp eq i64 %.sroa.5132.sroa.0.0.copyload, 0
  br i1 %i.hk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit, label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit357
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5132.sroa.4.0.copyload, i64 noundef %.sroa.5132.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit

bb.bv:                                            ; preds = %bb.bq, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bj
  %.sroa.018.0.i = phi i8 [ %i.ew, %bb.bj ], [ %i.fi, %bb.bl ], [ %i.fu, %bb.bm ], [ %i.gg, %bb.bn ], [ %.lobit.i, %bb.bo ], [ %i.hg, %bb.bq ]
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.018.0.i, ptr %i.hl, align 8
  store i64 -1, ptr %0, align 8
  %i.hm = icmp eq i64 %.sroa.4644.0.copyload, 0
  br i1 %i.hm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit359, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5645.0.copyload, i64 noundef %.sroa.4644.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit359

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit359: ; preds = %bb.bv, %bb.bw
  %i.hn = icmp eq i64 %.sroa.4629.0.copyload, 0
  br i1 %i.hn, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit360, label %bb.bx

bb.bx:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit359
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5630.0.copyload, i64 noundef %.sroa.4629.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit360

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit360: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit359, %bb.bx
  %i.ho = icmp eq i64 %.sroa.5132.sroa.0.0.copyload, 0
  br i1 %i.ho, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit, label %bb.by

bb.by:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit360
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5132.sroa.4.0.copyload, i64 noundef %.sroa.5132.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit

bb.bz:                                            ; preds = %bb.z
  %i.hp = add nsw i64 %i.z, -2                    ; 4 uses
  store i64 %i.hp, ptr %i.y, align 8
  %i.hq = icmp samesign ult i64 %i.hp, %i.ac
  tail call void @llvm.assume(i1 %i.hq)
  %i.hr = getelementptr inbounds nuw [40 x i8], ptr %i.af, i64 %i.hp ; 4 uses
  %.sroa.0624.0.copyload = load i64, ptr %i.hr, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %.sroa.5625.0.copyload = load ptr, ptr %.sroa.5625.0..sroa_idx, align 8 ; 4 uses
  %.sroa.6626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  %.sroa.6626.0.copyload = load i64, ptr %.sroa.6626.0..sroa_idx, align 8
  %i.hs = icmp eq i64 %.sroa.0624.0.copyload, 3
  br i1 %i.hs, label %bb.ca, label %.thread574, !prof !230

.thread574:                                       ; preds = %bb.z, %bb.bz
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #22
  unreachable

bb.ca:                                            ; preds = %bb.bz
  %i.ht = icmp eq i64 %i.hp, 0
  br i1 %i.ht, label %.thread576, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.hu = add nsw i64 %i.z, -3                    ; 3 uses
  store i64 %i.hu, ptr %i.y, align 8
  %i.hv = icmp samesign ult i64 %i.hu, %i.ac
  tail call void @llvm.assume(i1 %i.hv)
  %i.hw = getelementptr inbounds nuw [40 x i8], ptr %i.af, i64 %i.hu ; 4 uses
  %.sroa.0648.0.copyload = load i64, ptr %i.hw, align 8
  %.sroa.4649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %.sroa.4649.0.copyload = load i64, ptr %.sroa.4649.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %.sroa.5650.0.copyload = load ptr, ptr %.sroa.5650.0..sroa_idx, align 8 ; 4 uses
  %i.hx = icmp eq i64 %.sroa.0648.0.copyload, 3
  br i1 %i.hx, label %bb.cc, label %.thread576, !prof !230

.thread576:                                       ; preds = %bb.ca, %bb.cb
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22
  unreachable

bb.cc:                                            ; preds = %bb.cb
  %.sroa.6651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %.sroa.6651.0.copyload = load i64, ptr %.sroa.6651.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5650.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5625.0.copyload), "nonnull"(ptr %.sroa.5132.sroa.4.0.copyload) ]
  call fastcc void @_RNvCs2szWGFz6wmN_7uu_test5files(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5650.0.copyload, i64 noundef %.sroa.6651.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5625.0.copyload, i64 noundef %.sroa.6626.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5132.sroa.4.0.copyload, i64 noundef %.sroa.5132.sroa.5.0.copyload) #21
  %i.hy = load i64, ptr %i.w, align 8, !range !12, !noundef !4 ; 2 uses
  %.not235 = icmp eq i64 %i.hy, -1
  %i.hz = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ia = load i8, ptr %i.hz, align 8             ; 2 uses
  br i1 %.not235, label %bb.ch, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %.sroa.5156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 9
  %.sroa.5159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5159.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5156.0..sroa_idx, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i64 %i.hy, ptr %0, align 8
  %.sroa.4158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ia, ptr %.sroa.4158.0..sroa_idx, align 8
  %i.ib = icmp eq i64 %.sroa.4649.0.copyload, 0
  br i1 %i.ib, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit362, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5650.0.copyload, i64 noundef %.sroa.4649.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit362

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit362: ; preds = %bb.cd, %bb.ce
  %i.ic = icmp eq i64 %.sroa.4.0.copyload, 0
  br i1 %i.ic, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit363, label %bb.cf

bb.cf:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit362
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5625.0.copyload, i64 noundef %.sroa.4.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit363

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit363: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit362, %bb.cf
  %i.id = icmp eq i64 %.sroa.5132.sroa.0.0.copyload, 0
  br i1 %i.id, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit, label %bb.cg

bb.cg:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit363
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5132.sroa.4.0.copyload, i64 noundef %.sroa.5132.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit

bb.ch:                                            ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ia, ptr %i.ie, align 8
  store i64 -1, ptr %0, align 8
  %i.if = icmp eq i64 %.sroa.4649.0.copyload, 0
  br i1 %i.if, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit365, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5650.0.copyload, i64 noundef %.sroa.4649.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit365

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit365: ; preds = %bb.ch, %bb.ci
  %i.ig = icmp eq i64 %.sroa.4.0.copyload, 0
  br i1 %i.ig, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit366, label %bb.cj

bb.cj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit365
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5625.0.copyload, i64 noundef %.sroa.4.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit366

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit366: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit365, %bb.cj
  %i.ih = icmp eq i64 %.sroa.5132.sroa.0.0.copyload, 0
  br i1 %i.ih, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit, label %bb.ck

bb.ck:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit366
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5132.sroa.4.0.copyload, i64 noundef %.sroa.5132.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit

bb.cl:                                            ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5132.sroa.4.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5132.sroa.4.0.copyload, i64 noundef %.sroa.5132.sroa.5.0.copyload) #21
  %i.ii = load i64, ptr %i.p, align 8, !range !10, !noundef !4
  %i.ij = trunc nuw i64 %i.ii to i1
  br i1 %i.ij, label %bb.cx, label %bb.cy, !prof !13

bb.cm:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.ik = icmp eq i64 %i.ab, 0
  br i1 %i.ik, label %.thread579, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.il = add nsw i64 %i.z, -2                    ; 3 uses
  store i64 %i.il, ptr %i.y, align 8
  %i.im = icmp samesign ult i64 %i.il, %i.ac
  tail call void @llvm.assume(i1 %i.im)
  %i.in = getelementptr inbounds nuw [40 x i8], ptr %i.af, i64 %i.il
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 dereferenceable(40) %i.in, i64 40, i1 false)
  %.pr577 = load i64, ptr %i.v, align 8
  switch i64 %.pr577, label %bb.co [
    i64 -1, label %.thread579
    i64 3, label %bb.cp
    i64 6, label %bb.cu
  ]

.thread579:                                       ; preds = %bb.cm, %bb.cn
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.io, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cv

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5132.sroa.4.0.copyload) ]
  store i64 1, ptr %i.u, align 8
  %.sroa.4167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.sroa.5132.sroa.4.0.copyload, ptr %.sroa.4167.0..sroa_idx, align 8
  %.sroa.5168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.sroa.5132.sroa.5.0.copyload, ptr %.sroa.5168.0..sroa_idx, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i8 1, ptr %i.ip, align 8
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call fastcc void @_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %.sroa.491.0..sroa_idx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.u) #23
  store i64 3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.v) #21
  br label %bb.cv

bb.cp:                                            ; preds = %bb.cn
  %i.iq = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.0462.0.copyload = load i64, ptr %i.iq, align 8
  %.sroa.4463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.4463.0.copyload = load ptr, ptr %.sroa.4463.0..sroa_idx, align 8
  %.sroa.5464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.5464.0.copyload = load i64, ptr %.sroa.5464.0..sroa_idx, align 8
  %i.ir = icmp ne i64 %.sroa.5464.0.copyload, 0
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.cu
  %.sroa.0459.0588 = phi i64 [ 0, %bb.cu ], [ %.sroa.0462.0.copyload, %bb.cp ] ; 2 uses
  %.sroa.6460.0586 = phi ptr [ inttoptr (i64 1 to ptr), %bb.cu ], [ %.sroa.4463.0.copyload, %bb.cp ] ; 2 uses
  %.sroa.8461.0584 = phi i1 [ false, %bb.cu ], [ %i.ir, %bb.cp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.is = icmp eq i64 %.sroa.5132.sroa.5.0.copyload, 2
  br i1 %i.is, label %bb.cr, label %_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit370

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5132.sroa.4.0.copyload) ]
  %i.it = load i16, ptr %.sroa.5132.sroa.4.0.copyload, align 1
  %i.iu = icmp ne i16 %i.it, 31277
  %i.iv = zext i1 %i.iu to i32
  %i.iw = icmp eq i32 %i.iv, 0
  %i.ix = xor i1 %.sroa.8461.0584, %i.iw
  br label %_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit370

_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit370: ; preds = %bb.cq, %bb.cr
  %.sroa.0.0.i368 = phi i1 [ %i.ix, %bb.cr ], [ %.sroa.8461.0584, %bb.cq ]
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.iz = zext i1 %.sroa.0.0.i368 to i8
  store i8 %i.iz, ptr %i.iy, align 8
  store i64 -1, ptr %0, align 8
  %i.ja = icmp eq i64 %.sroa.0459.0588, 0
  br i1 %i.ja, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit371, label %bb.cs

bb.cs:                                            ; preds = %_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit370
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6460.0586) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6460.0586, i64 noundef %.sroa.0459.0588, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit371

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit371: ; preds = %_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit370, %bb.cs
  %i.jb = icmp eq i64 %.sroa.5132.sroa.0.0.copyload, 0
  br i1 %i.jb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit, label %bb.ct

bb.ct:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit371
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5132.sroa.4.0.copyload) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5132.sroa.4.0.copyload, i64 noundef %.sroa.5132.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit

bb.cu:                                            ; preds = %bb.cn
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.v) #21
  br label %bb.cq

bb.cv:                                            ; preds = %.thread579, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.jc = icmp eq i64 %.sroa.5132.sroa.0.0.copyload, 0
  br i1 %i.jc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5132.sroa.4.0.copyload) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5132.sroa.4.0.copyload, i64 noundef %.sroa.5132.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit

bb.cx:                                            ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #22
  unreachable

bb.cy:                                            ; preds = %bb.cl
  %i.jd = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !nonnull !4, !noundef !4 ; 20 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.jg = load i64, ptr %i.jf, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.jh = load i64, ptr %i.y, align 8, !noundef !4 ; 3 uses
  %i.ji = icmp eq i64 %i.jh, 0
  br i1 %i.ji, label %.thread590, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.jj = add nsw i64 %i.jh, -1                   ; 3 uses
  store i64 %i.jj, ptr %i.y, align 8
  %i.jk = load i64, ptr %1, align 8, !range !5, !noundef !4
  %i.jl = icmp samesign ult i64 %i.jj, %i.jk
end_hunk_0
begin_hunk_1_@_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser4expr:bb.a
  call fastcc void @_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser4term(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef align 8 dereferenceable(80) %1) #21
  %i.d = load i64, ptr %i.b, align 8, !range !12, !noundef !4
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.e, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser12maybe_boolop(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef align 8 dereferenceable(80) %1) #21
  %i.e = load i64, ptr %i.a, align 8, !range !12, !noundef !4
  %.not1 = icmp eq i64 %i.e, -1
  br i1 %.not1, label %bb.h, label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d
  ret void

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -1, ptr %0, align 8
  br label %bb.f
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser4term(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %i.m = alloca [32 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 6 uses
  %i.r = alloca [56 x i8], align 8                ; 10 uses
  %i.s = alloca [24 x i8], align 8                ; 8 uses
  %i.t = alloca [40 x i8], align 8                ; 4 uses
  %i.u = alloca [40 x i8], align 8                ; 4 uses
  %i.v = alloca [32 x i8], align 8                ; 6 uses
  %i.w = alloca [40 x i8], align 8                ; 4 uses
  %i.x = alloca [40 x i8], align 8                ; 4 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %i.z = alloca [32 x i8], align 8                ; 6 uses
  %i.aa = alloca [40 x i8], align 8               ; 4 uses
  %i.ab = alloca [40 x i8], align 8               ; 5 uses
  %i.ac = alloca [56 x i8], align 8               ; 14 uses
  %i.ad = alloca [24 x i8], align 8               ; 9 uses
  %i.ae = alloca [40 x i8], align 8               ; 11 uses
  %i.af = alloca [40 x i8], align 8               ; 13 uses
  %.sroa.8305 = alloca [24 x i8], align 8         ; 3 uses
  %i.ag = alloca [32 x i8], align 8               ; 6 uses
  %i.ah = alloca [40 x i8], align 8               ; 4 uses
  %i.ai = alloca [40 x i8], align 8               ; 4 uses
  %i.aj = alloca [32 x i8], align 8               ; 6 uses
  %i.ak = alloca [32 x i8], align 8               ; 6 uses
  %i.al = alloca [32 x i8], align 8               ; 6 uses
  %i.am = alloca [40 x i8], align 8               ; 5 uses
  %i.an = alloca [32 x i8], align 8               ; 6 uses
  %i.ao = alloca [32 x i8], align 8               ; 6 uses
  %i.ap = alloca [40 x i8], align 8               ; 5 uses
  %i.aq = alloca [40 x i8], align 8               ; 4 uses
  %i.ar = alloca [40 x i8], align 8               ; 4 uses
  %i.as = alloca [32 x i8], align 8               ; 6 uses
  %i.at = alloca [32 x i8], align 8               ; 6 uses
  %i.au = alloca [40 x i8], align 8               ; 5 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %i.aw = alloca [8 x i8], align 8                ; 4 uses
  %i.ax = alloca [56 x i8], align 8               ; 10 uses
  %i.ay = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.11 = alloca [24 x i8], align 8           ; 6 uses
  %i.az = alloca [32 x i8], align 8               ; 6 uses
  %i.ba = alloca [40 x i8], align 8               ; 14 uses
  %i.bb = alloca [40 x i8], align 8               ; 4 uses
  %i.bc = alloca [32 x i8], align 8               ; 6 uses
  %i.bd = alloca [56 x i8], align 8               ; 13 uses
  %i.be = alloca [24 x i8], align 8               ; 9 uses
  %i.bf = alloca [40 x i8], align 8               ; 8 uses
  %i.bg = alloca [40 x i8], align 8               ; 8 uses
  %.sroa.21 = alloca [24 x i8], align 8           ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !911)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !912
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 11 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.bh, align 8, !alias.scope !911 ; 2 uses
  store i64 -2, ptr %i.bh, align 8, !alias.scope !911
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i, -2
  %.sink7.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 4 uses
  %.sink7.i.sroa.gep232 = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 8 uses
  %.sink7.i25.sroa.gep = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 3 uses
  %.sink7.i25.sroa.gep267 = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 5 uses
  %.sink7.i44.sroa.gep = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 2 uses
  %.sink7.i44.sroa.gep273 = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 4 uses
  %.sink7.i99.sroa.gep = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 4 uses
  %.sink7.i99.sroa.gep398 = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 8 uses
  %.sink7.i117.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 4 uses
  %.sink7.i117.sroa.gep404 = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 8 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.sroa.0.0.copyload.i, ptr %i.ay, align 8, !noalias !912
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i64 16, i1 false), !noalias !913
  br label %_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser10next_token.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !915)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !916, !nonnull !4, !noundef !4
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !916, !nonnull !4, !noundef !4 ; 3 uses
  %i.bm = icmp eq ptr %i.bl, %i.bj
  br i1 %i.bm, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store ptr %i.bn, ptr %i.bk, align 8, !alias.scope !916
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false), !noalias !917
  br label %_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser10next_token.exit

bb.e:                                             ; preds = %bb.c
  store i64 -1, ptr %i.ay, align 8, !alias.scope !914, !noalias !912
  br label %_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser10next_token.exit

_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser10next_token.exit: ; preds = %bb.b, %bb.d, %bb.e
  call fastcc void @_RNvMNtCs2szWGFz6wmN_7uu_test6parserNtB2_6Symbol3new(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %i.ba, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.ay) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !912
  %i.bo = load i64, ptr %i.ba, align 8, !range !6, !noundef !4
  switch i64 %i.bo, label %bb.f [
    i64 0, label %bb.g
    i64 1, label %bb.bx
    i64 5, label %bb.er
    i64 6, label %bb.ew
  ]

bb.f:                                             ; preds = %_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser10next_token.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call fastcc void @_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser7literal(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.az, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.ba) #21
  %i.bp = load i64, ptr %i.az, align 8, !range !12, !noundef !4
  %.not6 = icmp eq i64 %i.bp, -1
  br i1 %.not6, label %bb.gk, label %bb.gj

bb.g:                                             ; preds = %_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser10next_token.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.21)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !918
  call fastcc void @_RNvXs6_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB5_8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtBb_5clone5Clone5cloneCs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.ax, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bh) #23, !noalias !919, !inline_history !582
  %.sroa.0.i.sroa.0.0.copyload = load i64, ptr %i.ax, align 8, !noalias !918 ; 3 uses
  %.sroa.0.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.0.i.sroa.4.0.copyload = load ptr, ptr %.sroa.0.i.sroa.4.0..sroa_idx, align 8, !noalias !918
  %.sroa.0.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.sroa.0.i.sroa.5.0.copyload = load i64, ptr %.sroa.0.i.sroa.5.0..sroa_idx, align 8, !noalias !918
  %.sroa.0.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %.sroa.0.i.sroa.6.0.copyload = load ptr, ptr %.sroa.0.i.sroa.6.0..sroa_idx, align 8, !noalias !918 ; 2 uses
  %.sroa.0.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %.sroa.0.i.sroa.7.0.copyload = load ptr, ptr %.sroa.0.i.sroa.7.0..sroa_idx, align 8, !noalias !918 ; 6 uses
  %.sroa.0.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %.sroa.0.i.sroa.8.0.copyload = load i64, ptr %.sroa.0.i.sroa.8.0..sroa_idx, align 8, !noalias !918 ; 2 uses
  %.sroa.0.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %.sroa.0.i.sroa.9.0.copyload = load ptr, ptr %.sroa.0.i.sroa.9.0..sroa_idx, align 8, !noalias !918 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !920
  switch i64 %.sroa.0.i.sroa.0.0.copyload, label %bb.h [
    i64 -2, label %bb.i
    i64 -1, label %.thread
  ]

.thread:                                          ; preds = %bb.g
  store i64 0, ptr %i.l, align 8, !noalias !920
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.bq, align 8, !noalias !920
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.pre533 = ptrtoint ptr %.sroa.0.i.sroa.9.0.copyload to i64
  br label %_RINvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB5_4TakeINtNtB7_8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvMNtNtBb_3ops9try_traitINtB3L_17NeverShortCircuituE10wrap_mut_2uB2c_NCINvNtB7_3map8map_foldB2c_NtNtCs2szWGFz6wmN_7uu_test6parser6SymboluNCNvMs0_B5i_NtB5i_6Parser6lparen0NCINvNvB2X_8for_each4callB5g_NCINvMsk_B1t_INtB1t_3VecB5g_E14extend_trustedINtB4U_3MapBN_B5V_EE0E0E0E0B46_EB5k_.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sroa.0.0.i.i.i.i = phi i64 [ 1, %bb.h ], [ 0, %bb.g ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.i.sroa.7.0.copyload), "nonnull"(ptr %.sroa.0.i.sroa.9.0.copyload) ]
  %i.bs = ptrtoint ptr %.sroa.0.i.sroa.9.0.copyload to i64 ; 3 uses
  %i.bt = ptrtoint ptr %.sroa.0.i.sroa.7.0.copyload to i64
  %i.bu = sub nuw i64 %i.bs, %i.bt
  %i.bv = udiv exact i64 %i.bu, 24                ; 2 uses
  %i.bw = add nuw nsw i64 %.sroa.0.0.i.i.i.i, %i.bv ; 2 uses
  %i.bx = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 3) ; 3 uses
  %i.by = mul nuw nsw i64 %i.bx, 40               ; 2 uses
  %i.bz = icmp eq i64 %i.bw, 0
  br i1 %i.bz, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENCNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB3l_6Parser6lparen0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3n_.exit.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !921
  %i.ca = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.by, i64 noundef range(i64 1, 9) 8) #21, !noalias !921 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.j, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENCNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB3l_6Parser6lparen0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3n_.exit.i.i.i

bb.j:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.by) #24, !noalias !920
  unreachable

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENCNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB3l_6Parser6lparen0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3n_.exit.i.i.i: ; preds = %bb.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.i ], [ %i.ca, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 2 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.i ], [ %i.bx, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 3 uses
  %i.cc = icmp samesign ule i64 %i.bx, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.cc), !noalias !918
  store i64 %.sroa.4.0.i.i, ptr %i.l, align 8, !noalias !920
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  store ptr %.sroa.10.0.i.i, ptr %i.cd, align 8, !noalias !920
  %i.ce = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  store i64 0, ptr %i.ce, align 8, !noalias !920
  tail call void @llvm.experimental.noalias.scope.decl(metadata !922), !noalias !918
  tail call void @llvm.experimental.noalias.scope.decl(metadata !923), !noalias !918
  %cond = icmp ne i64 %.sroa.0.i.sroa.0.0.copyload, -2 ; 2 uses
  %spec.select = zext i1 %cond to i64
  %i.cf = add nuw nsw i64 %i.bv, %spec.select
  %i.cg = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 3) ; 2 uses
  %i.ch = icmp samesign ugt i64 %i.cg, %.sroa.4.0.i.i
  br i1 %i.ch, label %bb.k, label %bb.l, !prof !924

bb.k:                                             ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENCNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB3l_6Parser6lparen0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3n_.exit.i.i.i
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 0, i64 noundef %i.cg, i64 noundef 8, i64 noundef 40) #21, !noalias !925
  %.pre.i.i = load i64, ptr %i.ce, align 8, !alias.scope !926, !noalias !920
  %.pre.i = load ptr, ptr %i.cd, align 8, !alias.scope !926, !noalias !920
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENCNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB3l_6Parser6lparen0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3n_.exit.i.i.i
  %i.ci = phi ptr [ %.sroa.10.0.i.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENCNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB3l_6Parser6lparen0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3n_.exit.i.i.i ], [ %.pre.i, %bb.k ] ; 2 uses
  %i.cj = phi i64 [ 0, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENCNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB3l_6Parser6lparen0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3n_.exit.i.i.i ], [ %.pre.i.i, %bb.k ] ; 3 uses
  br i1 %cond, label %bb.m, label %._crit_edge15.i.i.i.i.i.i.i.i.i

._crit_edge15.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.m, %bb.l
  %.pre.i.i.i.i.i.i.i.i.i.i = phi i64 [ 2, %bb.m ], [ 3, %bb.l ]
  %.sroa.512.0.copyload.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ct, %bb.m ], [ %i.cj, %bb.l ] ; 2 uses
  %.not8.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.i.sroa.7.0.copyload, %.sroa.0.i.sroa.9.0.copyload
  br i1 %.not8.not.i.i.i.i.i.i.i.i.i.i, label %_RINvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB5_4TakeINtNtB7_8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvMNtNtBb_3ops9try_traitINtB3L_17NeverShortCircuituE10wrap_mut_2uB2c_NCINvNtB7_3map8map_foldB2c_NtNtCs2szWGFz6wmN_7uu_test6parser6SymboluNCNvMs0_B5i_NtB5i_6Parser6lparen0NCINvNvB2X_8for_each4callB5g_NCINvMsk_B1t_INtB1t_3VecB5g_E14extend_trustedINtB4U_3MapBN_B5V_EE0E0E0E0B46_EB5k_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %._crit_edge15.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ck = phi i64 [ %i.co, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i, %._crit_edge15.i.i.i.i.i.i.i.i.i ]
  %i.cl = phi i64 [ %i.cq, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.512.0.copyload.i.i.i.i.i.i.i.i.i, %._crit_edge15.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.cm = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.i.sroa.7.0.copyload, %._crit_edge15.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !927
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i64 24, i1 false), !noalias !927
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24 ; 3 uses
  %i.co = add nsw i64 %i.ck, -1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !928
  call fastcc void @_RNvMNtCs2szWGFz6wmN_7uu_test6parserNtB2_6Symbol3new(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j) #21, !noalias !929
  %i.cp = getelementptr inbounds nuw [40 x i8], ptr %i.ci, i64 %i.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cp, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !930
  %i.cq = add i64 %i.cl, 1                        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !928
  %i.cr = icmp eq i64 %i.co, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !927
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cn, %.sroa.0.i.sroa.9.0.copyload
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.cr, i1 true, i1 %.not.not.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_RINvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB5_4TakeINtNtB7_8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvMNtNtBb_3ops9try_traitINtB3L_17NeverShortCircuituE10wrap_mut_2uB2c_NCINvNtB7_3map8map_foldB2c_NtNtCs2szWGFz6wmN_7uu_test6parser6SymboluNCNvMs0_B5i_NtB5i_6Parser6lparen0NCINvNvB2X_8for_each4callB5g_NCINvMsk_B1t_INtB1t_3VecB5g_E14extend_trustedINtB4U_3MapBN_B5V_EE0E0E0E0B46_EB5k_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !931
  store ptr %.sroa.0.i.sroa.4.0.copyload, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !932
  %.sroa.8.8..sroa.5.0..sroa_idx.i.i.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.0.i.sroa.5.0.copyload, ptr %.sroa.8.8..sroa.5.0..sroa_idx.i.i.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !932
  store i64 %.sroa.0.i.sroa.0.0.copyload, ptr %i.k, align 8, !noalias !931
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !933
  call fastcc void @_RNvMNtCs2szWGFz6wmN_7uu_test6parserNtB2_6Symbol3new(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.k) #21, !noalias !934
  %i.cs = getelementptr inbounds nuw [40 x i8], ptr %i.ci, i64 %i.cj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cs, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.h, i64 40, i1 false), !noalias !935
  %i.ct = add i64 %i.cj, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !931
  br label %._crit_edge15.i.i.i.i.i.i.i.i.i

_RINvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB5_4TakeINtNtB7_8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvMNtNtBb_3ops9try_traitINtB3L_17NeverShortCircuituE10wrap_mut_2uB2c_NCINvNtB7_3map8map_foldB2c_NtNtCs2szWGFz6wmN_7uu_test6parser6SymboluNCNvMs0_B5i_NtB5i_6Parser6lparen0NCINvNvB2X_8for_each4callB5g_NCINvMsk_B1t_INtB1t_3VecB5g_E14extend_trustedINtB4U_3MapBN_B5V_EE0E0E0E0B46_EB5k_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.thread, %._crit_edge15.i.i.i.i.i.i.i.i.i
  %.pre-phi = phi i64 [ %i.bs, %._crit_edge15.i.i.i.i.i.i.i.i.i ], [ %.pre533, %.thread ], [ %i.bs, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.cu = phi ptr [ %i.ce, %._crit_edge15.i.i.i.i.i.i.i.i.i ], [ %i.br, %.thread ], [ %i.ce, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.cv = phi ptr [ %i.cd, %._crit_edge15.i.i.i.i.i.i.i.i.i ], [ %i.bq, %.thread ], [ %i.cd, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.9.1.i.i.i.i.i = phi ptr [ %.sroa.0.i.sroa.7.0.copyload, %._crit_edge15.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.i.sroa.7.0.copyload, %.thread ], [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.val11.i.sink.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.512.0.copyload.i.i.i.i.i.i.i.i.i, %._crit_edge15.i.i.i.i.i.i.i.i.i ], [ 0, %.thread ], [ %i.cq, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  store i64 %.val11.i.sink.i.i.i.i.i.i.i.i, ptr %i.cu, align 8, !alias.scope !926, !noalias !936
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.1.i.i.i.i.i), "nonnull"(ptr %.sroa.0.i.sroa.9.0.copyload) ], !noalias !918
  %i.cw = ptrtoint ptr %.sroa.9.1.i.i.i.i.i to i64
  %i.cx = sub nuw i64 %.pre-phi, %i.cw
  %i.cy = udiv exact i64 %i.cx, 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !937), !noalias !918
  %i.cz = icmp eq ptr %.sroa.0.i.sroa.9.0.copyload, %.sroa.9.1.i.i.i.i.i
  br i1 %i.cz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %_RINvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB5_4TakeINtNtB7_8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvMNtNtBb_3ops9try_traitINtB3L_17NeverShortCircuituE10wrap_mut_2uB2c_NCINvNtB7_3map8map_foldB2c_NtNtCs2szWGFz6wmN_7uu_test6parser6SymboluNCNvMs0_B5i_NtB5i_6Parser6lparen0NCINvNvB2X_8for_each4callB5g_NCINvMsk_B1t_INtB1t_3VecB5g_E14extend_trustedINtB4U_3MapBN_B5V_EE0E0E0E0B46_EB5k_.exit.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.db, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RINvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB5_4TakeINtNtB7_8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvMNtNtBb_3ops9try_traitINtB3L_17NeverShortCircuituE10wrap_mut_2uB2c_NCINvNtB7_3map8map_foldB2c_NtNtCs2szWGFz6wmN_7uu_test6parser6SymboluNCNvMs0_B5i_NtB5i_6Parser6lparen0NCINvNvB2X_8for_each4callB5g_NCINvMsk_B1t_INtB1t_3VecB5g_E14extend_trustedINtB4U_3MapBN_B5V_EE0E0E0E0B46_EB5k_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %.sroa.9.1.i.i.i.i.i, i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.db = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.da, align 8, !range !5, !alias.scope !937, !noalias !938, !noundef !4 ; 2 uses
  %i.dc = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dd = getelementptr i8, ptr %i.da, i64 8
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dd, align 8, !alias.scope !937, !noalias !938, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !939
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.de = icmp eq i64 %i.db, %i.cy
  br i1 %i.de, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB5_4TakeINtNtB7_8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvMNtNtBb_3ops9try_traitINtB3L_17NeverShortCircuituE10wrap_mut_2uB2c_NCINvNtB7_3map8map_foldB2c_NtNtCs2szWGFz6wmN_7uu_test6parser6SymboluNCNvMs0_B5i_NtB5i_6Parser6lparen0NCINvNvB2X_8for_each4callB5g_NCINvMsk_B1t_INtB1t_3VecB5g_E14extend_trustedINtB4U_3MapBN_B5V_EE0E0E0E0B46_EB5k_.exit.i.i.i.i.i.i.i
  %i.df = icmp eq i64 %.sroa.0.i.sroa.8.0.copyload, 0
  br i1 %i.df, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB2h_4take4TakeINtNtB2h_8peekable8PeekableINtNtB6_9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENCNvMs0_B15_NtB15_6Parser6lparen0EE9from_iterB17_.exit, label %bb.o

bb.o:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.i.sroa.6.0.copyload) ], !noalias !918
  %i.dg = mul nuw i64 %.sroa.0.i.sroa.8.0.copyload, 24
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.i.sroa.6.0.copyload, i64 noundef %i.dg, i64 noundef range(i64 1, -9223372036854775807) 8) #21, !noalias !938
  br label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB2h_4take4TakeINtNtB2h_8peekable8PeekableINtNtB6_9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENCNvMs0_B15_NtB15_6Parser6lparen0EE9from_iterB17_.exit

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB2h_4take4TakeINtNtB2h_8peekable8PeekableINtNtB6_9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENCNvMs0_B15_NtB15_6Parser6lparen0EE9from_iterB17_.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.o
  %.sroa.0294.0.copyload = load i64, ptr %i.l, align 8, !noalias !940 ; 4 uses
  %.sroa.6.0.copyload = load ptr, ptr %i.cv, align 8, !noalias !940, !nonnull !4, !noundef !4 ; 21 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !920
  switch i64 %.val11.i.sink.i.i.i.i.i.i.i.i, label %.thread600 [
    i64 1, label %.split.i
    i64 3, label %bb.v
    i64 2, label %bb.bd
    i64 0, label %.thread599
  ]

.split.i:                                         ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB2h_4take4TakeINtNtB2h_8peekable8PeekableINtNtB6_9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENCNvMs0_B15_NtB15_6Parser6lparen0EE9from_iterB17_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !918
  store ptr %.sroa.6.0.copyload, ptr %i.aw, align 8, !noalias !918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !918
  store ptr %i.aw, ptr %i.av, align 8, !noalias !918
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolNtB6_7Display3fmtBA_, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !918
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.21, ptr noundef nonnull @35, ptr noundef nonnull %i.av) #21, !noalias !941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !918
  br label %.lr.ph.i.i.i64.preheader

bb.p:                                             ; preds = %bb.bw, %bb.bs
  tail call void @llvm.experimental.noalias.scope.decl(metadata !942), !noalias !919
  %i.dh = icmp eq i64 %.val11.i.sink.i.i.i.i.i.i.i.i, 0
  br i1 %i.dh, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i72, label %.lr.ph.i.i.i64.preheader

.lr.ph.i.i.i64.preheader:                         ; preds = %.split.i, %bb.ag, %bb.aw, %bb.bj, %bb.bp, %bb.p
  %.sroa.0.1589 = phi i64 [ -1, %bb.p ], [ -1, %bb.ag ], [ -1, %bb.bj ], [ -1, %bb.aw ], [ -1, %bb.bp ], [ 3, %.split.i ]
  %.not5587 = phi i1 [ true, %bb.p ], [ true, %bb.ag ], [ true, %bb.bj ], [ true, %bb.aw ], [ true, %bb.bp ], [ false, %.split.i ]
  br label %.lr.ph.i.i.i64

.lr.ph.i.i.i64:                                   ; preds = %.lr.ph.i.i.i64.preheader, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit.i.i.i71
  %.sroa.0.03.i.i.i65 = phi i64 [ %i.dj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit.i.i.i71 ], [ 0, %.lr.ph.i.i.i64.preheader ] ; 2 uses
  %i.di = getelementptr inbounds nuw [40 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.0.03.i.i.i65 ; 6 uses
  %i.dj = add nuw nsw i64 %.sroa.0.03.i.i.i65, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !943), !noalias !919
  %i.dk = load i64, ptr %i.di, align 8, !range !6, !alias.scope !944, !noalias !945, !noundef !4
  switch i64 %i.dk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit.i.i.i71 [
    i64 2, label %bb.q
    i64 3, label %bb.r
    i64 4, label %bb.s
    i64 5, label %bb.t
  ]

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i.i.i.i67: ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %.sink7.i.i.i.i68 = phi i64 [ 24, %bb.s ], [ 16, %bb.r ], [ 16, %bb.q ], [ 24, %bb.t ]
  %.val2.i.sink.i.i.i.i69 = phi i64 [ %.val4.i.i.i.i.i74, %bb.s ], [ %.val.i.i.i.i75, %bb.r ], [ %.val2.i.i.i.i76, %bb.q ], [ %.val2.i.i.i.i.i66, %bb.t ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 %.sink7.i.i.i.i68
  %.val1.i6.i.i.i.i70 = load ptr, ptr %i.dl, align 8, !alias.scope !944, !noalias !945, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i6.i.i.i.i70, i64 noundef %.val2.i.sink.i.i.i.i69, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !946
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit.i.i.i71

bb.q:                                             ; preds = %.lr.ph.i.i.i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %.val2.i.i.i.i76 = load i64, ptr %i.dm, align 8, !range !5, !alias.scope !944, !noalias !945, !noundef !4 ; 2 uses
  %i.dn = icmp eq i64 %.val2.i.i.i.i76, 0
  br i1 %i.dn, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit.i.i.i71, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i.i.i.i67

bb.r:                                             ; preds = %.lr.ph.i.i.i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %.val.i.i.i.i75 = load i64, ptr %i.do, align 8, !range !5, !alias.scope !944, !noalias !945, !noundef !4 ; 2 uses
  %i.dp = icmp eq i64 %.val.i.i.i.i75, 0
  br i1 %i.dp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit.i.i.i71, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i.i.i.i67

bb.s:                                             ; preds = %.lr.ph.i.i.i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %.val4.i.i.i.i.i74 = load i64, ptr %i.dq, align 8, !range !5, !alias.scope !947, !noalias !945, !noundef !4 ; 2 uses
  %i.dr = icmp eq i64 %.val4.i.i.i.i.i74, 0
  br i1 %i.dr, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit.i.i.i71, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i.i.i.i67

bb.t:                                             ; preds = %.lr.ph.i.i.i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %.val2.i.i.i.i.i66 = load i64, ptr %i.ds, align 8, !range !5, !alias.scope !948, !noalias !945, !noundef !4 ; 2 uses
  %i.dt = icmp eq i64 %.val2.i.i.i.i.i66, 0
  br i1 %i.dt, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit.i.i.i71, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i.i.i.i67

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit.i.i.i71: ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i.i.i.i67, %.lr.ph.i.i.i64
  %i.du = icmp eq i64 %i.dj, %.val11.i.sink.i.i.i.i.i.i.i.i
  br i1 %i.du, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i72, label %.lr.ph.i.i.i64

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i72: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit.i.i.i71, %bb.p
  %.sroa.0.1590 = phi i64 [ -1, %bb.p ], [ %.sroa.0.1589, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit.i.i.i71 ]
  %.not5588 = phi i1 [ true, %bb.p ], [ %.not5587, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit.i.i.i71 ]
  %i.dv = icmp eq i64 %.sroa.0294.0.copyload, 0
  br i1 %i.dv, label %_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser6lparen.exit, label %bb.u

bb.u:                                             ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i72
  %i.dw = mul nuw i64 %.sroa.0294.0.copyload, 40
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload, i64 noundef %i.dw, i64 noundef range(i64 1, -9223372036854775807) 8) #21, !noalias !945
  br label %_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser6lparen.exit

bb.v:                                             ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB2h_4take4TakeINtNtB2h_8peekable8PeekableINtNtB6_9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENCNvMs0_B15_NtB15_6Parser6lparen0EE9from_iterB17_.exit
  %i.dx = load i64, ptr %.sroa.6.0.copyload, align 8, !range !6, !noalias !918, !noundef !4 ; 3 uses
  switch i64 %i.dx, label %bb.w [
    i64 4, label %bb.x
    i64 5, label %bb.y
  ]

bb.w:                                             ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.v
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 40
  %i.dz = load i64, ptr %i.dy, align 8, !range !6, !noalias !918, !noundef !4
  switch i64 %i.dz, label %bb.an [
    i64 3, label %bb.ao
    i64 4, label %bb.ap
  ]

bb.x:                                             ; preds = %bb.v
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 40
  %i.eb = load i64, ptr %i.ea, align 8, !range !6, !noalias !918, !noundef !4
  %i.ec = icmp eq i64 %i.eb, 3
  br i1 %i.ec, label %bb.z, label %bb.w

bb.y:                                             ; preds = %bb.v
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 80
  %i.ee = load i64, ptr %i.ed, align 8, !range !6, !noalias !918, !noundef !4
  %i.ef = icmp eq i64 %i.ee, 3
  br i1 %i.ef, label %bb.ac, label %bb.w

bb.z:                                             ; preds = %bb.x
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 64
  %i.eh = load i64, ptr %i.eg, align 8, !noalias !918, !noundef !4
  %i.ei = icmp eq i64 %i.eh, 1
  br i1 %i.ei, label %bb.aa, label %bb.w

bb.aa:                                            ; preds = %bb.z
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 56
  %i.ek = load ptr, ptr %i.ej, align 8, !noalias !918, !nonnull !4, !noundef !4
  %lhsc24.i = load i8, ptr %i.ek, align 1, !noalias !918
  %i.el = icmp eq i8 %lhsc24.i, 41
  br i1 %i.el, label %bb.ab, label %bb.w

bb.ab:                                            ; preds = %bb.bh, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !918
  store i64 0, ptr %i.aq, align 8, !noalias !918
  call fastcc void @_RNvMNtCs2szWGFz6wmN_7uu_test6parserNtB2_6Symbol12into_literal(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.ar, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.aq) #21, !noalias !918, !inline_history !582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !918
  call fastcc void @_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser7literal(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.as, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.ar) #21, !noalias !919, !inline_history !582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !918
  %i.em = load i64, ptr %i.as, align 8, !range !12, !noalias !918, !noundef !4 ; 2 uses
  %.not25.i = icmp eq i64 %i.em, -1
  br i1 %.not25.i, label %bb.bj, label %bb.bi

bb.ac:                                            ; preds = %bb.y
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 104
  %i.eo = load i64, ptr %i.en, align 8, !noalias !918, !noundef !4
  %i.ep = icmp eq i64 %i.eo, 1
  br i1 %i.ep, label %bb.ad, label %bb.w

bb.ad:                                            ; preds = %bb.ac
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 96
  %i.er = load ptr, ptr %i.eq, align 8, !noalias !918, !nonnull !4, !noundef !4
  %lhsc23.i = load i8, ptr %i.er, align 1, !noalias !918
  %i.es = icmp eq i8 %lhsc23.i, 41
  br i1 %i.es, label %bb.ae, label %bb.w

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !918
  call fastcc void @_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser10next_token(ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.au, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1) #21, !noalias !919, !inline_history !582
  call fastcc void @_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser3uop(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.au) #21, !noalias !919, !inline_history !582
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !918
  call fastcc void @_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser6expect(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.at, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1) #21
end_hunk_1
begin_hunk_2_@_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser4term:bb.a
bb.bj:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !918
  br label %.lr.ph.i.i.i64.preheader

.thread597:                                       ; preds = %bb.bg, %bb.bh, %bb.bf
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 64
  %i.gk = load i64, ptr %i.gj, align 8, !noalias !918, !noundef !4
  %i.gl = icmp eq i64 %i.gk, 1
  br i1 %i.gl, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bl, %.thread597
  br i1 %i.fz, label %.thread599, label %.thread600

bb.bl:                                            ; preds = %.thread597
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 56
  %i.gn = load ptr, ptr %i.gm, align 8, !noalias !918, !nonnull !4, !noundef !4
  %lhsc22.i = load i8, ptr %i.gn, align 1, !noalias !918
  %i.go = icmp eq i8 %lhsc22.i, 41
  br i1 %i.go, label %bb.ar, label %bb.bk

bb.bm:                                            ; preds = %bb.ar
  %.sroa.4337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4337.0..sroa_idx, i64 24, i1 false), !noalias !941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !918
  br label %bb.bq

bb.bn:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !918
  call fastcc void @_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser6expect(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.an, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1) #21
  %i.gp = load i64, ptr %i.an, align 8, !range !12, !noalias !918, !noundef !4 ; 2 uses
  %.not30.i = icmp eq i64 %i.gp, -1
  br i1 %.not30.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.sroa.4347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4347.0..sroa_idx, i64 24, i1 false), !noalias !941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !918
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !918
  br label %.lr.ph.i.i.i64.preheader

bb.bq:                                            ; preds = %bb.bo, %bb.bm
  %.sroa.0.2 = phi i64 [ %i.gp, %bb.bo ], [ %i.fr, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !918
  br label %.lr.ph.i.i.i.preheader

bb.br:                                            ; preds = %.thread599
  %.sroa.4377.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4377.0..sroa_idx, i64 24, i1 false), !noalias !941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !918
  br label %bb.ah

bb.bs:                                            ; preds = %.thread599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !918
  br label %bb.p

bb.bt:                                            ; preds = %bb.bc, %bb.ba
  %.sroa.0302.0.ph = phi i64 [ %i.fw, %bb.ba ], [ %i.fx, %bb.bc ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8305, i64 24, i1 false)
  br label %bb.ah

bb.bu:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !957
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !918
  call fastcc void @_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser6expect(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1) #21
  %i.gq = load i64, ptr %i.ag, align 8, !range !12, !noalias !918, !noundef !4 ; 2 uses
  %.not33.i = icmp eq i64 %i.gq, -1
  br i1 %.not33.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %.sroa.4397.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4397.0..sroa_idx, i64 24, i1 false), !noalias !941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !918
  br label %bb.ah

bb.bw:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !918
  br label %bb.p

_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser6lparen.exit: ; preds = %bb.u, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i72
  br i1 %.not5588, label %bb.ey, label %_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser6lparen.exit.thread

bb.bx:                                            ; preds = %_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser10next_token.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !958
  tail call void @llvm.experimental.noalias.scope.decl(metadata !959)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !960
  tail call void @llvm.experimental.noalias.scope.decl(metadata !961), !noalias !962
  tail call void @llvm.experimental.noalias.scope.decl(metadata !963), !noalias !962
  tail call void @llvm.experimental.noalias.scope.decl(metadata !964), !noalias !962
  tail call void @llvm.experimental.noalias.scope.decl(metadata !965), !noalias !962
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.gs = load ptr, ptr %i.gr, align 8, !alias.scope !966, !noalias !962, !nonnull !4, !noundef !4
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !alias.scope !966, !noalias !962, !nonnull !4, !noundef !4 ; 4 uses
  %i.gv = icmp eq ptr %i.gu, %i.gs
  br i1 %i.gv, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Y_8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs2szWGFz6wmN_7uu_test.exit.i217.thread, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Y_8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs2szWGFz6wmN_7uu_test.exit.i217

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Y_8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs2szWGFz6wmN_7uu_test.exit.i217.thread: ; preds = %bb.bx
  store i64 -1, ptr %i.bh, align 8, !alias.scope !967, !noalias !962
  br label %bb.cb

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Y_8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs2szWGFz6wmN_7uu_test.exit.i217: ; preds = %bb.bx
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  store ptr %i.gw, ptr %i.gt, align 8, !alias.scope !966, !noalias !962
  %.sroa.0.0.copyload7.i.i226 = load i64, ptr %i.gu, align 8, !noalias !968 ; 4 uses
  %.sroa.5.0..sroa_idx8.i.i227 = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %.sroa.4.0..sroa_idx.i.i230 = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i230, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx8.i.i227, i64 16, i1 false), !noalias !969
  store i64 %.sroa.0.0.copyload7.i.i226, ptr %i.bh, align 8, !alias.scope !967, !noalias !962
  %i.gx = icmp ne i64 %.sroa.0.0.copyload7.i.i226, -2
  tail call void @llvm.assume(i1 %i.gx), !noalias !962
  %.not.i218 = icmp eq i64 %.sroa.0.0.copyload7.i.i226, -1
  br i1 %.not.i218, label %bb.cb, label %bb.by

bb.by:                                            ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Y_8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs2szWGFz6wmN_7uu_test.exit.i217
  %.val.i219 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i230, align 8, !alias.scope !959, !noalias !962, !nonnull !4, !noundef !4
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val1.i220 = load i64, ptr %i.gy, align 8, !alias.scope !959, !noalias !962, !noundef !4 ; 6 uses
  %i.gz = icmp eq i64 %.val1.i220, 0
  br i1 %i.gz, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs2szWGFz6wmN_7uu_test.exit.i222, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i221

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i221: ; preds = %bb.by
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !970
  %i.ha = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val1.i220, i64 noundef range(i64 1, 9) 1) #21, !noalias !970 ; 3 uses
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i221
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val1.i220) #24, !noalias !971
  unreachable

bb.ca:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i221
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ha, ptr nonnull readonly align 1 %.val.i219, i64 range(i64 0, -9223372036854775808) %.val1.i220, i1 false), !noalias !972
  br label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs2szWGFz6wmN_7uu_test.exit.i222

_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs2szWGFz6wmN_7uu_test.exit.i222: ; preds = %bb.ca, %bb.by
  %.sroa.5.0.i223 = phi ptr [ %i.ha, %bb.ca ], [ inttoptr (i64 1 to ptr), %bb.by ]
  store i64 %.val1.i220, ptr %i.a, align 8, !noalias !960
  %.sroa.45.0..sroa_idx.i224 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.5.0.i223, ptr %.sroa.45.0..sroa_idx.i224, align 8, !noalias !960
  %.sroa.56.0..sroa_idx.i225 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.val1.i220, ptr %.sroa.56.0..sroa_idx.i225, align 8, !noalias !960
  br label %_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser4peek.exit231

bb.cb:                                            ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Y_8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs2szWGFz6wmN_7uu_test.exit.i217.thread, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Y_8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs2szWGFz6wmN_7uu_test.exit.i217
  store i64 -1, ptr %i.a, align 8, !noalias !960
  br label %_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser4peek.exit231

_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser4peek.exit231: ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs2szWGFz6wmN_7uu_test.exit.i222, %bb.cb
  %.sroa.0.0.copyload.i134 = phi i64 [ %.sroa.0.0.copyload7.i.i226, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs2szWGFz6wmN_7uu_test.exit.i222 ], [ -1, %bb.cb ]
  call fastcc void @_RNvMNtCs2szWGFz6wmN_7uu_test6parserNtB2_6Symbol3new(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %i.af, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.a) #21, !noalias !973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !960
  %i.hc = load i64, ptr %i.af, align 8, !range !6, !noalias !958, !noundef !4 ; 3 uses
  switch i64 %i.hc, label %bb.cc [
    i64 2, label %bb.cl
    i64 4, label %bb.cl
    i64 6, label %bb.cx
  ]

bb.cc:                                            ; preds = %_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser4peek.exit231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !958
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !958
  call fastcc void @_RNvXs6_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB5_8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtBb_5clone5Clone5cloneCs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bh) #23, !noalias !962, !inline_history !695
  %.sroa.0.i8.sroa.0.0.copyload = load i64, ptr %i.r, align 8, !noalias !958 ; 3 uses
  %.sroa.0.i8.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.0.i8.sroa.4.0.copyload = load ptr, ptr %.sroa.0.i8.sroa.4.0..sroa_idx, align 8, !noalias !958
  %.sroa.0.i8.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.0.i8.sroa.5.0.copyload = load i64, ptr %.sroa.0.i8.sroa.5.0..sroa_idx, align 8, !noalias !958
  %.sroa.0.i8.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.0.i8.sroa.6.0.copyload = load ptr, ptr %.sroa.0.i8.sroa.6.0..sroa_idx, align 8, !noalias !958 ; 2 uses
  %.sroa.0.i8.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.0.i8.sroa.7.0.copyload = load ptr, ptr %.sroa.0.i8.sroa.7.0..sroa_idx, align 8, !noalias !958 ; 6 uses
  %.sroa.0.i8.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.0.i8.sroa.8.0.copyload = load i64, ptr %.sroa.0.i8.sroa.8.0..sroa_idx, align 8, !noalias !958 ; 2 uses
  %.sroa.0.i8.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %.sroa.0.i8.sroa.9.0.copyload = load ptr, ptr %.sroa.0.i8.sroa.9.0..sroa_idx, align 8, !noalias !958 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !958
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !974
  switch i64 %.sroa.0.i8.sroa.0.0.copyload, label %bb.cd [
    i64 -2, label %bb.ce
    i64 -1, label %.thread506
  ]

.thread506:                                       ; preds = %bb.cc
  store i64 0, ptr %i.f, align 8, !noalias !974
  %i.hd = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.hd, align 8, !noalias !974
  %i.he = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.pre534 = ptrtoint ptr %.sroa.0.i8.sroa.9.0.copyload to i64
  br label %_RINvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB5_4TakeINtNtB7_8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvMNtNtBb_3ops9try_traitINtB3L_17NeverShortCircuituE10wrap_mut_2uB2c_NCINvNtB7_3map8map_foldB2c_NtNtCs2szWGFz6wmN_7uu_test6parser6SymboluNCNvMs0_B5i_NtB5i_6Parser4bang0NCINvNvB2X_8for_each4callB5g_NCINvMsk_B1t_INtB1t_3VecB5g_E14extend_trustedINtB4U_3MapBN_B5V_EE0E0E0E0B46_EB5k_.exit.i.i.i.i.i.i.i

bb.cd:                                            ; preds = %bb.cc
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cc, %bb.cd
  %.sroa.0.0.i.i.i.i209 = phi i64 [ 1, %bb.cd ], [ 0, %bb.cc ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.i8.sroa.7.0.copyload), "nonnull"(ptr %.sroa.0.i8.sroa.9.0.copyload) ]
  %i.hf = ptrtoint ptr %.sroa.0.i8.sroa.9.0.copyload to i64 ; 3 uses
  %i.hg = ptrtoint ptr %.sroa.0.i8.sroa.7.0.copyload to i64
  %i.hh = sub nuw i64 %i.hf, %i.hg
  %i.hi = udiv exact i64 %i.hh, 24                ; 2 uses
  %i.hj = add nuw nsw i64 %.sroa.0.0.i.i.i.i209, %i.hi ; 2 uses
  %i.hk = tail call i64 @llvm.umin.i64(i64 %i.hj, i64 4) ; 3 uses
  %i.hl = mul nuw nsw i64 %i.hk, 40               ; 2 uses
  %i.hm = icmp eq i64 %i.hj, 0
  br i1 %i.hm, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENCNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB3l_6Parser4bang0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3n_.exit.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i213

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i213: ; preds = %bb.ce
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !975
  %i.hn = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.hl, i64 noundef range(i64 1, 9) 8) #21, !noalias !975 ; 2 uses
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %bb.cf, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENCNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB3l_6Parser4bang0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3n_.exit.i.i.i

bb.cf:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i213
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.hl) #24, !noalias !974
  unreachable

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENCNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB3l_6Parser4bang0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3n_.exit.i.i.i: ; preds = %bb.ce, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i213
  %.sroa.10.0.i.i171 = phi ptr [ inttoptr (i64 8 to ptr), %bb.ce ], [ %i.hn, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i213 ] ; 2 uses
  %.sroa.4.0.i.i172 = phi i64 [ 0, %bb.ce ], [ %i.hk, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i213 ] ; 3 uses
  %i.hp = icmp samesign ule i64 %i.hk, %.sroa.4.0.i.i172
  tail call void @llvm.assume(i1 %i.hp), !noalias !958
  store i64 %.sroa.4.0.i.i172, ptr %i.f, align 8, !noalias !974
  %i.hq = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i171, ptr %i.hq, align 8, !noalias !974
  %i.hr = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  store i64 0, ptr %i.hr, align 8, !noalias !974
  tail call void @llvm.experimental.noalias.scope.decl(metadata !976), !noalias !958
  tail call void @llvm.experimental.noalias.scope.decl(metadata !977), !noalias !958
  %cond515 = icmp ne i64 %.sroa.0.i8.sroa.0.0.copyload, -2 ; 2 uses
  %spec.select517 = zext i1 %cond515 to i64
  %i.hs = add nuw nsw i64 %i.hi, %spec.select517
  %i.ht = tail call i64 @llvm.umin.i64(i64 %i.hs, i64 4) ; 2 uses
  %i.hu = icmp samesign ugt i64 %i.ht, %.sroa.4.0.i.i172
  br i1 %i.hu, label %bb.cg, label %bb.ch, !prof !924

bb.cg:                                            ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENCNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB3l_6Parser4bang0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3n_.exit.i.i.i
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0, i64 noundef %i.ht, i64 noundef 8, i64 noundef 40) #21, !noalias !978
  %.pre.i.i207 = load i64, ptr %i.hr, align 8, !alias.scope !979, !noalias !974
  %.pre.i208 = load ptr, ptr %i.hq, align 8, !alias.scope !979, !noalias !974
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENCNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB3l_6Parser4bang0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3n_.exit.i.i.i
  %i.hv = phi ptr [ %.sroa.10.0.i.i171, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENCNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB3l_6Parser4bang0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3n_.exit.i.i.i ], [ %.pre.i208, %bb.cg ] ; 2 uses
  %i.hw = phi i64 [ 0, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENCNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB3l_6Parser4bang0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3n_.exit.i.i.i ], [ %.pre.i.i207, %bb.cg ] ; 3 uses
  br i1 %cond515, label %bb.ci, label %._crit_edge15.i.i.i.i.i.i.i.i.i200

._crit_edge15.i.i.i.i.i.i.i.i.i200:               ; preds = %bb.ci, %bb.ch
  %.pre.i.i.i.i.i.i.i.i.i.i201 = phi i64 [ 3, %bb.ci ], [ 4, %bb.ch ]
  %.sroa.512.0.copyload.i.i.i.i.i.i.i.i.i202 = phi i64 [ %i.ig, %bb.ci ], [ %i.hw, %bb.ch ] ; 2 uses
  %.not8.not.i.i.i.i.i.i.i.i.i.i203 = icmp eq ptr %.sroa.0.i8.sroa.7.0.copyload, %.sroa.0.i8.sroa.9.0.copyload
  br i1 %.not8.not.i.i.i.i.i.i.i.i.i.i203, label %_RINvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB5_4TakeINtNtB7_8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvMNtNtBb_3ops9try_traitINtB3L_17NeverShortCircuituE10wrap_mut_2uB2c_NCINvNtB7_3map8map_foldB2c_NtNtCs2szWGFz6wmN_7uu_test6parser6SymboluNCNvMs0_B5i_NtB5i_6Parser4bang0NCINvNvB2X_8for_each4callB5g_NCINvMsk_B1t_INtB1t_3VecB5g_E14extend_trustedINtB4U_3MapBN_B5V_EE0E0E0E0B46_EB5k_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i204

.lr.ph.i.i.i.i.i.i.i.i.i.i204:                    ; preds = %._crit_edge15.i.i.i.i.i.i.i.i.i200, %.lr.ph.i.i.i.i.i.i.i.i.i.i204
  %i.hx = phi i64 [ %i.ib, %.lr.ph.i.i.i.i.i.i.i.i.i.i204 ], [ %.pre.i.i.i.i.i.i.i.i.i.i201, %._crit_edge15.i.i.i.i.i.i.i.i.i200 ]
  %i.hy = phi i64 [ %i.id, %.lr.ph.i.i.i.i.i.i.i.i.i.i204 ], [ %.sroa.512.0.copyload.i.i.i.i.i.i.i.i.i202, %._crit_edge15.i.i.i.i.i.i.i.i.i200 ] ; 2 uses
  %i.hz = phi ptr [ %i.ia, %.lr.ph.i.i.i.i.i.i.i.i.i.i204 ], [ %.sroa.0.i8.sroa.7.0.copyload, %._crit_edge15.i.i.i.i.i.i.i.i.i200 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !980
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.hz, i64 24, i1 false), !noalias !980
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 24 ; 3 uses
  %i.ib = add nsw i64 %i.hx, -1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !981
  call fastcc void @_RNvMNtCs2szWGFz6wmN_7uu_test6parserNtB2_6Symbol3new(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d) #21, !noalias !982
  %i.ic = getelementptr inbounds nuw [40 x i8], ptr %i.hv, i64 %i.hy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ic, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !983
  %i.id = add i64 %i.hy, 1                        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !981
  %i.ie = icmp eq i64 %i.ib, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !980
  %.not.not.i.i.i.i.i.i.i.i.i.i205 = icmp eq ptr %i.ia, %.sroa.0.i8.sroa.9.0.copyload
  %or.cond.i.i.i.i.i.i.i.i206 = select i1 %i.ie, i1 true, i1 %.not.not.i.i.i.i.i.i.i.i.i.i205
  br i1 %or.cond.i.i.i.i.i.i.i.i206, label %_RINvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB5_4TakeINtNtB7_8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvMNtNtBb_3ops9try_traitINtB3L_17NeverShortCircuituE10wrap_mut_2uB2c_NCINvNtB7_3map8map_foldB2c_NtNtCs2szWGFz6wmN_7uu_test6parser6SymboluNCNvMs0_B5i_NtB5i_6Parser4bang0NCINvNvB2X_8for_each4callB5g_NCINvMsk_B1t_INtB1t_3VecB5g_E14extend_trustedINtB4U_3MapBN_B5V_EE0E0E0E0B46_EB5k_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i204

bb.ci:                                            ; preds = %bb.ch
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i198 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !984
  store ptr %.sroa.0.i8.sroa.4.0.copyload, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i198, align 8, !noalias !985
  %.sroa.8.8..sroa.5.0..sroa_idx.i.i.i.i.sroa_idx.i.i.i.i.i199 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.0.i8.sroa.5.0.copyload, ptr %.sroa.8.8..sroa.5.0..sroa_idx.i.i.i.i.sroa_idx.i.i.i.i.i199, align 8, !noalias !985
  store i64 %.sroa.0.i8.sroa.0.0.copyload, ptr %i.e, align 8, !noalias !984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !986
  call fastcc void @_RNvMNtCs2szWGFz6wmN_7uu_test6parserNtB2_6Symbol3new(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e) #21, !noalias !987
  %i.if = getelementptr inbounds nuw [40 x i8], ptr %i.hv, i64 %i.hw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.if, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !988
  %i.ig = add i64 %i.hw, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !984
  br label %._crit_edge15.i.i.i.i.i.i.i.i.i200

_RINvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB5_4TakeINtNtB7_8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvMNtNtBb_3ops9try_traitINtB3L_17NeverShortCircuituE10wrap_mut_2uB2c_NCINvNtB7_3map8map_foldB2c_NtNtCs2szWGFz6wmN_7uu_test6parser6SymboluNCNvMs0_B5i_NtB5i_6Parser4bang0NCINvNvB2X_8for_each4callB5g_NCINvMsk_B1t_INtB1t_3VecB5g_E14extend_trustedINtB4U_3MapBN_B5V_EE0E0E0E0B46_EB5k_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i204, %.thread506, %._crit_edge15.i.i.i.i.i.i.i.i.i200
  %.pre-phi535 = phi i64 [ %i.hf, %._crit_edge15.i.i.i.i.i.i.i.i.i200 ], [ %.pre534, %.thread506 ], [ %i.hf, %.lr.ph.i.i.i.i.i.i.i.i.i.i204 ]
  %i.ih = phi ptr [ %i.hr, %._crit_edge15.i.i.i.i.i.i.i.i.i200 ], [ %i.he, %.thread506 ], [ %i.hr, %.lr.ph.i.i.i.i.i.i.i.i.i.i204 ]
  %.sroa.9.1.i.i.i.i.i186 = phi ptr [ %.sroa.0.i8.sroa.7.0.copyload, %._crit_edge15.i.i.i.i.i.i.i.i.i200 ], [ %.sroa.0.i8.sroa.7.0.copyload, %.thread506 ], [ %i.ia, %.lr.ph.i.i.i.i.i.i.i.i.i.i204 ] ; 4 uses
  %.val11.i.sink.i.i.i.i.i.i.i.i188 = phi i64 [ %.sroa.512.0.copyload.i.i.i.i.i.i.i.i.i202, %._crit_edge15.i.i.i.i.i.i.i.i.i200 ], [ 0, %.thread506 ], [ %i.id, %.lr.ph.i.i.i.i.i.i.i.i.i.i204 ]
  store i64 %.val11.i.sink.i.i.i.i.i.i.i.i188, ptr %i.ih, align 8, !alias.scope !979, !noalias !989
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.1.i.i.i.i.i186), "nonnull"(ptr %.sroa.0.i8.sroa.9.0.copyload) ], !noalias !958
  %i.ii = ptrtoint ptr %.sroa.9.1.i.i.i.i.i186 to i64
  %i.ij = sub nuw i64 %.pre-phi535, %i.ii
  %i.ik = udiv exact i64 %i.ij, 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !990), !noalias !958
  %i.il = icmp eq ptr %.sroa.0.i8.sroa.9.0.copyload, %.sroa.9.1.i.i.i.i.i186
  br i1 %i.il, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i.i.i.i.i.i.i.i194, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i189

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i189:                ; preds = %_RINvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB5_4TakeINtNtB7_8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvMNtNtBb_3ops9try_traitINtB3L_17NeverShortCircuituE10wrap_mut_2uB2c_NCINvNtB7_3map8map_foldB2c_NtNtCs2szWGFz6wmN_7uu_test6parser6SymboluNCNvMs0_B5i_NtB5i_6Parser4bang0NCINvNvB2X_8for_each4callB5g_NCINvMsk_B1t_INtB1t_3VecB5g_E14extend_trustedINtB4U_3MapBN_B5V_EE0E0E0E0B46_EB5k_.exit.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i.i.i.i.i.i.i.i.i193
  %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i.i190 = phi i64 [ %i.in, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i.i.i.i.i.i.i.i.i193 ], [ 0, %_RINvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB5_4TakeINtNtB7_8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvMNtNtBb_3ops9try_traitINtB3L_17NeverShortCircuituE10wrap_mut_2uB2c_NCINvNtB7_3map8map_foldB2c_NtNtCs2szWGFz6wmN_7uu_test6parser6SymboluNCNvMs0_B5i_NtB5i_6Parser4bang0NCINvNvB2X_8for_each4callB5g_NCINvMsk_B1t_INtB1t_3VecB5g_E14extend_trustedINtB4U_3MapBN_B5V_EE0E0E0E0B46_EB5k_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.im = getelementptr inbounds nuw [24 x i8], ptr %.sroa.9.1.i.i.i.i.i186, i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i.i190 ; 2 uses
  %i.in = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i.i190, 1 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i191 = load i64, ptr %i.im, align 8, !range !5, !alias.scope !990, !noalias !991, !noundef !4 ; 2 uses
  %i.io = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i191, 0
  br i1 %i.io, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i.i.i.i.i.i.i.i.i193, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i189
  %i.ip = getelementptr i8, ptr %i.im, i64 8
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i192 = load ptr, ptr %i.ip, align 8, !alias.scope !990, !noalias !991, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i.i.i.i.i192, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i191, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !992
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i.i.i.i.i.i.i.i.i193

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i.i.i.i.i.i.i.i.i193: ; preds = %bb.cj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i189
  %i.iq = icmp eq i64 %i.in, %i.ik
  br i1 %i.iq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i.i.i.i.i.i.i.i194, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i189

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i.i.i.i.i.i.i.i194: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i.i.i.i.i.i.i.i.i193, %_RINvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB5_4TakeINtNtB7_8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvMNtNtBb_3ops9try_traitINtB3L_17NeverShortCircuituE10wrap_mut_2uB2c_NCINvNtB7_3map8map_foldB2c_NtNtCs2szWGFz6wmN_7uu_test6parser6SymboluNCNvMs0_B5i_NtB5i_6Parser4bang0NCINvNvB2X_8for_each4callB5g_NCINvMsk_B1t_INtB1t_3VecB5g_E14extend_trustedINtB4U_3MapBN_B5V_EE0E0E0E0B46_EB5k_.exit.i.i.i.i.i.i.i
  %i.ir = icmp eq i64 %.sroa.0.i8.sroa.8.0.copyload, 0
  br i1 %i.ir, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB2h_4take4TakeINtNtB2h_8peekable8PeekableINtNtB6_9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENCNvMs0_B15_NtB15_6Parser4bang0EE9from_iterB17_.exit, label %bb.ck

bb.ck:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i.i.i.i.i.i.i.i194
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.i8.sroa.6.0.copyload) ], !noalias !958
  %i.is = mul nuw i64 %.sroa.0.i8.sroa.8.0.copyload, 24
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.i8.sroa.6.0.copyload, i64 noundef %i.is, i64 noundef range(i64 1, -9223372036854775807) 8) #21, !noalias !991
  br label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB2h_4take4TakeINtNtB2h_8peekable8PeekableINtNtB6_9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENCNvMs0_B15_NtB15_6Parser4bang0EE9from_iterB17_.exit

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB2h_4take4TakeINtNtB2h_8peekable8PeekableINtNtB6_9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENCNvMs0_B15_NtB15_6Parser4bang0EE9from_iterB17_.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i.i.i.i.i.i.i.i194, %bb.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !974
  %i.it = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !noalias !958, !nonnull !4, !noundef !4 ; 5 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.iw = load i64, ptr %i.iv, align 8, !noalias !958, !noundef !4 ; 3 uses
  %i.ix = icmp eq i64 %i.iw, 3
  br i1 %i.ix, label %bb.eb, label %bb.ec

bb.cl:                                            ; preds = %_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser4peek.exit231, %_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser4peek.exit231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !958
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !958
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !958
  call fastcc void @_RNvXs6_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB5_8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtBb_5clone5Clone5cloneCs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bh) #23, !noalias !962, !inline_history !695
  tail call void @llvm.experimental.noalias.scope.decl(metadata !994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
  %.sroa.0.0.copyload.i152 = load i64, ptr %i.ac, align 8, !alias.scope !995, !noalias !958 ; 3 uses
  %.sroa.6.0..sroa_idx.i153 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.6.0.copyload.i154 = load ptr, ptr %.sroa.6.0..sroa_idx.i153, align 8, !alias.scope !995, !noalias !958 ; 2 uses
  store i64 -2, ptr %i.ac, align 8, !alias.scope !995, !noalias !958
  switch i64 %.sroa.0.0.copyload.i152, label %bb.cr [
    i64 -2, label %bb.cm
    i64 -1, label %_RNvYINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3nthCs2szWGFz6wmN_7uu_test.exit.thread16.i155
  ]

bb.cm:                                            ; preds = %bb.cl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !996), !noalias !958
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997), !noalias !958
  tail call void @llvm.experimental.noalias.scope.decl(metadata !998), !noalias !958
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 3 uses
  %.val.i.i.i156 = load ptr, ptr %i.iy, align 8, !alias.scope !999, !noalias !958, !nonnull !4, !noundef !4 ; 5 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %.val3.i.i.i157 = load ptr, ptr %i.iz, align 8, !alias.scope !999, !noalias !958, !nonnull !4, !noundef !4 ; 4 uses
  %i.ja = icmp ne ptr %.val3.i.i.i157, %.val.i.i.i156 ; 2 uses
  %..i.i.i.i158 = zext i1 %i.ja to i64
  %i.jb = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i156, i64 %..i.i.i.i158 ; 6 uses
  store ptr %i.jb, ptr %i.iy, align 8, !alias.scope !999, !noalias !958
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000), !noalias !958
  br i1 %i.ja, label %.lr.ph.i.preheader.i.i.i160, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator10advance_byCs2szWGFz6wmN_7uu_test.exit.i.i159

.lr.ph.i.preheader.i.i.i160:                      ; preds = %bb.cm
  %.val.i.i.i.i161 = load i64, ptr %.val.i.i.i156, align 8, !range !5, !alias.scope !1000, !noalias !1001, !noundef !4 ; 2 uses
  %i.jc = icmp eq i64 %.val.i.i.i.i161, 0
  br i1 %i.jc, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph.i.preheader.i.i.i160
  %i.jd = getelementptr i8, ptr %.val.i.i.i156, i64 8
  %.val3.i.i.i.i162 = load ptr, ptr %i.jd, align 8, !alias.scope !1000, !noalias !1001, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i162, i64 noundef %.val.i.i.i.i161, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1002
  br label %bb.co

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator10advance_byCs2szWGFz6wmN_7uu_test.exit.i.i159: ; preds = %bb.cm
  store i64 -1, ptr %i.ad, align 8, !alias.scope !1003, !noalias !958
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator3nthCs2szWGFz6wmN_7uu_test.exit168

bb.co:                                            ; preds = %bb.cn, %.lr.ph.i.preheader.i.i.i160
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1004), !noalias !958
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005), !noalias !958
  %i.je = icmp eq ptr %i.jb, %.val3.i.i.i157
  br i1 %i.je, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 24 ; 2 uses
  store ptr %i.jf, ptr %i.iy, align 8, !alias.scope !1006, !noalias !958
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.jb, i64 24, i1 false), !noalias !1007
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator3nthCs2szWGFz6wmN_7uu_test.exit168

bb.cq:                                            ; preds = %bb.co
  store i64 -1, ptr %i.ad, align 8, !alias.scope !1008, !noalias !958
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator3nthCs2szWGFz6wmN_7uu_test.exit168

_RNvYINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3nthCs2szWGFz6wmN_7uu_test.exit.thread16.i155: ; preds = %bb.cl
  store i64 -1, ptr %i.ad, align 8, !alias.scope !994, !noalias !958
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %.val.i.i.i140.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1009, !noalias !958
  %.phi.trans.insert526 = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %.val1.i.i.i141.pre = load ptr, ptr %.phi.trans.insert526, align 8, !alias.scope !1009, !noalias !958
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator3nthCs2szWGFz6wmN_7uu_test.exit168

bb.cr:                                            ; preds = %bb.cl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1010), !noalias !958
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1011), !noalias !958
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  %.val.i.i5.i163 = load ptr, ptr %i.jg, align 8, !alias.scope !1012, !noalias !958, !nonnull !4, !noundef !4 ; 4 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %.val3.i.i6.i164 = load ptr, ptr %i.jh, align 8, !alias.scope !1012, !noalias !958, !nonnull !4, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1013), !noalias !958
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1014), !noalias !958
  %i.ji = icmp eq ptr %.val.i.i5.i163, %.val3.i.i6.i164
  br i1 %i.ji, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.jj = getelementptr inbounds nuw i8, ptr %.val.i.i5.i163, i64 24 ; 2 uses
  store ptr %i.jj, ptr %i.jg, align 8, !alias.scope !1015, !noalias !958
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %.val.i.i5.i163, i64 24, i1 false), !noalias !1016
  br label %_RNvYINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3nthCs2szWGFz6wmN_7uu_test.exit.i165

bb.ct:                                            ; preds = %bb.cr
  store i64 -1, ptr %i.ad, align 8, !alias.scope !1017, !noalias !958
  br label %_RNvYINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3nthCs2szWGFz6wmN_7uu_test.exit.i165

_RNvYINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3nthCs2szWGFz6wmN_7uu_test.exit.i165: ; preds = %bb.ct, %bb.cs
  %.val.i.i.i140525 = phi ptr [ %.val.i.i5.i163, %bb.ct ], [ %i.jj, %bb.cs ] ; 2 uses
  %.0.val.off.i.i166 = add i64 %.sroa.0.0.copyload.i152, -1
  %switch.i.i167 = icmp ult i64 %.0.val.off.i.i166, -2
  br i1 %switch.i.i167, label %bb.cu, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator3nthCs2szWGFz6wmN_7uu_test.exit168

bb.cu:                                            ; preds = %_RNvYINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3nthCs2szWGFz6wmN_7uu_test.exit.i165
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i154) ], !noalias !958
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i154, i64 noundef %.sroa.0.0.copyload.i152, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1018
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator3nthCs2szWGFz6wmN_7uu_test.exit168

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator3nthCs2szWGFz6wmN_7uu_test.exit168: ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator10advance_byCs2szWGFz6wmN_7uu_test.exit.i.i159, %bb.cp, %bb.cq, %_RNvYINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3nthCs2szWGFz6wmN_7uu_test.exit.thread16.i155, %_RNvYINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3nthCs2szWGFz6wmN_7uu_test.exit.i165, %bb.cu
  %.val1.i.i.i141 = phi ptr [ %.val.i.i.i156, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator10advance_byCs2szWGFz6wmN_7uu_test.exit.i.i159 ], [ %.val3.i.i.i157, %bb.cp ], [ %.val3.i.i.i157, %bb.cq ], [ %.val1.i.i.i141.pre, %_RNvYINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3nthCs2szWGFz6wmN_7uu_test.exit.thread16.i155 ], [ %.val3.i.i6.i164, %_RNvYINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3nthCs2szWGFz6wmN_7uu_test.exit.i165 ], [ %.val3.i.i6.i164, %bb.cu ] ; 2 uses
  %.val.i.i.i140 = phi ptr [ %i.jb, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator10advance_byCs2szWGFz6wmN_7uu_test.exit.i.i159 ], [ %i.jf, %bb.cp ], [ %i.jb, %bb.cq ], [ %.val.i.i.i140.pre, %_RNvYINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3nthCs2szWGFz6wmN_7uu_test.exit.thread16.i155 ], [ %.val.i.i.i140525, %_RNvYINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3nthCs2szWGFz6wmN_7uu_test.exit.i165 ], [ %.val.i.i.i140525, %bb.cu ] ; 3 uses
  call fastcc void @_RNvMNtCs2szWGFz6wmN_7uu_test6parserNtB2_6Symbol3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.ae, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.ad) #21, !noalias !958, !inline_history !695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !958
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1020), !noalias !958
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1021), !noalias !958
  %i.jl = ptrtoint ptr %.val1.i.i.i141 to i64
  %i.jm = ptrtoint ptr %.val.i.i.i140 to i64
  %i.jn = sub nuw i64 %i.jl, %i.jm
  %i.jo = udiv exact i64 %i.jn, 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1022), !noalias !958
  %i.jp = icmp eq ptr %.val1.i.i.i141, %.val.i.i.i140
  br i1 %i.jp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i147, label %.lr.ph.i.i.i.i142

.lr.ph.i.i.i.i142:                                ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator3nthCs2szWGFz6wmN_7uu_test.exit168, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i146
  %.sroa.0.04.i.i.i.i143 = phi i64 [ %i.jr, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i146 ], [ 0, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator3nthCs2szWGFz6wmN_7uu_test.exit168 ] ; 2 uses
  %i.jq = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i140, i64 %.sroa.0.04.i.i.i.i143 ; 2 uses
  %i.jr = add nuw nsw i64 %.sroa.0.04.i.i.i.i143, 1 ; 2 uses
  %.val.i.i.i.i144 = load i64, ptr %i.jq, align 8, !range !5, !alias.scope !1022, !noalias !1023, !noundef !4 ; 2 uses
  %i.js = icmp eq i64 %.val.i.i.i.i144, 0
  br i1 %i.js, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i146, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph.i.i.i.i142
  %i.jt = getelementptr i8, ptr %i.jq, i64 8
  %.val3.i.i.i.i145 = load ptr, ptr %i.jt, align 8, !alias.scope !1022, !noalias !1023, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i145, i64 noundef %.val.i.i.i.i144, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1024
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i146

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i146: ; preds = %bb.cv, %.lr.ph.i.i.i.i142
  %i.ju = icmp eq i64 %i.jr, %i.jo
  br i1 %i.ju, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i147, label %.lr.ph.i.i.i.i142

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i147: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i146, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator3nthCs2szWGFz6wmN_7uu_test.exit168
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.jw = load i64, ptr %i.jv, align 8, !alias.scope !1009, !noalias !958, !noundef !4 ; 2 uses
  %i.jx = icmp eq i64 %i.jw, 0
  br i1 %i.jx, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECs2szWGFz6wmN_7uu_test.exit151, label %bb.cw

bb.cw:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i147
  %i.jy = load ptr, ptr %i.jk, align 8, !alias.scope !1009, !noalias !958, !nonnull !4, !noundef !4
  %i.jz = mul nuw i64 %i.jw, 24
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jy, i64 noundef %i.jz, i64 noundef range(i64 1, -9223372036854775807) 8) #21, !noalias !1023
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECs2szWGFz6wmN_7uu_test.exit151

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECs2szWGFz6wmN_7uu_test.exit151: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i147, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !958
  %i.ka = load i64, ptr %i.ae, align 8, !range !6, !noalias !958, !noundef !4 ; 3 uses
  switch i64 %i.ka, label %bb.cz [
    i64 4, label %_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser10next_token.exit138
end_hunk_2
