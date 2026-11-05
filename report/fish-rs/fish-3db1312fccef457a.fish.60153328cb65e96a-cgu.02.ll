Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.02?download=true
inline.NumInlined: 2281
inline.NumDeleted: 862
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str:bb.a
  %i.ar = load ptr, ptr %i.f, align 8, !alias.scope !3973, !nonnull !10, !noundef !10
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ao
  store i32 %spec.select.i.ph.i.i.i.i, ptr %i.as, align 4, !noalias !3968
  %i.at = add i64 %i.ao, 1
  store i64 %i.at, ptr %i.e, align 8, !alias.scope !3973
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.1.ph.i.i.i.i, %i.a
  br i1 %.not.i.i.i.i.i, label %_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String8push_streECs8frGy5WneL6_4fish.exit, label %bb.b

_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String8push_streECs8frGy5WneL6_4fish.exit: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i, %bb.a
  ret i1 false
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtB5_14SlicePartialEqBC_E17equal_same_lengthCs8frGy5WneL6_4fish(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #15 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neCs8frGy5WneL6_4fish.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neCs8frGy5WneL6_4fish.exit
  %i.b = add nuw i64 %.sroa.01.09, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neCs8frGy5WneL6_4fish.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.09 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.09 ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.sroa.01.09 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %.val5 = load i64, ptr %i.e, align 8, !noundef !10 ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 16
  %.val7 = load i64, ptr %i.f, align 8, !noundef !10
  %i.g = icmp eq i64 %.val5, %.val7
  br i1 %i.g, label %_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neCs8frGy5WneL6_4fish.exit, label %_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neCs8frGy5WneL6_4fish.exit.thread

_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neCs8frGy5WneL6_4fish.exit: ; preds = %.lr.ph
  %i.h = getelementptr i8, ptr %i.d, i64 8
  %.val6 = load ptr, ptr %i.h, align 8, !nonnull !10, !noundef !10
  %i.i = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.i, align 8, !nonnull !10, !noundef !10
  %i.j = shl nuw i64 %.val5, 2
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val6, i64 %i.j)
  %.not = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %.not, label %bb.b, label %_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neCs8frGy5WneL6_4fish.exit.thread

_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neCs8frGy5WneL6_4fish.exit.thread: ; preds = %bb.b, %_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neCs8frGy5WneL6_4fish.exit, %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph ], [ false, %_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neCs8frGy5WneL6_4fish.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtB5_14SlicePartialEqRNtNtBG_6utfstr8Utf32StrE17equal_same_lengthCs8frGy5WneL6_4fish(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #15 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqRNtNtB6_6utfstr8Utf32StrE2neCs8frGy5WneL6_4fish.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqRNtNtB6_6utfstr8Utf32StrE2neCs8frGy5WneL6_4fish.exit
  %i.b = add nuw i64 %.sroa.01.09, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqRNtNtB6_6utfstr8Utf32StrE2neCs8frGy5WneL6_4fish.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.09 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.09 ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.01.09 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %.val5 = load i64, ptr %i.e, align 8, !noundef !10 ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val7 = load i64, ptr %i.f, align 8, !noundef !10
  %i.g = icmp eq i64 %.val5, %.val7
  br i1 %i.g, label %_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqRNtNtB6_6utfstr8Utf32StrE2neCs8frGy5WneL6_4fish.exit, label %_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqRNtNtB6_6utfstr8Utf32StrE2neCs8frGy5WneL6_4fish.exit.thread

_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqRNtNtB6_6utfstr8Utf32StrE2neCs8frGy5WneL6_4fish.exit: ; preds = %.lr.ph
  %.val6 = load ptr, ptr %i.d, align 8, !nonnull !10, !noundef !10
  %i.h = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.h, align 8, !nonnull !10, !noundef !10
  %i.i = shl nuw i64 %.val5, 2
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val6, i64 %i.i)
  %.not = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not, label %bb.b, label %_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqRNtNtB6_6utfstr8Utf32StrE2neCs8frGy5WneL6_4fish.exit.thread

_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqRNtNtB6_6utfstr8Utf32StrE2neCs8frGy5WneL6_4fish.exit.thread: ; preds = %bb.b, %_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqRNtNtB6_6utfstr8Utf32StrE2neCs8frGy5WneL6_4fish.exit, %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph ], [ false, %_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqRNtNtB6_6utfstr8Utf32StrE2neCs8frGy5WneL6_4fish.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtNtCse7JGOylGlDZ_3nix5errno6constsNtB5_5ErrnoNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
switch.lookup:
  %i.a = load i32, ptr %0, align 4, !range !36, !noundef !10
  %trunc = trunc nuw i32 %i.a to i8
  %switch.tableidx = xor i8 %trunc, -128          ; 2 uses
  %i.b = zext i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs2_NtNtCse7JGOylGlDZ_3nix5errno6constsNtB5_5ErrnoNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext i8 %switch.tableidx to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs2_NtNtCse7JGOylGlDZ_3nix5errno6constsNtB5_5ErrnoNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.373, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtCs1HV6ixfL8cZ_11fish_printf11printf_implNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !range !37, !noundef !10
  switch i8 %i.b, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @619, i64 noundef 15)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @620, i64 noundef 10)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @621, i64 noundef 8)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @622, i64 noundef 10)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @623, i64 noundef 8)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.h, ptr %i.a, align 8
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @625, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @624)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ %i.f, %bb.e ], [ %i.g, %bb.f ], [ %i.i, %bb.g ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 1, 2147483648) i64 @_RNvXs3_NtCs8frGy5WneL6_4fish6signaljINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9RawSignalE4from(i32 noundef range(i32 1, 0) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = icmp sgt i32 %0, -1
  br i1 %i.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3976
  store i8 3, ptr %i.a, align 1, !noalias !3976
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @174, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @626) #53, !noalias !3976
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  %i.c = zext nneg i32 %0 to i64
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator9size_hintBV_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #11 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 48                  ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !3979
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !3979
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !3979
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_3KeyE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.lr.ph.i:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 13 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 5 uses
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4000)
  %i.h = icmp eq i32 %.sroa.0.0.extract.trunc, 45
  br i1 %i.h, label %.loopexit.i, label %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader

_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader: ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4002)
  switch i32 %.sroa.0.0.extract.trunc, label %bb.a [
    i32 44, label %.loopexit.i
    i32 62720, label %.loopexit.i.fold.split
    i32 62721, label %.loopexit.i.fold.split41.a
    i32 62722, label %.loopexit.i.fold.split42.a
    i32 62723, label %.loopexit.i.fold.split43.a
    i32 62724, label %.loopexit.i.fold.split44.a
    i32 62725, label %.loopexit.i.fold.split45.a
    i32 62726, label %.loopexit.i.fold.split46.a
    i32 62727, label %.loopexit.i.fold.split47.a
    i32 62728, label %.loopexit.i.fold.split48.a
    i32 62729, label %.loopexit.i.fold.split49.a
    i32 62730, label %.loopexit.i.fold.split50.a
    i32 62731, label %.loopexit.i.fold.split51.a
    i32 62732, label %.loopexit.i.fold.split52.a
    i32 62733, label %.loopexit.i.fold.split53.a
    i32 62734, label %.loopexit.i.fold.split54.a
    i32 62735, label %.loopexit.i.fold.split55.a
    i32 62736, label %.loopexit.i.fold.split56
  ]

bb.a:                                             ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  store i64 -1, ptr %i.g, align 8, !alias.scope !4000
  %i.i = invoke noundef i32 @_RNvNtCs8frGy5WneL6_4fish3key12function_key(i8 noundef 1)
          to label %.noexc.i unwind label %bb.p, !noalias !4003

