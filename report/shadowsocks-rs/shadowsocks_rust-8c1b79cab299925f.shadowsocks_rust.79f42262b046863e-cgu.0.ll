Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/shadowsocks_rust-8c1b79cab299925f.shadowsocks_rust.79f42262b046863e-cgu.0?download=true
inline.NumInlined: 5128
inline.NumDeleted: 2462
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 55
begin_hunk_0_@_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtNtCslDQ48jUgq5Q_12clap_builder7builder3str3StrbEE8grow_oneCsat9HgdBb3qc_16shadowsocks_rust:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !5710
  call fastcc void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 24) #30, !noalias !5710
  %i.f = load i64, ptr %i.a, align 8, !range !31, !noalias !5710, !noundef !14
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !33, !noalias !5710, !noundef !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !5710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5710
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !5710, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5710
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !5710
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !5710
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsat9HgdBb3qc_16shadowsocks_rust(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef range(i64 4, 0) %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 1, 105) %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !39
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !39

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #30
  br label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30
  %i.k = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, 17) %2) #30
  br label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.o, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsat9HgdBb3qc_16shadowsocks_rust(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 105) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !39
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !39

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30
  br i1 %2, label %bb.g, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, 9) %3) #30
  br label %bb.h

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, 17) %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn9, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs8_NtNtCsat9HgdBb3qc_16shadowsocks_rust9daemonize9daemonizeINtB5_9DaemonizeuE3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @314, i64 noundef 1) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i8 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 -2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 -2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 23, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 -1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr inttoptr (i64 1 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr @315, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.k, align 8
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E21reserve_one_uncheckedCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(656) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5713, !noundef !14 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 16
  br i1 %i.c, label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit, label %.thread

_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !5713, !noundef !14 ; 2 uses
  %i.f = icmp sgt i64 %i.e, -1
  br i1 %i.f, label %.thread, label %bb.d, !prof !58

.thread:                                          ; preds = %bb.a, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit
  %.sink12.i47 = phi i64 [ %i.e, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %i.b, %bb.a ]
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i47, i1 false)
  %i.h = sub nuw nsw i64 64, %i.g
  %i.i = shl nuw i64 1, %i.h
  %i.j = tail call fastcc { i64, i64 } @_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E8try_growCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(656) %0, i64 noundef %i.i) #30 ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0        ; 2 uses
  switch i64 %i.k, label %bb.b [
    i64 -1, label %_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsat9HgdBb3qc_16shadowsocks_rust.exit
    i64 0, label %bb.c
  ], !prof !5714

bb.b:                                             ; preds = %.thread
  %i.l = extractvalue { i64, i64 } %i.j, 1
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.k, i64 noundef %i.l) #34
  unreachable

bb.c:                                             ; preds = %.thread
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #37
  unreachable

_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %.thread
  ret void

bb.d:                                             ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @316) #37
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E8try_growCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(656) %0, i64 noundef range(i64 1, -9223372036854775807) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !14 ; 6 uses
  %i.d = icmp ult i64 %i.c, 17                    ; 2 uses
  %i.e = icmp ugt i64 %i.c, 16                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !14
  %.sink12.i = select i1 %i.e, ptr %i.h, ptr %i.f ; 4 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16) ; 2 uses
  %.val = load i64, ptr %i.f, align 8
  %.val72 = load i64, ptr %i.b, align 8
  %i.i = select i1 %i.e, i64 %.val, i64 %.val72   ; 5 uses
  %.not = icmp ult i64 %1, %i.i
  br i1 %.not, label %bb.a, label %bb.b, !prof !23

bb.a:                                             ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #37
  unreachable

bb.b:                                             ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.j = icmp ult i64 %1, 17
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not46 = icmp eq i64 %i.c, %1
  br i1 %.not46, label %bb.l, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.l, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.k = mul i64 %1, 40                           ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 230584300921369395
  br i1 %or.cond.not, label %bb.l, label %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit, !prof !39

_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.e
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.l = mul i64 %.sink.i, 40                     ; 2 uses
  %or.cond65.not = icmp ugt i64 %i.c, 230584300921369395
  br i1 %or.cond65.not, label %bb.l, label %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit48, !prof !39

bb.g:                                             ; preds = %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30
  %i.m = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef 8) #30 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.l, label %bb.i

_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit48: ; preds = %bb.f
  %i.o = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.l, i64 noundef 8, i64 noundef %i.k) #30 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit48, %bb.i
  %.sroa.031.0 = phi ptr [ %i.m, %bb.i ], [ %i.o, %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit48 ]
  store i64 1, ptr %0, align 8
  store i64 %i.i, ptr %i.f, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0, ptr %.sroa.540.0..sroa_idx, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.q = mul nuw nsw i64 %i.i, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %.sink12.i, i64 %i.q, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.d
  store i64 0, ptr %0, align 8
  %i.r = mul nuw nsw i64 %i.i, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %.sink12.i, i64 %i.r, i1 false)
  store i64 %i.i, ptr %i.b, align 8
  %i.s = mul i64 %.sink.i, 40                     ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.c, 230584300921369395
  br i1 %or.cond.not.i, label %bb.k, label %_RINvCsjcToxTEWQ5H_8smallvec10deallocateINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit, !prof !39

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5717
  store i64 0, ptr %i.a, align 8, !noalias !5717
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.s, ptr %i.t, align 8, !noalias !5717
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @260, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @259, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #37, !noalias !5717
  unreachable

_RINvCsjcToxTEWQ5H_8smallvec10deallocateINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.j
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.s, i64 noundef 8) #30
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.d, %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit48, %bb.g, %_RINvCsjcToxTEWQ5H_8smallvec10deallocateINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit, %bb.h, %bb.c
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsjcToxTEWQ5H_8smallvec10deallocateINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ undef, %bb.c ], [ undef, %bb.h ], [ %i.k, %bb.g ], [ undef, %bb.d ], [ %i.k, %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit48 ], [ %i.l, %bb.f ], [ %i.k, %bb.e ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsjcToxTEWQ5H_8smallvec10deallocateINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ -1, %bb.c ], [ -1, %bb.h ], [ 8, %bb.g ], [ -1, %bb.d ], [ 8, %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit48 ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.u = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.v = insertvalue { i64, i64 } %i.u, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.v
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E21reserve_one_uncheckedCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(464) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !5726, !noundef !14 ; 5 uses
  %i.d = icmp ult i64 %i.c, 9                     ; 3 uses
  br i1 %i.d, label %bb.c, label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit

_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !5726, !noundef !14 ; 3 uses
  %i.g = icmp sgt i64 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.q, !prof !58

bb.b:                                             ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !5727, !nonnull !14, !noundef !14
  %.pre = load i64, ptr %i.i, align 8, !alias.scope !5728
  br label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i

bb.c:                                             ; preds = %bb.a
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5728)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i

_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %bb.c, %bb.b
  %i.n = phi ptr [ %i.i, %bb.b ], [ %i.m, %bb.c ] ; 2 uses
  %.pn = phi i64 [ %i.h, %bb.b ], [ %i.l, %bb.c ]
  %.sink12.i41922 = phi i64 [ %i.f, %bb.b ], [ %i.c, %bb.c ] ; 2 uses
  %i.o = phi i64 [ %.pre, %bb.b ], [ %i.c, %bb.c ] ; 5 uses
  %.sink12.i.i = phi ptr [ %i.k, %bb.b ], [ %i.m, %bb.c ] ; 4 uses
  %.sink.i.i = phi i64 [ %i.c, %bb.b ], [ 8, %bb.c ] ; 5 uses
  %i.p = sub nuw nsw i64 64, %.pn                 ; 2 uses
  %i.q = shl nuw i64 1, %i.p                      ; 3 uses
  %.not.i = icmp ult i64 %i.q, %i.o
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !23

bb.d:                                             ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #37, !noalias !5728
  unreachable

bb.e:                                             ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %i.r = icmp samesign ult i64 %.sink12.i41922, 8
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not46.i = icmp eq i64 %i.q, %.sink.i.i
  br i1 %.not46.i, label %_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.d, label %_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.s = shl i64 56, %i.p                         ; 3 uses
  %or.cond.not.i = icmp samesign ugt i64 %.sink12.i41922, 144115188075855871
  br i1 %or.cond.not.i, label %bb.p, label %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit.i, !prof !39

_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %bb.h
  br i1 %i.d, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %or.cond65.not.i = icmp ugt i64 %.sink.i.i, 164703072086692425
  br i1 %or.cond65.not.i, label %bb.p, label %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit48.i, !prof !39

bb.j:                                             ; preds = %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !5728
  %i.t = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef 8) #30, !noalias !5728 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.l

_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit48.i: ; preds = %bb.i
  %i.v = mul nuw nsw i64 %.sink.i.i, 56
  %i.w = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.v, i64 noundef 8, i64 noundef %i.s) #30 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit48.i
  %.sroa.031.0.i = phi ptr [ %i.t, %bb.l ], [ %i.w, %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit48.i ]
  store i64 1, ptr %0, align 8, !alias.scope !5728
  store i64 %i.o, ptr %i.n, align 8, !alias.scope !5728
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0.i, ptr %.sroa.540.0..sroa_idx.i, align 8, !alias.scope !5728
  store i64 %i.q, ptr %i.b, align 8, !alias.scope !5728
  br label %_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.l:                                             ; preds = %bb.j
  %i.y = mul nuw nsw i64 %i.o, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %.sink12.i.i, i64 %i.y, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  store i64 0, ptr %0, align 8, !alias.scope !5728
  %i.z = mul nuw nsw i64 %i.o, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %.sink12.i.i, i64 %i.z, i1 false)
  store i64 %i.o, ptr %i.b, align 8, !alias.scope !5728
  %i.aa = mul i64 %.sink.i.i, 56                  ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %.sink.i.i, 164703072086692425
  br i1 %or.cond.not.i.i, label %bb.n, label %_RINvCsjcToxTEWQ5H_8smallvec10deallocateNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit.i, !prof !39

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5729
  store i64 0, ptr %i.a, align 8, !noalias !5729
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !noalias !5729
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @260, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @259, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #37, !noalias !5729
  unreachable

_RINvCsjcToxTEWQ5H_8smallvec10deallocateNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %bb.m
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.aa, i64 noundef 8) #30
  br label %_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.o:                                             ; preds = %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit48.i, %bb.j
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.s) #34
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #37
  unreachable

_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RINvCsjcToxTEWQ5H_8smallvec10deallocateNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @316) #37
  unreachable
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E21reserve_one_uncheckedCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(656) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !5738, !noundef !14 ; 5 uses
  %i.d = icmp ult i64 %i.c, 9                     ; 3 uses
  br i1 %i.d, label %bb.c, label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit

