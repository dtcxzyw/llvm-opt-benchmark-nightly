Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_core-0a05b3f6bc14d2fb.ty_python_core.20b1ebb04e7d5127-cgu.08?download=true
inline.NumInlined: 923
inline.NumDeleted: 396
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvXsl_NvNtCs2O29vuvTAEJ_14ty_python_core6member1__NtB5_16InternalBitFlagsNtNtCs4NRVxsYgnAr_4core3fmt8UpperHex3fmt:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsm_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB5_11SegmentInfoNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @180, i64 noundef 11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = load i32, ptr %0, align 4, !noundef !4   ; 2 uses
  %i.e = trunc i32 %i.d to i8
  %switch.idx.cast.i = and i8 %i.e, 3
  store i8 %switch.idx.cast.i, ptr %i.b, align 1
  %i.f = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @182, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @181)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = lshr i32 %i.d, 2
  store i32 %i.g, ptr %i.a, align 4
  %i.h = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) @184, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @183)
  %i.i = call noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXso_NtCs2O29vuvTAEJ_14ty_python_core6memberINtB5_16SegmentsIteratorINtCsddXFpJ32JCa_6either6EitherNtB5_25SmallSegmentsInfoIteratorINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtB2g_5slice4iter4IterNtB5_11SegmentInfoEEEENtNtNtB2e_6traits8iterator8Iterator4nextB7_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !range !1697, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  store i32 0, ptr %i.c, align 8
  %i.g = trunc nuw i32 %i.d to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !range !1697, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.k = trunc nuw i32 %i.i to i1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load i64, ptr %i.l, align 8, !noundef !4 ; 2 uses
  %i.n = icmp ugt i64 %i.m, 4294967295            ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.p
  %switch.idx.cast.i.sink = phi i8 [ %switch.idx.cast.i, %bb.p ], [ -1, %bb.a ]
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %switch.idx.cast.i.sink, ptr %.sroa.511.0..sroa_idx, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  br i1 %i.n, label %bb.e, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit, !prof !5

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 2, ptr %i.b, align 1
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159) #32
  unreachable

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit: ; preds = %bb.d
  %i.o = load i32, ptr %i.j, align 4              ; 2 uses
  %i.p = lshr i32 %i.o, 2
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.q = shl nuw i64 %i.m, 32
  %.sroa.09.0.insert.insert.i21 = select i1 %i.n, i64 513, i64 %i.q ; 2 uses
  %i.r = trunc i64 %.sroa.09.0.insert.insert.i21 to i1
  br i1 %i.r, label %bb.g, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit24, !prof !5

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159) #32
  unreachable

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit24: ; preds = %bb.f
  %.sroa.6.0.extract.shift.i.i22 = lshr i64 %.sroa.09.0.insert.insert.i21, 32
  %.sroa.6.0.extract.trunc.i.i23 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i22 to i32
  %.pre = load i32, ptr %i.j, align 4
  br label %bb.h

bb.h:                                             ; preds = %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit24, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit
  %i.s = phi i32 [ %i.o, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit ], [ %.pre, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit24 ]
  %.sroa.07.0 = phi i32 [ %i.p, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit ], [ %.sroa.6.0.extract.trunc.i.i23, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit24 ] ; 3 uses
  store i32 %i.i, ptr %i.c, align 8
  store i32 %i.s, ptr %i.e, align 4
  %i.t = tail call { i32, i32 } @_RNvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB7_6EitherNtNtCs2O29vuvTAEJ_14ty_python_core6member25SmallSegmentsInfoIteratorINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtB23_5slice4iter4IterNtBQ_11SegmentInfoEEENtNtNtB21_6traits8iterator8Iterator4nextBS_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.u = extractvalue { i32, i32 } %i.t, 0
  %i.v = extractvalue { i32, i32 } %i.t, 1
  store i32 %i.u, ptr %i.h, align 8
  store i32 %i.v, ptr %i.j, align 4
  %i.w = trunc i32 %i.f to i8
  %switch.idx.cast.i = and i8 %i.w, 3
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = load i64, ptr %i.z, align 8, !noundef !4 ; 5 uses
  %i.ab = lshr i32 %i.f, 2                        ; 3 uses
  %.not = icmp ugt i32 %i.ab, %.sroa.07.0
  br i1 %.not, label %bb.i, label %bb.j, !prof !5

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @185) #32
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ac = zext nneg i32 %i.ab to i64              ; 6 uses
  %i.ad = zext i32 %.sroa.07.0 to i64             ; 5 uses
  %i.ae = icmp eq i32 %i.ab, 0
  br i1 %i.ae, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not5.i = icmp ugt i64 %i.aa, %i.ac
  br i1 %.not5.i, label %bb.m, label %.split.i

