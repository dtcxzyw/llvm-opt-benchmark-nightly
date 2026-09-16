Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_date-ac0c92fbc921ed0d.uu_date.d513130b1b5cc1ea-cgu.0?download=true
inline.NumInlined: 1460
inline.NumDeleted: 758
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterhEINtNtCs7tKScEop1B6_5alloc3vec3VechENCNvCsiibOIv6tv3q_7uu_date20escape_invalid_bytes0ENtNtNtB9_6traits8iterator8Iterator4nextB29_:bb.a
bb.k:                                             ; preds = %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterhENCNvCsiibOIv6tv3q_7uu_date20escape_invalid_bytes0EEINtB5_8FuseImplBY_E4nextB1K_.exit.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4696)
  call void @llvm.experimental.noalias.scope.decl(metadata !4697)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !4698, !nonnull !6, !noundef !6
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !4698, !nonnull !6, !noundef !6 ; 3 uses
  %.not6.i4.i = icmp eq ptr %i.ac, %i.aa
  br i1 %.not6.i4.i, label %bb.l, label %_RNvYNvYINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextINtNtNtB13_3ops8function6FnOnceTQB5_EE9call_onceCsiibOIv6tv3q_7uu_date.exit.thread.i5.i

_RNvYNvYINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextINtNtNtB13_3ops8function6FnOnceTQB5_EE9call_onceCsiibOIv6tv3q_7uu_date.exit.thread.i5.i: ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store ptr %i.ad, ptr %i.ab, align 8, !alias.scope !4698
  %i.ae = load i8, ptr %i.ac, align 1, !noalias !4698, !noundef !6
  br label %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterhENCNvCsiibOIv6tv3q_7uu_date20escape_invalid_bytes0EINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhEENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val4.i8.i = load i64, ptr %i.af, align 8, !alias.scope !4695 ; 2 uses
  %i.ag = icmp eq i64 %.val4.i8.i, 0
  br i1 %i.ag, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhEEECsiibOIv6tv3q_7uu_date.exit.i9.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef %.val4.i8.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !4699
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhEEECsiibOIv6tv3q_7uu_date.exit.i9.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhEEECsiibOIv6tv3q_7uu_date.exit.i9.i: ; preds = %bb.m, %bb.l
  store ptr null, ptr %i.x, align 8, !alias.scope !4695
  br label %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterhENCNvCsiibOIv6tv3q_7uu_date20escape_invalid_bytes0EINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhEENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit

_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterhENCNvCsiibOIv6tv3q_7uu_date20escape_invalid_bytes0EINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhEENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit: ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhEhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsiibOIv6tv3q_7uu_date.exit.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterhENCNvCsiibOIv6tv3q_7uu_date20escape_invalid_bytes0EEINtB5_8FuseImplBY_E4nextB1K_.exit.thread.i, %_RNvYNvYINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextINtNtNtB13_3ops8function6FnOnceTQB5_EE9call_onceCsiibOIv6tv3q_7uu_date.exit.thread.i5.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhEEECsiibOIv6tv3q_7uu_date.exit.i9.i
  %.sroa.3.0.i6.pn.i = phi i8 [ %i.n, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhEhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsiibOIv6tv3q_7uu_date.exit.i ], [ undef, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterhENCNvCsiibOIv6tv3q_7uu_date20escape_invalid_bytes0EEINtB5_8FuseImplBY_E4nextB1K_.exit.thread.i ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhEEECsiibOIv6tv3q_7uu_date.exit.i9.i ], [ %i.ae, %_RNvYNvYINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextINtNtNtB13_3ops8function6FnOnceTQB5_EE9call_onceCsiibOIv6tv3q_7uu_date.exit.thread.i5.i ]
  %.sroa.0.0.i = phi i1 [ true, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhEhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsiibOIv6tv3q_7uu_date.exit.i ], [ false, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterhENCNvCsiibOIv6tv3q_7uu_date20escape_invalid_bytes0EEINtB5_8FuseImplBY_E4nextB1K_.exit.thread.i ], [ false, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhEEECsiibOIv6tv3q_7uu_date.exit.i9.i ], [ true, %_RNvYNvYINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextINtNtNtB13_3ops8function6FnOnceTQB5_EE9call_onceCsiibOIv6tv3q_7uu_date.exit.thread.i5.i ]
  %i.ah = insertvalue { i1, i8 } poison, i1 %.sroa.0.0.i, 0
  %i.ai = insertvalue { i1, i8 } %i.ah, i8 %.sroa.3.0.i6.pn.i, 1
  ret { i1, i8 } %i.ai
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRNtNtCs7tKScEop1B6_5alloc6string6StringNtB6_5Debug3fmtCsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !6
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCs6JMX4GRUq9U_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #33
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !13, !noundef !6
  %i.b = tail call noundef zeroext i1 @_RNvXNtNtCs6JMX4GRUq9U_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #33
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRNtNtCs3JjgEOiFeOI_4jiff5error5ErrorNtB6_7Display3fmtCsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !13, !noundef !6
  %i.b = tail call noundef zeroext i1 @_RNvXs1_NtCs3JjgEOiFeOI_4jiff5errorNtB5_5ErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #33
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRNtNtNtCs3JjgEOiFeOI_4jiff2tz6offset6OffsetNtB6_7Display3fmtCsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !4700, !noundef !6
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtNtCs3JjgEOiFeOI_4jiff2tz6offsetNtB5_6OffsetNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #33
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #33
  ret i1 %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs2_NtCs3JjgEOiFeOI_4jiff3fmtNtNtCs7tKScEop1B6_5alloc6string6StringNtB5_5Write10as_mut_vec(ptr noalias nofree noundef readnone returned align 8 captures(ret: address, provenance) dereferenceable(24) %0) unnamed_addr #11 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvXs2_NtCs3JjgEOiFeOI_4jiff3fmtNtNtCs7tKScEop1B6_5alloc6string6StringNtB5_5Write9write_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4709)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !4710, !noalias !4711, !noundef !6 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !9, !alias.scope !4710, !noalias !4711, !noundef !6
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.thread.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.i.i, !prof !11

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.thread.i.i: ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2, i64 noundef 1, i64 noundef 1) #33, !noalias !4711
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !4712, !noalias !4711, !noundef !6 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  br label %bb.b

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.i.i: ; preds = %bb.a
  %i.h = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.h)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.thread.i.i
  %i.i = phi i64 [ %i.f, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.thread.i.i ], [ %i.b, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !4712, !noalias !4711, !nonnull !6, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !4712
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String8push_str.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.i.i, %bb.b
  %i.m = phi i64 [ %i.i, %bb.b ], [ %i.b, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.i.i ]
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !4712, !noalias !4711
  ret { i64, ptr } { i64 0, ptr undef }
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !6 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.g, i64 %2) ; 3 uses
  %i.h = icmp samesign ugt i64 %..i, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !4721
  %i.i = zext i32 %.sroa.014.0.copyload.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.0.0.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = or disjoint i64 %.sroa.03.0.i, 1
  %i.k = icmp samesign ult i64 %i.j, %..i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.03.0.i
  %.sroa.015.0.copyload.i = load i16, ptr %i.l, align 1, !alias.scope !4721
  %i.m = zext i16 %.sroa.015.0.copyload.i to i64
  %i.n = shl nuw nsw i64 %.sroa.03.0.i, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.0.0.i
  %i.q = or disjoint i64 %.sroa.03.0.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.1.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.03.0.i, %bb.d ] ; 3 uses
  %.sroa.0.1.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.0.0.i, %bb.d ] ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.03.1.i, %..i
  br i1 %i.r, label %bb.g, label %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.1.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !4721, !noundef !6
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.03.1.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.0.1.i
  br label %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit

_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.2.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.0.1.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.0.2.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !6
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.i
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub nsw i64 %2, %.sroa.0.0              ; 2 uses
  %i.ag = and i64 %i.af, -8                       ; 2 uses
  %i.ah = icmp ult i64 %.sroa.0.0, %i.ag
  br i1 %i.ah, label %.lr.ph, label %bb.k

.lr.ph:                                           ; preds = %bb.h
  %.promoted = load i64, ptr %0, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted19 = load i64, ptr %i.ai, align 8
  %.promoted20 = load i64, ptr %i.aj, align 8, !alias.scope !4722
  %.promoted22 = load i64, ptr %i.ak, align 8, !alias.scope !4722
  br label %bb.q