_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !5738, !noundef !14 ; 3 uses
  %i.g = icmp sgt i64 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.q, !prof !58

bb.b:                                             ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !5739, !nonnull !14, !noundef !14
  %.pre = load i64, ptr %i.i, align 8, !alias.scope !5740
  br label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i

bb.c:                                             ; preds = %bb.a
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5740)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i

_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %bb.c, %bb.b
  %i.n = phi ptr [ %i.i, %bb.b ], [ %i.m, %bb.c ] ; 2 uses
  %.pn = phi i64 [ %i.h, %bb.b ], [ %i.l, %bb.c ]
  %.sink12.i41922 = phi i64 [ %i.f, %bb.b ], [ %i.c, %bb.c ] ; 2 uses
  %i.o = phi i64 [ %.pre, %bb.b ], [ %i.c, %bb.c ] ; 5 uses
  %.sink12.i.i = phi ptr [ %i.k, %bb.b ], [ %i.m, %bb.c ] ; 4 uses
  %.sink.i.i = phi i64 [ %i.c, %bb.b ], [ 8, %bb.c ] ; 5 uses
  %i.p = sub nuw nsw i64 64, %.pn                 ; 2 uses
  %i.q = shl nuw i64 1, %i.p                      ; 3 uses
  %.not.i = icmp ult i64 %i.q, %i.o
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !23

bb.d:                                             ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #37, !noalias !5740
  unreachable

bb.e:                                             ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %i.r = icmp samesign ult i64 %.sink12.i41922, 8
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not46.i = icmp eq i64 %i.q, %.sink.i.i
  br i1 %.not46.i, label %_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.d, label %_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.s = shl i64 80, %i.p                         ; 3 uses
  %or.cond.not.i = icmp samesign ugt i64 %.sink12.i41922, 72057594037927935
  br i1 %or.cond.not.i, label %bb.p, label %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit.i, !prof !39

_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %bb.h
  br i1 %i.d, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %or.cond65.not.i = icmp ugt i64 %.sink.i.i, 115292150460684697
  br i1 %or.cond65.not.i, label %bb.p, label %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit48.i, !prof !39

bb.j:                                             ; preds = %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !5740
  %i.t = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef 8) #30, !noalias !5740 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.l

_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit48.i: ; preds = %bb.i
  %i.v = mul nuw nsw i64 %.sink.i.i, 80
  %i.w = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.v, i64 noundef 8, i64 noundef %i.s) #30 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit48.i
  %.sroa.031.0.i = phi ptr [ %i.t, %bb.l ], [ %i.w, %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit48.i ]
  store i64 1, ptr %0, align 8, !alias.scope !5740
  store i64 %i.o, ptr %i.n, align 8, !alias.scope !5740
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0.i, ptr %.sroa.540.0..sroa_idx.i, align 8, !alias.scope !5740
  store i64 %i.q, ptr %i.b, align 8, !alias.scope !5740
  br label %_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.l:                                             ; preds = %bb.j
  %i.y = mul nuw nsw i64 %i.o, 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %.sink12.i.i, i64 %i.y, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  store i64 0, ptr %0, align 8, !alias.scope !5740
  %i.z = mul nuw nsw i64 %i.o, 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %.sink12.i.i, i64 %i.z, i1 false)
  store i64 %i.o, ptr %i.b, align 8, !alias.scope !5740
  %i.aa = mul i64 %.sink.i.i, 80                  ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %.sink.i.i, 115292150460684697
  br i1 %or.cond.not.i.i, label %bb.n, label %_RINvCsjcToxTEWQ5H_8smallvec10deallocateNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit.i, !prof !39

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5741
  store i64 0, ptr %i.a, align 8, !noalias !5741
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !noalias !5741
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @260, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @259, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #37, !noalias !5741
  unreachable

_RINvCsjcToxTEWQ5H_8smallvec10deallocateNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %bb.m
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.aa, i64 noundef 8) #30
  br label %_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.o:                                             ; preds = %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit48.i, %bb.j
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.s) #34
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #37
  unreachable

_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RINvCsjcToxTEWQ5H_8smallvec10deallocateNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @316) #37
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE9next_backCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !range !19, !noundef !14
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !19, !noundef !14
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.d, align 8
  %i.g = tail call fastcc { ptr, i64 } @_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE9next_backCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(72) %0) #35 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0        ; 2 uses
  %.not = icmp eq ptr %i.h, null
  %i.i = extractvalue { ptr, i64 } %i.g, 1        ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  %or.cond = select i1 %.not, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.l, label %bb.m

bb.d:                                             ; preds = %bb.l, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.k, align 8, !nonnull !14, !noundef !14 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val6 = load i64, ptr %i.l, align 8, !noundef !14 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5745)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !5745, !noundef !14 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.promoted.i = load i64, ptr %i.o, align 8, !alias.scope !5745 ; 2 uses
  %i.p = icmp ult i64 %.promoted.i, %i.n
  br i1 %i.p, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load i8, ptr %i.s, align 8, !alias.scope !5745 ; 2 uses
  %i.u = zext nneg i8 %i.t to i64                 ; 3 uses
  %i.v = add nsw i64 %i.u, -1                     ; 3 uses
  %i.w = icmp ult i8 %i.t, 5
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.i
  %i.y = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.ag, %bb.i ] ; 2 uses
  %i.z = sub nuw i64 %i.y, %i.n                   ; 2 uses
  %.not.i = icmp ugt i64 %i.y, %.val6
  br i1 %.not.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.assume(i1 %i.w)
  %i.aa = load i8, ptr %i.x, align 1, !alias.scope !5745, !noundef !14
  %i.ab = tail call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr15memrchr_aligned(i8 noundef %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.z) #30, !noalias !5746 ; 2 uses
  %i.ac = extractvalue { i64, i64 } %i.ab, 0
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = extractvalue { i64, i64 } %i.ab, 1      ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.z
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = add i64 %i.ae, %i.n                     ; 5 uses
  %.not15.i = icmp ult i64 %i.ag, %i.v
  br i1 %.not15.i, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  store i64 %i.n, ptr %i.o, align 8, !alias.scope !5745
  br label %.loopexit

bb.i:                                             ; preds = %bb.k, %bb.j, %bb.g
  store i64 %i.ag, ptr %i.o, align 8, !alias.scope !5745
  %i.ah = icmp ult i64 %i.ag, %i.n
  br i1 %i.ah, label %.loopexit, label %bb.e

bb.j:                                             ; preds = %bb.g
  %i.ai = sub nuw i64 %i.ag, %i.v                 ; 5 uses
  %i.aj = add i64 %i.ai, %i.u                     ; 4 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %.not16.i = icmp ugt i64 %i.aj, %.val6
  %or.cond.i = or i1 %i.ak, %.not16.i
  br i1 %or.cond.i, label %bb.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ai
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.al, ptr nonnull %i.r, i64 %i.u), !noalias !5747
  %i.am = icmp eq i32 %bcmp.i, 0
  br i1 %i.am, label %bb.n, label %bb.i

bb.l:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_RNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6create:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fp)
  %.not415 = icmp eq ptr %i.ano, null
  br i1 %.not415, label %bb.jk, label %bb.jj

bb.jj:                                            ; preds = %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionRNtNtNtB1h_3net7ip_addr6IpAddrEECsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.anp = getelementptr inbounds nuw i8, ptr %i.im, i64 1463
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.anp, ptr noundef nonnull align 1 dereferenceable(17) %i.ano, i64 17, i1 false)
  br label %bb.jk

bb.jk:                                            ; preds = %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionRNtNtNtB1h_3net7ip_addr6IpAddrEECsat9HgdBb3qc_16shadowsocks_rust.exit, %bb.jj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fo)
  call fastcc void @_RINvMs0_NtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.fo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @572, i64 noundef 17) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !7929)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr @572, ptr %i.y, align 8, !noalias !7930
  %i.anq = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 17, ptr %i.anq, align 8, !noalias !7930
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !7930
  %i.anr = load i64, ptr %i.fo, align 8, !range !32, !alias.scope !7929, !noundef !14
  %.not.i693 = icmp eq i64 %i.anr, 2
  br i1 %.not.i693, label %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionRNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit696, label %bb.jl, !prof !20

bb.jl:                                            ; preds = %bb.jk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.fo, i64 40, i1 false), !noalias !7931
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !7930
  store ptr %i.y, ptr %i.w, align 8, !noalias !7930
  %.sroa.42.0..sroa_idx.i694 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i694, align 8, !noalias !7930
  %i.ans = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.x, ptr %i.ans, align 8, !noalias !7930
  %.sroa.46.0..sroa_idx.i695 = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr @_RNvXs0_NtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i695, align 8, !noalias !7930
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #37, !noalias !7929
  unreachable

_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionRNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit696: ; preds = %bb.jk
  %i.ant = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.anu = load ptr, ptr %i.ant, align 8, !alias.scope !7929, !align !27, !noundef !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !7930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo)
  %.not416 = icmp eq ptr %i.anu, null
  br i1 %.not416, label %bb.ke, label %bb.jm

bb.jm:                                            ; preds = %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionRNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fn)
  call fastcc void @_RINvMs0_NtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneyECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.fn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @575, i64 noundef 29) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !7932)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr @575, ptr %i.v, align 8, !noalias !7933
  %i.anv = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 29, ptr %i.anv, align 8, !noalias !7933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !7933
  %i.anw = load i64, ptr %i.fn, align 8, !range !32, !alias.scope !7932, !noundef !14
  %.not.i697 = icmp eq i64 %i.anw, 2
  br i1 %.not.i697, label %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionRyEECsat9HgdBb3qc_16shadowsocks_rust.exit700, label %bb.jn, !prof !20

bb.jn:                                            ; preds = %bb.jm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.fn, i64 40, i1 false), !noalias !7934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !7933
  store ptr %i.v, ptr %i.t, align 8, !noalias !7933
  %.sroa.42.0..sroa_idx.i698 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i698, align 8, !noalias !7933
  %i.anx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.u, ptr %i.anx, align 8, !noalias !7933
  %.sroa.46.0..sroa_idx.i699 = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr @_RNvXs0_NtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i699, align 8, !noalias !7933
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #37, !noalias !7932
  unreachable

_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionRyEECsat9HgdBb3qc_16shadowsocks_rust.exit700: ; preds = %bb.jm
  %i.any = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.anz = load ptr, ptr %i.any, align 8, !alias.scope !7932, !align !27, !noundef !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !7933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn)
  %.not417.not = icmp eq ptr %i.anz, null         ; 2 uses
  br i1 %.not417.not, label %bb.jp, label %bb.jo

