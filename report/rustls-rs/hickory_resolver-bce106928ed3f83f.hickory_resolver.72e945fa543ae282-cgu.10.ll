Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/hickory_resolver-bce106928ed3f83f.hickory_resolver.72e945fa543ae282-cgu.10?download=true
inline.NumInlined: 331
inline.NumDeleted: 129
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXsV_NtNtCsj6eKBz9Db1c_4core3fmt3numtNtB7_5Debug3fmt:bb.a

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsW_NtNtCsj6eKBz9Db1c_4core3fmt3nummNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsu_NtNtCsj6eKBz9Db1c_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXs8_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsw_NtNtCsj6eKBz9Db1c_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsX_NtNtCsj6eKBz9Db1c_4core3fmt3numyNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsC_NtNtCsj6eKBz9Db1c_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsE_NtNtCsj6eKBz9Db1c_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsc_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata4certNtB5_8CertTypeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i16, ptr %0, align 2, !range !492, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  switch i16 %i.c, label %default.unreachable1 [
    i16 0, label %bb.b
    i16 1, label %bb.c
    i16 2, label %bb.d
    i16 3, label %bb.e
    i16 4, label %bb.f
    i16 5, label %bb.g
    i16 6, label %bb.h
    i16 7, label %bb.i
    i16 8, label %bb.j
    i16 9, label %bb.k
    i16 10, label %bb.l
    i16 11, label %bb.m
    i16 12, label %bb.n
    i16 13, label %bb.o
    i16 14, label %bb.p
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 9)
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 4)
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 4)
  br label %bb.q

bb.e:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 3)
  br label %bb.q

bb.f:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 5)
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 5)
  br label %bb.q

bb.h:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 4)
  br label %bb.q

bb.i:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 6)
  br label %bb.q

bb.j:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 7)
  br label %bb.q

bb.k:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @90, i64 noundef 3)
  br label %bb.q

bb.l:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 3)
  br label %bb.q

bb.m:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @92, i64 noundef 11)
  br label %bb.q

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %i.q = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @94, i64 noundef 10, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.q

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.r = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  %i.s = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 13)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ %i.h, %bb.e ], [ %i.i, %bb.f ], [ %i.j, %bb.g ], [ %i.k, %bb.h ], [ %i.l, %bb.i ], [ %i.m, %bb.j ], [ %i.n, %bb.k ], [ %i.o, %bb.l ], [ %i.p, %bb.m ], [ %i.q, %bb.n ], [ %i.r, %bb.o ], [ %i.s, %bb.p ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXse_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxSIBy_ShEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !506
  %i.g = shl nuw nsw i64 %i.f, 4                  ; 2 uses
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9RFwvXNxPyg_16hickory_resolver.exit.thread.i, label %bb.b

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9RFwvXNxPyg_16hickory_resolver.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !noalias !506
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !noalias !506
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inINtNtB8_5boxed3BoxShENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9RFwvXNxPyg_16hickory_resolver.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !507
  %i.k = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !507 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.g) #27, !noalias !506
  unreachable

.lr.ph.i:                                         ; preds = %bb.b
  store i64 %i.f, ptr %i.b, align 8, !noalias !506
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %i.m, align 8, !noalias !506
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %i.n, align 8, !noalias !506
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i
  %.sroa.013.027.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.q, %bb.h ] ; 3 uses
  %.sroa.7.026.i = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %bb.h ] ; 3 uses
  %.sroa.10.025.i = phi i64 [ %i.f, %.lr.ph.i ], [ %1, %bb.h ]
  %1 = add nsw i64 %.sroa.10.025.i, -1            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.027.i, i64 16
  %i.r = add nuw nsw i64 %.sroa.7.026.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !508)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !509
  %i.s = load ptr, ptr %.sroa.013.027.i, align 8, !alias.scope !510, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.027.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !510, !noundef !4 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !511)
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9RFwvXNxPyg_16hickory_resolver.exit.thread.i.i.i, label %bb.e

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9RFwvXNxPyg_16hickory_resolver.exit.thread.i.i.i: ; preds = %bb.d
  store i64 0, ptr %i.a, align 8, !alias.scope !511, !noalias !509
  store ptr inttoptr (i64 1 to ptr), ptr %i.o, align 8, !alias.scope !511, !noalias !509
  br label %_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9RFwvXNxPyg_16hickory_resolver.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !512
  %i.w = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.u, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !512 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %i.u) #27
          to label %.noexc.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !506

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  store i64 %i.u, ptr %i.a, align 8, !alias.scope !511, !noalias !509
  store ptr %i.w, ptr %i.o, align 8, !alias.scope !511, !noalias !509
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %i.s, i64 range(i64 0, -9223372036854775808) %i.u, i1 false), !noalias !513
  br label %_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9RFwvXNxPyg_16hickory_resolver.exit.i.i

_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9RFwvXNxPyg_16hickory_resolver.exit.i.i: ; preds = %bb.g, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9RFwvXNxPyg_16hickory_resolver.exit.thread.i.i.i
  store i64 %i.u, ptr %i.p, align 8, !alias.scope !511, !noalias !509
  %i.y = invoke { ptr, i64 } @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE16into_boxed_sliceCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !506 ; 2 uses

bb.h:                                             ; preds = %_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9RFwvXNxPyg_16hickory_resolver.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !509
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.sroa.7.026.i ; 2 uses
  %i.aa = extractvalue { ptr, i64 } %i.y, 0       ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.y, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  store ptr %i.aa, ptr %i.z, align 8, !noalias !506
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !noalias !506
  %i.ad = icmp eq i64 %1, 0
  br i1 %i.ad, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inINtNtB8_5boxed3BoxShENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9RFwvXNxPyg_16hickory_resolver.exit, label %bb.d