bb.i:                                             ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !noundef !6
  %i.an = xor i64 %i.am, %i.ad                    ; 3 uses
  %i.ao = load i64, ptr %0, align 8, !alias.scope !4723, !noundef !6
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !4723, !noundef !6 ; 3 uses
  %i.ar = add i64 %i.aq, %i.ao                    ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !4723, !noundef !6
  %i.au = add i64 %i.at, %i.an                    ; 2 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 13)
  %i.aw = xor i64 %i.av, %i.ar                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 16)
  %i.ay = xor i64 %i.au, %i.ax                    ; 3 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 32)
  %i.ba = add i64 %i.au, %i.aw                    ; 3 uses
  %i.bb = add i64 %i.ay, %i.az                    ; 2 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 17)
  %i.bd = xor i64 %i.ba, %i.bc
  store i64 %i.bd, ptr %i.ap, align 8, !alias.scope !4723
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 21)
  %i.bf = xor i64 %i.be, %i.bb
  store i64 %i.bf, ptr %i.al, align 8, !alias.scope !4723
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 32)
  store i64 %i.bg, ptr %i.as, align 8, !alias.scope !4723
  %i.bh = xor i64 %i.bb, %i.ad
  store i64 %i.bh, ptr %0, align 8
  br label %bb.h

bb.j:                                             ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit
  %i.bi = add i64 %i.e, %2
  br label %bb.r

._crit_edge:                                      ; preds = %bb.q
  store i64 %i.cx, ptr %i.ai, align 8
  store i64 %i.cv, ptr %i.aj, align 8, !alias.scope !4722
  store i64 %i.cy, ptr %i.ak, align 8, !alias.scope !4722
  store i64 %i.cz, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h
  %.sroa.0.1.lcssa = phi i64 [ %i.da, %._crit_edge ], [ %.sroa.0.0, %bb.h ] ; 3 uses
  %3 = and i64 %i.af, 7                           ; 4 uses
  %i.bj = icmp samesign ugt i64 %3, 3
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.lcssa
  %.sroa.014.0.copyload.i16 = load i32, ptr %i.bk, align 1, !alias.scope !4724
  %i.bl = zext i32 %.sroa.014.0.copyload.i16 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.03.0.i10 = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %.sroa.0.0.i11 = phi i64 [ %i.bl, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.bm = or disjoint i64 %.sroa.03.0.i10, 1
  %i.bn = icmp samesign ult i64 %i.bm, %3
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa
  %i.bp = getelementptr i8, ptr %i.bo, i64 %.sroa.03.0.i10
  %.sroa.015.0.copyload.i15 = load i16, ptr %i.bp, align 1, !alias.scope !4724
  %i.bq = zext i16 %.sroa.015.0.copyload.i15 to i64
  %i.br = shl nuw nsw i64 %.sroa.03.0.i10, 3
  %i.bs = shl nuw nsw i64 %i.bq, %i.br
  %i.bt = or i64 %i.bs, %.sroa.0.0.i11
  %i.bu = or disjoint i64 %.sroa.03.0.i10, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i12 = phi i64 [ %i.bu, %bb.n ], [ %.sroa.03.0.i10, %bb.m ] ; 3 uses
  %.sroa.0.1.i13 = phi i64 [ %i.bt, %bb.n ], [ %.sroa.0.0.i11, %bb.m ] ; 2 uses
  %i.bv = icmp samesign ult i64 %.sroa.03.1.i12, %3
  br i1 %i.bv, label %bb.p, label %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit17

bb.p:                                             ; preds = %bb.o
  %i.bw = add i64 %.sroa.03.1.i12, %.sroa.0.1.lcssa ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %2
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %i.bw
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !4724, !noundef !6
  %i.ca = zext i8 %i.bz to i64
  %i.cb = shl nuw nsw i64 %.sroa.03.1.i12, 3
  %i.cc = shl nuw nsw i64 %i.ca, %i.cb
  %i.cd = or i64 %i.cc, %.sroa.0.1.i13
  br label %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit17

_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit17: ; preds = %bb.o, %bb.p
  %.sroa.0.2.i14 = phi i64 [ %i.cd, %bb.p ], [ %.sroa.0.1.i13, %bb.o ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i14, ptr %i.ce, align 8
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %i.cf = phi i64 [ %.promoted22, %.lr.ph ], [ %i.cy, %bb.q ]
  %i.cg = phi i64 [ %.promoted20, %.lr.ph ], [ %i.cv, %bb.q ] ; 3 uses
  %i.ch = phi i64 [ %.promoted19, %.lr.ph ], [ %i.cx, %bb.q ]
  %.sroa.0.118 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %i.da, %bb.q ] ; 2 uses
  %i.ci = phi i64 [ %.promoted, %.lr.ph ], [ %i.cz, %bb.q ]
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.118
  %.sroa.07.0.copyload = load i64, ptr %i.cj, align 1 ; 2 uses
  %i.ck = xor i64 %i.ch, %.sroa.07.0.copyload     ; 3 uses
  %i.cl = add i64 %i.cg, %i.ci                    ; 3 uses
  %i.cm = add i64 %i.cf, %i.ck                    ; 2 uses
  %i.cn = tail call noundef i64 @llvm.fshl.i64(i64 %i.cg, i64 %i.cg, i64 13)
  %i.co = xor i64 %i.cn, %i.cl                    ; 3 uses
  %i.cp = tail call noundef i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 16)
  %i.cq = xor i64 %i.cm, %i.cp                    ; 3 uses
  %i.cr = tail call noundef i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 32)
  %i.cs = add i64 %i.cm, %i.co                    ; 3 uses
  %i.ct = add i64 %i.cq, %i.cr                    ; 2 uses
  %i.cu = tail call noundef i64 @llvm.fshl.i64(i64 %i.co, i64 %i.co, i64 17)
  %i.cv = xor i64 %i.cs, %i.cu                    ; 2 uses
  %i.cw = tail call noundef i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 21)
  %i.cx = xor i64 %i.cw, %i.ct                    ; 2 uses
  %i.cy = tail call noundef i64 @llvm.fshl.i64(i64 %i.cs, i64 %i.cs, i64 32) ; 2 uses
  %i.cz = xor i64 %i.ct, %.sroa.07.0.copyload     ; 2 uses
  %i.da = add nuw i64 %.sroa.0.118, 8             ; 3 uses
  %i.db = icmp ult i64 %i.da, %i.ag
  br i1 %i.db, label %bb.q, label %._crit_edge