bb.jo:                                            ; preds = %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionRyEECsat9HgdBb3qc_16shadowsocks_rust.exit700
  %i.aoa = load i64, ptr %i.anz, align 8, !noundef !14
  br label %bb.jp

bb.jp:                                            ; preds = %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionRyEECsat9HgdBb3qc_16shadowsocks_rust.exit700, %bb.jo
  %.sroa.3158.0 = phi i64 [ %i.aoa, %bb.jo ], [ undef, %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionRyEECsat9HgdBb3qc_16shadowsocks_rust.exit700 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fm)
  call fastcc void @_RINvMs0_NtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.fm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @578, i64 noundef 28) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !7935)
  call void @llvm.experimental.noalias.scope.decl(metadata !7936)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr @578, ptr %i.s, align 8, !noalias !7937
  %i.aob = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 28, ptr %i.aob, align 8, !noalias !7937
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !7937
  %i.aoc = load i64, ptr %i.fm, align 8, !range !31, !alias.scope !7936, !noundef !14
  %i.aod = trunc nuw i64 %i.aoc to i1
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 2 uses
  br i1 %i.aod, label %bb.jq, label %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit, !prof !23

bb.jq:                                            ; preds = %bb.jp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.aoe, i64 40, i1 false), !noalias !7938
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !7937
  store ptr %i.s, ptr %i.q, align 8, !noalias !7937
  %.sroa.42.0..sroa_idx.i701 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i701, align 8, !noalias !7937
  %i.aof = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.r, ptr %i.aof, align 8, !noalias !7937
  %.sroa.46.0..sroa_idx.i702 = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr @_RNvXs0_NtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i702, align 8, !noalias !7937
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #37, !noalias !7939
  unreachable

_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.jp
  %.sroa.0780.0.copyload781 = load ptr, ptr %i.aoe, align 8, !alias.scope !7939 ; 3 uses
  %.sroa.6782.0..sroa_idx783 = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %.sroa.6782.sroa.0.0.copyload = load ptr, ptr %.sroa.6782.0..sroa_idx783, align 8, !alias.scope !7939 ; 5 uses
  %.sroa.6782.sroa.5.0..sroa.6782.0..sroa_idx783.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %.sroa.6782.sroa.5.0.copyload = load ptr, ptr %.sroa.6782.sroa.5.0..sroa.6782.0..sroa_idx783.sroa_idx, align 8, !alias.scope !7939 ; 4 uses
  %.sroa.6782.sroa.6.0..sroa.6782.0..sroa_idx783.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %.sroa.6782.sroa.6.0.copyload = load ptr, ptr %.sroa.6782.sroa.6.0..sroa.6782.0..sroa_idx783.sroa_idx, align 8, !alias.scope !7939 ; 3 uses
  %.sroa.6782.sroa.7.0..sroa.6782.0..sroa_idx783.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  %.sroa.6782.sroa.7.0.copyload = load ptr, ptr %.sroa.6782.sroa.7.0..sroa.6782.0..sroa_idx783.sroa_idx, align 8, !alias.scope !7939 ; 3 uses
  %.sroa.6782.sroa.8.0..sroa.6782.0..sroa_idx783.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  %.sroa.6782.sroa.8.0.copyload = load ptr, ptr %.sroa.6782.sroa.8.0..sroa.6782.0..sroa_idx783.sroa_idx, align 8, !alias.scope !7939 ; 5 uses
  %.sroa.6782.sroa.9.0..sroa.6782.0..sroa_idx783.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 56
  %.sroa.6782.sroa.9.0.copyload = load ptr, ptr %.sroa.6782.sroa.9.0..sroa.6782.0..sroa_idx783.sroa_idx, align 8, !alias.scope !7939 ; 3 uses
  %.sroa.6782.sroa.10.0..sroa.6782.0..sroa_idx783.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 64
  %.sroa.6782.sroa.10.0.copyload = load i64, ptr %.sroa.6782.sroa.10.0..sroa.6782.0..sroa_idx783.sroa_idx, align 8, !alias.scope !7939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !7937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm)
  %.not418 = icmp eq ptr %.sroa.0780.0.copyload781, null
  br i1 %.not418, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB12_6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.jr

bb.jr:                                            ; preds = %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !7940
  %.not.i.i.i.i.i983 = icmp eq ptr %.sroa.6782.sroa.6.0.copyload, null
  %i.aog = icmp eq ptr %.sroa.6782.sroa.6.0.copyload, %.sroa.6782.sroa.7.0.copyload
  %or.cond963984 = select i1 %.not.i.i.i.i.i983, i1 true, i1 %i.aog
  br i1 %or.cond963984, label %select.unfold.i.i.i.i.preheader, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.loopexit

select.unfold.i.i.i.i.preheader:                  ; preds = %bb.jr
  %.not.i5.i.i.i.i1116 = icmp eq ptr %.sroa.6782.sroa.0.0.copyload, null
  %i.aoh = icmp eq ptr %.sroa.6782.sroa.0.0.copyload, %.sroa.6782.sroa.5.0.copyload
  %or.cond.i.i.i.i.i1117 = select i1 %.not.i5.i.i.i.i1116, i1 true, i1 %i.aoh
  br i1 %or.cond.i.i.i.i.i1117, label %select.unfold.i.i.i.i._crit_edge, label %.lr.ph

select.unfold.i.i.i.i:                            ; preds = %.lr.ph
  %i.aoi = icmp eq ptr %i.aoj, %.sroa.6782.sroa.5.0.copyload
  br i1 %i.aoi, label %select.unfold.i.i.i.i._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %select.unfold.i.i.i.i.preheader, %select.unfold.i.i.i.i
  %.sroa.44.0.copyload.i9861118 = phi ptr [ %i.aoj, %select.unfold.i.i.i.i ], [ %.sroa.6782.sroa.0.0.copyload, %select.unfold.i.i.i.i.preheader ] ; 4 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i9861118, i64 24 ; 4 uses
  %i.aok = getelementptr i8, ptr %.sroa.44.0.copyload.i9861118, i64 16
  %.val4.i.i.i.i = load i64, ptr %i.aok, align 8, !noalias !7941, !noundef !14 ; 3 uses
  %i.aol = icmp eq i64 %.val4.i.i.i.i, 0
  br i1 %i.aol, label %select.unfold.i.i.i.i, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.loopexit.loopexit

select.unfold.i.i.i.i._crit_edge.loopexit:        ; preds = %select.unfold.i.i.i.i
  %i.aom = getelementptr i8, ptr %.sroa.44.0.copyload.i9861118, i64 8
  %.val.i.i.i.i707.le1154 = load ptr, ptr %i.aom, align 8, !noalias !7941, !nonnull !14, !noundef !14
  %.idx.le1151 = shl nuw nsw i64 %.val4.i.i.i.i, 5
  %i.aon = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i707.le1154, i64 %.idx.le1151
  br label %select.unfold.i.i.i.i._crit_edge

select.unfold.i.i.i.i._crit_edge:                 ; preds = %select.unfold.i.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.i.preheader
  %.sroa.44.0.copyload.i986.lcssa = phi ptr [ %.sroa.6782.sroa.0.0.copyload, %select.unfold.i.i.i.i.preheader ], [ %i.aoj, %select.unfold.i.i.i.i._crit_edge.loopexit ]
  %.sroa.7.0.copyload.i985.lcssa = phi ptr [ %.sroa.6782.sroa.7.0.copyload, %select.unfold.i.i.i.i.preheader ], [ %i.aon, %select.unfold.i.i.i.i._crit_edge.loopexit ]
  %.not.i7.i.i.i.i = icmp eq ptr %.sroa.6782.sroa.8.0.copyload, null
  br i1 %.not.i7.i.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCsat9HgdBb3qc_16shadowsocks_rust.exit, label %.sink.split.i8.i.i.i.i

.sink.split.i8.i.i.i.i:                           ; preds = %select.unfold.i.i.i.i._crit_edge
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6782.sroa.9.0.copyload) ]
  %i.aoo = icmp eq ptr %.sroa.6782.sroa.8.0.copyload, %.sroa.6782.sroa.9.0.copyload
  %i.aop = getelementptr inbounds nuw i8, ptr %.sroa.6782.sroa.8.0.copyload, i64 32
  br i1 %i.aoo, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCsat9HgdBb3qc_16shadowsocks_rust.exit, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.loopexit.loopexit: ; preds = %.lr.ph
  %i.aoq = getelementptr i8, ptr %.sroa.44.0.copyload.i9861118, i64 8
  %.val.i.i.i.i707.le = load ptr, ptr %i.aoq, align 8, !noalias !7941, !nonnull !14, !noundef !14 ; 2 uses
  %.idx.le = shl nuw nsw i64 %.val4.i.i.i.i, 5
  %i.aor = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i707.le, i64 %.idx.le
  br label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.loopexit

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.loopexit: ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.loopexit.loopexit, %bb.jr
  %spec.select.i18.i.i.i.i.lcssa982 = phi ptr [ %.sroa.6782.sroa.6.0.copyload, %bb.jr ], [ %.val.i.i.i.i707.le, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.loopexit.loopexit ] ; 2 uses
  %.sroa.7.0.copyload.i.lcssa = phi ptr [ %.sroa.6782.sroa.7.0.copyload, %bb.jr ], [ %i.aor, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.loopexit.loopexit ]
  %.sroa.44.0.copyload.i.lcssa = phi ptr [ %.sroa.6782.sroa.0.0.copyload, %bb.jr ], [ %i.aoj, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.loopexit.loopexit ]
  %i.aos = getelementptr inbounds nuw i8, ptr %spec.select.i18.i.i.i.i.lcssa982, i64 32
  br label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.loopexit, %.sink.split.i8.i.i.i.i
  %.sroa.7.0.copyload.i977 = phi ptr [ %.sroa.7.0.copyload.i985.lcssa, %.sink.split.i8.i.i.i.i ], [ %.sroa.7.0.copyload.i.lcssa, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.loopexit ]
  %.sroa.44.0.copyload.i975 = phi ptr [ %.sroa.44.0.copyload.i986.lcssa, %.sink.split.i8.i.i.i.i ], [ %.sroa.44.0.copyload.i.lcssa, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.loopexit ]
  %.sroa.13797.0 = phi ptr [ %i.aop, %.sink.split.i8.i.i.i.i ], [ %.sroa.6782.sroa.8.0.copyload, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.loopexit ]
  %.sroa.6.0.copyload.i = phi ptr [ null, %.sink.split.i8.i.i.i.i ], [ %i.aos, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.loopexit ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %.sroa.6782.sroa.8.0.copyload, %.sink.split.i8.i.i.i.i ], [ %spec.select.i18.i.i.i.i.lcssa982, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.loopexit ]
  %i.aot = call noundef nonnull align 8 ptr %.sroa.0780.0.copyload781(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i) #30, !noalias !7942, !inline_history !7627
  %i.aou = add i64 %.sroa.6782.sroa.10.0.copyload, -1 ; 3 uses
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aot) #30, !noalias !7940
  %.pr.i = load i64, ptr %i.o, align 8, !noalias !7940
  %.not.i703 = icmp eq i64 %.pr.i, -1
  br i1 %.not.i703, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.js