bb.l:                                             ; preds = %bb.m, %.split.i, %bb.j
  %i.af = icmp eq i32 %.sroa.07.0, 0
  br i1 %i.af, label %bb.p, label %bb.n

.split.i:                                         ; preds = %bb.k
  %i.ag = icmp eq i64 %i.aa, %i.ac
  br i1 %i.ag, label %bb.l, label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !1698, !noundef !4
  %i.aj = icmp sgt i8 %i.ai, -65
  br i1 %i.aj, label %bb.l, label %bb.q

bb.n:                                             ; preds = %bb.l
  %.not6.i = icmp ugt i64 %i.aa, %i.ad
  br i1 %.not6.i, label %bb.o, label %.split7.i

.split7.i:                                        ; preds = %bb.n
  %i.ak = icmp eq i64 %i.aa, %i.ad
  br i1 %i.ak, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ad
  %i.am = load i8, ptr %i.al, align 1, !alias.scope !1698, !noundef !4
  %i.an = icmp sgt i8 %i.am, -65
  br i1 %i.an, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %.split7.i, %bb.l
  %i.ao = sub nuw nsw i64 %i.ad, %i.ac
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac
  store ptr %i.ap, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ao, ptr %.sroa.410.0..sroa_idx, align 8
  br label %bb.c

bb.q:                                             ; preds = %bb.o, %bb.m, %.split7.i, %.split.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.aa, i64 noundef %i.ac, i64 noundef %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsq_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB5_13SmallSegmentsNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = load i64, ptr %0, align 8, !noundef !4
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 0, ptr %i.e, align 8
  %i.f = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesNtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoNtB15_25SmallSegmentsInfoIteratorEB17_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = call noundef zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvXsr_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB5_25SmallSegmentsInfoIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !4   ; 2 uses
  %i.b = and i64 %i.a, 7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 3 uses
  %.not.not = icmp ugt i64 %i.d, %i.b
  br i1 %.not.not, label %bb.c, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %bb.a
  %i.e = shl nuw nsw i64 %i.d, 3
  %i.f = and i64 %i.e, 56
  %i.g = or disjoint i64 %i.f, 3
  %i.h = lshr i64 %i.a, %i.g                      ; 2 uses
  %1 = lshr i64 %i.h, 2
  %2 = trunc i64 %1 to i32
  %i.i = and i32 %2, 63
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !noundef !4
  %i.l = add i32 %i.k, %i.i                       ; 3 uses
  store i32 %i.l, ptr %i.j, align 8
  %i.m = add nuw nsw i64 %i.d, 1
  store i64 %i.m, ptr %i.c, align 8
  %i.n = icmp ult i32 %i.l, 1073741823
  br i1 %i.n, label %_RNvMsl_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB5_11SegmentInfo3new.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 46, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #32
  unreachable