bb.r:                                             ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit17, %bb.j
  %storemerge = phi i64 [ %i.bi, %bb.j ], [ %3, %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit17 ]
  store i64 %storemerge, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs6JMX4GRUq9U_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @236, i64 noundef 5) #33
  ret i1 %i.a
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs6JMX4GRUq9U_4core6optionINtB5_6OptionNtNtCs7tKScEop1B6_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !12, !noundef !6
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @239, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @238) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @237, i64 noundef 4) #33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4729)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !4729, !noundef !6 ; 5 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 3 uses
  %i.g = load i64, ptr %0, align 8, !range !9, !alias.scope !4730, !noundef !6
  %i.h = sub nsw i64 %i.g, %i.b
  %i.i = icmp ugt i64 %.sroa.0.0.i, %i.h
  br i1 %i.i, label %bb.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.i, !prof !11

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %.sroa.0.0.i, i64 noundef 1, i64 noundef 1) #33
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.i: ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !4729, !nonnull !6, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b ; 10 uses
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.i
  %i.m = icmp samesign ult i32 %1, 2048
  %i.n = trunc i32 %1 to i8
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 3 uses
  %i.q = lshr i32 %1, 6
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128                ; 2 uses
  %i.u = lshr i32 %1, 12
  %i.v = trunc i32 %i.u to i8                     ; 2 uses
  %i.w = and i8 %i.v, 63
  %i.x = or disjoint i8 %i.w, -128
  %i.y = lshr i32 %1, 18
  %i.z = trunc nuw nsw i32 %i.y to i8
  %i.aa = or disjoint i8 %i.z, -16
  br i1 %i.m, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.i
  %i.ab = trunc nuw nsw i32 %1 to i8
  store i8 %i.ab, ptr %i.l, align 1, !noalias !4729
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = or disjoint i8 %i.r, -64
  store i8 %i.ac, ptr %i.l, align 1, !noalias !4729
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.p, ptr %i.ad, align 1, !noalias !4729
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

bb.i:                                             ; preds = %bb.f
  %i.ae = icmp samesign ult i32 %1, 65536
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = or disjoint i8 %i.v, -32
  store i8 %i.af, ptr %i.l, align 1, !noalias !4729
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.t, ptr %i.ag, align 1, !noalias !4729
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.p, ptr %i.ah, align 1, !noalias !4729
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

