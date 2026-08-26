Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker-6828a789a61900ca.elfshaker.eea5205138ee20d7-cgu.06?download=true
inline.NumInlined: 448
inline.NumDeleted: 246
begin_hunk_0_@_RINvXs1o_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB7_8BTreeMapmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorTmB1a_EE9from_iterINtNtNtB28_8adapters3map3MapINtNtB3o_9enumerate9EnumerateINtNtNtBd_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB6c_10ReadReaderINtNtNtNtBd_2io8buffered9bufreader9BufReaderRShEENtNtB6e_6config13DefaultConfigEE0EEB1e_:bb.a
  call void @_RINvMNtNtNtCs1xwejQucwHj_5alloc11collections5btree6appendINtNtB5_4node7NodeRefNtNtBW_6marker5OwnedmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1g_14LeafOrInternalE9bulk_pushINtNtB5_17dedup_sorted_iter15DedupSortedItermB1z_INtNtNtB9_3vec9into_iter8IntoIterTmB1z_EEENtNtB9_5alloc6GlobalEB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !609
  %i.z = load ptr, ptr %i.d, align 8, !noalias !609, !nonnull !4, !noundef !4
  %i.aa = load i64, ptr %i.w, align 8, !noalias !609, !noundef !4
  %i.ab = load i64, ptr %i.c, align 8, !noalias !609, !noundef !4
  store ptr %i.z, ptr %0, align 8, !alias.scope !604, !noalias !607
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !alias.scope !604, !noalias !607
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ab, ptr %i.ad, align 8, !alias.scope !604, !noalias !607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.m

bb.k:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !604
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #22
          to label %common.resume unwind label %bb.k, !noalias !604

bb.m:                                             ; preds = %bb.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEEEB1e_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.n:                                             ; preds = %bb.e, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #22
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtCs974quTetXso_9rmp_serde6configNtB5_13DefaultConfigNtNtB5_6sealed16SerializerConfig16write_struct_lenINtNtB7_6encode10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEEECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = trunc i64 %2 to i32
  call void @_RINvNtCsdxnJubla0R8_3rmp6encode15write_array_lenINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.b)
  %i.c = load i64, ptr %i.a, align 8, !range !610, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.c, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ -1, %bb.c ], [ -9223372036854775808, %bb.b ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtCs974quTetXso_9rmp_serde6configNtB5_13DefaultConfigNtNtB5_6sealed16SerializerConfig16write_struct_lenINtNtB7_6encode10SerializerQINtNtCs1xwejQucwHj_5alloc3vec3VechEEECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = trunc i64 %2 to i32
  call void @_RINvNtCsdxnJubla0R8_3rmp6encode15write_array_lenQINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.b)
  %i.c = load i64, ptr %i.a, align 8, !range !610, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.c, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ -1, %bb.c ], [ -9223372036854775808, %bb.b ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtCs974quTetXso_9rmp_serde6configNtB5_13DefaultConfigNtNtB5_6sealed16SerializerConfig16write_struct_lenINtNtB7_6encode10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = trunc i64 %2 to i32
  call void @_RINvNtCsdxnJubla0R8_3rmp6encode15write_array_lenQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.b)
  %i.c = load i64, ptr %i.a, align 8, !range !610, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.c, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ -1, %bb.c ], [ -9223372036854775808, %bb.b ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i64, i32 } @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEB10_ENtNtNtB9_6traits8iterator8Iterator4foldB1o_NvYB1o_NtNtBb_3cmp3Ord3maxECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !range !611, !noundef !4 ; 3 uses
  %switch = icmp ugt i32 %i.b, -3
  br i1 %switch, label %_RINvYINtNtCs3oUPovFnLWP_4core6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeENtNtNtNtB8_4iter6traits8iterator8Iterator4foldBH_QNvYBH_NtNtB8_3cmp3Ord3maxECskuiImRAV2ip_9elfshaker.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8                ; 3 uses
  %i.d = icmp eq i64 %i.c, %1
  %i.e = icmp samesign ult i32 %i.b, %2
  %i.f = icmp slt i64 %i.c, %1
  %i.g = select i1 %i.d, i1 %i.e, i1 %i.f         ; 2 uses
  %..i.i.i.us.i = select i1 %i.g, i32 %2, i32 %i.b
  %.2.i.i.i.us.i = select i1 %i.g, i64 %1, i64 %i.c
  br label %_RINvYINtNtCs3oUPovFnLWP_4core6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeENtNtNtNtB8_4iter6traits8iterator8Iterator4foldBH_QNvYBH_NtNtB8_3cmp3Ord3maxECskuiImRAV2ip_9elfshaker.exit