.loopexit.i.fold.split:                           ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split41.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split42.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split43.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split44.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split45.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split46.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split47.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split48.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split49.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split50.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split51.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split52.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split53.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split54.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split55.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split56:                         ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader, %.loopexit.i.fold.split56, %.loopexit.i.fold.split55.a, %.loopexit.i.fold.split54.a, %.loopexit.i.fold.split53.a, %.loopexit.i.fold.split52.a, %.loopexit.i.fold.split51.a, %.loopexit.i.fold.split50.a, %.loopexit.i.fold.split49.a, %.loopexit.i.fold.split48.a, %.loopexit.i.fold.split47.a, %.loopexit.i.fold.split46.a, %.loopexit.i.fold.split45.a, %.loopexit.i.fold.split44.a, %.loopexit.i.fold.split43.a, %.loopexit.i.fold.split42.a, %.loopexit.i.fold.split41.a, %.loopexit.i.fold.split, %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.lr.ph.i
  %.lcssa10.i = phi ptr [ @651, %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.lr.ph.i ], [ getelementptr inbounds nuw (i8, ptr @651, i64 24), %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader ], [ getelementptr inbounds nuw (i8, ptr @651, i64 408), %.loopexit.i.fold.split55.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 48), %.loopexit.i.fold.split ], [ getelementptr inbounds nuw (i8, ptr @651, i64 72), %.loopexit.i.fold.split41.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 96), %.loopexit.i.fold.split42.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 120), %.loopexit.i.fold.split43.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 144), %.loopexit.i.fold.split44.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 168), %.loopexit.i.fold.split45.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 192), %.loopexit.i.fold.split46.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 216), %.loopexit.i.fold.split47.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 240), %.loopexit.i.fold.split48.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 264), %.loopexit.i.fold.split49.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 288), %.loopexit.i.fold.split50.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 312), %.loopexit.i.fold.split51.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 336), %.loopexit.i.fold.split52.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 360), %.loopexit.i.fold.split53.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 384), %.loopexit.i.fold.split54.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 432), %.loopexit.i.fold.split56 ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.lcssa10.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !4002, !noalias !4004, !noundef !10 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.lcssa10.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !4002, !noalias !4004, !nonnull !10, !align !31, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4005
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.k, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !4005
  %i.n = load i64, ptr %i.e, align 8, !range !12, !noalias !4005, !noundef !10
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !22, !noalias !4005, !noundef !10 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.o, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %.loopexit.i
  %i.s = load i64, ptr %i.r, align 8, !noalias !4005
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #49, !noalias !4005
  unreachable

bb.c:                                             ; preds = %.loopexit.i
  %i.t = load ptr, ptr %i.r, align 8, !noalias !4005, !nonnull !10, !noundef !10 ; 2 uses
  %i.u = icmp ule i64 %i.k, %i.q
  tail call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4005
  %.not.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = shl nuw nsw i64 %i.k, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.t, ptr nonnull readonly align 4 %i.m, i64 %i.v, i1 false), !noalias !4006
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit.thread: ; preds = %bb.c, %bb.d
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.t, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !4007
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.k, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !4007
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4009)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !alias.scope !4003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  br label %bb.r

.noexc.i:                                         ; preds = %bb.a
  %i.w = invoke noundef i32 @_RNvNtCs8frGy5WneL6_4fish3key12function_key(i8 noundef 12)
          to label %.noexc2.i unwind label %bb.p, !noalias !4003

.noexc2.i:                                        ; preds = %.noexc.i
  %.not.i.i.i12 = icmp samesign ule i32 %i.i, %.sroa.0.0.extract.trunc
  %i.x = icmp samesign uge i32 %i.w, %.sroa.0.0.extract.trunc
  %or.cond.i.i = select i1 %.not.i.i.i12, i1 %i.x, i1 false
  br i1 %or.cond.i.i, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit.thread29

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit.thread29: ; preds = %.noexc2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  br label %bb.s

bb.e:                                             ; preds = %.noexc2.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4010
  store i64 0, ptr %i.d, align 8, !noalias !4010
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !4010
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !noalias !4010
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4010
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4010
  %i.y = invoke noundef i32 @_RNvNtCs8frGy5WneL6_4fish3key12function_key(i8 noundef 1)
          to label %bb.g unwind label %bb.f, !noalias !4010 ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.k, %bb.f
  %.pn.i.i.i = phi { ptr, i32 } [ %i.z, %bb.f ], [ %i.ae, %bb.k ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #50
          to label %.body.i unwind label %bb.o, !noalias !4010

bb.f:                                             ; preds = %bb.n, %bb.h, %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aa = icmp samesign ugt i32 %i.y, %.sroa.0.0.extract.trunc
  br i1 %i.aa, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #49
          to label %bb.i unwind label %bb.f, !noalias !4010

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.ab = add nuw nsw i32 %.sroa.0.0.extract.trunc, 1
  %i.ac = sub nuw nsw i32 %i.ab, %i.y
  %i.ad = zext nneg i32 %i.ac to i64
  store i64 4, ptr %i.b, align 8, !noalias !4010
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ad, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !4010
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 3, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @47, ptr noalias nofree noundef nonnull align 8 %i.b, i64 noundef 1)
          to label %bb.l unwind label %bb.k, !noalias !4010

bb.k:                                             ; preds = %bb.m, %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i.i.i unwind label %bb.o, !noalias !4010

