Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.15?download=true
inline.NumInlined: 2884
inline.NumDeleted: 1261
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1T_6copied6CopiedINtNtNtB1X_5slice4iter4IterRNtNtBK_6utfstr8Utf32StrEENCNvNtNtCs8frGy5WneL6_4fish8builtins3set14new_var_values0EEB3Y_:bb.a
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !26, !noundef !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = trunc nuw i64 %i.f to i1
  br i1 %i.i, label %bb.b, label %bb.d, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !340, !noundef !16 ; 3 uses
  %i.l = load i64, ptr %0, align 8, !range !27, !alias.scope !340, !noundef !16
  %i.m = sub i64 %i.l, %i.k
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.c, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit, !prof !21

bb.c:                                             ; preds = %bb.b
  call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k, i64 noundef %i.h, i64 noundef 8, i64 noundef 24)
  %.pre = load i64, ptr %i.j, align 8
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit: ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %i.k, %bb.b ], [ %.pre, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !16, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.q, ptr %i.r, align 8
  store ptr %i.j, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.s, align 8
  call void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENCNvNtNtCs8frGy5WneL6_4fish8builtins3set14new_var_values0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3s_8for_each4callNtNtB1O_9utfstring11Utf32StringNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB59_3VecB4v_E14extend_trustedBN_E0E0EB2E_(ptr noundef nonnull %1, ptr noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1T_6copied6CopiedINtNtNtB1X_5slice4iter4IterRNtNtBK_6utfstr8Utf32StrEENCNvNtNtCs8frGy5WneL6_4fish8builtins3set14new_var_valuess0_0EEB3Y_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !26, !noundef !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = trunc nuw i64 %i.f to i1
  br i1 %i.i, label %bb.b, label %bb.d, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !343, !noundef !16 ; 3 uses
  %i.l = load i64, ptr %0, align 8, !range !27, !alias.scope !343, !noundef !16
  %i.m = sub i64 %i.l, %i.k
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.c, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit, !prof !21

bb.c:                                             ; preds = %bb.b
  call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k, i64 noundef %i.h, i64 noundef 8, i64 noundef 24)
  %.pre = load i64, ptr %i.j, align 8
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit: ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %i.k, %bb.b ], [ %.pre, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !16, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.q, ptr %i.r, align 8
  store ptr %i.j, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.s, align 8
  call void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENCNvNtNtCs8frGy5WneL6_4fish8builtins3set14new_var_valuess0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3v_8for_each4callNtNtB1O_9utfstring11Utf32StringNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5c_3VecB4y_E14extend_trustedBN_E0E0EB2E_(ptr noundef nonnull %1, ptr noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6cloned6ClonedINtNtNtB1X_5slice4iter4IterBG_EEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !26, !noundef !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = trunc nuw i64 %i.f to i1
  br i1 %i.i, label %bb.b, label %bb.d, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !348, !noundef !16 ; 3 uses
  %i.l = load i64, ptr %0, align 8, !range !27, !alias.scope !348, !noundef !16
  %i.m = sub i64 %i.l, %i.k
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.c, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit, !prof !21

bb.c:                                             ; preds = %bb.b
  call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k, i64 noundef %i.h, i64 noundef 8, i64 noundef 24)
  %.pre = load i64, ptr %i.j, align 8
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit: ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %i.k, %bb.b ], [ %.pre, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !16, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !349
  store ptr %i.j, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.q, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2l_8for_each4callB1s_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3B_3VecB1s_E14extend_trustedBP_E0E0ECs8frGy5WneL6_4fish(ptr noundef nonnull %1, ptr noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !349
  ret void

bb.d:                                             ; preds = %bb.a
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNhEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !360, !noundef !16 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !27, !alias.scope !360, !noundef !16
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish.exit.thread, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish.exit, !prof !21

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish.exit.thread: ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  %i.f = load i64, ptr %i.a, align 8, !noundef !16
  br label %.lr.ph.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  %.not.i.not11.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.not11.i.i, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNhENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB1R_3VechE14extend_trustedB3_E0ECs8frGy5WneL6_4fish.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish.exit.thread, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish.exit
  %i.g = phi i64 [ %i.f, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish.exit.thread ], [ %i.b, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish.exit ] ; 2 uses
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %.in, align 8, !nonnull !16, !noundef !16
  %scevgep.i.i = getelementptr nuw i8, ptr %i.h, i64 %i.g
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %scevgep.i.i, i8 %2, i64 %1, i1 false), !noalias !361
  %i.i = add i64 %i.g, %1
  br label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNhENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB1R_3VechE14extend_trustedB3_E0ECs8frGy5WneL6_4fish.exit

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNhENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB1R_3VechE14extend_trustedB3_E0ECs8frGy5WneL6_4fish.exit: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish.exit, %.lr.ph.i.i
  %.val6.i.i = phi i64 [ %i.i, %.lr.ph.i.i ], [ %i.b, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish.exit ]
  store i64 %.val6.i.i, ptr %i.a, align 8, !noalias !362
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VeciE14extend_trustedINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveiEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !17, !alias.scope !394, !noalias !395, !noundef !16
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit.thread18, label %bb.b

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit.thread18: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !16
  br label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveiENtNtNtNtBa_4iter6traits8iterator8Iterator8for_eachNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB1S_3VeciE14extend_trustedB3_E0ECs8frGy5WneL6_4fish.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %i.g = load i64, ptr %1, align 8, !alias.scope !398, !noalias !399, !noundef !16 ; 7 uses
  %i.h = load i64, ptr %i.f, align 8, !alias.scope !400, !noalias !401, !noundef !16 ; 6 uses
  %.not.i = icmp sgt i64 %i.g, %i.h
  br i1 %.not.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit.thread, label %_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit

_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  %i.i = sub i64 %i.h, %i.g                       ; 3 uses
  %.not = icmp eq i64 %i.i, -1
  %i.j = add nuw i64 %i.i, 1
  br i1 %.not, label %bb.e, label %bb.c, !prof !402

bb.c:                                             ; preds = %_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !403, !noundef !16 ; 2 uses
  %i.m = load i64, ptr %0, align 8, !range !27, !alias.scope !403, !noundef !16
  %i.n = sub i64 %i.m, %i.l
  %.not27 = icmp ult i64 %i.i, %i.n
  br i1 %.not27, label %.preheader.i.i.i, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  tail call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.l, i64 noundef %i.j, i64 noundef 8, i64 noundef 8)
  br label %.preheader.i.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit.thread: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !16
  br label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveiENtNtNtNtBa_4iter6traits8iterator8Iterator8for_eachNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB1S_3VeciE14extend_trustedB3_E0ECs8frGy5WneL6_4fish.exit

