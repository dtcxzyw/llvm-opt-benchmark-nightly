Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty-a9a23bbb4fda8628.ty.1965635c94f67e52-cgu.02?download=true
inline.NumInlined: 707
inline.NumDeleted: 346
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXsd_NtCs4o81Y09oZk1_10ty_project8metadataNtB5_20ProjectMetadataErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt:bb.a
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.e, align 8
  %i.l = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @189, i64 noundef 13, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @185)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.d, align 8
  %i.o = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @191, i64 noundef 16, ptr noalias noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 6, ptr noundef nonnull %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @190, ptr noalias noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 4, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @185)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.c, align 8
  %i.r = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @186, i64 noundef 13, ptr noalias noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 6, ptr noundef nonnull %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @184, ptr noalias noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 4, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @185)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.s, ptr %i.b, align 8
  %i.t = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @193, i64 noundef 31, ptr noalias noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 6, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @192, ptr noalias noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @185)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.a, align 8
  %i.w = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @195, i64 noundef 22, ptr noalias noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 6, ptr noundef nonnull %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @194, ptr noalias noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @185)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.l, %bb.c ], [ %i.o, %bb.d ], [ %i.r, %bb.e ], [ %i.t, %bb.f ], [ %i.w, %bb.g ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXse_Csb9oa454Wl6i_11clearscreenNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #10 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = load i64, ptr %0, align 8, !range !22, !noundef !5 ; 3 uses
  %i.h = icmp ne i64 %i.g, -9223372036854775805
  tail call void @llvm.assume(i1 %i.h)
  %i.i = xor i64 %i.g, -9223372036854775808
  %i.j = icmp slt i64 %i.g, 0
  %i.k = select i1 %i.j, i64 %i.i, i64 3
  switch i64 %i.k, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.f, align 8
  %i.m = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef 2, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @120)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.o, ptr %i.e, align 8
  %i.p = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @198, i64 noundef 7, ptr noundef nonnull %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @196, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @197)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.d, align 8
  %i.r = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @200, i64 noundef 3, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @199)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  %i.s = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @202, i64 noundef 8, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @201)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.b, align 8
  %i.u = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @204, i64 noundef 11, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @203)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.a, align 8
  %i.w = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @205, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @203)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.m, %bb.c ], [ %i.p, %bb.d ], [ %i.r, %bb.e ], [ %i.s, %bb.f ], [ %i.u, %bb.g ], [ %i.w, %bb.h ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvXse_NtCs4o81Y09oZk1_10ty_project8metadataNtB5_20ProjectMetadataErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !23, !noundef !5 ; 3 uses
  %i.b = icmp ne i64 %i.a, 7
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -4
  %i.d = icmp samesign ugt i64 %i.a, 3
  %i.e = select i1 %i.d, i64 %i.c, i64 3
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.g
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.6.0 = phi ptr [ @211, %bb.f ], [ @207, %bb.c ], [ @102, %bb.d ], [ @209, %bb.e ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.h, %bb.f ], [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ %0, %bb.e ], [ null, %bb.a ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.6.0, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXse_NtNtCsdjW2DEjcQy2_12clap_builder7builder10resettableINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEINtB5_14IntoResettableNtNtB7_5range10ValueRangeE15into_resettableCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %i.c, align 8
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXse_NtNtCsdjW2DEjcQy2_12clap_builder7builder10resettableINtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFromjEINtB5_14IntoResettableNtNtB7_5range10ValueRangeE15into_resettableCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %i.b, align 8
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXse_NtNtCsj06xRw2G0SJ_18tracing_subscriber6filter9directiveNtB5_10ParseErrorNtNtCs4NRVxsYgnAr_4core5error5Error11description(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @212, i64 24 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvXse_NtNtCsj06xRw2G0SJ_18tracing_subscriber6filter9directiveNtB5_10ParseErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !17, !noundef !5
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !10, !noundef !5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.4.0 = phi ptr [ %i.e, %bb.b ], [ @214, %bb.c ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.c, %bb.b ], [ %i.f, %bb.c ], [ null, %bb.a ]
  %i.g = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvXsf_Csb9oa454Wl6i_11clearscreenNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !22, !noundef !5 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775805
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 3
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.f
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.e, %bb.d, %bb.c
  %.sroa.7.0 = phi ptr [ @51, %bb.c ], [ undef, %bb.a ], [ @216, %bb.d ], [ @218, %bb.e ], [ undef, %bb.a ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.f, %bb.c ], [ null, %bb.a ], [ %i.g, %bb.d ], [ %0, %bb.e ], [ null, %bb.a ], [ null, %bb.a ]
  %i.h = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %.sroa.7.0, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCs4NRVxsYgnAr_4core3fmtbNtB5_5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #10 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsg_NtCs4NRVxsYgnAr_4core3fmtbNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtB5_13SliceContains14slice_containsCs2bbjMbSOFjy_2ty(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 384307168202282326) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  %i.b = alloca [64 x i8], align 8                ; 10 uses
  %i.c = alloca [64 x i8], align 8                ; 9 uses
  %.idx = mul nuw nsw i64 %2, 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i.i = load ptr, ptr %i.e, align 8, !alias.scope !1128, !noalias !1129 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load i64, ptr %i.f, align 8, !alias.scope !1128, !noalias !1129
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.69.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 57
  %.sroa.5.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx8.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.69.0..sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.7.0..sroa_idx12.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 57
  %.sroa.8.0..sroa_idx14.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 58
  %.not.not.not.i.not.not.not7.not = icmp eq i64 %2, 0
  br i1 %.not.not.not.i.not.not.not7.not, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2B_13SliceContains14slice_contains0ECs2bbjMbSOFjy_2ty.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtB7_13SliceContains14slice_contains0Cs2bbjMbSOFjy_2ty.exit.i, %bb.a
  %i.l = phi ptr [ %i.m, %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtB7_13SliceContains14slice_contains0Cs2bbjMbSOFjy_2ty.exit.i ], [ %1, %bb.a ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.n = getelementptr i8, ptr %i.l, i64 8
  %.val3.i = load ptr, ptr %i.n, align 8, !noalias !1130, !nonnull !5, !noundef !5
  %i.o = getelementptr i8, ptr %i.l, i64 16
  %.val4.i = load i64, ptr %i.o, align 8, !noalias !1130, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1130
  call void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path10components(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val3.i, i64 noundef %.val4.i), !noalias !1130
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  call void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path10components(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i.i, i64 noundef %.val3.i.i), !noalias !1130
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.b, align 8, !noalias !1130, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !1130 ; 3 uses
  %.sroa.69.0.copyload.i.i.i.i = load i8, ptr %.sroa.69.0..sroa_idx.i.i.i.i, align 8, !noalias !1130 ; 2 uses
  %.sroa.7.0.copyload.i.i.i.i = load i8, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 1, !noalias !1130 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  %i.p = load ptr, ptr %i.c, align 8, !alias.scope !1131, !noalias !1132, !nonnull !5, !noundef !5
  %i.q = load i64, ptr %i.i, align 8, !alias.scope !1131, !noalias !1132, !noundef !5
  %i.r = icmp eq i64 %i.q, %.sroa.5.0.copyload.i.i.i.i
  br i1 %i.r, label %bb.b, label %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtB7_13SliceContains14slice_contains0Cs2bbjMbSOFjy_2ty.exit.i

bb.b:                                             ; preds = %.lr.ph
  %i.s = load i8, ptr %i.j, align 8, !range !21, !alias.scope !1131, !noalias !1132, !noundef !5
  %i.t = icmp eq i8 %i.s, %.sroa.69.0.copyload.i.i.i.i
  %i.u = load i8, ptr %i.k, align 1, !range !21, !alias.scope !1131, !noalias !1132
  %i.v = icmp eq i8 %i.u, 2
  %or.cond.i.i.i.i.i = select i1 %i.t, i1 %i.v, i1 false
  %i.w = icmp eq i8 %.sroa.7.0.copyload.i.i.i.i, 2
  %or.cond7.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i, i1 %i.w, i1 false
  br i1 %or.cond7.i.i.i.i.i, label %bb.c, label %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtB7_13SliceContains14slice_contains0Cs2bbjMbSOFjy_2ty.exit.i

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.p, ptr nonnull %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.5.0.copyload.i.i.i.i), !noalias !1133
  %i.x = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.x, label %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtB7_13SliceContains14slice_contains0Cs2bbjMbSOFjy_2ty.exit.thread.i, label %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtB7_13SliceContains14slice_contains0Cs2bbjMbSOFjy_2ty.exit.i

_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtB7_13SliceContains14slice_contains0Cs2bbjMbSOFjy_2ty.exit.thread.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1130
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2B_13SliceContains14slice_contains0ECs2bbjMbSOFjy_2ty.exit

_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtB7_13SliceContains14slice_contains0Cs2bbjMbSOFjy_2ty.exit.i: ; preds = %bb.c, %bb.b, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1133
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.a, align 8, !noalias !1134
  store i64 %.sroa.5.0.copyload.i.i.i.i, ptr %.sroa.5.0..sroa_idx6.i.i.i.i, align 8, !noalias !1134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx8.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !1130
  store i8 %.sroa.69.0.copyload.i.i.i.i, ptr %.sroa.69.0..sroa_idx10.i.i.i.i, align 8, !noalias !1134
  store i8 %.sroa.7.0.copyload.i.i.i.i, ptr %.sroa.7.0..sroa_idx12.i.i.i.i, align 1, !noalias !1134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.8.0..sroa_idx14.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %i.h, i64 6, i1 false), !noalias !1130
  %i.y = call noundef zeroext i1 @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1v_2eqB3_E0ECs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a), !noalias !1132 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1130
  %.not.not.not.i.not.not.not.not = icmp eq ptr %i.m, %i.d
  %or.cond = select i1 %i.y, i1 true, i1 %.not.not.not.i.not.not.not.not
  br i1 %or.cond, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2B_13SliceContains14slice_contains0ECs2bbjMbSOFjy_2ty.exit, label %.lr.ph

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2B_13SliceContains14slice_contains0ECs2bbjMbSOFjy_2ty.exit: ; preds = %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtB7_13SliceContains14slice_contains0Cs2bbjMbSOFjy_2ty.exit.i, %bb.a, %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtB7_13SliceContains14slice_contains0Cs2bbjMbSOFjy_2ty.exit.thread.i
  %.not.not.not.i.not.not.not6 = phi i1 [ true, %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtB7_13SliceContains14slice_contains0Cs2bbjMbSOFjy_2ty.exit.thread.i ], [ false, %bb.a ], [ %i.y, %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtB7_13SliceContains14slice_contains0Cs2bbjMbSOFjy_2ty.exit.i ]
  ret i1 %.not.not.not.i.not.not.not6
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsh_NtCsjulH565TUV7_15crossbeam_deque5dequeINtB5_8InjectorNtNtCsfRVkQhu4QG3_10rayon_core3job6JobRefENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias nofree noundef readonly align 128 captures(none) dereferenceable(256) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 128, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load i64, ptr %i.b, align 128, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !noundef !5 ; 2 uses
  %i.f = and i64 %i.a, -2                         ; 2 uses
  %i.g = and i64 %i.c, -2                         ; 2 uses
  %.not13 = icmp eq i64 %i.f, %i.g
  br i1 %.not13, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.sroa.06.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %.sroa.06.1, %bb.c ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.06.0.lcssa) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.0.lcssa, i64 noundef 1520, i64 noundef 8) #33
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.0.015 = phi i64 [ %i.j, %bb.c ], [ %i.f, %bb.a ] ; 2 uses
  %.sroa.06.014 = phi ptr [ %.sroa.06.1, %bb.c ], [ %i.e, %bb.a ] ; 3 uses
  %i.h = and i64 %.sroa.0.015, 126
  %.not10 = icmp eq i64 %i.h, 126
  br i1 %.not10, label %bb.b, label %bb.c