bb.k:                                             ; preds = %bb.i
  store i8 %i.aa, ptr %i.l, align 1, !noalias !4729
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.x, ptr %i.ai, align 1, !noalias !4729
end_hunk_0
begin_hunk_1_@_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser9clone_anyCsiibOIv6tv3q_7uu_date:bb.a
  br i1 %i.k, label %_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 72
  %i.m = add nuw nsw i64 %.sroa.7.053.i.i.i, 1
  %i.n = getelementptr inbounds nuw [72 x i8], ptr %i.f, i64 %.sroa.7.053.i.i.i ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4771)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4770
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !4772, !noalias !4773, !nonnull !6, !noundef !6
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 56
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !4772, !noalias !4773, !noundef !6
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 24 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !range !12, !alias.scope !4772, !noalias !4773, !noundef !6
  %.not.i.i.i.i = icmp eq i64 %i.t, -1
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s) #33, !noalias !4773
  %.sroa.03.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !4774
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.i13.i.i.i = phi i64 [ %.sroa.03.0.copyload.i.i.i.i, %bb.e ], [ -1, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !4772, !noalias !4773, !nonnull !6, !noundef !6 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 16
  %.val4.i.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !4772, !noalias !4773, !noundef !6 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4775)
  %i.w = icmp eq i64 %.val4.i.i.i.i, 0
  br i1 %i.w, label %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.x = shl nuw nsw i64 %.val4.i.i.i.i, 4        ; 2 uses
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !4776
  %i.y = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.x, i64 noundef range(i64 1, 9) 8) #33, !noalias !4776 ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.g, label %.lr.ph.preheader.i.i.i.i.i.i