bb.js:                                            ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %i.aov = call i64 @llvm.uadd.sat.i64(i64 %i.aou, i64 1)
  %i.aow = call i64 @llvm.umax.i64(i64 %i.aov, i64 4) ; 3 uses
  %i.aox = mul i64 %i.aow, 24                     ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.aou, 384307168202282324
  br i1 %or.cond.i.i.i, label %bb.jv, label %bb.jt, !prof !39

bb.jt:                                            ; preds = %bb.js
  %i.aoy = icmp eq i64 %i.aox, 0
  br i1 %i.aoy, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !7943
  %i.aoz = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aox, i64 noundef range(i64 1, 9) 8) #30, !noalias !7943 ; 2 uses
  %i.apa = icmp eq ptr %i.aoz, null
  br i1 %i.apa, label %bb.jv, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i

bb.jv:                                            ; preds = %bb.ju, %bb.js
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.ju ], [ 0, %bb.js ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.aox) #34, !noalias !7940
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %bb.ju, %bb.jt
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.jt ], [ %i.aoz, %bb.ju ] ; 3 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.jt ], [ %i.aow, %bb.ju ] ; 2 uses
  %i.apb = icmp ule i64 %i.aow, %.sroa.4.0.i.i
  call void @llvm.assume(i1 %i.apb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !7940
  store i64 %.sroa.4.0.i.i, ptr %i.p, align 8, !noalias !7940
  %.sroa.4.0..sroa_idx.i704 = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i704, align 8, !noalias !7940
  %.sroa.6.0..sroa_idx.i705 = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i705, align 8, !noalias !7940
  call void @llvm.experimental.noalias.scope.decl(metadata !7944)
  call void @llvm.experimental.noalias.scope.decl(metadata !7945)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !7946
  br label %bb.jw

bb.jw:                                            ; preds = %bb.jy, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %i.apc = phi ptr [ %i.aqa, %bb.jy ], [ %.sroa.10.0.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i ]
  %.sroa.7791.0.copyload = phi i64 [ %i.aqc, %bb.jy ], [ 1, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i ] ; 6 uses
  %i.apd = phi i64 [ %i.apw, %bb.jy ], [ %i.aou, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i ]
  %spec.select.i9.i.i.i14.i.i.i = phi ptr [ %spec.select.i9.i.i.i13.i.i.i, %bb.jy ], [ %.sroa.13797.0, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i ] ; 5 uses
  %i.ape = phi ptr [ %i.apt, %bb.jy ], [ %.sroa.7.0.copyload.i977, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i ] ; 3 uses
  %i.apf = phi ptr [ %i.apu, %bb.jy ], [ %.sroa.44.0.copyload.i975, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i ] ; 5 uses
  %.val.i.i.i6.i.i.i = phi ptr [ %.val.i.i.i3.i.i.i, %bb.jy ], [ %.sroa.6.0.copyload.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i ] ; 3 uses
  %.not.i.i.i.i.i5.i.i = icmp eq ptr %.val.i.i.i6.i.i.i, null
  %i.apg = icmp eq ptr %.val.i.i.i6.i.i.i, %i.ape
  %or.cond.i6.i.i = select i1 %.not.i.i.i.i.i5.i.i, i1 true, i1 %i.apg
  br i1 %or.cond.i6.i.i, label %select.unfold.i.i.i.i.i.preheader.i, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.loopexit.i.i.i

select.unfold.i.i.i.i.i.preheader.i:              ; preds = %bb.jw
  %.not.i5.i.i.i.i.i14.i = icmp eq ptr %i.apf, null
  %i.aph = icmp eq ptr %i.apf, %.sroa.6782.sroa.5.0.copyload
  %or.cond.i.i.i.i.i.i15.i = select i1 %.not.i5.i.i.i.i.i14.i, i1 true, i1 %i.aph
  br i1 %or.cond.i.i.i.i.i.i15.i, label %select.unfold.i.i.i.i.i._crit_edge.i, label %.lr.ph.i

select.unfold.i.i.i.i.i.i:                        ; preds = %.lr.ph.i
  %i.api = icmp eq ptr %i.apk, %.sroa.6782.sroa.5.0.copyload
  br i1 %i.api, label %select.unfold.i.i.i.i.i._crit_edge.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %select.unfold.i.i.i.i.i.preheader.i, %select.unfold.i.i.i.i.i.i
  %i.apj = phi ptr [ %i.apk, %select.unfold.i.i.i.i.i.i ], [ %i.apf, %select.unfold.i.i.i.i.i.preheader.i ] ; 4 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apj, i64 24 ; 4 uses
  %i.apl = getelementptr i8, ptr %i.apj, i64 16
  %.val4.i.i.i.i.i.i = load i64, ptr %i.apl, align 8, !noalias !7947, !noundef !14 ; 2 uses
  %i.apm = icmp eq i64 %.val4.i.i.i.i.i.i, 0
  br i1 %i.apm, label %select.unfold.i.i.i.i.i.i, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.loopexit.i.i.loopexit.i

select.unfold.i.i.i.i.i._crit_edge.loopexit.i:    ; preds = %select.unfold.i.i.i.i.i.i
  %i.apn = getelementptr i8, ptr %i.apj, i64 8
  %.val.i.i.i.i.i.le49.i = load ptr, ptr %i.apn, align 8, !noalias !7947, !nonnull !14, !noundef !14
  br label %select.unfold.i.i.i.i.i._crit_edge.i

select.unfold.i.i.i.i.i._crit_edge.i:             ; preds = %select.unfold.i.i.i.i.i._crit_edge.loopexit.i, %select.unfold.i.i.i.i.i.preheader.i
  %.lcssa9.i = phi ptr [ %i.apf, %select.unfold.i.i.i.i.i.preheader.i ], [ %i.apk, %select.unfold.i.i.i.i.i._crit_edge.loopexit.i ]
  %.lcssa.i = phi ptr [ %i.ape, %select.unfold.i.i.i.i.i.preheader.i ], [ %.val.i.i.i.i.i.le49.i, %select.unfold.i.i.i.i.i._crit_edge.loopexit.i ]
  %.not.i7.i.i.i.i.i.i = icmp eq ptr %spec.select.i9.i.i.i14.i.i.i, null
  %i.apo = icmp eq ptr %spec.select.i9.i.i.i14.i.i.i, %.sroa.6782.sroa.9.0.copyload
  %i.app = getelementptr inbounds nuw i8, ptr %spec.select.i9.i.i.i14.i.i.i, i64 32
  %or.cond28.i.i.i = select i1 %.not.i7.i.i.i.i.i.i, i1 true, i1 %i.apo
  %.sroa.0789.0.copyload.pre1005.pre1007 = load i64, ptr %i.p, align 8, !noalias !7948 ; 2 uses
  br i1 %or.cond28.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefBR_EEE11spec_extendCsat9HgdBb3qc_16shadowsocks_rust.exit.i, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.loopexit.i.i.loopexit.i: ; preds = %.lr.ph.i
  %i.apq = getelementptr i8, ptr %i.apj, i64 8
  %.val.i.i.i.i.i.le.i = load ptr, ptr %i.apq, align 8, !noalias !7947, !nonnull !14, !noundef !14 ; 2 uses
  %.idx.i.le.i = shl nuw nsw i64 %.val4.i.i.i.i.i.i, 5
  %i.apr = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.le.i, i64 %.idx.i.le.i
  br label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.loopexit.i.i.i

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.loopexit.i.i.i: ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.loopexit.i.i.loopexit.i, %bb.jw
  %.lcssa3.i.i = phi ptr [ %i.ape, %bb.jw ], [ %i.apr, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.loopexit.i.i.loopexit.i ]
  %.lcssa.i.i = phi ptr [ %i.apf, %bb.jw ], [ %i.apk, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.loopexit.i.i.loopexit.i ]
  %.val.i.i.i5.i.lcssa.i.i = phi ptr [ %.val.i.i.i6.i.i.i, %bb.jw ], [ %.val.i.i.i.i.i.le.i, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.loopexit.i.i.loopexit.i ] ; 2 uses
  %i.aps = getelementptr inbounds nuw i8, ptr %.val.i.i.i5.i.lcssa.i.i, i64 32
  %.sroa.0789.0.copyload.pre1005.pre = load i64, ptr %i.p, align 8, !noalias !7948
  br label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i: ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.loopexit.i.i.i, %select.unfold.i.i.i.i.i._crit_edge.i
  %.sroa.0789.0.copyload.pre1005 = phi i64 [ %.sroa.0789.0.copyload.pre1005.pre1007, %select.unfold.i.i.i.i.i._crit_edge.i ], [ %.sroa.0789.0.copyload.pre1005.pre, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.loopexit.i.i.i ] ; 2 uses
  %i.apt = phi ptr [ %.lcssa.i, %select.unfold.i.i.i.i.i._crit_edge.i ], [ %.lcssa3.i.i, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.loopexit.i.i.i ]
  %i.apu = phi ptr [ %.lcssa9.i, %select.unfold.i.i.i.i.i._crit_edge.i ], [ %.lcssa.i.i, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.loopexit.i.i.i ]
  %spec.select.i9.i.i.i13.i.i.i = phi ptr [ %i.app, %select.unfold.i.i.i.i.i._crit_edge.i ], [ %spec.select.i9.i.i.i14.i.i.i, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.loopexit.i.i.i ]
  %.val.i.i.i3.i.i.i = phi ptr [ null, %select.unfold.i.i.i.i.i._crit_edge.i ], [ %i.aps, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.loopexit.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %spec.select.i9.i.i.i14.i.i.i, %select.unfold.i.i.i.i.i._crit_edge.i ], [ %.val.i.i.i5.i.lcssa.i.i, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.loopexit.i.i.i ]
  %i.apv = call noundef nonnull align 8 ptr %.sroa.0780.0.copyload781(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i.i.i) #30, !noalias !7949, !inline_history !7643
  %i.apw = add i64 %i.apd, -1                     ; 2 uses
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.apv) #30, !noalias !7950
  %.pr.i.i.i = load i64, ptr %i.n, align 8, !noalias !7950
  %.not.i.i2.i = icmp eq i64 %.pr.i.i.i, -1
  br i1 %.not.i.i2.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefBR_EEE11spec_extendCsat9HgdBb3qc_16shadowsocks_rust.exit.i, label %bb.jx