bb.l:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !4011)
  %i.af = load i8, ptr %i.c, align 8, !range !15, !alias.scope !4011, !noalias !4010, !noundef !10
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.m, label %bb.n, !prof !13

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4012
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !range !37, !alias.scope !4011, !noalias !4010, !noundef !10
  store i8 %i.ai, ptr %i.a, align 1, !noalias !4012
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @173, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #53
          to label %.noexc.i.i.i unwind label %bb.k, !noalias !4010

.noexc.i.i.i:                                     ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit unwind label %bb.f, !noalias !4010

bb.o:                                             ; preds = %bb.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i.i.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !4010
  unreachable

bb.p:                                             ; preds = %.noexc.i, %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ak, %bb.p ], [ %.pn.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i.i.i ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #50
          to label %common.resume unwind label %bb.q, !noalias !4008

common.resume:                                    ; preds = %bb.w, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.ap, %bb.w ]
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %.body.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !4008
  unreachable

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4010
  %.sroa.018.0.copyload20 = load i64, ptr %i.d, align 8, !noalias !4009 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.42.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !4009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.not = icmp eq i64 %.sroa.018.0.copyload20, -1
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit.thread, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit
  %.sroa.018.128 = phi i64 [ %i.q, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit.thread ], [ %.sroa.018.0.copyload20, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit ]
  store i64 %.sroa.018.128, ptr %i.f, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  br label %bb.t

bb.s:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit.thread29, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit
  %i.am = and i64 %1, 72340172821233664
  %.not34 = icmp eq i64 %i.am, 0
  call void @_RNvNtCs8frGy5WneL6_4fish3key14char_to_symbol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i32 noundef %.sroa.0.0.extract.trunc, i1 noundef zeroext %.not34)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.an = and i64 %1, 281474976710656
  %.not35 = icmp eq i64 %i.an, 0
  br i1 %.not35, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.v, %bb.t
  %i.ao = and i64 %1, 1099511627776
  %.not36 = icmp eq i64 %i.ao, 0
  br i1 %.not36, label %bb.x, label %bb.y

bb.v:                                             ; preds = %bb.t
  invoke void @_RNvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32String12insert_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @652, i64 noundef 6)
          to label %bb.u unwind label %bb.w

bb.w:                                             ; preds = %bb.ac, %bb.aa, %bb.y, %bb.v
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #50
          to label %common.resume unwind label %bb.ad

bb.x:                                             ; preds = %bb.y, %bb.u
  %i.aq = and i64 %1, 4294967296
  %.not37 = icmp eq i64 %i.aq, 0
  br i1 %.not37, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %bb.u
  invoke void @_RNvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32String12insert_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @653, i64 noundef 4)
          to label %bb.x unwind label %bb.w

bb.z:                                             ; preds = %bb.aa, %bb.x
  %2 = and i64 %1, 72057594037927936
  %.not38 = icmp eq i64 %2, 0
  br i1 %.not38, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.x
  invoke void @_RNvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32String12insert_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @654, i64 noundef 5)
          to label %bb.z unwind label %bb.w

bb.ab:                                            ; preds = %bb.ac, %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret void

bb.ac:                                            ; preds = %bb.z
  invoke void @_RNvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32String12insert_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @655, i64 noundef 6)
          to label %bb.ab unwind label %bb.w

bb.ad:                                            ; preds = %bb.w
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCs8frGy5WneL6_4fish5input7bindingINtB5_16EventQueuePeekerNtNtNtB9_6reader6reader6ReaderENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef align 8 dereferenceable(56) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !noundef !10
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp eq i64 %i.f, 0
  %or.cond = select i1 %i.d, i1 %i.g, i1 false, !prof !30
  br i1 %or.cond, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !10, !align !14, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEEBL_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  call void @_RINvYNtNtNtCs8frGy5WneL6_4fish6reader6reader6ReaderNtNtNtB9_5input5input16InputEventQueuer12insert_frontINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtBP_9CharEventEEB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @656, ptr noundef nonnull inttoptr (i64 109 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @657) #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtCs1xwejQucwHj_5alloc5sliceSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtB5_16SpecCloneIntoVecBy_NtNtB7_5alloc6GlobalE10clone_intoCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8truncateCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %1)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !10 ; 5 uses
  %i.d = icmp ult i64 %i.c, 384307168202282326
  tail call void @llvm.assume(i1 %i.d)
  %.not.i = icmp samesign ugt i64 %i.c, %1
  br i1 %.not.i, label %bb.b, label %.preheader.i, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @157, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @659) #53, !noalias !4022
  unreachable

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !10, !noundef !10
  %.not.i1 = icmp eq i64 %i.c, 0
  br i1 %.not.i1, label %_RNvXs3_NtCs3oUPovFnLWP_4core5sliceSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtB5_13CloneFromSpecBx_E15spec_clone_fromCs8frGy5WneL6_4fish.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs3oUPovFnLWP_4core5clone5Clone10clone_fromCs8frGy5WneL6_4fish.exit.i
  %.sroa.0.02.i = phi i64 [ %i.l, %_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs3oUPovFnLWP_4core5clone5Clone10clone_fromCs8frGy5WneL6_4fish.exit.i ], [ 0, %.preheader.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.0.02.i ; 5 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.0.02.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4023
  call void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h), !noalias !4024
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %.lr.ph.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs3oUPovFnLWP_4core5clone5Clone10clone_fromCs8frGy5WneL6_4fish.exit.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.e, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.i, %bb.c ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !4025
  resume { ptr, i32 } %eh.lpad-body.i.i