bb.g:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.x) #37, !noalias !4777
  unreachable

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i, i64 %.val4.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %.lr.ph.preheader.i.i.i.i.i.i
  %.sroa.0.022.i.i.i.i.i.i = phi ptr [ %i.ae, %bb.h ], [ %.val.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 4 uses
  %.sroa.7.021.i.i.i.i.i.i = phi i64 [ %i.ad, %bb.h ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.10.020.i.i.i.i.i.i = phi i64 [ %i.ac, %bb.h ], [ %.val4.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i ]
  %i.ab = icmp eq ptr %.sroa.0.022.i.i.i.i.i.i, %i.aa
  br i1 %i.ab, label %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ac = add nsw i64 %.sroa.10.020.i.i.i.i.i.i, -1 ; 2 uses
  %i.ad = add nuw nsw i64 %.sroa.7.021.i.i.i.i.i.i, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i, i64 16
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.sroa.7.021.i.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %.sroa.0.022.i.i.i.i.i.i, align 8, !alias.scope !4775, !noalias !4778, !nonnull !6, !noundef !6
  %i.ag = getelementptr i8, ptr %.sroa.0.022.i.i.i.i.i.i, i64 8
  %.val13.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !4775, !noalias !4778, !noundef !6
  store ptr %.val.i.i.i.i.i.i, ptr %i.af, align 8, !noalias !4777
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %.val13.i.i.i.i.i.i, ptr %i.ah, align 8, !noalias !4777
  %i.ai = icmp eq i64 %i.ac, 0
  br i1 %i.ai, label %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i, %bb.f
  %.sroa.10.0.i30.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.f ], [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %i.y, %bb.h ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 64
  %i.ak = load i8, ptr %i.aj, align 8, !range !7, !alias.scope !4772, !noalias !4773, !noundef !6
  %.sroa.740.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.740.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !noalias !4779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4770
  store i64 %.val4.i.i.i.i, ptr %i.n, align 8, !noalias !4779
  %.sroa.437.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.10.0.i30.i.i.i.i.i.i, ptr %.sroa.437.0..sroa_idx.i.i.i, align 8, !noalias !4779
  %.sroa.538.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.val4.i.i.i.i, ptr %.sroa.538.0..sroa_idx.i.i.i, align 8, !noalias !4779
  %.sroa.639.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 %.sroa.0.0.i13.i.i.i, ptr %.sroa.639.0..sroa_idx.i.i.i, align 8, !noalias !4779
  %.sroa.841.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr %i.p, ptr %.sroa.841.0..sroa_idx.i.i.i, align 8, !noalias !4779
  %.sroa.942.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store i64 %i.r, ptr %.sroa.942.0..sroa_idx.i.i.i, align 8, !noalias !4779
  %.sroa.1043.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store i8 %i.ak, ptr %.sroa.1043.0..sroa_idx.i.i.i, align 8, !noalias !4779
  %i.al = icmp eq i64 %i.j, 0
  br i1 %i.al, label %_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit, label %bb.c

_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit: ; preds = %bb.c, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, %bb.a
  %.sroa.10.0.i65.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.f, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i ], [ %i.f, %bb.c ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !4780
  %i.am = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !4780 ; 5 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.i, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !11

bb.i:                                             ; preds = %_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #37, !noalias !4780
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit
  store i64 %.val1, ptr %i.am, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %.sroa.10.0.i65.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %.val1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ao = insertvalue { ptr, ptr } poison, ptr %i.am, 0
  %i.ap = insertvalue { ptr, ptr } %i.ao, ptr @231, 1
  ret { ptr, ptr } %i.ap
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser9parse_refCsiibOIv6tv3q_7uu_date(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [24 x i8], align 8            ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB4_19ShortcutValueParserNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser16TypedValueParser9parse_ref(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #33
  %i.b = load i64, ptr %i.a, align 8, !range !12, !noundef !6
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !13, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !4783
  %i.g = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !4783 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #37, !noalias !4783
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  store i64 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx3, align 8
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  store ptr %i.g, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @241, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @225, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #33
  ret i1 %i.e
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCscxuc9kp9KZq_9jiff_core4utilINtB5_8ArrayStrKj9_ENtNtCs6JMX4GRUq9U_4core3fmt5Write9write_strCsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef captures(none) dereferenceable(10) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4789)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4790)
  %i.a = load i8, ptr %0, align 1, !alias.scope !4789, !noalias !4790, !noundef !6
  %i.b = zext i8 %i.a to i64                      ; 7 uses
  %i.c = add i64 %2, %i.b                         ; 5 uses
  %i.d = icmp ult i64 %i.c, %i.b
  %i.e = icmp ugt i64 %i.c, 9
  %or.cond.not.i.not = or i1 %i.d, %i.e           ; 2 uses
  br i1 %or.cond.not.i.not, label %_RNvMsg_NtCscxuc9kp9KZq_9jiff_core4utilINtB5_8ArrayStrKj9_E8push_strCsiibOIv6tv3q_7uu_date.exit, label %.preheader.i, !prof !19

.preheader.i:                                     ; preds = %bb.a
  %i.f = icmp samesign ugt i64 %i.c, %i.b
  br i1 %i.f, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.h = add i64 %2, -1
  %i.i = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.h)
  %i.j = add i64 %i.i, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.j, 17
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  %3 = add i64 %n.vec, %i.b
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %.lr.ph.i
  %.sroa.02.010.i.ph = phi i64 [ %i.b, %.lr.ph.i ], [ %3, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %i.k = and i64 %i.j, 15                         ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = select i1 %i.l, i64 16, i64 %i.k
  %n.vec = sub i64 %i.j, %i.m                     ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.g, i64 %i.b
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load = load <16 x i8>, ptr %i.n, align 1, !alias.scope !4790, !noalias !4789
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index
  store <16 x i8> %wide.load, ptr %gep, align 1, !alias.scope !4789, !noalias !4790
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !4787

._crit_edge.i:                                    ; preds = %bb.c, %.preheader.i
  %i.p = trunc nuw nsw i64 %i.c to i8
  store i8 %i.p, ptr %0, align 1, !alias.scope !4789, !noalias !4790
  br label %_RNvMsg_NtCscxuc9kp9KZq_9jiff_core4utilINtB5_8ArrayStrKj9_E8push_strCsiibOIv6tv3q_7uu_date.exit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %.sroa.02.010.i = phi i64 [ %i.v, %bb.c ], [ %.sroa.02.010.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.q = sub nuw nsw i64 %.sroa.02.010.i, %i.b    ; 3 uses
  %i.r = icmp ult i64 %i.q, %2
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.q, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #34, !noalias !4793
  unreachable

bb.c:                                             ; preds = %scalar.ph
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !4790, !noalias !4789, !noundef !6
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.02.010.i
  store i8 %i.t, ptr %i.u, align 1, !alias.scope !4789, !noalias !4790
  %i.v = add nuw nsw i64 %.sroa.02.010.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.v, %i.c
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !4788

_RNvMsg_NtCscxuc9kp9KZq_9jiff_core4utilINtB5_8ArrayStrKj9_E8push_strCsiibOIv6tv3q_7uu_date.exit: ; preds = %bb.a, %._crit_edge.i
  ret i1 %or.cond.not.i.not
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = icmp ugt i64 %2, 2
  br i1 %i.b, label %bb.c, label %bb.b

_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit: ; preds = %.split.us.i.i, %bb.l, %.lr.ph.split.us.i.i, %bb.b, %bb.n
  %.sroa.0.0 = phi i1 [ false, %bb.b ], [ %i.de, %bb.n ], [ %i.cw, %bb.l ], [ true, %.lr.ph.split.us.i.i ], [ %i.o, %.split.us.i.i ]
  ret i1 %.sroa.0.0

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %2, 2
  br i1 %i.c, label %bb.n, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4803)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4804)
  %i.d = icmp ult i64 %2, 17
  br i1 %i.d, label %.lr.ph.split.us.i.i, label %bb.d

.lr.ph.split.us.i.i:                              ; preds = %bb.c
  %i.e = load i16, ptr %1, align 1
  %i.f = load i16, ptr %0, align 1
  %i.g = icmp ne i16 %i.e, %i.f
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %.split.us.i.i, %.lr.ph.split.us.i.i
  %.in.i4 = phi i64 [ %i.p, %.split.us.i.i ], [ %2, %.lr.ph.split.us.i.i ]
  %.pn.i3 = phi ptr [ %i.j, %.split.us.i.i ], [ %1, %.lr.ph.split.us.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %.pn.i3, i64 1 ; 2 uses
  %i.k = load i16, ptr %i.j, align 1
  %i.l = load i16, ptr %0, align 1
  %i.m = icmp ne i16 %i.k, %i.l
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0                      ; 2 uses
  %.not = xor i1 %i.o, true
  %i.p = add nsw i64 %.in.i4, -1                  ; 2 uses
  %.not27.i.i = icmp ugt i64 %i.p, 2
  %or.cond = select i1 %.not, i1 %.not27.i.i, i1 false
  br i1 %or.cond, label %.split.us.i.i, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load i8, ptr %0, align 1, !alias.scope !4803, !noalias !4804, !noundef !6
  %i.r = insertelement <16 x i8> poison, i8 %i.q, i64 0
  %i.s = shufflevector <16 x i8> %i.r, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !4803, !noalias !4804, !noundef !6
  %i.v = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %i.w = shufflevector <16 x i8> %i.v, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4805
  store ptr %1, ptr %i.a, align 8, !noalias !4805
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.x, align 8, !noalias !4805
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.t, ptr %i.y, align 8, !noalias !4805
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %i.z, align 8, !noalias !4805
  %i.aa = icmp ult i64 %2, 66
  br i1 %i.aa, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.h, %bb.d
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.d ], [ %.sroa.014.2.3.i, %bb.h ] ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.d ], [ %i.bv, %bb.h ] ; 2 uses
  %i.ab = add i64 %.sroa.06.0.lcssa.i, 17
  %i.ac = icmp uge i64 %i.ab, %2
  %i.ad = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond386.i = select i1 %i.ac, i1 true, i1 %i.ad
  br i1 %or.cond386.i, label %._crit_edge.i, label %.lr.ph88.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.h
  %.sroa.06.084.i = phi i64 [ %i.bv, %bb.h ], [ 0, %bb.d ] ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.084.i ; 8 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.ae, align 1, !alias.scope !4804, !noalias !4806
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %.sroa.01.0.copyload.i.i = load <16 x i8>, ptr %i.af, align 1, !alias.scope !4804, !noalias !4806
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.s
  %i.ah = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i, %i.w
  %i.ai = and <16 x i1> %i.ag, %i.ah
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.ak, align 1, !alias.scope !4804, !noalias !4806
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 17
  %.sroa.01.0.copyload.i.1.i = load <16 x i8>, ptr %i.al, align 1, !alias.scope !4804, !noalias !4806
  %i.am = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.s
  %i.an = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i, %i.w
  %i.ao = and <16 x i1> %i.am, %i.an
  %i.ap = bitcast <16 x i1> %i.ao to i16          ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.aq, align 1, !alias.scope !4804, !noalias !4806
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 33
  %.sroa.01.0.copyload.i.2.i = load <16 x i8>, ptr %i.ar, align 1, !alias.scope !4804, !noalias !4806
  %i.as = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.s
  %i.at = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i, %i.w
  %i.au = and <16 x i1> %i.as, %i.at
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.aw, align 1, !alias.scope !4804, !noalias !4806
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 49
  %.sroa.01.0.copyload.i.3.i = load <16 x i8>, ptr %i.ax, align 1, !alias.scope !4804, !noalias !4806
  %i.ay = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.s
  %i.az = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i, %i.w
  %i.ba = and <16 x i1> %i.ay, %i.az
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %i.bc = icmp eq i16 %i.aj, 0
  br i1 %i.bc, label %.preheader80.1.i, label %bb.i