bb.jx:                                            ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i
  %i.apx = icmp samesign ult i64 %.sroa.7791.0.copyload, 384307168202282326
  call void @llvm.assume(i1 %i.apx)
  %i.apy = icmp eq i64 %.sroa.7791.0.copyload, %.sroa.0789.0.copyload.pre1005
  br i1 %i.apy, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, label %bb.jy

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i: ; preds = %bb.jx
  %i.apz = call i64 @llvm.uadd.sat.i64(i64 %i.apw, i64 1)
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %.sroa.7791.0.copyload, i64 noundef range(i64 1, 0) %i.apz, i64 noundef 8, i64 noundef 24) #30, !noalias !7951
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i704, align 8, !alias.scope !7952, !noalias !7940
  br label %bb.jy

bb.jy:                                            ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, %bb.jx
  %i.aqa = phi ptr [ %.pre.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i ], [ %i.apc, %bb.jx ] ; 2 uses
  %i.aqb = getelementptr inbounds nuw [24 x i8], ptr %i.aqa, i64 %.sroa.7791.0.copyload
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aqb, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !7950
  %i.aqc = add nuw nsw i64 %.sroa.7791.0.copyload, 1 ; 2 uses
  store i64 %i.aqc, ptr %.sroa.6.0..sroa_idx.i705, align 8, !alias.scope !7952, !noalias !7940
  br label %bb.jw

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefBR_EEE11spec_extendCsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, %select.unfold.i.i.i.i.i._crit_edge.i
  %.sroa.0789.0.copyload = phi i64 [ %.sroa.0789.0.copyload.pre1005.pre1007, %select.unfold.i.i.i.i.i._crit_edge.i ], [ %.sroa.0789.0.copyload.pre1005, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !7946
  %.sroa.5790.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i704, align 8, !noalias !7948
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCsat9HgdBb3qc_16shadowsocks_rust.exit

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %select.unfold.i.i.i.i._crit_edge, %.sink.split.i8.i.i.i.i, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefBR_EEE11spec_extendCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %.sroa.7791.0 = phi i64 [ %.sroa.7791.0.copyload, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefBR_EEE11spec_extendCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ 0, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ 0, %.sink.split.i8.i.i.i.i ], [ 0, %select.unfold.i.i.i.i._crit_edge ]
  %.sroa.5790.0 = phi ptr [ %.sroa.5790.0.copyload, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefBR_EEE11spec_extendCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ inttoptr (i64 8 to ptr), %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ inttoptr (i64 8 to ptr), %.sink.split.i8.i.i.i.i ], [ inttoptr (i64 8 to ptr), %select.unfold.i.i.i.i._crit_edge ]
  %.sroa.0789.0 = phi i64 [ %.sroa.0789.0.copyload, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefBR_EEE11spec_extendCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ 0, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ 0, %.sink.split.i8.i.i.i.i ], [ 0, %select.unfold.i.i.i.i._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !7940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB12_6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB12_6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCsat9HgdBb3qc_16shadowsocks_rust.exit
  %.sroa.7777.0 = phi i64 [ undef, %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %.sroa.7791.0, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCsat9HgdBb3qc_16shadowsocks_rust.exit ]
  %.sroa.6774.0 = phi ptr [ undef, %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %.sroa.5790.0, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCsat9HgdBb3qc_16shadowsocks_rust.exit ]
  %.sroa.0772.0 = phi i64 [ -1, %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %.sroa.0789.0, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCsat9HgdBb3qc_16shadowsocks_rust.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0165.sroa.0)
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.0165.sroa.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.anu) #30
  %. = sext i1 %.not417.not to i32
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.im, i64 1144 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7953)
  %i.aqe = load i64, ptr %i.aqd, align 8, !range !24, !alias.scope !7953, !noundef !14 ; 3 uses
  %i.aqf = icmp eq i64 %i.aqe, -1
  br i1 %i.aqf, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8UFHSMUhzWe_19shadowsocks_service6config12OnlineConfigEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.jz

bb.jz:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB12_6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !7954)
  call void @llvm.experimental.noalias.scope.decl(metadata !7955)
  call void @llvm.experimental.noalias.scope.decl(metadata !7956)
  %i.aqg = icmp eq i64 %i.aqe, 0
  br i1 %i.aqg, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.im, i64 1152
  %.val1.i.i.i.i711 = load ptr, ptr %i.aqh, align 8, !alias.scope !7957, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i711, i64 noundef %i.aqe, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !7957
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i: ; preds = %bb.ka, %bb.jz
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.im, i64 1168
  call void @llvm.experimental.noalias.scope.decl(metadata !7958)
  %i.aqj = load i64, ptr %i.aqi, align 8, !range !24, !alias.scope !7959, !noundef !14 ; 3 uses
  %i.aqk = icmp eq i64 %i.aqj, -1
  br i1 %i.aqk, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8UFHSMUhzWe_19shadowsocks_service6config12OnlineConfigEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.kb

bb.kb:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !7960)
  %i.aql = getelementptr inbounds nuw i8, ptr %i.im, i64 1176
  %.val.i.i1.i.i = load ptr, ptr %i.aql, align 8, !alias.scope !7961, !nonnull !14, !noundef !14 ; 2 uses
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.im, i64 1184
  %.val1.i.i2.i.i = load i64, ptr %i.aqm, align 8, !alias.scope !7961, !noundef !14 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7962)
  %i.aqn = icmp eq i64 %.val1.i.i2.i.i, 0
  br i1 %i.aqn, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.kb, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i.i = phi i64 [ %i.aqp, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i ], [ 0, %bb.kb ] ; 2 uses
  %i.aqo = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i1.i.i, i64 %.sroa.0.03.i.i.i.i.i.i ; 2 uses
  %i.aqp = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7963)
  call void @llvm.experimental.noalias.scope.decl(metadata !7964)
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.aqo, align 8, !range !16, !alias.scope !7965, !noalias !7961, !noundef !14 ; 2 uses
  %i.aqq = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.aqq, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i, label %bb.kc