bb.i:                                             ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24, !noalias !506
  unreachable

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9RFwvXNxPyg_16hickory_resolver.exit.i.i, %bb.f
  %lpad.loopexit.split-lp21 = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.026.i, ptr %i.n, align 8, !noalias !506
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtBG_5boxed3BoxShEEECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #23
          to label %bb.j unwind label %bb.i, !noalias !506

bb.j:                                             ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp21

_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inINtNtB8_5boxed3BoxShENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9RFwvXNxPyg_16hickory_resolver.exit: ; preds = %bb.h, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9RFwvXNxPyg_16hickory_resolver.exit.thread.i
  %2 = phi ptr [ %i.j, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9RFwvXNxPyg_16hickory_resolver.exit.thread.i ], [ %i.n, %bb.h ]
  store i64 %i.f, ptr %2, align 8, !noalias !506
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !506
  %i.af = call { ptr, i64 } @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxShEE16into_boxed_sliceCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret { ptr, i64 } %i.af
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXse_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxShENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9RFwvXNxPyg_16hickory_resolver.exit.thread.i, label %bb.b

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9RFwvXNxPyg_16hickory_resolver.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !alias.scope !519
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.f, align 8, !alias.scope !519
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.g, align 8, !alias.scope !519
  br label %_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9RFwvXNxPyg_16hickory_resolver.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !520
  %i.h = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.d, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !520 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %i.d) #27, !noalias !521
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 %i.d, ptr %i.a, align 8, !alias.scope !519
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %i.j, align 8, !alias.scope !519
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %i.b, i64 range(i64 0, -9223372036854775808) %i.d, i1 false), !noalias !519
  store i64 %i.d, ptr %i.k, align 8, !alias.scope !519
  br label %_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9RFwvXNxPyg_16hickory_resolver.exit

_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9RFwvXNxPyg_16hickory_resolver.exit: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9RFwvXNxPyg_16hickory_resolver.exit.thread.i, %bb.d
  %i.l = call { ptr, i64 } @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE16into_boxed_sliceCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCsj6eKBz9Db1c_4core3fmtbNtB5_5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsg_NtCsj6eKBz9Db1c_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata4tsigNtB5_13TsigAlgorithmNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i16, ptr %0, align 8, !range !13, !noundef !4 ; 2 uses
  %i.c = add nsw i16 %i.b, -2
  %i.d = icmp samesign ugt i16 %i.b, 1
  %narrow = select i1 %i.d, i16 %i.c, i16 10
  switch i16 %narrow, label %bb.b [
    i16 0, label %bb.c
    i16 1, label %bb.d
    i16 2, label %bb.e
    i16 3, label %bb.f
    i16 4, label %bb.g
    i16 5, label %bb.h
    i16 6, label %bb.i
    i16 7, label %bb.j
    i16 8, label %bb.k
    i16 9, label %bb.l
    i16 10, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 7)
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @98, i64 noundef 3)
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef 8)
  br label %bb.n

bb.f:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 10)
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 10)
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 14)
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef 10)
  br label %bb.n

bb.j:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef 14)
  br label %bb.n

bb.k:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 10)
  br label %bb.n

bb.l:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 14)
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.o = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @107)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %i.g, %bb.e ], [ %i.h, %bb.f ], [ %i.i, %bb.g ], [ %i.j, %bb.h ], [ %i.k, %bb.i ], [ %i.l, %bb.j ], [ %i.m, %bb.k ], [ %i.n, %bb.l ], [ %i.o, %bb.m ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEENtNtNtBV_3ops4drop4Drop4dropB1B_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateENtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalEB1Z_.exit, label %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = mul i64 %.val1, 48                       ; 2 uses
  %i.d = add i64 %i.c, 48                         ; 2 uses
  %i.e = add i64 %.val1, 17
  %i.f = add i64 %i.e, %i.d                       ; 4 uses
  %i.g = icmp uge i64 %i.f, %i.d
  %i.h = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %i.g)
  tail call void @llvm.assume(i1 %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateENtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalEB1Z_.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.j = sub i64 -48, %i.c
  %i.k = getelementptr inbounds i8, ptr %.val, i64 %i.j
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #25
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateENtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalEB1Z_.exit

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateENtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalEB1Z_.exit: ; preds = %bb.a, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjXdHNeFfodD_13hickory_proto2rr11record_type10RecordTypeNtNtCs9RFwvXNxPyg_16hickory_resolver5cache9TtlBoundsEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropB1U_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 4 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsjXdHNeFfodD_13hickory_proto2rr11record_type10RecordTypeNtNtCs9RFwvXNxPyg_16hickory_resolver5cache9TtlBoundsENtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalEB2i_.exit, label %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = mul i64 %.val1, 72
  %i.d = icmp slt i64 %.val1, 256204778801521550
  tail call void @llvm.assume(i1 %i.d)
  %i.e = and i64 %i.c, -16                        ; 2 uses
  %i.f = add i64 %i.e, 80                         ; 2 uses
  %i.g = add nsw i64 %.val1, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsjXdHNeFfodD_13hickory_proto2rr11record_type10RecordTypeNtNtCs9RFwvXNxPyg_16hickory_resolver5cache9TtlBoundsENtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalEB2i_.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub i64 -80, %i.e
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #25
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsjXdHNeFfodD_13hickory_proto2rr11record_type10RecordTypeNtNtCs9RFwvXNxPyg_16hickory_resolver5cache9TtlBoundsENtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalEB2i_.exit

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsjXdHNeFfodD_13hickory_proto2rr11record_type10RecordTypeNtNtCs9RFwvXNxPyg_16hickory_resolver5cache9TtlBoundsENtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalEB2i_.exit: ; preds = %bb.a, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
end_hunk_0