.preheader80.1.i:                                 ; preds = %bb.i, %.lr.ph.i
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i ], [ %i.ca, %bb.i ] ; 3 uses
  %i.bd = icmp eq i16 %i.ap, 0
  br i1 %i.bd, label %.preheader80.2.i, label %bb.e

bb.e:                                             ; preds = %.preheader80.1.i
  %i.be = or disjoint i64 %.sroa.06.084.i, 16
  %i.bf = trunc nuw i8 %.sroa.014.2.i to i1
  %i.bg = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.be, i16 noundef %i.ap, i1 noundef zeroext %i.bf) #35
  %i.bh = zext i1 %i.bg to i8
  %i.bi = or i8 %.sroa.014.2.i, %i.bh
  br label %.preheader80.2.i

.preheader80.2.i:                                 ; preds = %bb.e, %.preheader80.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader80.1.i ], [ %i.bi, %bb.e ] ; 3 uses
  %i.bj = icmp eq i16 %i.av, 0
  br i1 %i.bj, label %.preheader80.3.i, label %bb.f

bb.f:                                             ; preds = %.preheader80.2.i
  %i.bk = or disjoint i64 %.sroa.06.084.i, 32
  %i.bl = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.bm = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bk, i16 noundef %i.av, i1 noundef zeroext %i.bl) #35
  %i.bn = zext i1 %i.bm to i8
  %i.bo = or i8 %.sroa.014.2.1.i, %i.bn
  br label %.preheader80.3.i

