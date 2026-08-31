Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/grep_searcher-14ec6ed8a80cabd4.grep_searcher.caf86caf6376fad2-cgu.0?download=true
inline.NumInlined: 123
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs4_NtCshqpdr3wwzuw_13grep_searcher11line_bufferNtB5_10LineBuffer4roll:bb.a

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs4_NtCshqpdr3wwzuw_13grep_searcher11line_bufferNtB5_10LineBuffer6buffer(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #1 !dbg !675 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !676
  %i.b = load i64, ptr %i.a, align 8, !dbg !676, !noundef !15 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !677
  %i.d = load i64, ptr %i.c, align 8, !dbg !677, !noundef !15 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !678
  %i.f = load i64, ptr %i.e, align 8, !dbg !678, !noundef !15 ; 2 uses
  %i.g = icmp ult i64 %i.d, %i.b, !dbg !687
  %.not = icmp ugt i64 %i.d, %i.f
  %or.cond = or i1 %i.g, %.not, !dbg !687
  br i1 %or.cond, label %bb.b, label %bb.c, !dbg !687, !prof !694

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.b, i64 noundef %i.d, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #23, !dbg !695
  unreachable, !dbg !695

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !696
  %i.i = load ptr, ptr %i.h, align 8, !dbg !696, !nonnull !15, !noundef !15
  %i.j = sub nuw i64 %i.d, %i.b, !dbg !705
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.b, !dbg !706
  %i.l = insertvalue { ptr, i64 } poison, ptr %i.k, 0, !dbg !710
  %i.m = insertvalue { ptr, i64 } %i.l, i64 %i.j, 1, !dbg !710
  ret { ptr, i64 } %i.m, !dbg !710
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCshqpdr3wwzuw_13grep_searcher11line_bufferNtB5_10LineBuffer7consume(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %0, i64 noundef %1) unnamed_addr #1 !dbg !711 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !712), !dbg !715
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !716 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !716, !alias.scope !712, !noundef !15 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !718
  %i.d = load i64, ptr %i.c, align 8, !dbg !718, !alias.scope !712, !noundef !15 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !719
  %i.f = load i64, ptr %i.e, align 8, !dbg !719, !alias.scope !712, !noundef !15 ; 2 uses
  %i.g = icmp ult i64 %i.d, %i.b, !dbg !723
  %.not.i = icmp ugt i64 %i.d, %i.f
  %or.cond.i = or i1 %i.g, %.not.i, !dbg !723
  br i1 %or.cond.i, label %bb.b, label %_RNvMs4_NtCshqpdr3wwzuw_13grep_searcher11line_bufferNtB5_10LineBuffer6buffer.exit, !dbg !723, !prof !694

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.b, i64 noundef %i.d, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #23, !dbg !727, !noalias !712
  unreachable, !dbg !727

_RNvMs4_NtCshqpdr3wwzuw_13grep_searcher11line_bufferNtB5_10LineBuffer6buffer.exit: ; preds = %bb.a
  %i.h = sub nuw i64 %i.d, %i.b, !dbg !728
  %.not = icmp ugt i64 %1, %i.h, !dbg !729
  br i1 %.not, label %bb.c, label %bb.d, !dbg !729, !prof !65

bb.c:                                             ; preds = %_RNvMs4_NtCshqpdr3wwzuw_13grep_searcher11line_bufferNtB5_10LineBuffer6buffer.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #23, !dbg !730
  unreachable, !dbg !730

bb.d:                                             ; preds = %_RNvMs4_NtCshqpdr3wwzuw_13grep_searcher11line_bufferNtB5_10LineBuffer6buffer.exit
  %i.i = add i64 %i.b, %1, !dbg !731
  store i64 %i.i, ptr %i.a, align 8, !dbg !731
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !732 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !dbg !732, !noundef !15
  %i.l = add i64 %i.k, %1, !dbg !732
  store i64 %i.l, ptr %i.j, align 8, !dbg !732
  ret void, !dbg !733
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCshqpdr3wwzuw_13grep_searcher(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1) unnamed_addr #5 !dbg !734 {
bb.a:
  %i.a = icmp sgt i64 %1, -1, !dbg !735
  br i1 %i.a, label %bb.b, label %bb.f, !dbg !741

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %.0.val, 0, !dbg !749
  br i1 %i.b, label %bb.c, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit, !dbg !749

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.c = icmp uge i64 %1, %.0.val, !dbg !753
  tail call void @llvm.assume(i1 %i.c), !dbg !762
  %i.d = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %.0.val, i64 noundef 1, i64 noundef range(i64 0, -9223372036854775808) %1) #21, !dbg !767
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit, !dbg !770

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %1, 0, !dbg !771
  br i1 %i.e, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d, !dbg !771

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !dbg !777
  %i.f = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef 1) #21, !dbg !778
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit, !dbg !780

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit
  %.pn7 = phi ptr [ %i.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit ], [ %i.f, %bb.d ] ; 2 uses
  %i.g = icmp eq ptr %.pn7, null, !dbg !781
  br i1 %i.g, label %bb.e, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, !dbg !785

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !786
  store i64 1, ptr %i.h, align 8, !dbg !786
  br label %bb.f, !dbg !788

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn79 = phi ptr [ %.pn7, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ], [ inttoptr (i64 1 to ptr), %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !789
  store ptr %.pn79, ptr %i.i, align 8, !dbg !789
  br label %bb.f, !dbg !791

bb.f:                                             ; preds = %bb.a, %bb.e, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread
  %.sink12 = phi i64 [ 16, %bb.e ], [ 16, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ 8, %bb.a ]
  %.sink10 = phi i64 [ %1, %bb.e ], [ %1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ 1, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12, !dbg !792
  store i64 %.sink10, ptr %i.j, align 8, !dbg !792
  store i64 %.sink, ptr %0, align 8, !dbg !792
  ret void, !dbg !793
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB5_15SearcherBuilder5build(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([264 x i8]) align 8 captures(none) dereferenceable(264) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !794 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !796 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !806
  %i.c = load i64, ptr %i.b, align 8, !dbg !806, !alias.scope !807, !noalias !810, !noundef !15
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !812
  %i.e = load i64, ptr %i.d, align 8, !dbg !812, !alias.scope !807, !noalias !810, !noundef !15
  %i.f = load i64, ptr %1, align 8, !dbg !813, !range !235, !alias.scope !807, !noalias !810, !noundef !15 ; 2 uses
  %i.g = trunc nuw i64 %i.f to i1, !dbg !817      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !817
  %i.i = load i64, ptr %i.h, align 8, !dbg !817, !alias.scope !807, !noalias !810 ; 5 uses
  %i.j = load <8 x i8>, ptr %i.a, align 8, !dbg !796, !alias.scope !807, !noalias !810 ; 5 uses
  %i.k = load i8, ptr %i.a, align 8, !dbg !796, !range !818, !alias.scope !807, !noalias !810, !noundef !15
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !819
  %i.m = load i8, ptr %i.l, align 8, !dbg !819, !range !818, !alias.scope !807, !noalias !810, !noundef !15
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !820
  %i.o = load ptr, ptr %i.n, align 8, !dbg !820, !alias.scope !807, !noalias !810, !align !823, !noundef !15 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 65, !dbg !824
  %i.q = load i8, ptr %i.p, align 1, !dbg !824, !range !818, !alias.scope !807, !noalias !810, !noundef !15 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 66, !dbg !825
  %i.s = load i8, ptr %i.r, align 2, !dbg !825, !range !818, !alias.scope !807, !noalias !810, !noundef !15
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !826
  %i.u = load i64, ptr %i.t, align 8, !dbg !826, !range !235, !alias.scope !807, !noalias !810, !noundef !15 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !829
  %i.w = load i64, ptr %i.v, align 8, !dbg !829, !alias.scope !807, !noalias !810
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !dbg !830, !noalias !847
  %i.x = tail call noundef dereferenceable_or_null(8192) ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) 8192, i64 noundef 1) #21, !dbg !852, !noalias !847 ; 3 uses
  %i.y = icmp eq ptr %i.x, null, !dbg !860
  br i1 %i.y, label %bb.b, label %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECshqpdr3wwzuw_13grep_searcher.exit, !dbg !862

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 8192) #22, !dbg !863, !noalias !865
  unreachable, !dbg !863

_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECshqpdr3wwzuw_13grep_searcher.exit: ; preds = %bb.a
  br i1 %i.g, label %bb.c, label %.thread.i, !dbg !866

bb.c:                                             ; preds = %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECshqpdr3wwzuw_13grep_searcher.exit
  %i.z = icmp ult i64 %i.i, 65537, !dbg !871
  %i.aa = add i64 %i.i, -65536, !dbg !871
  br i1 %i.z, label %bb.d, label %.thread.i, !dbg !872

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp eq i64 %i.i, 0, !dbg !873
  br i1 %i.ab, label %bb.g, label %.thread.i, !dbg !873