_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs3oUPovFnLWP_4core5clone5Clone10clone_fromCs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !4025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4023
  %i.l = add nuw nsw i64 %.sroa.0.02.i, 1         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.l, %i.c
  br i1 %exitcond.not.i, label %_RNvXs3_NtCs3oUPovFnLWP_4core5sliceSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtB5_13CloneFromSpecBx_E15spec_clone_fromCs8frGy5WneL6_4fish.exit, label %.lr.ph.i

_RNvXs3_NtCs3oUPovFnLWP_4core5sliceSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtB5_13CloneFromSpecBx_E15spec_clone_fromCs8frGy5WneL6_4fish.exit: ; preds = %_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs3oUPovFnLWP_4core5clone5Clone10clone_fromCs8frGy5WneL6_4fish.exit.i, %.preheader.i
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.c
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  call void @_RNvXs1_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB5_10SpecExtendRBU_INtNtNtCs3oUPovFnLWP_4core5slice4iter4IterBU_EE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs8frGy5WneL6_4fish9tokenizer3TokENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10
  store ptr inttoptr (i64 4 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, %i.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !10 ; 5 uses
  %.not.i.i = icmp eq i64 %i.f, 0                 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs8frGy5WneL6_4fish9tokenizer3TokNtNtBO_5alloc6GlobalEEB2d_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !10 ; 4 uses
  %i.k = icmp ult i64 %i.j, 461168601842738791
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !noundef !10 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.m, %i.j
  br i1 %.not3.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.n = add i64 %i.j, %i.f
  store i64 %i.n, ptr %i.i, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs8frGy5WneL6_4fish9tokenizer3TokNtNtBO_5alloc6GlobalEEB2d_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.q = getelementptr inbounds nuw [20 x i8], ptr %i.p, i64 %i.m
  %i.r = getelementptr inbounds nuw [20 x i8], ptr %i.p, i64 %i.j
  %i.s = mul nuw nsw i64 %i.f, 20
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.r, ptr nonnull align 4 %i.q, i64 %i.s, i1 false)
  br label %bb.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs8frGy5WneL6_4fish9tokenizer3TokNtNtBO_5alloc6GlobalEEB2d_.exit: ; preds = %bb.h, %bb.f, %bb.d, %bb.b
  ret void

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs8frGy5WneL6_4fish9tokenizer3TokNtNtBO_5alloc6GlobalEEB2d_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !10 ; 4 uses
  %i.x = icmp ult i64 %i.w, 461168601842738791
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i64, ptr %i.y, align 8, !noundef !10 ; 2 uses
  %.not3.i.i5 = icmp eq i64 %i.z, %i.w
  br i1 %.not3.i.i5, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.aa = add i64 %i.w, %i.f
  store i64 %i.aa, ptr %i.v, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs8frGy5WneL6_4fish9tokenizer3TokNtNtBO_5alloc6GlobalEEB2d_.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.ad = getelementptr inbounds nuw [20 x i8], ptr %i.ac, i64 %i.z
  %i.ae = getelementptr inbounds nuw [20 x i8], ptr %i.ac, i64 %i.w
  %i.af = mul nuw nsw i64 %i.f, 20
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ae, ptr nonnull align 4 %i.ad, i64 %i.af, i1 false)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 2 uses
end_hunk_0