bb.kc:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqo, i64 8
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.aqr, align 8, !alias.scope !7965, !noalias !7961, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !7966
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i
end_hunk_1
begin_hunk_2_@_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field3_finish

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsa_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtB5_12AddressErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCsf3Ta7LF998c_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_6Binary3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXsf_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtBd_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtB12_6marker4SendNtB1z_4SyncEL_EINtNtB12_7convert4FromNtNtBf_6string6StringE4fromNtB5_11StringErrorNtNtB12_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NvXsf_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtBc_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs5_NtCs1kwRxRulhfk_12tracing_core5fieldeNtB5_5Value6record(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: cold nounwind nonlazybind uwtable
declare void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4, i32 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt17pointer_fmt_inner(i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsw_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatNtB5_13TimingDisplayNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcINtNtCsf3Ta7LF998c_4core4cell10UnsafeCellINtNtCsfGqwKJg1jQb_9rand_core5block8BlockRngNtNtNtCs1jR6m42rQJO_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs1kwRxRulhfk_12tracing_core10dispatcher18set_global_default(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtCs6d6qJmr6Ia5_11tracing_log10log_tracerNtB5_7Builder4init(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs1kwRxRulhfk_12tracing_core10dispatcherNtB2_21SetGlobalDefaultErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCs1kwRxRulhfk_12tracing_core10dispatcherNtB4_21SetGlobalDefaultErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXs3_NtCs20vKyNBpNec_16tracing_appender7rollingNtB5_13RollingWriterNtNtNtCsf3Ta7LF998c_4core2io5write5Write5write(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, ptr } @_RNvXs0_NtCs20vKyNBpNec_16tracing_appender7rollingNtB5_19RollingFileAppenderNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6writer10MakeWriter11make_writer(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXs7_NtCs3uQwFeR9vTQ_14syslog_tracing6syslogNtB5_12SyslogWriterNtNtNtCsf3Ta7LF998c_4core2io5write5Write5write(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs2d6kDCn68sB_10serde_core2deNtB2_10UnexpectedNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtCs2d6kDCn68sB_10serde_core2deNtB5_5OneOfNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCsf3Ta7LF998c_4core3fmt5floatdNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs1kwRxRulhfk_12tracing_core5fieldNtB2_8HexBytesNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXsq_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6writerNtB5_12WriteAdaptorNtNtNtCsf3Ta7LF998c_4core2io5write5Write5write(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7shardedNtB5_8RegistryNtB7_10LookupSpan9span_data(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshl.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.fshl.v8i32(<8 x i32>, <8 x i32>, <8 x i32>) #19

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+sse,+sse2,+sse3,+sse4.1,+ssse3" }
attributes #6 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold minsize noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nofree nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { nofree nosync nounwind nonlazybind memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { nounwind }
attributes #31 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #32 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #34 = { noreturn nounwind }
attributes #35 = { inlinehint nounwind }
attributes #36 = { noinline nounwind }
attributes #37 = { noinline noreturn nounwind }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !{null}
!1 = distinct !{null, null, null, null}
!2 = distinct !{null, null}
!3 = distinct !{null, null, null, null, null}
!4 = distinct !{null}
!5 = distinct !{null}
!6 = distinct !{null}
!7 = distinct !{null}
!8 = distinct !{null}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 2, !"RtLibUseGOT", i32 1}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{!"rustc version 1.100.0-nightly (809936eac 2026-09-12)"}
!13 = !{i32 0, i32 2}
!14 = !{}
!15 = !{i32 0, i32 -1}
!16 = !{i64 0, i64 -9223372036854775808}
!17 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!18 = !{i64 -2, i64 5}
!19 = !{i8 0, i8 2}
!20 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!21 = !{i8 -1, i8 7}
!22 = !{i64 -1, i64 5}
!23 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!24 = !{i64 -1, i64 -9223372036854775808}
!25 = !{i64 1, i64 536870913}
!26 = !{!"branch_weights", !"expected", i32 2144049393, i32 3434255}
!27 = !{i64 8}
!28 = !{i8 0, i8 3}
!29 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!30 = !{i8 0, i8 44}
!31 = !{i64 0, i64 2}
!32 = !{i64 0, i64 3}
!33 = !{i64 0, i64 -9223372036854775807}
!34 = !{!"branch_weights", i32 1, i32 6000, i32 1, i32 1}
!35 = !{!"address", !"read_provenance"}
!36 = !{i64 4}
!37 = !{!"branch_weights", i32 1, i32 4001}
!38 = !{i64 0, i64 5}
!39 = !{!"branch_weights", i32 2002, i32 2000}
!40 = !{i16 0, i16 2}
!41 = !{i32 -1, i32 1000000000}
!42 = !{i64 -1, i64 3}
!43 = !{i16 0, i16 3}
!44 = !{!"branch_weights", i32 4000000, i32 4001}
!45 = !{i64 -3, i64 -9223372036854775808}
!46 = !{!"branch_weights", i32 1, i32 127}
!47 = !{!"branch_weights", i32 127, i32 767873}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !{i16 -1, i16 3}
!50 = !{i32 0, i32 3}
!51 = !{i64 -2, i64 -9223372036854775808}
!52 = !{i32 -1, i32 1114112}
!53 = !{!"llvm.loop.peeled.count", i32 1}
!54 = !{!"branch_weights", i32 4001, i32 4000000}
!55 = !{i64 1, i64 0}
!56 = !{i32 0, i32 1000000000}
!57 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!58 = !{!"branch_weights", i32 2143191900, i32 4291748}
!59 = !{i64 0, i64 -9223372036854775806}
!60 = !{i8 0, i8 6}
!61 = !{i32 0, i32 23}
!62 = !{!"branch_weights", i32 -294967296, i32 6003000}
!63 = distinct !{!63, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust"}
!64 = distinct !{!64, !63, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!65 = distinct !{!65, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsat9HgdBb3qc_16shadowsocks_rust"}
!66 = distinct !{!66, !65, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!67 = distinct !{!67, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs4FileECsat9HgdBb3qc_16shadowsocks_rust"}
!68 = distinct !{!68, !67, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs4FileECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!69 = distinct !{!69, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust"}
!70 = distinct !{!70, !69, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!71 = distinct !{!71, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsat9HgdBb3qc_16shadowsocks_rust"}
!72 = distinct !{!72, !71, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!73 = distinct !{!73, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs4FileECsat9HgdBb3qc_16shadowsocks_rust"}
!74 = distinct !{!74, !73, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs4FileECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!75 = !{!64}
!76 = !{!66}
!77 = !{!66, !64}
!78 = !{!68}
!79 = !{!70}
!80 = !{!72}
!81 = !{!72, !70}
!82 = !{!74}
!83 = distinct !{!83, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtCsfS4ZeCxwza6_6anyhow5error9ErrorImplNtCsJovr8ELaM0_3log14SetLoggerErrorEE3newCsat9HgdBb3qc_16shadowsocks_rust"}
!84 = distinct !{!84, !83, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtCsfS4ZeCxwza6_6anyhow5error9ErrorImplNtCsJovr8ELaM0_3log14SetLoggerErrorEE3newCsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!85 = !{!84}
!86 = distinct !{!86, i1 true, !"_RINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB3_7Builder15from_directivesINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB1z_6filter6FilterINtNtNtB1D_3str4iter5SplitcENCINvB2_11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCB3n_s_0EECsat9HgdBb3qc_16shadowsocks_rust"}
!87 = distinct !{!87, !86, !"_RINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB3_7Builder15from_directivesINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB1z_6filter6FilterINtNtNtB1D_3str4iter5SplitcENCINvB2_11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCB3n_s_0EECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!88 = distinct !{!88, !86, !"_RINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB3_7Builder15from_directivesINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB1z_6filter6FilterINtNtNtB1D_3str4iter5SplitcENCINvB2_11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCB3n_s_0EECsat9HgdBb3qc_16shadowsocks_rust: argument 1"}
!89 = distinct !{!89, !86, !"_RINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB3_7Builder15from_directivesINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB1z_6filter6FilterINtNtNtB1D_3str4iter5SplitcENCINvB2_11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCB3n_s_0EECsat9HgdBb3qc_16shadowsocks_rust: argument 2"}
!90 = distinct !{!90, i1 true, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB8_6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1Y_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCB1U_s_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtB3q_3vec3VecNtNtB20_9directive9DirectiveEECsat9HgdBb3qc_16shadowsocks_rust"}
!91 = distinct !{!91, !90, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB8_6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1Y_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCB1U_s_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtB3q_3vec3VecNtNtB20_9directive9DirectiveEECsat9HgdBb3qc_16shadowsocks_rust: argument 1"}
!92 = distinct !{!92, !90, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB8_6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1Y_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCB1U_s_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtB3q_3vec3VecNtNtB20_9directive9DirectiveEECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!93 = distinct !{!93, i1 true, !"_RINvXsf_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1Z_8adapters10filter_map9FilterMapINtNtB3b_6filter6FilterINtNtNtB21_3str4iter5SplitcENCINvMNtBK_7builderNtB4H_7Builder11parse_lossyNtNtB8_6string6StringE0ENCB4D_s_0EECsat9HgdBb3qc_16shadowsocks_rust"}
!94 = distinct !{!94, !93, !"_RINvXsf_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1Z_8adapters10filter_map9FilterMapINtNtB3b_6filter6FilterINtNtNtB21_3str4iter5SplitcENCINvMNtBK_7builderNtB4H_7Builder11parse_lossyNtNtB8_6string6StringE0ENCB4D_s_0EECsat9HgdBb3qc_16shadowsocks_rust: argument 1"}
!95 = distinct !{!95, !93, !"_RINvXsf_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1Z_8adapters10filter_map9FilterMapINtNtB3b_6filter6FilterINtNtNtB21_3str4iter5SplitcENCINvMNtBK_7builderNtB4H_7Builder11parse_lossyNtNtB8_6string6StringE0ENCB4D_s_0EECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!96 = distinct !{!96, i1 true, !"_RNvXNtNtNtCsf3Ta7LF998c_4core4iter6traits7collectINtNtNtB6_8adapters10filter_map9FilterMapINtNtBQ_6filter6FilterINtNtNtB8_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB2j_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCB2f_s_0ENtB2_12IntoIterator9into_iterCsat9HgdBb3qc_16shadowsocks_rust"}
!97 = distinct !{!97, !96, !"_RNvXNtNtNtCsf3Ta7LF998c_4core4iter6traits7collectINtNtNtB6_8adapters10filter_map9FilterMapINtNtBQ_6filter6FilterINtNtNtB8_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB2j_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCB2f_s_0ENtB2_12IntoIterator9into_iterCsat9HgdBb3qc_16shadowsocks_rust: argument 1"}
!98 = distinct !{!98, !96, !"_RNvXNtNtNtCsf3Ta7LF998c_4core4iter6traits7collectINtNtNtB6_8adapters10filter_map9FilterMapINtNtBQ_6filter6FilterINtNtNtB8_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB2j_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCB2f_s_0ENtB2_12IntoIterator9into_iterCsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!99 = distinct !{!99, i1 true, !"_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB2y_6filter6FilterINtNtNtB2C_3str4iter5SplitcENCINvMNtBY_7builderNtB4q_7Builder11parse_lossyNtNtB6_6string6StringE0ENCB4m_s_0EE9from_iterCsat9HgdBb3qc_16shadowsocks_rust"}
!100 = distinct !{!100, !99, !"_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB2y_6filter6FilterINtNtNtB2C_3str4iter5SplitcENCINvMNtBY_7builderNtB4q_7Builder11parse_lossyNtNtB6_6string6StringE0ENCB4m_s_0EE9from_iterCsat9HgdBb3qc_16shadowsocks_rust: argument 1"}
!101 = distinct !{!101, !99, !"_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB2y_6filter6FilterINtNtNtB2C_3str4iter5SplitcENCINvMNtBY_7builderNtB4q_7Builder11parse_lossyNtNtB6_6string6StringE0ENCB4m_s_0EE9from_iterCsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!102 = distinct !{!102, i1 true, !"_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB2M_6filter6FilterINtNtNtB2Q_3str4iter5SplitcENCINvMNtB15_7builderNtB4E_7Builder11parse_lossyNtNtB6_6string6StringE0ENCB4A_s_0EE9from_iterCsat9HgdBb3qc_16shadowsocks_rust"}
!103 = distinct !{!103, !102, !"_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB2M_6filter6FilterINtNtNtB2Q_3str4iter5SplitcENCINvMNtB15_7builderNtB4E_7Builder11parse_lossyNtNtB6_6string6StringE0ENCB4A_s_0EE9from_iterCsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!104 = distinct !{!104, !102, !"_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB2M_6filter6FilterINtNtNtB2Q_3str4iter5SplitcENCINvMNtB15_7builderNtB4E_7Builder11parse_lossyNtNtB6_6string6StringE0ENCB4A_s_0EE9from_iterCsat9HgdBb3qc_16shadowsocks_rust: argument 1"}
!105 = distinct !{!105, i1 true, !"_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsat9HgdBb3qc_16shadowsocks_rust"}
!106 = distinct !{!106, !105, !"_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!107 = distinct !{!107, i1 true, !"_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB2t_6filter6FilterINtNtNtB2x_3str4iter5SplitcENCINvMNtBV_7builderNtB4l_7Builder11parse_lossyNtNtB6_6string6StringE0ENCB4h_s_0EE11spec_extendCsat9HgdBb3qc_16shadowsocks_rust"}
!108 = distinct !{!108, !107, !"_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB2t_6filter6FilterINtNtNtB2x_3str4iter5SplitcENCINvMNtBV_7builderNtB4l_7Builder11parse_lossyNtNtB6_6string6StringE0ENCB4h_s_0EE11spec_extendCsat9HgdBb3qc_16shadowsocks_rust: argument 1"}
!109 = distinct !{!109, !107, !"_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB2t_6filter6FilterINtNtNtB2x_3str4iter5SplitcENCINvMNtBV_7builderNtB4l_7Builder11parse_lossyNtNtB6_6string6StringE0ENCB4h_s_0EE11spec_extendCsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!110 = distinct !{!110, i1 true, !"_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveE16extend_desugaredINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB2f_6filter6FilterINtNtNtB2j_3str4iter5SplitcENCINvMNtBK_7builderNtB47_7Builder11parse_lossyNtNtB8_6string6StringE0ENCB43_s_0EECsat9HgdBb3qc_16shadowsocks_rust"}
!111 = distinct !{!111, !110, !"_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveE16extend_desugaredINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB2f_6filter6FilterINtNtNtB2j_3str4iter5SplitcENCINvMNtBK_7builderNtB47_7Builder11parse_lossyNtNtB8_6string6StringE0ENCB43_s_0EECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!112 = distinct !{!112, !110, !"_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveE16extend_desugaredINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB2f_6filter6FilterINtNtNtB2j_3str4iter5SplitcENCINvMNtBK_7builderNtB47_7Builder11parse_lossyNtNtB8_6string6StringE0ENCB43_s_0EECsat9HgdBb3qc_16shadowsocks_rust: argument 1"}
!113 = distinct !{!113, i1 true, !"_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE8try_withNCNvMNtNtBa_4hash6randomNtB1M_11RandomState3new0B25_ECsat9HgdBb3qc_16shadowsocks_rust"}
!114 = distinct !{!114, !113, !"_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE8try_withNCNvMNtNtBa_4hash6randomNtB1M_11RandomState3new0B25_ECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!115 = distinct !{!115, i1 true, !"_RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsat9HgdBb3qc_16shadowsocks_rust"}
!116 = distinct !{!116, !115, !"_RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!117 = distinct !{!117, i1 true, !"_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Csat9HgdBb3qc_16shadowsocks_rust"}
!118 = distinct !{!118, !117, !"_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Csat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!119 = distinct !{!119, i1 true, !"_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECsat9HgdBb3qc_16shadowsocks_rust"}
!120 = distinct !{!120, !119, !"_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!121 = distinct !{!121, i1 true, !"_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsat9HgdBb3qc_16shadowsocks_rust"}
!122 = distinct !{!122, !121, !"_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!123 = distinct !{!123, i1 true, !"_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE8try_withNCNvMNtNtBa_4hash6randomNtB1M_11RandomState3new0B25_ECsat9HgdBb3qc_16shadowsocks_rust"}
!124 = distinct !{!124, !123, !"_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE8try_withNCNvMNtNtBa_4hash6randomNtB1M_11RandomState3new0B25_ECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!125 = distinct !{!125, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust"}
!126 = distinct !{!126, !125, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!127 = distinct !{!127, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsat9HgdBb3qc_16shadowsocks_rust"}
!128 = distinct !{!128, !127, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!129 = !{!87}
!130 = !{!88}
!131 = !{!95, !94, !92, !91, !87, !88, !89}
!132 = !{!98, !97}
!133 = !{!95, !92, !87, !88}
!134 = !{!101, !100, !95, !94, !92, !91, !87, !88, !89}
!135 = !{!103, !101, !95, !94, !92, !91, !87, !88, !89}
!136 = !{!103, !104, !101, !100, !95, !94, !92, !91, !87, !88, !89}
!137 = !{!106, !103, !104, !101, !100, !95, !94, !92, !91, !87, !88, !89}
!138 = !{!87, !88, !89}
!139 = !{!109, !108, !103, !104, !101, !100, !95, !94, !92, !91, !87, !88, !89}
!140 = !{!111, !109, !103, !104, !101, !100, !95, !94, !92, !91, !87, !88, !89}
!141 = !{!111, !112, !109, !108, !103, !104, !101, !100, !95, !94, !92, !91, !87, !88, !89}
!142 = !{!120, !118, !116, !114, !87, !88, !89}
!143 = !{!114, !87, !88, !89}
!144 = !{!122, !114, !87, !88, !89}
!145 = !{!124, !87, !88, !89}
!146 = !{!87, !89}
!147 = !{!88, !89}
!148 = !{!126}
!149 = !{!128}
!150 = !{!128, !126}
!151 = distinct !{!151, i1 true, !"_RNvXsg_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsat9HgdBb3qc_16shadowsocks_rust"}
!152 = distinct !{!152, !151, !"_RNvXsg_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsat9HgdBb3qc_16shadowsocks_rust: argument 1"}
!153 = distinct !{!153, i1 true, !"_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9partitionINtB8_3VecBR_ENvMBT_BR_10is_dynamicECsat9HgdBb3qc_16shadowsocks_rust"}
!154 = distinct !{!154, !153, !"_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9partitionINtB8_3VecBR_ENvMBT_BR_10is_dynamicECsat9HgdBb3qc_16shadowsocks_rust: argument 1"}
!155 = distinct !{!155, !153, !"_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9partitionINtB8_3VecBR_ENvMBT_BR_10is_dynamicECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!156 = distinct !{!156, i1 true, !"_RNvXsq_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtCsf3Ta7LF998c_4core7default7Default7defaultCsat9HgdBb3qc_16shadowsocks_rust"}
!157 = distinct !{!157, !156, !"_RNvXsq_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtCsf3Ta7LF998c_4core7default7Default7defaultCsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!158 = distinct !{!158, i1 true, !"_RNvXsq_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtCsf3Ta7LF998c_4core7default7Default7defaultCsat9HgdBb3qc_16shadowsocks_rust"}
!159 = distinct !{!159, !158, !"_RNvXsq_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtCsf3Ta7LF998c_4core7default7Default7defaultCsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!160 = distinct !{!160, i1 true, !"_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNvB29_9partition6extendBX_INtB8_3VecBX_ENvMBZ_BX_10is_dynamicE0ECsat9HgdBb3qc_16shadowsocks_rust"}
!161 = distinct !{!161, !160, !"_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNvB29_9partition6extendBX_INtB8_3VecBX_ENvMBZ_BX_10is_dynamicE0ECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!162 = distinct !{!162, i1 true, !"_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E10extend_oneCsat9HgdBb3qc_16shadowsocks_rust"}
!163 = distinct !{!163, !162, !"_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E10extend_oneCsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!164 = distinct !{!164, i1 true, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveE8push_mutCsat9HgdBb3qc_16shadowsocks_rust"}
!165 = distinct !{!165, !164, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveE8push_mutCsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!166 = distinct !{!166, i1 true, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9partition6extendNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveINtNtCsgCecv3eZDcN_5alloc3vec3VecB1i_ENvMB1k_B1i_10is_dynamicE0Csat9HgdBb3qc_16shadowsocks_rust"}
!167 = distinct !{!167, !166, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9partition6extendNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveINtNtCsgCecv3eZDcN_5alloc3vec3VecB1i_ENvMB1k_B1i_10is_dynamicE0Csat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!168 = distinct !{!168, !162, !"_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E10extend_oneCsat9HgdBb3qc_16shadowsocks_rust: argument 1"}
!169 = distinct !{!169, !164, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveE8push_mutCsat9HgdBb3qc_16shadowsocks_rust: argument 1"}
!170 = distinct !{!170, i1 true, !"_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E10extend_oneCsat9HgdBb3qc_16shadowsocks_rust"}
!171 = distinct !{!171, !170, !"_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E10extend_oneCsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!172 = distinct !{!172, i1 true, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveE8push_mutCsat9HgdBb3qc_16shadowsocks_rust"}
!173 = distinct !{!173, !172, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveE8push_mutCsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!174 = distinct !{!174, !170, !"_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E10extend_oneCsat9HgdBb3qc_16shadowsocks_rust: argument 1"}
!175 = distinct !{!175, !172, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveE8push_mutCsat9HgdBb3qc_16shadowsocks_rust: argument 1"}
!176 = distinct !{!176, i1 true, !"_RNvXs_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveINtB4_12DirectiveSetNtB4_15StaticDirectiveENtNtCsf3Ta7LF998c_4core7default7Default7defaultCsat9HgdBb3qc_16shadowsocks_rust"}
!177 = distinct !{!177, !176, !"_RNvXs_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveINtB4_12DirectiveSetNtB4_15StaticDirectiveENtNtCsf3Ta7LF998c_4core7default7Default7defaultCsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!178 = distinct !{!178, i1 true, !"_RINvXs2_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveINtB6_12DirectiveSetNtB6_15StaticDirectiveEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendB1j_E6extendINtNtNtB1N_8adapters5chain5ChainINtNtB2Q_10filter_map9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB8_3env9directive9DirectiveENCINvMB4C_B4A_11make_tablesINtB3R_3VecB4A_EE0EIB3i_INtNtNtB1P_5slice4iter4IterB4A_ENvB5d_9to_staticEEECsat9HgdBb3qc_16shadowsocks_rust"}
!179 = distinct !{!179, !178, !"_RINvXs2_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveINtB6_12DirectiveSetNtB6_15StaticDirectiveEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendB1j_E6extendINtNtNtB1N_8adapters5chain5ChainINtNtB2Q_10filter_map9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB8_3env9directive9DirectiveENCINvMB4C_B4A_11make_tablesINtB3R_3VecB4A_EE0EIB3i_INtNtNtB1P_5slice4iter4IterB4A_ENvB5d_9to_staticEEECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!180 = distinct !{!180, !178, !"_RINvXs2_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveINtB6_12DirectiveSetNtB6_15StaticDirectiveEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendB1j_E6extendINtNtNtB1N_8adapters5chain5ChainINtNtB2Q_10filter_map9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB8_3env9directive9DirectiveENCINvMB4C_B4A_11make_tablesINtB3R_3VecB4A_EE0EIB3i_INtNtNtB1P_5slice4iter4IterB4A_ENvB5d_9to_staticEEECsat9HgdBb3qc_16shadowsocks_rust: argument 1"}
!181 = distinct !{!181, i1 true, !"_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMB2j_B2h_11make_tablesINtB1y_3VecB2h_EE0EIB10_INtNtNtBa_5slice4iter4IterB2h_ENvB3y_9to_staticEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust"}
!182 = distinct !{!182, !181, !"_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMB2j_B2h_11make_tablesINtB1y_3VecB2h_EE0EIB10_INtNtNtBa_5slice4iter4IterB2h_ENvB3y_9to_staticEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!183 = distinct !{!183, !181, !"_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMB2j_B2h_11make_tablesINtB1y_3VecB2h_EE0EIB10_INtNtNtBa_5slice4iter4IterB2h_ENvB3y_9to_staticEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust: argument 1"}
!184 = distinct !{!184, i1 true, !"_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_10filter_map9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMB2o_B2m_11make_tablesINtB1D_3VecB2m_EE0ENtNtB2s_9directive15StaticDirectiveNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsat9HgdBb3qc_16shadowsocks_rust"}
!185 = distinct !{!185, !184, !"_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_10filter_map9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMB2o_B2m_11make_tablesINtB1D_3VecB2m_EE0ENtNtB2s_9directive15StaticDirectiveNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsat9HgdBb3qc_16shadowsocks_rust: argument 1"}
!186 = distinct !{!186, !184, !"_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_10filter_map9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMB2o_B2m_11make_tablesINtB1D_3VecB2m_EE0ENtNtB2s_9directive15StaticDirectiveNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!187 = distinct !{!187, i1 true, !"_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMB1X_B1V_11make_tablesINtB1c_3VecB1V_EE0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsat9HgdBb3qc_16shadowsocks_rust"}
!188 = distinct !{!188, !187, !"_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMB1X_B1V_11make_tablesINtB1c_3VecB1V_EE0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsat9HgdBb3qc_16shadowsocks_rust: argument 1"}
!189 = distinct !{!189, !187, !"_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMB1X_B1V_11make_tablesINtB1c_3VecB1V_EE0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!190 = distinct !{!190, i1 true, !"_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMB20_B1Y_11make_tablesINtB1f_3VecB1Y_EE0ENtNtNtB9_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust"}
!191 = distinct !{!191, !190, !"_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMB20_B1Y_11make_tablesINtB1f_3VecB1Y_EE0ENtNtNtB9_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust: argument 1"}
!192 = distinct !{!192, !190, !"_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMB20_B1Y_11make_tablesINtB1f_3VecB1Y_EE0ENtNtNtB9_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!193 = distinct !{!193, i1 true, !"_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8find_mapNtNtBX_9directive15StaticDirectiveQNCINvMBT_BR_11make_tablesINtB8_3VecBR_EE0ECsat9HgdBb3qc_16shadowsocks_rust"}
!194 = distinct !{!194, !193, !"_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8find_mapNtNtBX_9directive15StaticDirectiveQNCINvMBT_BR_11make_tablesINtB8_3VecBR_EE0ECsat9HgdBb3qc_16shadowsocks_rust: argument 1"}
!195 = distinct !{!195, !193, !"_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8find_mapNtNtBX_9directive15StaticDirectiveQNCINvMBT_BR_11make_tablesINtB8_3VecBR_EE0ECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!196 = distinct !{!196, i1 true, !"_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB29_8find_map5checkBX_NtNtB13_9directive15StaticDirectiveQNCINvMBZ_BX_11make_tablesINtB8_3VecBX_EE0E0INtNtNtB2h_3ops12control_flow11ControlFlowB3H_EECsat9HgdBb3qc_16shadowsocks_rust"}
!197 = distinct !{!197, !196, !"_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB29_8find_map5checkBX_NtNtB13_9directive15StaticDirectiveQNCINvMBZ_BX_11make_tablesINtB8_3VecBX_EE0E0INtNtNtB2h_3ops12control_flow11ControlFlowB3H_EECsat9HgdBb3qc_16shadowsocks_rust: argument 1"}
!198 = distinct !{!198, !196, !"_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB29_8find_map5checkBX_NtNtB13_9directive15StaticDirectiveQNCINvMBZ_BX_11make_tablesINtB8_3VecBX_EE0E0INtNtNtB2h_3ops12control_flow11ControlFlowB3H_EECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!199 = distinct !{!199, i1 true, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8find_map5checkNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveNtNtB1m_9directive15StaticDirectiveQNCINvMB1i_B1g_11make_tablesINtNtCsgCecv3eZDcN_5alloc3vec3VecB1g_EE0E0Csat9HgdBb3qc_16shadowsocks_rust"}
!200 = distinct !{!200, !199, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8find_map5checkNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveNtNtB1m_9directive15StaticDirectiveQNCINvMB1i_B1g_11make_tablesINtNtCsgCecv3eZDcN_5alloc3vec3VecB1g_EE0E0Csat9HgdBb3qc_16shadowsocks_rust: argument 1"}
!201 = distinct !{!201, !199, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8find_map5checkNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveNtNtB1m_9directive15StaticDirectiveQNCINvMB1i_B1g_11make_tablesINtNtCsgCecv3eZDcN_5alloc3vec3VecB1g_EE0E0Csat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!202 = distinct !{!202, i1 true, !"_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directiveNtBU_9Directive11make_tablesINtNtCsgCecv3eZDcN_5alloc3vec3VecB1T_EE0INtB7_5FnMutTB1T_EE8call_mutCsat9HgdBb3qc_16shadowsocks_rust"}
!203 = distinct !{!203, !202, !"_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directiveNtBU_9Directive11make_tablesINtNtCsgCecv3eZDcN_5alloc3vec3VecB1T_EE0INtB7_5FnMutTB1T_EE8call_mutCsat9HgdBb3qc_16shadowsocks_rust: argument 1"}
!204 = distinct !{!204, !202, !"_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directiveNtBU_9Directive11make_tablesINtNtCsgCecv3eZDcN_5alloc3vec3VecB1T_EE0INtB7_5FnMutTB1T_EE8call_mutCsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!205 = distinct !{!205, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust"}
!206 = distinct !{!206, !205, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!207 = distinct !{!207, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust"}
!208 = distinct !{!208, !207, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!209 = distinct !{!209, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust"}
!210 = distinct !{!210, !209, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!211 = distinct !{!211, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsat9HgdBb3qc_16shadowsocks_rust"}
!212 = distinct !{!212, !211, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!213 = distinct !{!213, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchECsat9HgdBb3qc_16shadowsocks_rust"}
!214 = distinct !{!214, !213, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!215 = distinct !{!215, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust"}
!216 = distinct !{!216, !215, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!217 = distinct !{!217, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsat9HgdBb3qc_16shadowsocks_rust"}
!218 = distinct !{!218, !217, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!219 = distinct !{!219, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchECsat9HgdBb3qc_16shadowsocks_rust"}
!220 = distinct !{!220, !219, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!221 = distinct !{!221, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchEECsat9HgdBb3qc_16shadowsocks_rust"}
!222 = distinct !{!222, !221, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchEECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!223 = distinct !{!223, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field10ValueMatchEECsat9HgdBb3qc_16shadowsocks_rust"}
!224 = distinct !{!224, !223, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field10ValueMatchEECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!225 = distinct !{!225, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust"}
!226 = distinct !{!226, !225, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!227 = distinct !{!227, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust"}
!228 = distinct !{!228, !227, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!229 = distinct !{!229, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsat9HgdBb3qc_16shadowsocks_rust"}
!230 = distinct !{!230, !229, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!231 = distinct !{!231, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMB2z_B2x_11make_tablesINtB1O_3VecB2x_EE0EEECsat9HgdBb3qc_16shadowsocks_rust"}
!232 = distinct !{!232, !231, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMB2z_B2x_11make_tablesINtB1O_3VecB2x_EE0EEECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!233 = distinct !{!233, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMB2d_B2b_11make_tablesINtB1s_3VecB2b_EE0EECsat9HgdBb3qc_16shadowsocks_rust"}
!234 = distinct !{!234, !233, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMB2d_B2b_11make_tablesINtB1s_3VecB2b_EE0EECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!235 = distinct !{!235, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveEECsat9HgdBb3qc_16shadowsocks_rust"}
!236 = distinct !{!236, !235, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveEECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!237 = distinct !{!237, i1 true, !"_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsat9HgdBb3qc_16shadowsocks_rust"}
!238 = distinct !{!238, !237, !"_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!239 = distinct !{!239, i1 true, !"_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectiveE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2a_5ChainINtNtB2c_10filter_map9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtBM_3env9directive9DirectiveENCINvMB4b_B49_11make_tablesINtB3q_3VecB49_EE0EIB2R_INtNtNtB5_5slice4iter4IterB49_ENvB4M_9to_staticEENtNtNtB2e_6traits8iterator8Iterator4next0ECsat9HgdBb3qc_16shadowsocks_rust"}
!240 = distinct !{!240, !239, !"_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectiveE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2a_5ChainINtNtB2c_10filter_map9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtBM_3env9directive9DirectiveENCINvMB4b_B49_11make_tablesINtB3q_3VecB49_EE0EIB2R_INtNtNtB5_5slice4iter4IterB49_ENvB4M_9to_staticEENtNtNtB2e_6traits8iterator8Iterator4next0ECsat9HgdBb3qc_16shadowsocks_rust: argument 1"}
!241 = distinct !{!241, i1 true, !"_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENvMB1C_B1A_9to_staticENtNtNtB9_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust"}
!242 = distinct !{!242, !241, !"_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENvMB1C_B1A_9to_staticENtNtNtB9_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust: argument 1"}
!243 = distinct !{!243, i1 true, !"_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtBW_9directive15StaticDirectiveQNvMBS_BQ_9to_staticECsat9HgdBb3qc_16shadowsocks_rust"}
!244 = distinct !{!244, !243, !"_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtBW_9directive15StaticDirectiveQNvMBS_BQ_9to_staticECsat9HgdBb3qc_16shadowsocks_rust: argument 1"}
!245 = distinct !{!245, !239, !"_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectiveE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2a_5ChainINtNtB2c_10filter_map9FilterMapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtBM_3env9directive9DirectiveENCINvMB4b_B49_11make_tablesINtB3q_3VecB49_EE0EIB2R_INtNtNtB5_5slice4iter4IterB49_ENvB4M_9to_staticEENtNtNtB2e_6traits8iterator8Iterator4next0ECsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!246 = distinct !{!246, i1 true, !"_RNvMs0_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveINtB5_12DirectiveSetNtB5_15StaticDirectiveE3addCsat9HgdBb3qc_16shadowsocks_rust"}
!247 = distinct !{!247, !246, !"_RNvMs0_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveINtB5_12DirectiveSetNtB5_15StaticDirectiveE3addCsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!248 = distinct !{!248, !246, !"_RNvMs0_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveINtB5_12DirectiveSetNtB5_15StaticDirectiveE3addCsat9HgdBb3qc_16shadowsocks_rust: argument 1"}
!249 = distinct !{!249, i1 true, !"_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust"}
!250 = distinct !{!250, !249, !"_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust: argument 1"}
!251 = distinct !{!251, i1 true, !"_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E6insertCsat9HgdBb3qc_16shadowsocks_rust"}
!252 = distinct !{!252, !251, !"_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E6insertCsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!253 = distinct !{!253, i1 true, !"_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust"}
!254 = distinct !{!254, !253, !"_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust: argument 1"}
!255 = distinct !{!255, !251, !"_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E6insertCsat9HgdBb3qc_16shadowsocks_rust: argument 1"}
!256 = distinct !{!256, i1 true, !"_RNvXsq_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_EINtNtNtCsf3Ta7LF998c_4core3ops5index8IndexMutjE9index_mutCsat9HgdBb3qc_16shadowsocks_rust"}
!257 = distinct !{!257, !256, !"_RNvXsq_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_EINtNtNtCsf3Ta7LF998c_4core3ops5index8IndexMutjE9index_mutCsat9HgdBb3qc_16shadowsocks_rust: argument 0"}
!258 = distinct !{!258, i1 true, !"_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust"}
end_hunk_2