.thread.i:                                        ; preds = %bb.d, %bb.c, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECshqpdr3wwzuw_13grep_searcher.exit
  %.sroa.0.01321.i = phi i64 [ 1, %bb.d ], [ 0, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECshqpdr3wwzuw_13grep_searcher.exit ], [ 1, %bb.c ]
  %.sroa.5.019.i = phi i64 [ 0, %bb.d ], [ undef, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECshqpdr3wwzuw_13grep_searcher.exit ], [ %i.aa, %bb.c ]
  %.sroa.6.017.i = phi i64 [ %i.i, %bb.d ], [ 65536, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECshqpdr3wwzuw_13grep_searcher.exit ], [ 65536, %bb.c ] ; 3 uses
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !dbg !883, !noalias !884
  %i.ac = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %.sroa.6.017.i, i64 noundef 1) #21, !dbg !895, !noalias !884 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null, !dbg !900
  br i1 %i.ad, label %bb.f, label %bb.e, !dbg !901

bb.e:                                             ; preds = %.thread.i
  %i.ae = ptrtoint ptr %i.ac to i64, !dbg !902
  br label %bb.g, !dbg !904

bb.f:                                             ; preds = %.thread.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %.sroa.6.017.i) #22
          to label %.noexc unwind label %bb.h, !dbg !905

.noexc:                                           ; preds = %bb.f
  unreachable, !dbg !905

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.01322.i = phi i64 [ %.sroa.0.01321.i, %bb.e ], [ 1, %bb.d ]
  %.sroa.5.020.i = phi i64 [ %.sroa.5.019.i, %bb.e ], [ 0, %bb.d ]
  %.sroa.6.018.i = phi i64 [ %.sroa.6.017.i, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %.sroa.10.0.i.i.i = phi i64 [ %i.ae, %bb.e ], [ 1, %bb.d ], !dbg !906
  %i.af = bitcast <8 x i8> %i.j to <64 x i1>, !dbg !907
  %i.ag = extractelement <64 x i1> %i.af, i64 40, !dbg !907 ; 2 uses
  %spec.select50 = select i1 %i.ag, i64 0, i64 %i.c, !dbg !907
  %spec.select = select i1 %i.ag, i64 0, i64 %i.e, !dbg !907
  %i.ah = trunc nuw i64 %i.u to i1, !dbg !829
  %.sroa.53.0.i = select i1 %i.ah, i64 %i.w, i64 undef, !dbg !829
  %.sroa.5.0.i = select i1 %i.g, i64 %i.i, i64 undef, !dbg !817
  %i.ai = trunc nuw i8 %i.k to i1, !dbg !908
  %i.aj = extractelement <8 x i8> %i.j, i64 1, !dbg !912
  %.sroa.0.0.i = select i1 %i.ai, i8 10, i8 %i.aj, !dbg !912
  %.sroa.9.26.insert.ext.i = zext i8 %.sroa.0.0.i to i64, !dbg !913
  %.sroa.9.26.insert.shift.i = shl nuw nsw i64 %.sroa.9.26.insert.ext.i, 16, !dbg !913
  %i.ak = extractelement <8 x i8> %i.j, i64 2, !dbg !916
  %i.al = zext i8 %i.ak to i64, !dbg !916
  %.sroa.9.24.insert.insert9.i = or disjoint i64 %.sroa.9.26.insert.shift.i, %i.al, !dbg !916
  %i.am = extractelement <8 x i8> %i.j, i64 3, !dbg !916
  %i.an = zext i8 %i.am to i64, !dbg !916
  %.sroa.9.25.insert.shift.i = shl nuw nsw i64 %i.an, 8, !dbg !916
  %.sroa.9.25.insert.insert.i = or disjoint i64 %.sroa.9.25.insert.shift.i, %.sroa.9.24.insert.insert9.i, !dbg !916
  %i.ao = inttoptr i64 %.sroa.10.0.i.i.i to ptr, !dbg !919
  %.sroa.44.sroa.12.0..sroa.44.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !920
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.44.sroa.12.0..sroa.44.0..sroa_idx.sroa_idx, i8 0, i64 32, i1 false), !dbg !921
  store i64 %i.f, ptr %0, align 8, !dbg !920
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !920
  store i64 %.sroa.5.0.i, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !920
  %.sroa.3.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !920
  store i64 %i.u, ptr %.sroa.3.0..sroa_idx17, align 8, !dbg !920
  %.sroa.4.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !920
  store i64 %.sroa.53.0.i, ptr %.sroa.4.0..sroa_idx18, align 8, !dbg !920
  %.sroa.5.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !920
  store i64 %spec.select50, ptr %.sroa.5.0..sroa_idx19, align 8, !dbg !920
  %.sroa.7.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !920
  store i64 %spec.select, ptr %.sroa.7.0..sroa_idx20, align 8, !dbg !920
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !920
  store ptr %i.o, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !920
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !920
  store <8 x i8> %i.j, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !920
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !920
  store i8 %i.m, ptr %.sroa.19.0..sroa_idx, align 8, !dbg !920
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65, !dbg !920
  store i8 %i.q, ptr %.sroa.20.0..sroa_idx, align 1, !dbg !920
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 66, !dbg !920
  store i8 %i.s, ptr %.sroa.21.0..sroa_idx, align 2, !dbg !920
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !920
  store ptr %i.o, ptr %i.ap, align 8, !dbg !920
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !920
  store i8 1, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !920
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 81, !dbg !920
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 1, !dbg !920
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 82, !dbg !920
  store i8 %i.q, ptr %.sroa.5.0..sroa_idx, align 2, !dbg !920
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 83, !dbg !920
  store i8 %i.q, ptr %.sroa.6.0..sroa_idx, align 1, !dbg !920
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 84, !dbg !920
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 4, !dbg !920
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !920
  store i64 0, ptr %i.aq, align 8, !dbg !920
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !920
  store i64 8192, ptr %.sroa.422.0..sroa_idx, align 8, !dbg !920
  %.sroa.6.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !920
  store ptr %i.x, ptr %.sroa.6.0..sroa_idx23, align 8, !dbg !920
  %.sroa.724.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !920
  store i64 8192, ptr %.sroa.724.0..sroa_idx, align 8, !dbg !920
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !920
  store i64 0, ptr %i.ar, align 8, !dbg !920
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !920
  store i64 %.sroa.0.01322.i, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !920
  %.sroa.44.sroa.4.0..sroa.44.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !920
  store i64 %.sroa.5.020.i, ptr %.sroa.44.sroa.4.0..sroa.44.0..sroa_idx.sroa_idx, align 8, !dbg !920
  %.sroa.44.sroa.5.0..sroa.44.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !920
  store i64 %.sroa.6.018.i, ptr %.sroa.44.sroa.5.0..sroa.44.0..sroa_idx.sroa_idx, align 8, !dbg !920
  %.sroa.44.sroa.6.0..sroa.44.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !920
  store i64 %.sroa.9.25.insert.insert.i, ptr %.sroa.44.sroa.6.0..sroa.44.0..sroa_idx.sroa_idx, align 8, !dbg !920
  %.sroa.44.sroa.7.0..sroa.44.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !920
  store i64 0, ptr %.sroa.44.sroa.7.0..sroa.44.0..sroa_idx.sroa_idx, align 8, !dbg !920
  %.sroa.44.sroa.9.0..sroa.44.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !920
  store i64 %.sroa.6.018.i, ptr %.sroa.44.sroa.9.0..sroa.44.0..sroa_idx.sroa_idx, align 8, !dbg !920
  %.sroa.44.sroa.10.0..sroa.44.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184, !dbg !920
  store ptr %i.ao, ptr %.sroa.44.sroa.10.0..sroa.44.0..sroa_idx.sroa_idx, align 8, !dbg !920
  %.sroa.44.sroa.11.0..sroa.44.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192, !dbg !920
  store i64 %.sroa.6.018.i, ptr %.sroa.44.sroa.11.0..sroa.44.0..sroa_idx.sroa_idx, align 8, !dbg !920
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 232, !dbg !920
  %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !920
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false), !dbg !920
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx, align 8, !dbg !920
  %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !920
  store i64 0, ptr %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx, align 8, !dbg !920
  ret void, !dbg !922