.preheader.i.i.i:                                 ; preds = %bb.d, %bb.c
  %.in26 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %.in26, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %i.r = load i64, ptr %i.k, align 8, !noundef !16 ; 4 uses
  %i.s = icmp slt i64 %i.g, %i.h
  br i1 %i.s, label %.lr.ph.i.i.i.preheader, label %._crit_edge16.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader.i.i.i
  %2 = sub i64 %i.h, %i.g                         ; 3 uses
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader29, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %2, -4                         ; 4 uses
  %i.t = add i64 %i.r, %n.vec                     ; 2 uses
  %i.u = add i64 %i.g, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.g, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nsw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %i.v = getelementptr [8 x i8], ptr %i.q, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x i64> %vec.ind, ptr %i.w, align 8, !noalias !404
  store <2 x i64> %step.add, ptr %i.x, align 8, !noalias !404
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nsw <2 x i64> %vec.ind, splat (i64 4)
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !386

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge16.i.i.i, label %.lr.ph.i.i.i.preheader29

.lr.ph.i.i.i.preheader29:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ %i.r, %.lr.ph.i.i.i.preheader ], [ %i.t, %middle.block ]
  %.ph30 = phi i64 [ %i.g, %.lr.ph.i.i.i.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph.i.i.i

._crit_edge16.i.i.i:                              ; preds = %.lr.ph.i.i.i, %middle.block, %.preheader.i.i.i
  %.sroa.5.0.i.i = phi i64 [ %i.r, %.preheader.i.i.i ], [ %i.t, %middle.block ], [ %i.af, %.lr.ph.i.i.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.sroa.5.0.i.i
  store i64 %i.h, ptr %i.z, align 8, !noalias !405
  %i.aa = add i64 %.sroa.5.0.i.i, 1
  br label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveiENtNtNtNtBa_4iter6traits8iterator8Iterator8for_eachNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB1S_3VeciE14extend_trustedB3_E0ECs8frGy5WneL6_4fish.exit

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader29, %.lr.ph.i.i.i
  %i.ab = phi i64 [ %i.af, %.lr.ph.i.i.i ], [ %.ph, %.lr.ph.i.i.i.preheader29 ] ; 2 uses
  %i.ac = phi i64 [ %i.ad, %.lr.ph.i.i.i ], [ %.ph30, %.lr.ph.i.i.i.preheader29 ] ; 2 uses
  %i.ad = add nsw i64 %i.ac, 1                    ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ab
  store i64 %i.ac, ptr %i.ae, align 8, !noalias !404
  %i.af = add i64 %i.ab, 1                        ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ad, %i.h
  br i1 %exitcond.not.i.i.i, label %._crit_edge16.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !393

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveiENtNtNtNtBa_4iter6traits8iterator8Iterator8for_eachNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB1S_3VeciE14extend_trustedB3_E0ECs8frGy5WneL6_4fish.exit: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit.thread, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit.thread18, %._crit_edge16.i.i.i
  %i.ag = phi ptr [ %i.k, %._crit_edge16.i.i.i ], [ %i.o, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit.thread ], [ %i.d, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit.thread18 ]
  %storemerge.i.i = phi i64 [ %i.aa, %._crit_edge16.i.i.i ], [ %i.p, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit.thread ], [ %i.e, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit.thread18 ]
  store i64 %storemerge.i.i, ptr %i.ag, align 8, !noalias !406
  ret void

bb.e:                                             ; preds = %_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VeciE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevINtNtNtB17_3ops5range14RangeInclusiveiEEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !17, !alias.scope !421, !noalias !422, !noundef !16
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  %i.f = load i64, ptr %1, align 8, !alias.scope !425, !noalias !426, !noundef !16 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !alias.scope !427, !noalias !428, !noundef !16 ; 2 uses
  %.not.i.i = icmp sgt i64 %i.f, %i.g
  br i1 %.not.i.i, label %.thread, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3revINtB4_3RevINtNtNtBa_3ops5range14RangeInclusiveiEENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit

.thread:                                          ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3revINtB4_3RevINtNtNtBa_3ops5range14RangeInclusiveiEENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  %i.i = sub i64 %i.g, %i.f                       ; 3 uses
  %.not = icmp eq i64 %i.i, -1
  %i.j = add nuw i64 %i.i, 1
  br i1 %.not, label %bb.e, label %bb.c, !prof !429

bb.c:                                             ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3revINtB4_3RevINtNtNtBa_3ops5range14RangeInclusiveiEENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !430, !noundef !16 ; 2 uses
  %i.m = load i64, ptr %0, align 8, !range !27, !alias.scope !430, !noundef !16
  %i.n = sub i64 %i.m, %i.l
  %.not11 = icmp ult i64 %i.i, %i.n
  br i1 %.not11, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  tail call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.l, i64 noundef %i.j, i64 noundef 8, i64 noundef 8)
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit: ; preds = %.thread, %bb.c, %bb.d
  %i.o = phi ptr [ %i.h, %.thread ], [ %i.k, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !16, !noundef !16
  %i.r = load i64, ptr %i.o, align 8, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !431
  store ptr %i.o, ptr %i.a, align 8, !noalias !432
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.r, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !432
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.q, ptr %.sroa.54.0..sroa_idx, align 8, !noalias !432
  call void @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3revINtB5_3RevINtNtNtBb_3ops5range14RangeInclusiveiEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1z_8for_each4calliNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB2M_3VeciE14extend_trustedBM_E0E0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !431
  ret void

bb.e:                                             ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3revINtB4_3RevINtNtNtBa_3ops5range14RangeInclusiveiEENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #32
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  %i.a = load i64, ptr %0, align 8, !range !31, !alias.scope !446, !noundef !16
  switch i64 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i [
    i64 2, label %bb.b
    i64 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  %.val.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !448 ; 2 uses
  %i.c = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !448, !nonnull !16, !noundef !16
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !449
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load i64, ptr %i.e, align 8, !alias.scope !446 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i, 0
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.g, align 8, !alias.scope !446, !nonnull !16, !noundef !16
  %i.h = shl nuw i64 %.val.i.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !450
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj2_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  %i.a = load i64, ptr %0, align 8, !range !31, !alias.scope !465, !noundef !16
  switch i64 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i [
    i64 2, label %bb.b
    i64 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  %.val.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !467 ; 2 uses
  %i.c = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !467, !nonnull !16, !noundef !16
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !468
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load i64, ptr %i.e, align 8, !alias.scope !465 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i, 0
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.g, align 8, !alias.scope !465, !nonnull !16, !noundef !16
  %i.h = shl nuw i64 %.val.i.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !469
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !470)
  %i.j = load i64, ptr %i.i, align 8, !range !31, !alias.scope !471, !noundef !16
  switch i64 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i.1 [
    i64 2, label %bb.h
    i64 3, label %bb.f
  ]

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i.i.1 = load i64, ptr %i.k, align 8, !alias.scope !471 ; 2 uses
  %i.l = icmp eq i64 %.val.i.i.1, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i.1, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i.i.1 = load ptr, ptr %i.m, align 8, !alias.scope !471, !nonnull !16, !noundef !16
  %i.n = shl nuw i64 %.val.i.i.1, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.1, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !472
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i.1

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %.val.i.i.i.1 = load i64, ptr %i.o, align 8, !alias.scope !474 ; 2 uses
  %i.p = icmp eq i64 %.val.i.i.i.1, 0
end_hunk_0