_RNvMsl_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB5_11SegmentInfo3new.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit
  %3 = trunc i64 %i.h to i32
  %i.o = and i32 %3, 3
  %i.p = shl nuw i32 %i.l, 2
  %i.q = or disjoint i32 %i.p, %i.o
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_RNvMsl_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB5_11SegmentInfo3new.exit
  %.sroa.3.0 = phi i32 [ %i.q, %_RNvMsl_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB5_11SegmentInfo3new.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i32 [ 1, %_RNvMsl_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB5_11SegmentInfo3new.exit ], [ 0, %bb.a ]
  %i.r = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.s = insertvalue { i32, i32 } %i.r, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.s
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCs4NRVxsYgnAr_4core3fmtSNtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoNtB5_5Debug3fmtBz_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCs4NRVxsYgnAr_4core3fmtSNtNtCs2O29vuvTAEJ_14ty_python_core6member6MemberNtB5_5Debug3fmtBz_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs2O29vuvTAEJ_14ty_python_core6member6MemberINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsu_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB5_11SegmentsRefNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 11 uses
  %i.c = load ptr, ptr %0, align 8, !noundef !4   ; 3 uses
  %.not = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !noundef !4   ; 2 uses
  %.not27 = icmp eq ptr %i.f, null                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 4 uses
  %i.i = and i64 %i.h, 7
  %i.j = add nuw nsw i64 %i.i, 1
  %.sroa.05.1 = select i1 %.not27, i64 %i.j, i64 %i.h
  %.not25 = icmp eq i64 %i.e, %.sroa.05.1
  br i1 %.not25, label %bb.d, label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.k = and i64 %i.e, 7
  %i.l = add nuw nsw i64 %i.k, 1
  %i.m = load ptr, ptr %1, align 8, !noundef !4   ; 2 uses
  %.not28 = icmp eq ptr %i.m, null                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8              ; 4 uses
  %i.p = and i64 %i.o, 7
  %i.q = add nuw nsw i64 %i.p, 1
  %.sroa.05.0 = select i1 %.not28, i64 %i.q, i64 %i.o
  %.not24 = icmp eq i64 %i.l, %.sroa.05.0
  br i1 %.not24, label %.split, label %bb.h

.split:                                           ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.e, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br i1 %.not28, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.s, ptr %i.u, align 8
  store i64 1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br i1 %.not27, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.split, %bb.d
  %i.v = phi i64 [ %i.o, %.split ], [ %i.h, %bb.d ]
  %i.w = phi ptr [ %i.m, %.split ], [ %i.f, %bb.d ] ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.w, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.x, ptr %i.z, align 8
  br label %bb.g

bb.f:                                             ; preds = %.split, %bb.d
  %i.aa = phi i64 [ %i.o, %.split ], [ %i.h, %bb.d ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.aa, ptr %i.ab, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 0, ptr %.sroa.522.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %storemerge26 = phi i64 [ 0, %bb.f ], [ 1, %bb.e ]
  store i64 %storemerge26, ptr %i.a, align 8
  %i.ac = call noundef zeroext i1 @_RINvYINtCsddXFpJ32JCa_6either6EitherNtNtCs2O29vuvTAEJ_14ty_python_core6member25SmallSegmentsInfoIteratorINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtB1N_5slice4iter4IterNtBA_11SegmentInfoEEENtNtNtB1L_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B3k_2eqB3_E0EBC_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.b, %bb.g
  %.sroa.0.0 = phi i1 [ %i.ac, %bb.g ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCs3pBv9WGWlWf_12tracing_core5fieldINtB5_10DebugValueRNtNtCs2O29vuvTAEJ_14ty_python_core12program_file11ProgramFileENtB5_5Value6recordB12_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !4, !nonnull !4
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @192)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCs3pBv9WGWlWf_12tracing_core5fieldINtB5_10DebugValueRNtNtCs45bxiIjzMqg_5salsa2id2IdENtB5_5Value6recordCs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !4, !nonnull !4
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @193)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCs45bxiIjzMqg_5salsa14tracked_struct14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENtNtB7_10ingredient10Ingredient11as_functionB11_(ptr nofree nonnull readnone align 128 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal void @_RNvYINtNtCs45bxiIjzMqg_5salsa14tracked_struct14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENtNtB7_10ingredient10Ingredient21mark_validated_outputB11_(ptr nofree nonnull readnone align 128 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 4 captures(none) dead_on_return %2, i32 range(i32 1, 0) %3, i32 %4) unnamed_addr #15 {
bb.a:
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @194, ptr noundef nonnull inttoptr (i64 231 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @196) #32
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal void @_RNvYINtNtCs45bxiIjzMqg_5salsa14tracked_struct14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENtNtB7_10ingredient10Ingredient22reset_for_new_revisionB11_(ptr noalias nofree readnone align 128 captures(none) %0, ptr noalias nofree readnone align 8 captures(none) %1) unnamed_addr #15 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @65, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 10, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs2O29vuvTAEJ_14ty_python_core, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @197, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @198) #32
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCs45bxiIjzMqg_5salsa14tracked_struct14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENtNtB7_10ingredient10Ingredient31requires_reset_for_new_revisionB11_(ptr nofree nonnull readnone align 128 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNtCs45bxiIjzMqg_5salsa14tracked_struct14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENtNtB7_10ingredient10Ingredient9fmt_indexB11_(ptr nofree nonnull readnone align 128 captures(none) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2, ptr noalias noundef align 8 dereferenceable(24) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs45bxiIjzMqg_5salsa10ingredient9fmt_index(ptr noalias noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 10, i32 noundef %1, i32 noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCs45bxiIjzMqg_5salsa14tracked_struct14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionENtNtB7_10ingredient10Ingredient11as_functionB11_(ptr nofree nonnull readnone align 128 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal void @_RNvYINtNtCs45bxiIjzMqg_5salsa14tracked_struct14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionENtNtB7_10ingredient10Ingredient21mark_validated_outputB11_(ptr nofree nonnull readnone align 128 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 4 captures(none) dead_on_return %2, i32 range(i32 1, 0) %3, i32 %4) unnamed_addr #15 {
bb.a:
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @194, ptr noundef nonnull inttoptr (i64 231 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @196) #32
end_hunk_0