_RINvYINtNtCs3oUPovFnLWP_4core6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeENtNtNtNtB8_4iter6traits8iterator8Iterator4foldBH_QNvYBH_NtNtB8_3cmp3Ord3maxECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.a, %.lr.ph.split.us.i
  %.sroa.7.0 = phi i32 [ %2, %bb.a ], [ %..i.i.i.us.i, %.lr.ph.split.us.i ] ; 3 uses
  %.sroa.0.0 = phi i64 [ %1, %bb.a ], [ %.2.i.i.i.us.i, %.lr.ph.split.us.i ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !range !611, !noundef !4 ; 3 uses
  %switch16 = icmp ugt i32 %i.i, -3
  br i1 %switch16, label %_RINvYINtNtCs3oUPovFnLWP_4core6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeENtNtNtNtB8_4iter6traits8iterator8Iterator4foldBH_NvYBH_NtNtB8_3cmp3Ord3maxECskuiImRAV2ip_9elfshaker.exit, label %.lr.ph.split.us.i11

.lr.ph.split.us.i11:                              ; preds = %_RINvYINtNtCs3oUPovFnLWP_4core6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeENtNtNtNtB8_4iter6traits8iterator8Iterator4foldBH_QNvYBH_NtNtB8_3cmp3Ord3maxECskuiImRAV2ip_9elfshaker.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8              ; 3 uses
  %i.l = icmp eq i64 %i.k, %.sroa.0.0
  %i.m = icmp samesign ult i32 %i.i, %.sroa.7.0
  %i.n = icmp slt i64 %i.k, %.sroa.0.0
  %i.o = select i1 %i.l, i1 %i.m, i1 %i.n         ; 2 uses
  %..i.i.us.i = select i1 %i.o, i32 %.sroa.7.0, i32 %i.i
  %.2.i.i.us.i = select i1 %i.o, i64 %.sroa.0.0, i64 %i.k
  br label %_RINvYINtNtCs3oUPovFnLWP_4core6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeENtNtNtNtB8_4iter6traits8iterator8Iterator4foldBH_NvYBH_NtNtB8_3cmp3Ord3maxECskuiImRAV2ip_9elfshaker.exit

_RINvYINtNtCs3oUPovFnLWP_4core6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeENtNtNtNtB8_4iter6traits8iterator8Iterator4foldBH_NvYBH_NtNtB8_3cmp3Ord3maxECskuiImRAV2ip_9elfshaker.exit: ; preds = %_RINvYINtNtCs3oUPovFnLWP_4core6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeENtNtNtNtB8_4iter6traits8iterator8Iterator4foldBH_QNvYBH_NtNtB8_3cmp3Ord3maxECskuiImRAV2ip_9elfshaker.exit, %.lr.ph.split.us.i11
  %.sroa.0.0.lcssa.i13.pn = phi i64 [ %.sroa.0.0, %_RINvYINtNtCs3oUPovFnLWP_4core6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeENtNtNtNtB8_4iter6traits8iterator8Iterator4foldBH_QNvYBH_NtNtB8_3cmp3Ord3maxECskuiImRAV2ip_9elfshaker.exit ], [ %.2.i.i.us.i, %.lr.ph.split.us.i11 ]
  %.sroa.6.0.lcssa.i12.pn = phi i32 [ %.sroa.7.0, %_RINvYINtNtCs3oUPovFnLWP_4core6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeENtNtNtNtB8_4iter6traits8iterator8Iterator4foldBH_QNvYBH_NtNtB8_3cmp3Ord3maxECskuiImRAV2ip_9elfshaker.exit ], [ %..i.i.us.i, %.lr.ph.split.us.i11 ]
  %.pn = insertvalue { i64, i32 } poison, i64 %.sroa.0.0.lcssa.i13.pn, 0
  %.merged = insertvalue { i64, i32 } %.pn, i32 %.sroa.6.0.lcssa.i12.pn, 1
  ret { i64, i32 } %.merged
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRAhj14_ECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(20) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.b = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.c = shufflevector <2 x i64> %i.b, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.d = xor <2 x i64> %i.c, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.d, ptr %i.a, align 16, !alias.scope !612
  %i.e = shufflevector <2 x i64> %i.b, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.f = xor <2 x i64> %i.e, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.f, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !612
  store <2 x i64> %i.b, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !612
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !612
  call void @_RINvXs9_NtCs3oUPovFnLWP_4core5arrayAhj14_NtNtB8_4hash4Hash4hashNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(20) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 16, !alias.scope !615
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !615
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !615 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !615
  %i.g = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !615, !noundef !4
  %i.h = shl i64 %i.g, 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !615, !noundef !4
  %i.k = or i64 %i.h, %i.j                        ; 2 uses
  %i.l = xor i64 %i.k, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.m = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.n = add i64 %i.l, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.o = call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.p = xor i64 %i.o, %i.m                       ; 3 uses
  %i.q = call noundef i64 @llvm.fshl.i64(i64 %i.l, i64 %i.l, i64 16)
  %i.r = xor i64 %i.q, %i.n                       ; 3 uses
  %i.s = call noundef i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 32)
  %i.t = add i64 %i.n, %i.p                       ; 3 uses
  %i.u = add i64 %i.r, %i.s                       ; 2 uses
  %i.v = call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 17)
  %i.w = xor i64 %i.t, %i.v                       ; 3 uses
  %i.x = call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 21)
  %i.y = xor i64 %i.x, %i.u                       ; 3 uses
  %i.z = call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 32)
  %i.aa = xor i64 %i.u, %i.k
  %i.ab = xor i64 %i.z, 255
  %i.ac = add i64 %i.aa, %i.w                     ; 3 uses
  %i.ad = add i64 %i.y, %i.ab                     ; 2 uses
  %i.ae = call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 13)
  %i.af = xor i64 %i.ac, %i.ae                    ; 3 uses
  %i.ag = call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 16)
  %i.ah = xor i64 %i.ag, %i.ad                    ; 3 uses
  %i.ai = call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 32)
  %i.aj = add i64 %i.af, %i.ad                    ; 3 uses
  %i.ak = add i64 %i.ah, %i.ai                    ; 2 uses
  %i.al = call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 17)
  %i.am = xor i64 %i.aj, %i.al                    ; 3 uses
  %i.an = call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 21)
  %i.ao = xor i64 %i.an, %i.ak                    ; 3 uses
  %i.ap = call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32)
  %i.aq = add i64 %i.am, %i.ak                    ; 3 uses
  %i.ar = add i64 %i.ao, %i.ap                    ; 2 uses
  %i.as = call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 13)
  %i.at = xor i64 %i.as, %i.aq                    ; 3 uses
  %i.au = call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.av = xor i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 32)
  %i.ax = add i64 %i.at, %i.ar                    ; 3 uses
  %i.ay = add i64 %i.av, %i.aw                    ; 2 uses
  %i.az = call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 17)
  %i.ba = xor i64 %i.az, %i.ax                    ; 3 uses
  %i.bb = call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 21)
  %i.bc = xor i64 %i.bb, %i.ay                    ; 3 uses
  %i.bd = call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 32)
  %i.be = add i64 %i.ba, %i.ay
  %i.bf = add i64 %i.bc, %i.bd                    ; 2 uses
  %i.bg = call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 13)
  %i.bh = xor i64 %i.bg, %i.be                    ; 3 uses
  %i.bi = call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 16)
  %i.bj = xor i64 %i.bi, %i.bf                    ; 2 uses
  %i.bk = add i64 %i.bh, %i.bf                    ; 3 uses
  %i.bl = call noundef i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 17)
  %i.bm = call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 21)
  %i.bn = call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 32)
  %i.bo = xor i64 %i.bm, %i.bl
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = xor i64 %i.bp, %i.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.bq
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.c = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.d = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.e = xor <2 x i64> %i.d, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.e, ptr %i.b, align 16, !alias.scope !620
  %i.f = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.g = xor <2 x i64> %i.f, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.g, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !620
  store <2 x i64> %i.c, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !620
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !620
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !noalias !623, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.i, align 8, !noalias !623, !noundef !4
  call fastcc void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !626
  store i8 -1, ptr %i.a, align 1, !noalias !626
  call fastcc void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #26, !noalias !635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !626
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 16, !alias.scope !636
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !636
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !636 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !636
  %i.j = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !636, !noundef !4
  %i.k = shl i64 %i.j, 56
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !636, !noundef !4
  %i.n = or i64 %i.k, %i.m                        ; 2 uses
  %i.o = xor i64 %i.n, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.p = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.q = add i64 %i.o, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.r = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.s = xor i64 %i.r, %i.p                       ; 3 uses
  %i.t = tail call noundef i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 16)
  %i.u = xor i64 %i.t, %i.q                       ; 3 uses
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 32)
  %i.w = add i64 %i.q, %i.s                       ; 3 uses
  %i.x = add i64 %i.u, %i.v                       ; 2 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 17)
  %i.z = xor i64 %i.w, %i.y                       ; 3 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 21)
  %i.ab = xor i64 %i.aa, %i.x                     ; 3 uses
  %i.ac = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 32)
  %i.ad = xor i64 %i.x, %i.n
  %i.ae = xor i64 %i.ac, 255
  %i.af = add i64 %i.ad, %i.z                     ; 3 uses
  %i.ag = add i64 %i.ab, %i.ae                    ; 2 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 13)
  %i.ai = xor i64 %i.af, %i.ah                    ; 3 uses
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 16)
  %i.ak = xor i64 %i.aj, %i.ag                    ; 3 uses
  %i.al = tail call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 32)
  %i.am = add i64 %i.ai, %i.ag                    ; 3 uses
  %i.an = add i64 %i.ak, %i.al                    ; 2 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 17)
  %i.ap = xor i64 %i.am, %i.ao                    ; 3 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 21)
  %i.ar = xor i64 %i.aq, %i.an                    ; 3 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 32)
  %i.at = add i64 %i.ap, %i.an                    ; 3 uses
  %i.au = add i64 %i.ar, %i.as                    ; 2 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 13)
  %i.aw = xor i64 %i.av, %i.at                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 16)
  %i.ay = xor i64 %i.ax, %i.au                    ; 3 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 32)
  %i.ba = add i64 %i.aw, %i.au                    ; 3 uses
  %i.bb = add i64 %i.ay, %i.az                    ; 2 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 17)
  %i.bd = xor i64 %i.bc, %i.ba                    ; 3 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 21)
  %i.bf = xor i64 %i.be, %i.bb                    ; 3 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 32)
  %i.bh = add i64 %i.bd, %i.bb
  %i.bi = add i64 %i.bf, %i.bg                    ; 2 uses
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 13)
  %i.bk = xor i64 %i.bj, %i.bh                    ; 3 uses
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 16)
  %i.bm = xor i64 %i.bl, %i.bi                    ; 2 uses
  %i.bn = add i64 %i.bk, %i.bi                    ; 3 uses
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 17)
  %i.bp = tail call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 21)
  %i.bq = tail call noundef i64 @llvm.fshl.i64(i64 %i.bn, i64 %i.bn, i64 32)
  %i.br = xor i64 %i.bp, %i.bo
  %i.bs = xor i64 %i.br, %i.bq
  %i.bt = xor i64 %i.bs, %i.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.bt
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEB1J_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [72 x i8], align 16               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.e = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.f = shufflevector <2 x i64> %i.e, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.g = xor <2 x i64> %i.f, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.g, ptr %i.d, align 16, !alias.scope !641
  %i.h = shufflevector <2 x i64> %i.e, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.i = xor <2 x i64> %i.h, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.i, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !641
  store <2 x i64> %i.e, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !641
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !641
  tail call void @llvm.experimental.noalias.scope.decl(metadata !644)
  %i.j = load i32, ptr %1, align 4, !alias.scope !644, !noalias !647, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !651
  store i32 %i.j, ptr %i.c, align 4, !noalias !651
  call fastcc void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 4) #26, !noalias !644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !651