.preheader80.3.i:                                 ; preds = %bb.f, %.preheader80.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader80.2.i ], [ %i.bo, %bb.f ] ; 3 uses
  %i.bp = icmp eq i16 %i.bb, 0
  br i1 %i.bp, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader80.3.i
  %i.bq = or disjoint i64 %.sroa.06.084.i, 48
  %i.br = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.bs = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bq, i16 noundef %i.bb, i1 noundef zeroext %i.br) #35
  %i.bt = zext i1 %i.bs to i8
  %i.bu = or i8 %.sroa.014.2.2.i, %i.bt
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader80.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader80.3.i ], [ %i.bu, %bb.g ] ; 2 uses
  %i.bv = add i64 %.sroa.06.084.i, 64             ; 2 uses
  %i.bw = add i64 %.sroa.06.084.i, 129
  %i.bx = icmp uge i64 %i.bw, %2
  %i.by = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.bx, i1 true, i1 %i.by
  br i1 %or.cond.i, label %.preheader.i, label %.lr.ph.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.bz = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.084.i, i16 noundef %i.aj, i1 noundef zeroext false) #35
  %i.ca = zext i1 %i.bz to i8
  br label %.preheader80.1.i

._crit_edge.i:                                    ; preds = %bb.j, %.preheader.i
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i ], [ %.sroa.014.4.i, %bb.j ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.ad, %.preheader.i ], [ %i.ct, %bb.j ]
  %i.cb = add i64 %2, -17                         ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %i.cb ; 2 uses
  %.sroa.0.0.copyload.i56.i = load <16 x i8>, ptr %i.cc, align 1, !alias.scope !4804, !noalias !4807
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  %.sroa.01.0.copyload.i57.i = load <16 x i8>, ptr %i.cd, align 1, !alias.scope !4804, !noalias !4807
  %i.ce = icmp eq <16 x i8> %.sroa.0.0.copyload.i56.i, %i.s
end_hunk_1