end_hunk_0
begin_hunk_1_@_RNvXsl_NtNtCs4o81Y09oZk1_10ty_project8metadata9pyprojectNtB5_26ResolveRequiresPythonErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt:bb.a
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i64, ptr %0, align 8, !range !26, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  switch i64 %i.e, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @237, i64 noundef 13, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @236)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @238, i64 noundef 13, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @236)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @239, i64 noundef 12, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 18, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ %i.j, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvXsm_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_26SitePackagesDiscoveryErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !5
  switch i64 %i.a, label %default.unreachable2 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.e
    i64 5, label %bb.e
  ]

default.unreachable2:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !5
  %.not = icmp eq ptr %i.d, null
  %. = select i1 %.not, ptr null, ptr %i.c
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.c, %bb.d, %bb.b
  %.sroa.0.0 = phi ptr [ %i.b, %bb.b ], [ %., %bb.c ], [ %i.e, %bb.d ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ]
  %i.f = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr @51, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsm_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCs4o81Y09oZk1_10ty_project8metadata18configuration_file22ConfigurationFileErrorENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCs2bbjMbSOFjy_2ty(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXs1_NtNtCs4o81Y09oZk1_10ty_project8metadata18configuration_fileNtB5_22ConfigurationFileErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsm_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCs4o81Y09oZk1_10ty_project8metadata7options11TyTomlErrorENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCs2bbjMbSOFjy_2ty(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXs2b_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6_11TyTomlErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsm_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCs4o81Y09oZk1_10ty_project8metadata9pyproject14PyProjectErrorENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCs2bbjMbSOFjy_2ty(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXsd_NtNtCs4o81Y09oZk1_10ty_project8metadata9pyprojectNtB5_14PyProjectErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsn_Csb9oa454Wl6i_11clearscreenNtB5_13TerminfoErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #10 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @242, i64 noundef 13, ptr noalias noundef nonnull readonly captures(address, read_provenance) @124, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @241, ptr noalias noundef nonnull readonly captures(address, read_provenance) @243, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsn_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCs4o81Y09oZk1_10ty_project8metadata18configuration_file22ConfigurationFileErrorENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCs2bbjMbSOFjy_2ty(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  %i.d = load i64, ptr %i.c, align 8, !range !4, !alias.scope !1138, !noalias !1139, !noundef !5
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1140
  store ptr %i.g, ptr %i.a, align 8, !noalias !1140
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 13, ptr noalias noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 6, ptr noundef nonnull readonly %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @105, ptr noalias noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @185)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1140
  br label %_RNvXs_NtNtCs4o81Y09oZk1_10ty_project8metadata18configuration_fileNtB4_22ConfigurationFileErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1140
  store ptr %i.g, ptr %i.b, align 8, !noalias !1140
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @186, i64 noundef 13, ptr noalias noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 6, ptr noundef nonnull readonly %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @184, ptr noalias noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @185)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1140
  br label %_RNvXs_NtNtCs4o81Y09oZk1_10ty_project8metadata18configuration_fileNtB4_22ConfigurationFileErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit

_RNvXs_NtNtCs4o81Y09oZk1_10ty_project8metadata18configuration_fileNtB4_22ConfigurationFileErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.h, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsn_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCs4o81Y09oZk1_10ty_project8metadata7options11TyTomlErrorENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCs2bbjMbSOFjy_2ty(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1144
  store ptr %i.b, ptr %i.a, align 8, !noalias !1144
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @153, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @152)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1144
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsn_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCs4o81Y09oZk1_10ty_project8metadata9pyproject14PyProjectErrorENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCs2bbjMbSOFjy_2ty(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1148
  store ptr %i.b, ptr %i.a, align 8, !noalias !1148
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @153, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @152)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1148
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsn_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCs2bbjMbSOFjy_2ty(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCs4NRVxsYgnAr_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsq_NtCs4NRVxsYgnAr_4core3fmtOINtNtNtNtCsb0GAtLbz3Z0_12sharded_slab4sync5inner5alloc5TrackINtNtBE_5shard5ShardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBE_3cfg13DefaultConfigEENtB5_5Debug3fmtCs2bbjMbSOFjy_2ty(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !5
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = tail call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt17pointer_fmt_inner(i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs4o81Y09oZk1_10ty_project8metadata18configuration_file22ConfigurationFileErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @245, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs4o81Y09oZk1_10ty_project8metadata18configuration_file22ConfigurationFileErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @246, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs4o81Y09oZk1_10ty_project8metadata7options11TyTomlErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @245, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs4o81Y09oZk1_10ty_project8metadata7options11TyTomlErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @247, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs4o81Y09oZk1_10ty_project8metadata9pyproject14PyProjectErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @245, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs4o81Y09oZk1_10ty_project8metadata9pyproject14PyProjectErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @248, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsiXichZnxgbf_6anyhow5error12ContextErrorReNtCs7HL9jt3VRMY_16ty_site_packages26SitePackagesDiscoveryErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @245, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error12ContextErrorReNtCs7HL9jt3VRMY_16ty_site_packages26SitePackagesDiscoveryErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error12ContextErrorReNtCs7HL9jt3VRMY_16ty_site_packages26SitePackagesDiscoveryErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @249, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsiXichZnxgbf_6anyhow5error12ContextErrorReNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @245, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error12ContextErrorReNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error12ContextErrorReNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @250, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsiXichZnxgbf_6anyhow5error12ContextErrorReNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter9directive10ParseErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @245, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error12ContextErrorReNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter9directive10ParseErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error12ContextErrorReNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter9directive10ParseErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @251, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtCs7HL9jt3VRMY_16ty_site_packages26SitePackagesDiscoveryErrorEENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2bbjMbSOFjy_2ty(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @245, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtCs7HL9jt3VRMY_16ty_site_packages26SitePackagesDiscoveryErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2bbjMbSOFjy_2ty(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtCs7HL9jt3VRMY_16ty_site_packages26SitePackagesDiscoveryErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @252, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2bbjMbSOFjy_2ty(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @245, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2bbjMbSOFjy_2ty(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @253, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter9directive10ParseErrorEENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2bbjMbSOFjy_2ty(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @245, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter9directive10ParseErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2bbjMbSOFjy_2ty(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter9directive10ParseErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @254, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringEENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2bbjMbSOFjy_2ty(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @245, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringEENtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2bbjMbSOFjy_2ty(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringEENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @255, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorReEENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2bbjMbSOFjy_2ty(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @245, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorReEENtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2bbjMbSOFjy_2ty(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorReEENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @256, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplNtCs7HL9jt3VRMY_16ty_site_packages26SitePackagesDiscoveryErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2bbjMbSOFjy_2ty(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @245, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplNtCs7HL9jt3VRMY_16ty_site_packages26SitePackagesDiscoveryErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2bbjMbSOFjy_2ty(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplNtCs7HL9jt3VRMY_16ty_site_packages26SitePackagesDiscoveryErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @257, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplNtCsb9oa454Wl6i_11clearscreen5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2bbjMbSOFjy_2ty(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @245, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplNtCsb9oa454Wl6i_11clearscreen5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2bbjMbSOFjy_2ty(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplNtCsb9oa454Wl6i_11clearscreen5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @258, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplNtNtCs4o81Y09oZk1_10ty_project8metadata20ProjectMetadataErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2bbjMbSOFjy_2ty(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @245, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplNtNtCs4o81Y09oZk1_10ty_project8metadata20ProjectMetadataErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2bbjMbSOFjy_2ty(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplNtNtCs4o81Y09oZk1_10ty_project8metadata20ProjectMetadataErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @259, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplNtNtCscvBHLZPbXnS_10serde_json5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2bbjMbSOFjy_2ty(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @245, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplNtNtCscvBHLZPbXnS_10serde_json5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2bbjMbSOFjy_2ty(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplNtNtCscvBHLZPbXnS_10serde_json5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @260, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplNtNtCsfDzkztWVnn_18ty_module_resolver8settings23SearchPathSettingsErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2bbjMbSOFjy_2ty(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @245, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplNtNtCsfDzkztWVnn_18ty_module_resolver8settings23SearchPathSettingsErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2bbjMbSOFjy_2ty(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplNtNtCsfDzkztWVnn_18ty_module_resolver8settings23SearchPathSettingsErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @261, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplNtNtCsgNynMj4ykPw_6notify5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2bbjMbSOFjy_2ty(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @245, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplNtNtCsgNynMj4ykPw_6notify5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2bbjMbSOFjy_2ty(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplNtNtCsgNynMj4ykPw_6notify5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @262, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplNtNtCsguS7VG7jviQ_5ctrlc5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2bbjMbSOFjy_2ty(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @245, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplNtNtCsguS7VG7jviQ_5ctrlc5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2bbjMbSOFjy_2ty(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplNtNtCsguS7VG7jviQ_5ctrlc5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @263, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2bbjMbSOFjy_2ty(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @245, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2bbjMbSOFjy_2ty(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @264, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplNtNtNtCs4o81Y09oZk1_10ty_project8metadata18configuration_file22ConfigurationFileErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2bbjMbSOFjy_2ty(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @245, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplNtNtNtCs4o81Y09oZk1_10ty_project8metadata18configuration_file22ConfigurationFileErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2bbjMbSOFjy_2ty(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error9ErrorImplNtNtNtCs4o81Y09oZk1_10ty_project8metadata18configuration_file22ConfigurationFileErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @265, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsiXichZnxgbf_6anyhow7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @245, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCsiXichZnxgbf_6anyhow7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringENtNtCs4NRVxsYgnAr_4core5error5Error6sourceCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringENtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @266, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsiXichZnxgbf_6anyhow7wrapper12MessageErrorReENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @245, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCsiXichZnxgbf_6anyhow7wrapper12MessageErrorReENtNtCs4NRVxsYgnAr_4core5error5Error6sourceCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow7wrapper12MessageErrorReENtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow7wrapper12MessageErrorReENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @267, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtCs7HL9jt3VRMY_16ty_site_packages26SitePackagesDiscoveryErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @245, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, ptr } @_RNvYNtCs7HL9jt3VRMY_16ty_site_packages26SitePackagesDiscoveryErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCs2bbjMbSOFjy_2ty(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !alias.scope !1151, !noundef !5
  switch i64 %i.a, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %_RNvXsm_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_26SitePackagesDiscoveryErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit
    i64 4, label %_RNvXsm_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_26SitePackagesDiscoveryErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit
    i64 5, label %_RNvXsm_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_26SitePackagesDiscoveryErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXsm_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_26SitePackagesDiscoveryErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1151, !noundef !5
  %.not.i = icmp eq ptr %i.d, null
  %..i = select i1 %.not.i, ptr null, ptr %i.c
  br label %_RNvXsm_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_26SitePackagesDiscoveryErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXsm_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_26SitePackagesDiscoveryErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

_RNvXsm_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_26SitePackagesDiscoveryErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %i.b, %bb.b ], [ %..i, %bb.c ], [ %i.e, %bb.d ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ]
  %i.f = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr @51, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCs7HL9jt3VRMY_16ty_site_packages26SitePackagesDiscoveryErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCs7HL9jt3VRMY_16ty_site_packages26SitePackagesDiscoveryErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @82, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtCsb9oa454Wl6i_11clearscreen13TerminfoErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @245, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtCsb9oa454Wl6i_11clearscreen13TerminfoErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtCsb9oa454Wl6i_11clearscreen13TerminfoErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCsb9oa454Wl6i_11clearscreen13TerminfoErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCsb9oa454Wl6i_11clearscreen13TerminfoErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @268, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtCsb9oa454Wl6i_11clearscreen5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @245, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, ptr } @_RNvYNtCsb9oa454Wl6i_11clearscreen5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCs2bbjMbSOFjy_2ty(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !22, !alias.scope !1154, !noundef !5 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775805
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 3
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %_RNvXsf_Csb9oa454Wl6i_11clearscreenNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %_RNvXsf_Csb9oa454Wl6i_11clearscreenNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit
    i64 5, label %_RNvXsf_Csb9oa454Wl6i_11clearscreenNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXsf_Csb9oa454Wl6i_11clearscreenNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXsf_Csb9oa454Wl6i_11clearscreenNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

bb.e:                                             ; preds = %bb.a
  br label %_RNvXsf_Csb9oa454Wl6i_11clearscreenNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

_RNvXsf_Csb9oa454Wl6i_11clearscreenNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.c, %bb.d, %bb.e
  %.sroa.7.0.i = phi ptr [ @51, %bb.c ], [ undef, %bb.a ], [ @216, %bb.d ], [ @218, %bb.e ], [ undef, %bb.a ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %i.f, %bb.c ], [ null, %bb.a ], [ %i.g, %bb.d ], [ %0, %bb.e ], [ null, %bb.a ], [ null, %bb.a ]
  %i.h = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %.sroa.7.0.i, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCsb9oa454Wl6i_11clearscreen5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCsb9oa454Wl6i_11clearscreen5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @83, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtCsb9oa454Wl6i_11clearscreen8NixErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2bbjMbSOFjy_2ty(ptr noalias readonly align 4 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @245, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYNtCsb9oa454Wl6i_11clearscreen8NixErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCs2bbjMbSOFjy_2ty(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXsl_Csb9oa454Wl6i_11clearscreenNtB5_8NixErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCsb9oa454Wl6i_11clearscreen8NixErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2bbjMbSOFjy_2ty(ptr noalias readonly align 4 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCsb9oa454Wl6i_11clearscreen8NixErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 4 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @269, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtNtCs2AWtUsOyxgP_3std2io5Write9write_allB6_(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %.sroa.0.042 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.117, %bb.n ] ; 4 uses
  %.sroa.6.041 = phi i64 [ %2, %.lr.ph ], [ %.sroa.6.115, %bb.n ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  %i.f = load i8, ptr %i.d, align 8, !range !32, !alias.scope !1161, !noalias !1162, !noundef !5
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = inttoptr i64 %.sroa.6.041 to ptr
  %i.i = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.h, 1
  br label %_RNvXs0_NtCs2bbjMbSOFjy_2ty7printerNtB5_6StdoutNtNtCs2AWtUsOyxgP_3std2io5Write5write.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1163)
  %i.j = load ptr, ptr %0, align 8, !alias.scope !1164, !noalias !1165, !align !10, !noundef !5
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = call { i64, ptr } @_RNvXsi_NtNtCs2AWtUsOyxgP_3std2io5stdioNtB5_10StdoutLockNtB7_5Write5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.042, i64 noundef range(i64 0, -9223372036854775808) %.sroa.6.041), !inline_history !0
  br label %_RNvXs0_NtCs2bbjMbSOFjy_2ty7printerNtB5_6StdoutNtNtCs2AWtUsOyxgP_3std2io5Write5write.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1166
  %i.l = call noundef nonnull align 8 ptr @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio6stdout(), !noalias !1166
  store ptr %i.l, ptr %i.a, align 8, !noalias !1166
  %i.m = call { i64, ptr } @_RNvXse_NtNtCs2AWtUsOyxgP_3std2io5stdioNtB5_6StdoutNtB7_5Write5write(ptr noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.042, i64 noundef range(i64 0, -9223372036854775808) %.sroa.6.041), !noalias !1164, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1166
  br label %_RNvXs0_NtCs2bbjMbSOFjy_2ty7printerNtB5_6StdoutNtNtCs2AWtUsOyxgP_3std2io5Write5write.exit

_RNvXs0_NtCs2bbjMbSOFjy_2ty7printerNtB5_6StdoutNtNtCs2AWtUsOyxgP_3std2io5Write5write.exit: ; preds = %bb.c, %bb.e, %bb.f
  %.merged.i = phi { i64, ptr } [ %i.i, %bb.c ], [ %i.m, %bb.f ], [ %i.k, %bb.e ] ; 2 uses
  %i.n = extractvalue { i64, ptr } %.merged.i, 0  ; 2 uses
  %i.o = extractvalue { i64, ptr } %.merged.i, 1  ; 11 uses
  store i64 %i.n, ptr %i.b, align 8
  store ptr %i.o, ptr %i.e, align 8
  %i.p = trunc nuw i64 %i.n to i1
  %i.q = ptrtoint ptr %i.o to i64                 ; 7 uses
  br i1 %i.p, label %bb.g, label %bb.h

.loopexit:                                        ; preds = %bb.n, %bb.a, %bb.j
  %.sroa.07.0 = phi ptr [ %.sroa.07.1, %bb.j ], [ null, %bb.a ], [ null, %bb.n ]
  ret ptr %.sroa.07.0

bb.g:                                             ; preds = %_RNvXs0_NtCs2bbjMbSOFjy_2ty7printerNtB5_6StdoutNtNtCs2AWtUsOyxgP_3std2io5Write5write.exit
  %i.r = and i64 %i.q, 3
  switch i64 %i.r, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.m
    i64 0, label %.split37
    i64 1, label %.split36
  ], !prof !25

default.unreachable:                              ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_RNvXs0_NtCs2bbjMbSOFjy_2ty7printerNtB5_6StdoutNtNtCs2AWtUsOyxgP_3std2io5Write5write.exit
  %i.s = icmp eq ptr %i.o, null
  br i1 %i.s, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = icmp ult i64 %.sroa.6.041, %i.q
  br i1 %i.t, label %bb.k, label %bb.l, !prof !7

bb.j:                                             ; preds = %bb.m, %.split, %.split36, %.split37, %bb.h
  %.sroa.07.1 = phi ptr [ @271, %bb.h ], [ %i.o, %.split37 ], [ %i.o, %.split36 ], [ %i.o, %.split ], [ %i.o, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.q, i64 noundef %.sroa.6.041, i64 noundef %.sroa.6.041, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @273) #30
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.u = sub nuw nsw i64 %.sroa.6.041, %i.q
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.042, i64 %i.q
  br label %bb.n

.split:                                           ; preds = %bb.g
  %.mask = and i64 %i.q, -4294967296
  %i.w = icmp eq i64 %.mask, 17179869184
  br i1 %i.w, label %.thread, label %bb.j

.split37:                                         ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.y = load i8, ptr %i.x, align 8, !range !31, !noundef !5
  %i.z = icmp eq i8 %i.y, 35
  br i1 %i.z, label %.thread, label %bb.j

.split36:                                         ; preds = %bb.g
  %i.aa = getelementptr i8, ptr %i.o, i64 15
  %i.ab = load i8, ptr %i.aa, align 8, !range !31, !noundef !5
  %i.ac = icmp eq i8 %i.ab, 35
  br i1 %i.ac, label %.thread, label %bb.j

bb.m:                                             ; preds = %bb.g
  %i.ad = lshr i64 %i.q, 32
  %i.ae = icmp ult ptr %i.o, inttoptr (i64 180388626432 to ptr)
  %switch.idx.cast.i.i = trunc i64 %i.ad to i8
  %spec.select.i.i = select i1 %i.ae, i8 %switch.idx.cast.i.i, i8 -1 ; 2 uses
  %i.af = icmp ne i8 %spec.select.i.i, -1
  call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i8 %spec.select.i.i, 35
  br i1 %i.ag, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.m, %.split, %.split36, %.split37
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %.thread
  %.sroa.0.117 = phi ptr [ %.sroa.0.042, %.thread ], [ %i.v, %bb.l ]
  %.sroa.6.115 = phi i64 [ %.sroa.6.041, %.thread ], [ %i.u, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ah = icmp eq i64 %.sroa.6.115, 0
  br i1 %i.ah, label %.loopexit, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtNtCs2AWtUsOyxgP_3std2io5Write9write_fmtB6_(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RINvNtCs2AWtUsOyxgP_3std2io17default_write_fmtNtNtCs2bbjMbSOFjy_2ty7printer6StdoutEBM_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs3pBv9WGWlWf_12tracing_core8metadata21ParseLevelFilterErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2bbjMbSOFjy_2ty(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @245, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCs3pBv9WGWlWf_12tracing_core8metadata21ParseLevelFilterErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCs2bbjMbSOFjy_2ty(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs3pBv9WGWlWf_12tracing_core8metadata21ParseLevelFilterErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCs2bbjMbSOFjy_2ty(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs3pBv9WGWlWf_12tracing_core8metadata21ParseLevelFilterErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2bbjMbSOFjy_2ty(ptr noalias nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs3pBv9WGWlWf_12tracing_core8metadata21ParseLevelFilterErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nonnull readonly captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @274, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs4o81Y09oZk1_10ty_project8metadata20ProjectMetadataErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @245, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCs4o81Y09oZk1_10ty_project8metadata20ProjectMetadataErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCs2bbjMbSOFjy_2ty(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !23, !alias.scope !1169, !noundef !5 ; 3 uses
  %i.b = icmp ne i64 %i.a, 7
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -4
  %i.d = icmp samesign ugt i64 %i.a, 3
  %i.e = select i1 %i.d, i64 %i.c, i64 3
  switch i64 %i.e, label %bb.b [
    i64 0, label %_RNvXse_NtCs4o81Y09oZk1_10ty_project8metadataNtB5_20ProjectMetadataErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %_RNvXse_NtCs4o81Y09oZk1_10ty_project8metadataNtB5_20ProjectMetadataErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %_RNvXse_NtCs4o81Y09oZk1_10ty_project8metadataNtB5_20ProjectMetadataErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

bb.e:                                             ; preds = %bb.a
  br label %_RNvXse_NtCs4o81Y09oZk1_10ty_project8metadataNtB5_20ProjectMetadataErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

bb.f:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %_RNvXse_NtCs4o81Y09oZk1_10ty_project8metadataNtB5_20ProjectMetadataErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

_RNvXse_NtCs4o81Y09oZk1_10ty_project8metadataNtB5_20ProjectMetadataErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.6.0.i = phi ptr [ @211, %bb.f ], [ @207, %bb.c ], [ @102, %bb.d ], [ @209, %bb.e ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %i.h, %bb.f ], [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ %0, %bb.e ], [ null, %bb.a ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.6.0.i, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs4o81Y09oZk1_10ty_project8metadata20ProjectMetadataErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs4o81Y09oZk1_10ty_project8metadata20ProjectMetadataErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @84, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCscvBHLZPbXnS_10serde_json5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @245, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCscvBHLZPbXnS_10serde_json5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCscvBHLZPbXnS_10serde_json5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @85, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsfDzkztWVnn_18ty_module_resolver8settings23SearchPathSettingsErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @245, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsfDzkztWVnn_18ty_module_resolver8settings23SearchPathSettingsErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsfDzkztWVnn_18ty_module_resolver8settings23SearchPathSettingsErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @86, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsgNynMj4ykPw_6notify5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @245, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsgNynMj4ykPw_6notify5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsgNynMj4ykPw_6notify5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsgNynMj4ykPw_6notify5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @87, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsguS7VG7jviQ_5ctrlc5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsguS7VG7jviQ_5ctrlc5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsguS7VG7jviQ_5ctrlc5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @88, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @245, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @89, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCs4o81Y09oZk1_10ty_project8metadata18configuration_file22ConfigurationFileErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @245, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs4o81Y09oZk1_10ty_project8metadata18configuration_file22ConfigurationFileErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs4o81Y09oZk1_10ty_project8metadata18configuration_file22ConfigurationFileErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @90, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCs4o81Y09oZk1_10ty_project8metadata9pyproject26ResolveRequiresPythonErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @245, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtCs4o81Y09oZk1_10ty_project8metadata9pyproject26ResolveRequiresPythonErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs4o81Y09oZk1_10ty_project8metadata9pyproject26ResolveRequiresPythonErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs4o81Y09oZk1_10ty_project8metadata9pyproject26ResolveRequiresPythonErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2bbjMbSOFjy_2ty(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs4o81Y09oZk1_10ty_project8metadata9pyproject26ResolveRequiresPythonErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @275, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtB6_14WritableSystem10write_fileCs2bbjMbSOFjy_2ty(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RNvXs0_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB5_8OsSystemNtB7_14WritableSystem16write_file_bytes(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtB6_14WritableSystem12get_or_cacheCs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noundef nonnull %4, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 12 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System9cache_dir(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  %i.g = load i64, ptr %i.e, align 8, !range !11, !noundef !5
  %.not = icmp eq i64 %i.g, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !5
  invoke void @_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path4joinRBw_ECs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath4joinRBF_ECs2bbjMbSOFjy_2ty.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 -1, ptr %0, align 8
  br label %bb.w

.body40:                                          ; preds = %bb.aa, %bb.e, %bb.d, %.thread
  %.pn35 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.e ], [ %.pn48, %.thread ], [ %i.l, %bb.d ], [ %i.at, %bb.aa ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #31
          to label %common.resume unwind label %bb.ac

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs2bbjMbSOFjy_2ty.exit.i, %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body40

_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath4joinRBF_ECs2bbjMbSOFjy_2ty.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1175
  invoke void @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System13path_metadata(ptr noalias noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.p)
          to label %.noexc unwind label %.thread52

.noexc:                                           ; preds = %_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath4joinRBF_ECs2bbjMbSOFjy_2ty.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = load i32, ptr %i.q, align 16, !range !20, !alias.scope !1176, !noalias !1175, !noundef !5
  %i.s = icmp eq i32 %i.r, 2
  br i1 %i.s, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system8MetadataNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs2bbjMbSOFjy_2ty.exit.i.i, label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system8MetadataNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs2bbjMbSOFjy_2ty.exit.i.i: ; preds = %.noexc
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull readonly align 16 dereferenceable(32) %i.a)
          to label %.thread55 unwind label %.thread52

.thread55:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system8MetadataNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs2bbjMbSOFjy_2ty.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1175
  br label %bb.g

.thread52:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2bbjMbSOFjy_2ty.exit.i, %bb.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system8MetadataNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs2bbjMbSOFjy_2ty.exit.i.i, %_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath4joinRBF_ECs2bbjMbSOFjy_2ty.exit
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.e:                                             ; preds = %bb.u
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body40

bb.f:                                             ; preds = %.noexc
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.45.0.copyload.i.i = load i8, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !alias.scope !1176, !noalias !1175
  %i.t = icmp eq i8 %.sroa.45.0.copyload.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1175
  br i1 %i.t, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.thread55, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !5, !nonnull !5
  invoke void %i.v(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %4)
          to label %bb.i unwind label %.thread52

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs2bbjMbSOFjy_2ty.exit

bb.i:                                             ; preds = %bb.g
  %i.w = load i64, ptr %i.b, align 8, !range !11, !noundef !5 ; 2 uses
  %i.x = icmp eq i64 %i.w, -1
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  store i64 -2, ptr %0, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2bbjMbSOFjy_2ty.exit

bb.k:                                             ; preds = %bb.i
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.523.0.copyload = load i64, ptr %.sroa.523.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.w, ptr %i.c, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.z, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 %.sroa.523.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ab = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  %i.ac = load i64, ptr %i.o, align 8, !noundef !5
  %i.ad = invoke { ptr, i64 } @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path6parent(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ac)
          to label %bb.m unwind label %bb.l       ; 2 uses

bb.l:                                             ; preds = %bb.t, %bb.r, %bb.o, %bb.n, %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2bbjMbSOFjy_2ty(ptr noalias noundef align 8 dereferenceable(24) %i.c) #31
          to label %.thread unwind label %bb.ac

bb.m:                                             ; preds = %bb.k
  %i.af = extractvalue { ptr, i64 } %i.ad, 0      ; 2 uses
  %.not30 = icmp eq ptr %i.af, null
  br i1 %.not30, label %bb.o, label %bb.n, !prof !7

bb.n:                                             ; preds = %bb.m
  %i.ag = extractvalue { ptr, i64 } %i.ad, 1
  %i.ah = invoke noundef ptr @_RNvXs0_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB5_8OsSystemNtB7_14WritableSystem20create_directory_all(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %i.ag)
          to label %bb.q unwind label %bb.l       ; 2 uses

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @277) #30
          to label %bb.p unwind label %bb.l

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.n
  %.not31 = icmp eq ptr %i.ah, null
  br i1 %.not31, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.ai = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  %i.aj = load i64, ptr %i.o, align 8, !noundef !5
  %i.ak = invoke noundef ptr @_RNvXs0_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB5_8OsSystemNtB7_14WritableSystem15create_new_file(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %i.aj)
          to label %bb.s unwind label %bb.l       ; 2 uses

bb.s:                                             ; preds = %bb.r
  %.not32 = icmp eq ptr %i.ak, null
  br i1 %.not32, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.al = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  %i.am = load i64, ptr %i.o, align 8, !noundef !5
  %i.an = load ptr, ptr %.sroa.48.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %i.ao = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noundef !5
end_hunk_1