end_hunk_0
begin_hunk_1_@_RNvXs5_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCskuiImRAV2ip_9elfshaker:bb.a
  store ptr %i.n, ptr %i.v, align 8, !alias.scope !896, !noalias !905
  store ptr null, ptr %0, align 8, !alias.scope !896, !noalias !905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !903
  br label %_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsaL1QbXo9JQH_3std2fs4FileECskuiImRAV2ip_9elfshaker.exit

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !903
  br label %bb.c

_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsaL1QbXo9JQH_3std2fs4FileECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs5_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreaderINtB5_9BufReaderRShENtNtB9_8buf_read7BufRead7consumeCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %0, i64 noundef %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = add i64 %i.b, %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.e, i64 %i.c)
  store i64 %..i, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreaderINtB5_9BufReaderRShENtNtB9_8buf_read7BufRead8fill_bufCskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !911)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !909, !noalias !913, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !909, !noalias !913, !noundef !4 ; 2 uses
  %.not.i = icmp ult i64 %i.b, %i.d
  %.pre.i = load ptr, ptr %1, align 8, !alias.scope !909, !noalias !913 ; 2 uses
  br i1 %.not.i, label %_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQRShECskuiImRAV2ip_9elfshaker.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !909, !noalias !913, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !914)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !917, !noalias !918, !noundef !4 ; 2 uses
  %..i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.i, i64 %i.g) ; 6 uses
  %i.j = load ptr, ptr %i.e, align 8, !alias.scope !917, !noalias !918, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %..i.i.i.i
  %i.l = sub nuw nsw i64 %i.i, %..i.i.i.i
  tail call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull %.pre.i, i64 noundef range(i64 0, -9223372036854775808) %..i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef range(i64 0, -9223372036854775808) %..i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9), !noalias !919
  store ptr %i.k, ptr %i.e, align 8, !alias.scope !917, !noalias !918, !captures !883
  store i64 %i.l, ptr %i.h, align 8, !alias.scope !917, !noalias !918
  store i64 0, ptr %i.a, align 8, !alias.scope !909, !noalias !913
  store i64 %..i.i.i.i, ptr %i.c, align 8, !alias.scope !909, !noalias !913
  br label %_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQRShECskuiImRAV2ip_9elfshaker.exit