bb.h:                                             ; preds = %bb.f
  %i.at = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.x, i64 noundef 8192, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !dbg !923
  resume { ptr, i32 } %i.at, !dbg !936
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB5_8Searcher20set_binary_detection(ptr noalias nofree noundef align 8 captures(none) dereferenceable(264) initializes((58, 60)) %0, i8 noundef range(i8 0, 3) %1, i8 %2) unnamed_addr #1 !dbg !937 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 58, !dbg !939
  store i8 %1, ptr %i.a, align 2, !dbg !939
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 59, !dbg !939
  store i8 %2, ptr %i.b, align 1, !dbg !939
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !940
  %i.d = load i64, ptr %i.c, align 8, !dbg !948, !noundef !15
  %i.e = icmp eq i64 %i.d, 0, !dbg !955
  br i1 %i.e, label %bb.b, label %bb.c, !dbg !955, !prof !956

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !957
  store i8 %1, ptr %i.f, align 8, !dbg !957
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 153, !dbg !957
  store i8 %2, ptr %i.g, align 1, !dbg !957
  ret void, !dbg !960

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #23, !dbg !961
  unreachable, !dbg !961
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB5_8Searcher23slice_needs_transcoding(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !963 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !964
  %i.f = load ptr, ptr %i.e, align 8, !dbg !964, !align !823, !noundef !15
  %.not = icmp eq ptr %i.f, null, !dbg !964
  br i1 %.not, label %bb.b, label %bb.h, !dbg !970

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 65, !dbg !971
  %i.h = load i8, ptr %i.g, align 1, !dbg !971, !range !818, !noundef !15
  %i.i = trunc nuw i8 %i.h to i1, !dbg !971
  br i1 %i.i, label %bb.c, label %bb.h, !dbg !971

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !972, !noalias !975
  %.not.i.i.i = icmp samesign ult i64 %2, 3, !dbg !978
  br i1 %.not.i.i.i, label %bb.d, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCshqpdr3wwzuw_13grep_searcher.exit.i.i, !dbg !978

_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCshqpdr3wwzuw_13grep_searcher.exit.i.i: ; preds = %bb.c
  %i.j = load i16, ptr %1, align 1, !dbg !987
  %i.k = xor i16 -17425, %i.j, !dbg !987
  %i.l = getelementptr i8, ptr %1, i64 2, !dbg !987
  %i.m = load i8, ptr %i.l, align 1, !dbg !987
  %i.n = zext i8 %i.m to i16, !dbg !987
  %i.o = xor i16 191, %i.n, !dbg !987
  %i.p = or i16 %i.k, %i.o, !dbg !987
  %i.q = icmp ne i16 %i.p, 0, !dbg !987
  %i.r = zext i1 %i.q to i32, !dbg !987
  %i.s = icmp eq i32 %i.r, 0, !dbg !987
  br i1 %i.s, label %select.unfold.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCshqpdr3wwzuw_13grep_searcher.exit5.i.i, !dbg !1001

bb.d:                                             ; preds = %bb.c
  %.not.i2.not.i.i = icmp eq i64 %2, 2, !dbg !1002
  br i1 %.not.i2.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCshqpdr3wwzuw_13grep_searcher.exit5.i.i, label %_RNvNtCshqpdr3wwzuw_13grep_searcher8searcher13slice_has_bom.exit, !dbg !1002

_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCshqpdr3wwzuw_13grep_searcher.exit5.i.i: ; preds = %bb.d, %_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCshqpdr3wwzuw_13grep_searcher.exit.i.i
  %i.t = load i16, ptr %1, align 1, !dbg !1004
  %i.u = icmp ne i16 -257, %i.t, !dbg !1004
  %i.v = zext i1 %i.u to i32, !dbg !1004
  %i.w = icmp eq i32 %i.v, 0, !dbg !1004
  br i1 %i.w, label %select.unfold.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCshqpdr3wwzuw_13grep_searcher.exit9.i.i, !dbg !1008

_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCshqpdr3wwzuw_13grep_searcher.exit9.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCshqpdr3wwzuw_13grep_searcher.exit5.i.i
  %i.x = load i16, ptr %1, align 1, !dbg !1009
  %i.y = icmp ne i16 -2, %i.x, !dbg !1009
  %i.z = zext i1 %i.y to i32, !dbg !1009
  %bcmp.i.i7.fr.i.i = freeze i32 %i.z, !dbg !1009
  %i.aa = icmp eq i32 %bcmp.i.i7.fr.i.i, 0, !dbg !1009
  br i1 %i.aa, label %select.unfold.i, label %_RNvNtCshqpdr3wwzuw_13grep_searcher8searcher13slice_has_bom.exit, !dbg !1014

select.unfold.i:                                  ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCshqpdr3wwzuw_13grep_searcher.exit9.i.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCshqpdr3wwzuw_13grep_searcher.exit5.i.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCshqpdr3wwzuw_13grep_searcher.exit.i.i
  %.sroa.0.0.i.ph.in.i = phi ptr [ @_RNvCsbRtu51WrwYN_11encoding_rs8UTF_16BE, %_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCshqpdr3wwzuw_13grep_searcher.exit9.i.i ], [ @_RNvCsbRtu51WrwYN_11encoding_rs5UTF_8, %_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCshqpdr3wwzuw_13grep_searcher.exit.i.i ], [ @_RNvCsbRtu51WrwYN_11encoding_rs8UTF_16LE, %_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCshqpdr3wwzuw_13grep_searcher.exit5.i.i ]
  %.sroa.0.0.i.ph.i = load ptr, ptr %.sroa.0.0.i.ph.in.i, align 8, !noalias !1015, !nonnull !15, !align !823 ; 2 uses
  store ptr %.sroa.0.0.i.ph.i, ptr %i.d, align 8, !dbg !1018, !noalias !975, !captures !1020
  %i.ab = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !1021, !noalias !975 ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 6, !dbg !1035
  tail call void @llvm.assume(i1 %i.ac), !dbg !1035
  %i.ad = icmp samesign ugt i64 %i.ab, 4, !dbg !1036
  br i1 %i.ad, label %bb.e, label %bb.f, !dbg !1056

bb.e:                                             ; preds = %select.unfold.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1057, !noalias !975
  store ptr %i.d, ptr %i.c, align 8, !dbg !1057, !noalias !975
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !1057
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtCsbRtu51WrwYN_11encoding_rs8EncodingNtB6_5Debug3fmtCshqpdr3wwzuw_13grep_searcher, ptr %.sroa.45.0..sroa_idx.i, align 8, !dbg !1057, !noalias !975
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1060, !noalias !1069
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !1074
  store i64 5, ptr %i.ae, align 8, !dbg !1074, !noalias !1069
  %.sroa.422.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !1074
  store ptr @23, ptr %.sroa.422.0..sroa_idx.i.i.i, align 8, !dbg !1074, !noalias !1069
  %.sroa.523.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !1074
  store i64 23, ptr %.sroa.523.0..sroa_idx.i.i.i, align 8, !dbg !1074, !noalias !1069
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !1074
  store ptr @22, ptr %i.af, align 8, !dbg !1074, !noalias !1069
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !1074
  store ptr %i.c, ptr %i.ag, align 8, !dbg !1074, !noalias !1069
  store i64 0, ptr %i.b, align 8, !dbg !1074, !noalias !1069
  %.sroa.428.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1074
  store ptr @23, ptr %.sroa.428.0..sroa_idx.i.i.i, align 8, !dbg !1074, !noalias !1069
  %.sroa.529.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !1074
  store i64 23, ptr %.sroa.529.0..sroa_idx.i.i.i, align 8, !dbg !1074, !noalias !1069
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !1074
  store i64 0, ptr %i.ah, align 8, !dbg !1074, !noalias !1069
  %.sroa.434.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !1074
  store ptr @12, ptr %.sroa.434.0..sroa_idx.i.i.i, align 8, !dbg !1074, !noalias !1069
  %.sroa.535.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !1074
  store i64 35, ptr %.sroa.535.0..sroa_idx.i.i.i, align 8, !dbg !1074, !noalias !1069
end_hunk_0
begin_hunk_1_@llvm.memset.p0.i64
!712 = !{!713}
!713 = distinct !{!713, !714, !"_RNvMs4_NtCshqpdr3wwzuw_13grep_searcher11line_bufferNtB5_10LineBuffer6buffer: argument 0"}
!714 = distinct !{!714, !"_RNvMs4_NtCshqpdr3wwzuw_13grep_searcher11line_bufferNtB5_10LineBuffer6buffer"}
!715 = !DILocation(line: 374, column: 29, scope: !711)
!716 = !DILocation(line: 362, column: 19, scope: !675, inlinedAt: !717)
!717 = distinct !DILocation(line: 374, column: 29, scope: !711)
!718 = !DILocation(line: 362, column: 29, scope: !675, inlinedAt: !717)
!719 = !DILocation(line: 1864, column: 86, scope: !679, inlinedAt: !720)
!720 = distinct !DILocation(line: 3854, column: 14, scope: !681, inlinedAt: !721)
!721 = distinct !DILocation(line: 3936, column: 23, scope: !684, inlinedAt: !722)
!722 = distinct !DILocation(line: 362, column: 18, scope: !675, inlinedAt: !717)
!723 = !DILocation(line: 1122, column: 16, scope: !688, inlinedAt: !724)
!724 = distinct !DILocation(line: 407, column: 32, scope: !690, inlinedAt: !725)
!725 = distinct !DILocation(line: 19, column: 15, scope: !692, inlinedAt: !726)
!726 = distinct !DILocation(line: 3936, column: 9, scope: !684, inlinedAt: !722)
!727 = !DILocation(line: 413, column: 13, scope: !690, inlinedAt: !725)
!728 = !DILocation(line: 1126, column: 31, scope: !688, inlinedAt: !724)
!729 = !DILocation(line: 374, column: 17, scope: !711)
!730 = !DILocation(line: 374, column: 9, scope: !711)
!731 = !DILocation(line: 375, column: 9, scope: !711)
!732 = !DILocation(line: 376, column: 9, scope: !711)
!733 = !DILocation(line: 377, column: 6, scope: !711)
!734 = distinct !DISubprogram(name: "finish_grow<alloc::alloc::Global>", linkageName: "_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCshqpdr3wwzuw_13grep_searcher", scope: !70, file: !69, line: 544, type: !28, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!735 = !DILocation(line: 75, column: 9, scope: !736, inlinedAt: !741)
!736 = distinct !DISubprogram(name: "is_size_alignment_valid", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core5alloc6layoutNtB2_6Layout23is_size_alignment_valid", scope: !738, file: !737, line: 74, type: !14, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!737 = !DIFile(filename: "library/core/src/alloc/layout.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "044b929685d8564035fcb902806519e4")
!738 = !DINamespace(name: "Layout", scope: !739)
!739 = !DINamespace(name: "layout", scope: !740)
!740 = !DINamespace(name: "alloc", scope: !13)
!741 = !DILocation(line: 113, column: 12, scope: !742, inlinedAt: !743)
!742 = distinct !DISubprogram(name: "from_size_alignment", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core5alloc6layoutNtB2_6Layout19from_size_alignment", scope: !738, file: !737, line: 109, type: !14, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!743 = !DILocation(line: 535, column: 13, scope: !744, inlinedAt: !746)
!744 = distinct !DILexicalBlock(scope: !745, file: !737, line: 533, column: 54)
!745 = distinct !DISubprogram(name: "repeat_packed", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core5alloc6layoutNtB2_6Layout13repeat_packed", scope: !738, file: !737, line: 532, type: !14, scopeLine: 532, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!746 = !DILocation(line: 901, column: 17, scope: !747, inlinedAt: !748)
!747 = distinct !DISubprogram(name: "layout_array", linkageName: "_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12layout_array", scope: !71, file: !69, line: 896, type: !14, scopeLine: 896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!748 = !DILocation(line: 549, column: 26, scope: !734)
!749 = !DILocation(line: 631, column: 39, scope: !68, inlinedAt: !750)
!750 = distinct !DILocation(line: 551, column: 69, scope: !751)
!751 = distinct !DILexicalBlock(scope: !752, file: !69, line: 551, column: 99)
!752 = distinct !DILexicalBlock(scope: !734, file: !69, line: 549, column: 9)
!753 = !DILocation(line: 349, column: 40, scope: !754, inlinedAt: !757)
!754 = distinct !DILexicalBlock(scope: !755, file: !41, line: 346, column: 17)
!755 = distinct !DILexicalBlock(scope: !756, file: !41, line: 345, column: 13)
!756 = distinct !DISubprogram(name: "grow_impl_runtime", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc5allocNtB5_6Global17grow_impl_runtime", scope: !43, file: !41, line: 328, type: !28, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!757 = distinct !DILocation(line: 454, column: 9, scope: !758, inlinedAt: !759)
!758 = distinct !DISubprogram(name: "grow_impl", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc5allocNtB5_6Global9grow_impl", scope: !43, file: !41, line: 447, type: !14, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!759 = distinct !DILocation(line: 566, column: 23, scope: !760, inlinedAt: !761)
!760 = distinct !DISubprogram(name: "grow", linkageName: "_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow", scope: !49, file: !41, line: 559, type: !28, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!761 = distinct !DILocation(line: 557, column: 28, scope: !751)
!762 = !DILocation(line: 210, column: 9, scope: !763, inlinedAt: !766)
!763 = distinct !DISubprogram(name: "assert_unchecked", linkageName: "_RNvNtCskKLDkoKarTP_4core4hint16assert_unchecked", scope: !765, file: !764, line: 202, type: !14, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!764 = !DIFile(filename: "library/core/src/hint.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "720ecb12dbf1a304509abd161627e0e2")
!765 = !DINamespace(name: "hint", scope: !13)
!766 = distinct !DILocation(line: 349, column: 17, scope: !754, inlinedAt: !757)
!767 = !DILocation(line: 228, column: 14, scope: !768, inlinedAt: !769)
!768 = distinct !DISubprogram(name: "realloc_nonnull", linkageName: "_RNvNtCsexYYUdYSQU6_5alloc5alloc15realloc_nonnull", scope: !44, file: !41, line: 227, type: !14, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!769 = distinct !DILocation(line: 351, column: 31, scope: !754, inlinedAt: !757)
!770 = !DILocation(line: 551, column: 22, scope: !752)
!771 = !DILocation(line: 298, column: 9, scope: !42, inlinedAt: !772)
!772 = distinct !DILocation(line: 424, column: 9, scope: !773, inlinedAt: !774)
!773 = distinct !DISubprogram(name: "alloc_impl", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc5allocNtB5_6Global10alloc_impl", scope: !43, file: !41, line: 423, type: !14, scopeLine: 423, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!774 = distinct !DILocation(line: 541, column: 14, scope: !775, inlinedAt: !776)
!775 = distinct !DISubprogram(name: "allocate", linkageName: "_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate", scope: !49, file: !41, line: 540, type: !28, scopeLine: 540, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!776 = distinct !DILocation(line: 560, column: 24, scope: !752)
!777 = !DILocation(line: 302, scope: !40, inlinedAt: !772)
!778 = !DILocation(line: 130, column: 9, scope: !61, inlinedAt: !779)
!779 = distinct !DILocation(line: 302, column: 73, scope: !40, inlinedAt: !772)
!780 = !DILocation(line: 302, column: 31, scope: !40, inlinedAt: !772)
!781 = !DILocation(line: 965, column: 15, scope: !782, inlinedAt: !783)
!782 = distinct !DISubprogram(name: "map_err<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError, alloc::collections::TryReserveError, alloc::raw_vec::{impl#7}::finish_grow::{closure_env#0}<alloc::alloc::Global>>", linkageName: "_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultINtNtNtB5_3ptr8non_null7NonNullShENtNtB5_5alloc10AllocErrorE7map_errNtNtCsexYYUdYSQU6_5alloc11collections15TryReserveErrorNCNvMs5_NtB1S_7raw_vecNtB2O_11RawVecInner11finish_grow0ECshqpdr3wwzuw_13grep_searcher", scope: !373, file: !231, line: 961, type: !14, scopeLine: 961, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!783 = !DILocation(line: 563, column: 16, scope: !784)
!784 = distinct !DILexicalBlock(scope: !752, file: !69, line: 551, column: 9)
!785 = !DILocation(line: 965, column: 9, scope: !782, inlinedAt: !783)
!786 = !DILocation(line: 967, column: 23, scope: !787, inlinedAt: !783)
!787 = distinct !DILexicalBlock(scope: !782, file: !231, line: 967, column: 13)
!788 = !DILocation(line: 967, column: 32, scope: !782, inlinedAt: !783)
!789 = !DILocation(line: 966, column: 22, scope: !790, inlinedAt: !783)
!790 = distinct !DILexicalBlock(scope: !782, file: !231, line: 966, column: 13)
!791 = !DILocation(line: 969, column: 5, scope: !782, inlinedAt: !783)
!792 = !DILocation(line: 0, scope: !734)
!793 = !DILocation(line: 564, column: 6, scope: !734)
!794 = distinct !DISubprogram(name: "build", linkageName: "_RNvMs5_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB5_15SearcherBuilder5build", scope: !795, file: !386, line: 315, type: !14, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!795 = !DINamespace(name: "SearcherBuilder", scope: !388)
!796 = !DILocation(line: 194, column: 10, scope: !797, inlinedAt: !802)
!797 = distinct !DILexicalBlock(scope: !799, file: !798, line: 194, column: 10)
!798 = !DIFile(filename: "crates/matcher/src/lib.rs", directory: "/opt-bench/work/ripgrep-rs/ripgrep", checksumkind: CSK_MD5, checksum: "6932abdfdd97db0e26b483afdb6df3d1")
!799 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXsl_Cs7LWxN68iDgu_12grep_matcherNtB5_14LineTerminatorNtNtCskKLDkoKarTP_4core5clone5Clone5clone", scope: !800, file: !798, line: 194, type: !14, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!800 = !DINamespace(name: "{impl#23}", scope: !801)
!801 = !DINamespace(name: "grep_matcher", scope: null)
!802 = distinct !DILocation(line: 153, column: 5, scope: !803, inlinedAt: !805)
!803 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXsj_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB5_6ConfigNtNtCskKLDkoKarTP_4core5clone5Clone5clone", scope: !804, file: !386, line: 150, type: !14, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!804 = !DINamespace(name: "{impl#21}", scope: !388)
!805 = distinct !DILocation(line: 316, column: 38, scope: !794)
!806 = !DILocation(line: 157, column: 5, scope: !803, inlinedAt: !805)
!807 = !{!808}
!808 = distinct !{!808, !809, !"_RNvXsj_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB5_6ConfigNtNtCskKLDkoKarTP_4core5clone5Clone5clone: argument 1"}
!809 = distinct !{!809, !"_RNvXsj_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB5_6ConfigNtNtCskKLDkoKarTP_4core5clone5Clone5clone"}
!810 = !{!811}
!811 = distinct !{!811, !809, !"_RNvXsj_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB5_6ConfigNtNtCskKLDkoKarTP_4core5clone5Clone5clone: argument 0"}
!812 = !DILocation(line: 159, column: 5, scope: !803, inlinedAt: !805)
!813 = !DILocation(line: 2279, column: 15, scope: !814, inlinedAt: !816)
!814 = distinct !DISubprogram(name: "clone<usize>", linkageName: "_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionjENtNtB7_5clone5Clone5cloneCshqpdr3wwzuw_13grep_searcher", scope: !815, file: !140, line: 2278, type: !14, scopeLine: 2278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!815 = !DINamespace(name: "{impl#6}", scope: !142)
!816 = distinct !DILocation(line: 168, column: 5, scope: !803, inlinedAt: !805)
!817 = !DILocation(line: 2279, column: 9, scope: !814, inlinedAt: !816)
!818 = !{i8 0, i8 2}
!819 = !DILocation(line: 174, column: 5, scope: !803, inlinedAt: !805)
!820 = !DILocation(line: 2279, column: 15, scope: !821, inlinedAt: !822)
!821 = distinct !DISubprogram(name: "clone<grep_searcher::searcher::Encoding>", linkageName: "_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCshqpdr3wwzuw_13grep_searcher8searcher8EncodingENtNtB7_5clone5Clone5cloneBO_", scope: !815, file: !140, line: 2278, type: !14, scopeLine: 2278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!822 = distinct !DILocation(line: 177, column: 5, scope: !803, inlinedAt: !805)
!823 = !{i64 8}
!824 = !DILocation(line: 179, column: 5, scope: !803, inlinedAt: !805)
!825 = !DILocation(line: 182, column: 5, scope: !803, inlinedAt: !805)
!826 = !DILocation(line: 2279, column: 15, scope: !827, inlinedAt: !828)
!827 = distinct !DISubprogram(name: "clone<u64>", linkageName: "_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionyENtNtB7_5clone5Clone5cloneCshqpdr3wwzuw_13grep_searcher", scope: !815, file: !140, line: 2278, type: !14, scopeLine: 2278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!828 = distinct !DILocation(line: 184, column: 5, scope: !803, inlinedAt: !805)
!829 = !DILocation(line: 2279, column: 9, scope: !827, inlinedAt: !828)
!830 = !DILocation(line: 0, scope: !831, inlinedAt: !833)
!831 = distinct !DILexicalBlock(scope: !832, file: !69, line: 455, column: 9)
!832 = distinct !DISubprogram(name: "try_allocate_in<alloc::alloc::Global>", linkageName: "_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshqpdr3wwzuw_13grep_searcher", scope: !70, file: !69, line: 447, type: !14, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!833 = distinct !DILocation(line: 587, column: 15, scope: !834, inlinedAt: !835)
!834 = distinct !DISubprogram(name: "with_capacity_zeroed_in<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner23with_capacity_zeroed_inCshqpdr3wwzuw_13grep_searcher", scope: !70, file: !69, line: 586, type: !14, scopeLine: 586, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!835 = distinct !DILocation(line: 221, column: 20, scope: !836, inlinedAt: !837)
!836 = distinct !DISubprogram(name: "with_capacity_zeroed_in<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE23with_capacity_zeroed_inCshqpdr3wwzuw_13grep_searcher", scope: !425, file: !69, line: 219, type: !14, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!837 = distinct !DILocation(line: 51, column: 31, scope: !838, inlinedAt: !842)
!838 = distinct !DISubprogram(name: "from_elem<alloc::alloc::Global>", linkageName: "_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECshqpdr3wwzuw_13grep_searcher", scope: !840, file: !839, line: 49, type: !14, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!839 = !DIFile(filename: "library/alloc/src/vec/spec_from_elem.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "22e98e423536bab5c4532831d8ac869f")
!840 = !DINamespace(name: "{impl#3}", scope: !841)
!841 = !DINamespace(name: "spec_from_elem", scope: !405)
!842 = distinct !DILocation(line: 3775, column: 5, scope: !843, inlinedAt: !844)
!843 = distinct !DISubprogram(name: "from_elem<u8>", linkageName: "_RINvNtCsexYYUdYSQU6_5alloc3vec9from_elemhECshqpdr3wwzuw_13grep_searcher", scope: !405, file: !403, line: 3774, type: !14, scopeLine: 3774, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!844 = !DILocation(line: 333, column: 41, scope: !845)
!845 = distinct !DILexicalBlock(scope: !846, file: !386, line: 322, column: 9)
!846 = distinct !DILexicalBlock(scope: !794, file: !386, line: 316, column: 9)
!847 = !{!848, !850}
!848 = distinct !{!848, !849, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshqpdr3wwzuw_13grep_searcher: argument 0"}
!849 = distinct !{!849, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshqpdr3wwzuw_13grep_searcher"}
!850 = distinct !{!850, !851, !"_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECshqpdr3wwzuw_13grep_searcher: argument 0"}
!851 = distinct !{!851, !"_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECshqpdr3wwzuw_13grep_searcher"}
!852 = !DILocation(line: 290, column: 9, scope: !853, inlinedAt: !854)
!853 = distinct !DISubprogram(name: "alloc_zeroed", linkageName: "_RNvNtCsexYYUdYSQU6_5alloc5alloc12alloc_zeroed", scope: !44, file: !41, line: 284, type: !14, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!854 = distinct !DILocation(line: 302, column: 43, scope: !40, inlinedAt: !855)
!855 = distinct !DILocation(line: 424, column: 9, scope: !856, inlinedAt: !857)
!856 = distinct !DISubprogram(name: "alloc_impl", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc5allocNtB5_6Global10alloc_impl", scope: !43, file: !41, line: 423, type: !14, scopeLine: 423, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!857 = distinct !DILocation(line: 547, column: 14, scope: !858, inlinedAt: !859)
!858 = distinct !DISubprogram(name: "allocate_zeroed", linkageName: "_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator15allocate_zeroed", scope: !49, file: !41, line: 546, type: !28, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!859 = distinct !DILocation(line: 468, column: 40, scope: !831, inlinedAt: !833)
!860 = !DILocation(line: 470, column: 25, scope: !861, inlinedAt: !833)
!861 = distinct !DILexicalBlock(scope: !831, file: !69, line: 465, column: 9)
!862 = !DILocation(line: 470, column: 19, scope: !861, inlinedAt: !833)
!863 = !DILocation(line: 589, column: 25, scope: !864, inlinedAt: !835)
!864 = distinct !DILexicalBlock(scope: !834, file: !69, line: 589, column: 13)
!865 = !{!850}
!866 = !DILocation(line: 224, column: 16, scope: !867, inlinedAt: !870)
!867 = distinct !DILexicalBlock(scope: !868, file: !386, line: 224, column: 46)
!868 = distinct !DILexicalBlock(scope: !869, file: !386, line: 219, column: 9)
!869 = distinct !DISubprogram(name: "line_buffer", linkageName: "_RNvMs1_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB5_6Config11line_buffer", scope: !387, file: !386, line: 218, type: !14, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!870 = distinct !DILocation(line: 334, column: 51, scope: !845)
!871 = !DILocation(line: 225, column: 45, scope: !867, inlinedAt: !870)
!872 = !DILocation(line: 0, scope: !868, inlinedAt: !870)
!873 = !DILocation(line: 461, column: 12, scope: !831, inlinedAt: !874)
!874 = distinct !DILocation(line: 587, column: 15, scope: !834, inlinedAt: !875)
!875 = distinct !DILocation(line: 221, column: 20, scope: !836, inlinedAt: !876)
!876 = distinct !DILocation(line: 51, column: 31, scope: !838, inlinedAt: !877)
!877 = distinct !DILocation(line: 3775, column: 5, scope: !878, inlinedAt: !879)
!878 = distinct !DISubprogram(name: "from_elem<u8>", linkageName: "_RINvNtCsexYYUdYSQU6_5alloc3vec9from_elemhECshqpdr3wwzuw_13grep_searcher", scope: !405, file: !403, line: 3774, type: !14, scopeLine: 3774, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!879 = distinct !DILocation(line: 124, column: 18, scope: !880, inlinedAt: !882)
!880 = distinct !DISubprogram(name: "build", linkageName: "_RNvMs2_NtCshqpdr3wwzuw_13grep_searcher11line_bufferNtB5_17LineBufferBuilder5build", scope: !881, file: !397, line: 121, type: !14, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!881 = !DINamespace(name: "LineBufferBuilder", scope: !399)
!882 = distinct !DILocation(line: 234, column: 17, scope: !868, inlinedAt: !870)
!883 = !DILocation(line: 0, scope: !831, inlinedAt: !874)
!884 = !{!885, !887, !889, !891, !892, !894}
!885 = distinct !{!885, !886, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshqpdr3wwzuw_13grep_searcher: argument 0"}
!886 = distinct !{!886, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshqpdr3wwzuw_13grep_searcher"}
!887 = distinct !{!887, !888, !"_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECshqpdr3wwzuw_13grep_searcher: argument 0"}
!888 = distinct !{!888, !"_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECshqpdr3wwzuw_13grep_searcher"}
!889 = distinct !{!889, !890, !"_RNvMs2_NtCshqpdr3wwzuw_13grep_searcher11line_bufferNtB5_17LineBufferBuilder5build: argument 0"}
!890 = distinct !{!890, !"_RNvMs2_NtCshqpdr3wwzuw_13grep_searcher11line_bufferNtB5_17LineBufferBuilder5build"}
!891 = distinct !{!891, !890, !"_RNvMs2_NtCshqpdr3wwzuw_13grep_searcher11line_bufferNtB5_17LineBufferBuilder5build: argument 1"}
!892 = distinct !{!892, !893, !"_RNvMs1_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB5_6Config11line_buffer: argument 0"}
!893 = distinct !{!893, !"_RNvMs1_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB5_6Config11line_buffer"}
!894 = distinct !{!894, !893, !"_RNvMs1_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB5_6Config11line_buffer: argument 1"}
!895 = !DILocation(line: 290, column: 9, scope: !853, inlinedAt: !896)
!896 = distinct !DILocation(line: 302, column: 43, scope: !40, inlinedAt: !897)
!897 = distinct !DILocation(line: 424, column: 9, scope: !856, inlinedAt: !898)
!898 = distinct !DILocation(line: 547, column: 14, scope: !858, inlinedAt: !899)
!899 = distinct !DILocation(line: 468, column: 40, scope: !831, inlinedAt: !874)
!900 = !DILocation(line: 470, column: 25, scope: !861, inlinedAt: !874)
!901 = !DILocation(line: 470, column: 19, scope: !861, inlinedAt: !874)
!902 = !DILocation(line: 478, column: 9, scope: !903, inlinedAt: !874)
!903 = distinct !DILexicalBlock(scope: !861, file: !69, line: 470, column: 9)
!904 = !DILocation(line: 483, column: 5, scope: !832, inlinedAt: !874)
!905 = !DILocation(line: 589, column: 25, scope: !864, inlinedAt: !875)
!906 = !DILocation(line: 587, column: 15, scope: !834, inlinedAt: !875)
!907 = !DILocation(line: 317, column: 12, scope: !846)
!908 = !DILocation(line: 237, column: 15, scope: !909, inlinedAt: !911)
!909 = distinct !DISubprogram(name: "as_byte", linkageName: "_RNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB5_14LineTerminator7as_byte", scope: !910, file: !798, line: 236, type: !14, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!910 = !DINamespace(name: "LineTerminator", scope: !801)
!911 = distinct !DILocation(line: 221, column: 45, scope: !868, inlinedAt: !870)
!912 = !DILocation(line: 237, column: 9, scope: !909, inlinedAt: !911)
!913 = !DILocation(line: 164, column: 9, scope: !914, inlinedAt: !915)
!914 = distinct !DISubprogram(name: "line_terminator", linkageName: "_RNvMs2_NtCshqpdr3wwzuw_13grep_searcher11line_bufferNtB5_17LineBufferBuilder15line_terminator", scope: !881, file: !397, line: 160, type: !14, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!915 = distinct !DILocation(line: 221, column: 14, scope: !868, inlinedAt: !870)
!916 = !DILocation(line: 200, column: 9, scope: !917, inlinedAt: !918)
!917 = distinct !DISubprogram(name: "binary_detection", linkageName: "_RNvMs2_NtCshqpdr3wwzuw_13grep_searcher11line_bufferNtB5_17LineBufferBuilder16binary_detection", scope: !881, file: !397, line: 196, type: !14, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!918 = distinct !DILocation(line: 222, column: 14, scope: !868, inlinedAt: !870)
!919 = !DILocation(line: 588, column: 16, scope: !834, inlinedAt: !875)
!920 = !DILocation(line: 330, column: 9, scope: !845)
!921 = !DILocation(line: 122, column: 9, scope: !880, inlinedAt: !882)
!922 = !DILocation(line: 337, column: 6, scope: !794)
!923 = !DILocation(line: 175, column: 14, scope: !90, inlinedAt: !924)
!924 = distinct !DILocation(line: 321, column: 22, scope: !92, inlinedAt: !925)
!925 = distinct !DILocation(line: 436, column: 9, scope: !94, inlinedAt: !926)
!926 = distinct !DILocation(line: 554, column: 23, scope: !96, inlinedAt: !927)
!927 = distinct !DILocation(line: 876, column: 28, scope: !73, inlinedAt: !928)
!928 = distinct !DILocation(line: 425, column: 29, scope: !76, inlinedAt: !929)
!929 = distinct !DILocation(line: 848, column: 1, scope: !79, inlinedAt: !930)
!930 = distinct !DILocation(line: 848, column: 1, scope: !83, inlinedAt: !931)
!931 = distinct !DILocation(line: 848, column: 1, scope: !932, inlinedAt: !933)
!932 = distinct !DISubprogram(name: "drop_glue<core::cell::UnsafeCell<alloc::vec::Vec<u8, alloc::alloc::Global>>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECshqpdr3wwzuw_13grep_searcher", scope: !81, file: !80, line: 848, type: !28, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!933 = distinct !DILocation(line: 848, column: 1, scope: !934, inlinedAt: !935)
!934 = distinct !DISubprogram(name: "drop_glue<core::cell::RefCell<alloc::vec::Vec<u8, alloc::alloc::Global>>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECshqpdr3wwzuw_13grep_searcher", scope: !81, file: !80, line: 848, type: !28, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!935 = distinct !DILocation(line: 336, column: 9, scope: !845)
!936 = !DILocation(line: 315, column: 5, scope: !794)
!937 = distinct !DISubprogram(name: "set_binary_detection", linkageName: "_RNvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB5_8Searcher20set_binary_detection", scope: !938, file: !386, line: 798, type: !14, scopeLine: 798, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!938 = !DINamespace(name: "Searcher", scope: !388)
!939 = !DILocation(line: 799, column: 9, scope: !937)
!940 = !DILocation(line: 1259, column: 33, scope: !941, inlinedAt: !945)
!941 = distinct !DISubprogram(name: "try_borrow_mut<grep_searcher::line_buffer::LineBuffer>", linkageName: "_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellNtNtCshqpdr3wwzuw_13grep_searcher11line_buffer10LineBufferE14try_borrow_mutBN_", scope: !943, file: !942, line: 1258, type: !14, scopeLine: 1258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!942 = !DIFile(filename: "library/core/src/cell.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "44b0a3368748e42be0584286ed670ffa")
!943 = !DINamespace(name: "RefCell", scope: !944)
!944 = !DINamespace(name: "cell", scope: !13)
!945 = !DILocation(line: 1225, column: 20, scope: !946, inlinedAt: !947)
!946 = distinct !DISubprogram(name: "borrow_mut<grep_searcher::line_buffer::LineBuffer>", linkageName: "_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellNtNtCshqpdr3wwzuw_13grep_searcher11line_buffer10LineBufferE10borrow_mutBN_", scope: !943, file: !942, line: 1224, type: !14, scopeLine: 1224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!947 = !DILocation(line: 800, column: 26, scope: !937)
!948 = !DILocation(line: 558, column: 18, scope: !949, inlinedAt: !951)
!949 = distinct !DISubprogram(name: "get<isize>", linkageName: "_RNvMs8_NtCskKLDkoKarTP_4core4cellINtB5_4CelliE3getCshqpdr3wwzuw_13grep_searcher", scope: !950, file: !942, line: 555, type: !14, scopeLine: 555, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!950 = !DINamespace(name: "Cell", scope: !944)
!951 = !DILocation(line: 2069, column: 22, scope: !952, inlinedAt: !954)
!952 = distinct !DISubprogram(name: "new", linkageName: "_RNvMsP_NtCskKLDkoKarTP_4core4cellNtB5_12BorrowRefMut3new", scope: !953, file: !942, line: 2064, type: !14, scopeLine: 2064, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!953 = !DINamespace(name: "BorrowRefMut", scope: !944)
!954 = !DILocation(line: 1259, column: 15, scope: !941, inlinedAt: !945)
!955 = !DILocation(line: 2069, column: 9, scope: !952, inlinedAt: !954)
!956 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!957 = !DILocation(line: 331, column: 9, scope: !958, inlinedAt: !959)
!958 = distinct !DISubprogram(name: "set_binary_detection", linkageName: "_RNvMs4_NtCshqpdr3wwzuw_13grep_searcher11line_bufferNtB5_10LineBuffer20set_binary_detection", scope: !398, file: !397, line: 330, type: !14, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!959 = !DILocation(line: 800, column: 39, scope: !937)
!960 = !DILocation(line: 801, column: 6, scope: !937)
!961 = !DILocation(line: 1227, column: 25, scope: !962, inlinedAt: !947)
!962 = distinct !DILexicalBlock(scope: !946, file: !942, line: 1227, column: 13)
!963 = distinct !DISubprogram(name: "slice_needs_transcoding", linkageName: "_RNvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB5_8Searcher23slice_needs_transcoding", scope: !938, file: !386, line: 824, type: !14, scopeLine: 824, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!964 = !DILocation(line: 634, column: 18, scope: !965, inlinedAt: !969)
!965 = !DILexicalBlockFile(scope: !966, file: !140, discriminator: 0)
!966 = distinct !DILexicalBlock(scope: !968, file: !967, line: 434, column: 9)
!967 = !DIFile(filename: "library/core/src/macros/mod.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "2f18ff6bcbb078f77779c8f14def2c67")
!968 = distinct !DISubprogram(name: "is_some<grep_searcher::searcher::Encoding>", linkageName: "_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtCshqpdr3wwzuw_13grep_searcher8searcher8EncodingE7is_someBL_", scope: !141, file: !140, line: 633, type: !14, scopeLine: 633, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!969 = !DILocation(line: 825, column: 30, scope: !963)
!970 = !DILocation(line: 825, column: 9, scope: !963)
!971 = !DILocation(line: 826, column: 17, scope: !963)
!972 = !DILocation(line: 1037, column: 9, scope: !973, inlinedAt: !974)
!973 = distinct !DISubprogram(name: "slice_has_bom", linkageName: "_RNvNtCshqpdr3wwzuw_13grep_searcher8searcher13slice_has_bom", scope: !388, file: !386, line: 1036, type: !14, scopeLine: 1036, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!974 = distinct !DILocation(line: 826, column: 45, scope: !963)
!975 = !{!976}
!976 = distinct !{!976, !977, !"_RNvNtCshqpdr3wwzuw_13grep_searcher8searcher13slice_has_bom: argument 0"}
!977 = distinct !{!977, !"_RNvNtCshqpdr3wwzuw_13grep_searcher8searcher13slice_has_bom"}
!978 = !DILocation(line: 2635, column: 9, scope: !979, inlinedAt: !981)
!979 = distinct !DILexicalBlock(scope: !980, file: !454, line: 2634, column: 9)
!980 = distinct !DISubprogram(name: "starts_with<u8>", linkageName: "_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCshqpdr3wwzuw_13grep_searcher", scope: !455, file: !454, line: 2630, type: !14, scopeLine: 2630, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!981 = distinct !DILocation(line: 2892, column: 19, scope: !982, inlinedAt: !986)
!982 = distinct !DISubprogram(name: "for_bom", linkageName: "_RNvMCsbRtu51WrwYN_11encoding_rsNtB2_8Encoding7for_bom", scope: !984, file: !983, line: 2891, type: !14, scopeLine: 2891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!983 = !DIFile(filename: "src/lib.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/encoding_rs-0.8.35", checksumkind: CSK_MD5, checksum: "4a61c65bb416df45c94f81e4c0399b7b")
!984 = !DINamespace(name: "Encoding", scope: !985)
!985 = !DINamespace(name: "encoding_rs", scope: null)
!986 = distinct !DILocation(line: 1037, column: 21, scope: !973, inlinedAt: !974)
!987 = !DILocation(line: 157, column: 13, scope: !988, inlinedAt: !993)
!988 = distinct !DILexicalBlock(scope: !990, file: !989, line: 156, column: 13)
!989 = !DIFile(filename: "library/core/src/slice/cmp.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "1d6518c072587d593bede5b5773a8b8b")
!990 = distinct !DISubprogram(name: "equal_same_length<u8, u8>", linkageName: "_RNvXs3_NtNtCskKLDkoKarTP_4core5slice3cmphINtB5_14SlicePartialEqhE17equal_same_lengthCshqpdr3wwzuw_13grep_searcher", scope: !991, file: !989, line: 151, type: !14, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!991 = !DINamespace(name: "{impl#5}", scope: !992)
!992 = !DINamespace(name: "cmp", scope: !279)
!993 = distinct !DILocation(line: 24, column: 22, scope: !994, inlinedAt: !997)
!994 = distinct !DILexicalBlock(scope: !995, file: !989, line: 20, column: 9)
!995 = distinct !DISubprogram(name: "eq<u8, u8>", linkageName: "_RNvXNtNtCskKLDkoKarTP_4core5slice3cmpShNtNtB6_3cmp9PartialEq2eqCshqpdr3wwzuw_13grep_searcher", scope: !996, file: !989, line: 19, type: !14, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!996 = !DINamespace(name: "{impl#0}", scope: !992)
!997 = distinct !DILocation(line: 2399, column: 13, scope: !998, inlinedAt: !1000)
!998 = distinct !DISubprogram(name: "eq<[u8], [u8]>", linkageName: "_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRShNtB7_9PartialEq2eqCshqpdr3wwzuw_13grep_searcher", scope: !999, file: !216, line: 2398, type: !14, scopeLine: 2398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!999 = !DINamespace(name: "{impl#9}", scope: !573)
!1000 = distinct !DILocation(line: 2635, column: 28, scope: !979, inlinedAt: !981)
!1001 = !DILocation(line: 2892, column: 12, scope: !982, inlinedAt: !986)
!1002 = !DILocation(line: 2635, column: 9, scope: !979, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 2894, column: 26, scope: !982, inlinedAt: !986)
!1004 = !DILocation(line: 157, column: 13, scope: !988, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 24, column: 22, scope: !994, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 2399, column: 13, scope: !998, inlinedAt: !1007)
!1007 = distinct !DILocation(line: 2635, column: 28, scope: !979, inlinedAt: !1003)
!1008 = !DILocation(line: 2894, column: 19, scope: !982, inlinedAt: !986)
!1009 = !DILocation(line: 157, column: 13, scope: !988, inlinedAt: !1010)
!1010 = distinct !DILocation(line: 24, column: 22, scope: !994, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 2399, column: 13, scope: !998, inlinedAt: !1012)
!1012 = distinct !DILocation(line: 2635, column: 28, scope: !979, inlinedAt: !1013)
!1013 = distinct !DILocation(line: 2896, column: 26, scope: !982, inlinedAt: !986)
!1014 = !DILocation(line: 2896, column: 19, scope: !982, inlinedAt: !986)
!1015 = !{!1016, !976}
!1016 = distinct !{!1016, !1017, !"_RNvMCsbRtu51WrwYN_11encoding_rsNtB2_8Encoding7for_bom: argument 0"}
!1017 = distinct !{!1017, !"_RNvMCsbRtu51WrwYN_11encoding_rsNtB2_8Encoding7for_bom"}
!1018 = !DILocation(line: 1039, column: 27, scope: !1019, inlinedAt: !974)
!1019 = distinct !DILexicalBlock(scope: !973, file: !386, line: 1039, column: 9)
!1020 = !{!"address", !"read_provenance"}
!1021 = !DILocation(line: 4001, column: 24, scope: !1022, inlinedAt: !1023)
!1022 = distinct !DISubprogram(name: "atomic_load<usize, false>", linkageName: "_RINvNtNtCskKLDkoKarTP_4core4sync6atomic11atomic_loadjKb0_ECshqpdr3wwzuw_13grep_searcher", scope: !330, file: !329, line: 3997, type: !28, scopeLine: 3997, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!1023 = distinct !DILocation(line: 2921, column: 26, scope: !1024, inlinedAt: !1025)
!1024 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs16_NtNtCskKLDkoKarTP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !334, file: !329, line: 2919, type: !14, scopeLine: 2919, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!1025 = distinct !DILocation(line: 1429, column: 50, scope: !1026, inlinedAt: !1029)
!1026 = distinct !DISubprogram(name: "max_level", linkageName: "_RNvCs40PPaThNnQP_3log9max_level", scope: !1028, file: !1027, line: 1422, type: !14, scopeLine: 1422, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!1027 = !DIFile(filename: "src/lib.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/log-0.4.33", checksumkind: CSK_MD5, checksum: "af75e801eb24ad96be9137d93ec1fdc0")
!1028 = !DINamespace(name: "log", scope: null)
!1029 = distinct !DILocation(line: 1041, column: 5, scope: !1030, inlinedAt: !974)
!1030 = !DILexicalBlockFile(scope: !1031, file: !386, discriminator: 2)
!1031 = !DILexicalBlockFile(scope: !1032, file: !386, discriminator: 0)
!1032 = distinct !DILexicalBlock(scope: !1034, file: !1033, line: 136, column: 9)
!1033 = !DIFile(filename: "src/macros.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/log-0.4.33", checksumkind: CSK_MD5, checksum: "38c1df329c9fad2a5c7529f548c5f2db")
!1034 = distinct !DILexicalBlock(scope: !973, file: !386, line: 1037, column: 5)
!1035 = !DILocation(line: 1429, column: 14, scope: !1026, inlinedAt: !1029)
!1036 = !DILocation(line: 532, column: 9, scope: !1037, inlinedAt: !1039)
!1037 = distinct !DISubprogram(name: "is_le", linkageName: "_RNvMNtCskKLDkoKarTP_4core3cmpNtB2_8Ordering5is_le", scope: !1038, file: !216, line: 531, type: !14, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!1038 = !DINamespace(name: "Ordering", scope: !218)
!1039 = distinct !DILocation(line: 250, column: 5, scope: !1040, inlinedAt: !1046)
!1040 = !DILexicalBlockFile(scope: !1042, file: !1041, discriminator: 2)
!1041 = !DIFile(filename: "library/core/src/ops/function.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "5fd63130e402556f5b2ba11cb847a9a0")
!1042 = distinct !DISubprogram(name: "call_once<fn(core::cmp::Ordering) -> bool, (core::cmp::Ordering)>", linkageName: "_RNvYNvMNtCskKLDkoKarTP_4core3cmpNtB5_8Ordering5is_leINtNtNtB7_3ops8function6FnOnceTBu_EE9call_onceCshqpdr3wwzuw_13grep_searcher", scope: !1043, file: !1041, line: 250, type: !14, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!1043 = !DINamespace(name: "FnOnce", scope: !1044)
!1044 = !DINamespace(name: "function", scope: !1045)
!1045 = !DINamespace(name: "ops", scope: !13)
!1046 = distinct !DILocation(line: 662, column: 24, scope: !1047, inlinedAt: !1050)
!1047 = !DILexicalBlockFile(scope: !1048, file: !140, discriminator: 2)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !140, line: 662, column: 13)
!1049 = distinct !DISubprogram(name: "is_some_and<core::cmp::Ordering, fn(core::cmp::Ordering) -> bool>", linkageName: "_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtB5_3cmp8OrderingE11is_some_andNvMBK_BI_5is_leECshqpdr3wwzuw_13grep_searcher", scope: !141, file: !140, line: 659, type: !14, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!1050 = distinct !DILocation(line: 1489, column: 33, scope: !1051, inlinedAt: !1054)
!1051 = !DILexicalBlockFile(scope: !1052, file: !216, discriminator: 2)
!1052 = distinct !DISubprogram(name: "le<log::Level, log::LevelFilter>", linkageName: "_RNvYNtCs40PPaThNnQP_3log5LevelINtNtCskKLDkoKarTP_4core3cmp10PartialOrdNtB4_11LevelFilterE2leCshqpdr3wwzuw_13grep_searcher", scope: !1053, file: !216, line: 1488, type: !14, scopeLine: 1488, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!1053 = !DINamespace(name: "PartialOrd", scope: !218)
!1054 = distinct !DILocation(line: 1041, column: 5, scope: !1055, inlinedAt: !974)
!1055 = !DILexicalBlockFile(scope: !1031, file: !386, discriminator: 4)
!1056 = !DILocation(line: 1041, column: 5, scope: !1031, inlinedAt: !974)
!1057 = !DILocation(line: 1041, column: 5, scope: !1058, inlinedAt: !974)
!1058 = !DILexicalBlockFile(scope: !1059, file: !386, discriminator: 0)
!1059 = distinct !DILexicalBlock(scope: !1032, file: !1033, line: 140, column: 17)
!1060 = !DILocation(line: 83, column: 17, scope: !1061, inlinedAt: !1066)
!1061 = distinct !DILexicalBlock(scope: !1063, file: !1062, line: 70, column: 5)
!1062 = !DIFile(filename: "src/__private_api.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/log-0.4.33", checksumkind: CSK_MD5, checksum: "87fb8f0d0644a2cb9031ed55b91766c4")
!1063 = distinct !DILexicalBlock(scope: !1064, file: !1062, line: 64, column: 3)
!1064 = distinct !DISubprogram(name: "log_impl<log::__private_api::GlobalLogger>", linkageName: "_RINvNtCs40PPaThNnQP_3log13___private_api8log_implNtB2_12GlobalLoggerECshqpdr3wwzuw_13grep_searcher", scope: !1065, file: !1062, line: 58, type: !28, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!1065 = !DINamespace(name: "__private_api", scope: !1028)
!1066 = distinct !DILocation(line: 96, column: 5, scope: !1067, inlinedAt: !1068)
!1067 = distinct !DISubprogram(name: "log<(), log::__private_api::GlobalLogger>", linkageName: "_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECshqpdr3wwzuw_13grep_searcher", scope: !1065, file: !1062, line: 86, type: !14, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!1068 = distinct !DILocation(line: 1041, column: 5, scope: !1031, inlinedAt: !974)
!1069 = !{!1070, !1072, !976}
!1070 = distinct !{!1070, !1071, !"_RINvNtCs40PPaThNnQP_3log13___private_api8log_implNtB2_12GlobalLoggerECshqpdr3wwzuw_13grep_searcher: argument 0"}
!1071 = distinct !{!1071, !"_RINvNtCs40PPaThNnQP_3log13___private_api8log_implNtB2_12GlobalLoggerECshqpdr3wwzuw_13grep_searcher"}
!1072 = distinct !{!1072, !1073, !"_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECshqpdr3wwzuw_13grep_searcher: argument 0"}
!1073 = distinct !{!1073, !"_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECshqpdr3wwzuw_13grep_searcher"}
!1074 = !DILocation(line: 867, column: 10, scope: !1075, inlinedAt: !1077)
!1075 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXsM_Cs40PPaThNnQP_3logNtB5_6RecordNtNtCskKLDkoKarTP_4core5clone5Clone5clone", scope: !1076, file: !1027, line: 867, type: !14, scopeLine: 867, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!1076 = !DINamespace(name: "{impl#50}", scope: !1028)
!1077 = distinct !DILocation(line: 1135, column: 21, scope: !1078, inlinedAt: !1080)
!1078 = distinct !DISubprogram(name: "build", linkageName: "_RNvMsf_Cs40PPaThNnQP_3logNtB5_13RecordBuilder5build", scope: !1079, file: !1027, line: 1134, type: !14, scopeLine: 1134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!1079 = !DINamespace(name: "RecordBuilder", scope: !1028)
!1080 = distinct !DILocation(line: 83, column: 25, scope: !1061, inlinedAt: !1066)
!1081 = !DILocation(line: 83, column: 12, scope: !1061, inlinedAt: !1066)
!1082 = !DILocation(line: 83, column: 33, scope: !1061, inlinedAt: !1066)
!1083 = !DILocation(line: 2604, column: 9, scope: !1084, inlinedAt: !1085)
!1084 = distinct !DISubprogram(name: "contains<&encoding_rs::Encoding>", linkageName: "_RNvMNtCskKLDkoKarTP_4core5sliceSRNtCsbRtu51WrwYN_11encoding_rs8Encoding8containsCshqpdr3wwzuw_13grep_searcher", scope: !455, file: !454, line: 2600, type: !14, scopeLine: 2600, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!1085 = distinct !DILocation(line: 1043, column: 10, scope: !1034, inlinedAt: !974)
!1086 = !{!1087}
!1087 = distinct !{!1087, !1088, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRNtCsbRtu51WrwYN_11encoding_rs8EncodingENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2l_13SliceContains14slice_contains0ECshqpdr3wwzuw_13grep_searcher: argument 1"}
!1088 = distinct !{!1088, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRNtCsbRtu51WrwYN_11encoding_rs8EncodingENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2l_13SliceContains14slice_contains0ECshqpdr3wwzuw_13grep_searcher"}
!1089 = !{!1090, !976}
!1090 = distinct !{!1090, !1088, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRNtCsbRtu51WrwYN_11encoding_rs8EncodingENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2l_13SliceContains14slice_contains0ECshqpdr3wwzuw_13grep_searcher: argument 0"}
!1091 = !DILocation(line: 1042, column: 6, scope: !1034, inlinedAt: !974)
!1092 = !DILocation(line: 1042, column: 29, scope: !1034, inlinedAt: !974)
!1093 = !DILocation(line: 3453, column: 9, scope: !1094, inlinedAt: !1096)
!1094 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXs_CsbRtu51WrwYN_11encoding_rsNtB4_8EncodingNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq", scope: !1095, file: !983, line: 3452, type: !14, scopeLine: 3452, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!1095 = !DINamespace(name: "{impl#1}", scope: !985)
!1096 = distinct !DILocation(line: 2399, column: 13, scope: !1097, inlinedAt: !1098)
!1097 = distinct !DISubprogram(name: "eq<encoding_rs::Encoding, encoding_rs::Encoding>", linkageName: "_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtCsbRtu51WrwYN_11encoding_rs8EncodingNtB7_9PartialEq2eqCshqpdr3wwzuw_13grep_searcher", scope: !999, file: !216, line: 2398, type: !28, scopeLine: 2398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!1098 = distinct !DILocation(line: 391, column: 26, scope: !1099, inlinedAt: !1102)
!1099 = distinct !DISubprogram(name: "{closure#0}<&encoding_rs::Encoding>", linkageName: "_RNCNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpRNtCsbRtu51WrwYN_11encoding_rs8EncodingNtB7_13SliceContains14slice_contains0Cshqpdr3wwzuw_13grep_searcher", scope: !1100, file: !989, line: 391, type: !28, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!1100 = !DINamespace(name: "slice_contains", scope: !1101)
!1101 = !DINamespace(name: "{impl#17}", scope: !992)
!1102 = distinct !DILocation(line: 327, column: 24, scope: !1103, inlinedAt: !1108)
!1103 = distinct !DILexicalBlock(scope: !1105, file: !1104, line: 326, column: 49)
!1104 = !DIFile(filename: "library/core/src/slice/iter/macros.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "526307389b7550baea9ff75b5731c6e9")
!1105 = distinct !DISubprogram(name: "any<&encoding_rs::Encoding, core::slice::cmp::{impl#17}::slice_contains::{closure_env#0}<&encoding_rs::Encoding>>", linkageName: "_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRNtCsbRtu51WrwYN_11encoding_rs8EncodingENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2l_13SliceContains14slice_contains0ECshqpdr3wwzuw_13grep_searcher", scope: !1106, file: !1104, line: 321, type: !14, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!1106 = !DINamespace(name: "{impl#171}", scope: !1107)
!1107 = !DINamespace(name: "iter", scope: !279)
!1108 = distinct !DILocation(line: 391, column: 18, scope: !1109, inlinedAt: !1110)
!1109 = distinct !DISubprogram(name: "slice_contains<&encoding_rs::Encoding>", linkageName: "_RNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpRNtCsbRtu51WrwYN_11encoding_rs8EncodingNtB5_13SliceContains14slice_containsCshqpdr3wwzuw_13grep_searcher", scope: !1101, file: !989, line: 390, type: !28, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!1110 = distinct !DILocation(line: 2604, column: 9, scope: !1084, inlinedAt: !1085)
!1111 = !DILocation(line: 327, column: 24, scope: !1103, inlinedAt: !1108)
!1112 = !DILocation(line: 1042, column: 52, scope: !1034, inlinedAt: !974)
!1113 = !DILocation(line: 0, scope: !973, inlinedAt: !974)
!1114 = !DILocation(line: 1044, column: 1, scope: !973, inlinedAt: !974)
!1115 = !DILocation(line: 826, column: 45, scope: !963)
end_hunk_1