_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQRShECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.a, %bb.b
  %i.m = phi i64 [ %i.d, %bb.a ], [ %..i.i.i.i, %bb.b ]
  %i.n = phi i64 [ %i.b, %bb.a ], [ 0, %bb.b ]    ; 2 uses
  %i.o = sub nuw i64 %i.m, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.n
  store ptr %i.p, ptr %0, align 8, !alias.scope !906, !noalias !920
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.q, align 8, !alias.scope !906, !noalias !920
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXsM_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_6ValuesmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1a_(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXsk_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_4ItermNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %.not = icmp eq ptr %i.b, null
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %spec.select = select i1 %.not, ptr null, ptr %i.c
  ret ptr %spec.select
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtCs96EQFXyf2I9_3url3UrlENtNtB7_3fmt5Debug3fmtCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #10 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !11, !noundef !4
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @75)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #10 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !11, !noundef !4
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtB7_3fmt5Debug3fmtCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #10 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !11, !noundef !4
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #10 {
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
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXse_NtCsk6GKf1Xiy0l_4ureq5errorNtB5_9ErrorKindNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #10 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !921, !noundef !4
  %i.b = zext nneg i8 %i.a to i64
  %i.c = load ptr, ptr @_RNvNvXse_NtCsk6GKf1Xiy0l_4ureq5errorNtB7_9ErrorKindNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt7___NAMES, align 8, !nonnull !4, !noundef !4
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXse_NtCsk6GKf1Xiy0l_4ureq5errorNtB7_9ErrorKindNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt7___NAMES, i64 8), align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter27debug_c_like_enum_write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @_RNvNvXse_NtCsk6GKf1Xiy0l_4ureq5errorNtB7_9ErrorKindNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt8___OFFSET, i64 noundef 14, i64 noundef %i.b)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsk_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_4ItermNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB18_(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.d, align 8
  %i.h = tail call noundef align 8 ptr @_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE10init_frontB1O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.h, label %bb.d, !prof !774

bb.c:                                             ; preds = %bb.a, %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1y_4LeafENtB1y_4EdgeETRmRB1S_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB1W_.exit
  %.sroa.3.0 = phi ptr [ %i.p, %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1y_4LeafENtB1y_4EdgeETRmRB1S_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB1W_.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.o, %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1y_4LeafENtB1y_4EdgeETRmRB1S_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB1W_.exit ], [ null, %bb.a ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.j

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !925
  invoke void @_RNvMsh_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1y_4LeafENtB1y_4EdgeE7next_kvB1W_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h)
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %bb.d
  %i.k = load ptr, ptr %i.b, align 8, !noalias !925, !noundef !4 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.f, !prof !774

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !925
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #27
          to label %.noexc1.i unwind label %bb.g, !noalias !922

.noexc1.i:                                        ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.noexc.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !noalias !925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !925
  store ptr %i.k, ptr %i.a, align 8, !noalias !925
  invoke void @_RNvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeB1W_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %.noexc2.i unwind label %bb.g, !noalias !922

.noexc2.i:                                        ; preds = %bb.f
  %i.m = invoke { ptr, ptr } @_RNvMsP_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvB1J_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1y_4LeafENtB1y_4EdgeETRmRB1S_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB1W_.exit unwind label %bb.g, !noalias !922 ; 2 uses

bb.g:                                             ; preds = %.noexc2.i, %bb.f, %bb.e, %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1y_4LeafENtB1y_4EdgeETRmRB1S_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB1W_.exit: ; preds = %.noexc2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !922
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !922
  %i.o = extractvalue { ptr, ptr } %i.m, 0
  %i.p = extractvalue { ptr, ptr } %i.m, 1
  br label %bb.c

bb.h:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYINtNtNtCsfwHX9XeyMnn_4zstd6stream4read7DecoderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtBT_4read4Read8read_bufCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(72) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RINvNtNtCs1xwejQucwHj_5alloc2io4read16default_read_bufNCNvYINtNtNtCsfwHX9XeyMnn_4zstd6stream4read7DecoderINtNtNtB4_8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtB2_4Read8read_buf0ECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvYINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB9_8buf_read7BufRead9read_lineCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RINvNtNtCs1xwejQucwHj_5alloc2io4read16append_to_stringNCNvYINtNtNtB4_8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB4_8buf_read7BufRead9read_line0ECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvYINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderRShENtNtB9_8buf_read7BufRead9read_lineCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RINvNtNtCs1xwejQucwHj_5alloc2io4read16append_to_stringNCNvYINtNtNtB4_8buffered9bufreader9BufReaderRShENtNtB4_8buf_read7BufRead9read_line0ECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
  ret { i64, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCsk6GKf1Xiy0l_4ureq5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error5causeCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(272) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !alias.scope !929, !noundef !4
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %_RNvXs3_NtCsk6GKf1Xiy0l_4ureq5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6source.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !929, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_RNvXs3_NtCsk6GKf1Xiy0l_4ureq5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6source.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !929, !nonnull !4, !align !5, !noundef !4
  br label %_RNvXs3_NtCsk6GKf1Xiy0l_4ureq5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6source.exit

_RNvXs3_NtCsk6GKf1Xiy0l_4ureq5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6source.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.3.0.i = phi ptr [ %i.f, %bb.c ], [ undef, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %i.d, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  %i.g = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %.sroa.3.0.i, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #11

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path12__starts_with(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path13__strip_prefix(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path15__with_extension(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path5__join(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path11to_path_buf(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE10take_frontB1O_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalEB1X_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE10init_frontB1O_(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMs8_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalEB1x_() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtNtCs1xwejQucwHj_5alloc11collections5btree6appendINtNtB5_4node7NodeRefNtNtBW_6marker5OwnedmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1g_14LeafOrInternalE9bulk_pushINtNtB5_17dedup_sorted_iter15DedupSortedItermB1z_INtNtNtB9_3vec9into_iter8IntoIterTmB1z_EEENtNtB9_5alloc6GlobalEB1D_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1i_14LeafOrInternalE11search_treemEB1F_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, i64 noundef, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMsP_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvB1J_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1i_14LeafOrInternalE11search_treemEB1D_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, i64 noundef, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutB1H_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsr_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBuf14__set_extension(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsr_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBuf5__push(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable14driftsort_mainTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB20_11collections5btree3mapINtB2M_8BTreeMapmB11_EINtNtNtNtB8_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB3M_8adapters3map3MapINtNtB4I_9enumerate9EnumerateINtNtNtB20_3vec9into_iter8IntoIterB11_EENCINvXsf_B13_NtB13_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7x_10ReadReaderINtNtNtNtB20_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7z_6config13DefaultConfigEE0EE0E0INtB5D_3VecBZ_EEB15_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1m_7sort_byNCINvXs1o_NtNtNtB2n_11collections5btree3mapINtB3a_8BTreeMapmB1o_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1m_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB2n_3vec9into_iter8IntoIterB1o_EENCINvXsf_B1q_NtB1q_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7W_10ReadReaderINtNtNtNtB2n_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7Y_6config13DefaultConfigEE0EE0E0EB1s_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable14driftsort_mainTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB20_11collections5btree3mapINtB2M_8BTreeMapmB11_EINtNtNtNtB8_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB3M_8adapters3map3MapINtNtB4I_9enumerate9EnumerateINtNtNtB20_3vec9into_iter8IntoIterB11_EENCINvXsf_B13_NtB13_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7x_10ReadReaderINtNtNtNtB20_2io8buffered9bufreader9BufReaderRShEENtNtB7z_6config13DefaultConfigEE0EE0E0INtB5D_3VecBZ_EEB15_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1m_7sort_byNCINvXs1o_NtNtNtB2n_11collections5btree3mapINtB3a_8BTreeMapmB1o_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1m_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB2n_3vec9into_iter8IntoIterB1o_EENCINvXsf_B1q_NtB1q_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7W_10ReadReaderINtNtNtNtB2n_2io8buffered9bufreader9BufReaderRShEENtNtB7Y_6config13DefaultConfigEE0EE0E0EB1s_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #15

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtNtCsaL1QbXo9JQH_3std3sys3env4unix6getenv(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvMsd_B17_NtB17_9PackIndex25compute_snapshot_checksum0E0EB19_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCINvNtNtB19_4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathE0E0EB19_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 144115188075855872), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 144115188075855872), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24), ptr noalias nofree noundef nonnull) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNvYB15_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8), ptr noalias nofree noundef nonnull) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapmB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB3T_8adapters3map3MapINtNtB4Q_9enumerate9EnumerateINtNtNtB26_3vec9into_iter8IntoIterB17_EENCINvXsf_B19_NtB19_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7F_10ReadReaderINtNtNtNtB26_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7H_6config13DefaultConfigEE0EE0E0EB1b_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapmB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB3T_8adapters3map3MapINtNtB4Q_9enumerate9EnumerateINtNtNtB26_3vec9into_iter8IntoIterB17_EENCINvXsf_B19_NtB19_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7F_10ReadReaderINtNtNtNtB26_2io8buffered9bufreader9BufReaderRShEENtNtB7H_6config13DefaultConfigEE0EE0E0EB1b_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs3oUPovFnLWP_4core5sliceSTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjE14swap_uncheckedB1f_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 192153584101141163), i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs3oUPovFnLWP_4core5sliceSTymE14swap_uncheckedCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs9_NtCs3oUPovFnLWP_4core5arrayAhj14_NtNtB8_4hash4Hash4hashNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(20), ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsdxnJubla0R8_3rmp6encode15write_array_lenINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsdxnJubla0R8_3rmp6encode15write_array_lenQINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsdxnJubla0R8_3rmp6encode15write_array_lenQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

end_hunk_1
