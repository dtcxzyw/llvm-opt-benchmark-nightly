Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clap-rs/original/stdio_fixture.stdio_fixture.8f70a030548dc77a-cgu.0?download=true
inline.NumInlined: 654
inline.NumDeleted: 466
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11arg_matches10ArgMatchesECscjwHxV1jUiA_13stdio_fixture:bb.a
  %i.as = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.as, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i7.i.i.i.i.i
  %i.at = getelementptr i8, ptr %i.aq, i64 8
  %.val3.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !240, !noalias !243, !nonnull !10, !noundef !10
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !244
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i7.i.i.i.i.i
  %i.au = icmp eq i64 %i.ar, %.val3.i.i.i.i.i.i.i.i.i
  br i1 %i.au, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i7.i.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i4.i.i.i.i.i
  %.val.i.i.i.i8.i.i.i.i.i = load i64, ptr %i.al, align 8, !range !9, !alias.scope !238, !noalias !239, !noundef !10 ; 2 uses
  %i.av = icmp eq i64 %.val.i.i.i.i8.i.i.i.i.i, 0
  br i1 %i.av, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i
  %i.aw = mul nuw i64 %.val.i.i.i.i8.i.i.i.i.i, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i6.i.i.i.i.i, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !243
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i
  %i.ax = icmp eq i64 %i.am, %.val1.i3.i.i.i.i.i
  br i1 %i.ax, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i4.i.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i
  %.val2.i9.i.i.i.i.i = load i64, ptr %i.ah, align 8, !range !9, !alias.scope !231, !noalias !193, !noundef !10 ; 2 uses
  %i.ay = icmp eq i64 %.val2.i9.i.i.i.i.i, 0
  br i1 %i.ay, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i
  %i.az = mul nuw i64 %.val2.i9.i.i.i.i.i, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i2.i.i.i.i.i, i64 noundef %i.az, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !239
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i: ; preds = %bb.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i
  %i.ba = icmp eq i64 %i.i, %.val1.i.i
  br i1 %i.ba, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCscjwHxV1jUiA_13stdio_fixture.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCscjwHxV1jUiA_13stdio_fixture.exit.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEECscjwHxV1jUiA_13stdio_fixture.exit.i
  %.val2.i.i = load i64, ptr %i.d, align 8, !range !9, !alias.scope !193, !noundef !10 ; 2 uses
  %i.bb = icmp eq i64 %.val2.i.i, 0
  br i1 %i.bb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map7FlatMapNtNtBG_2id2IdNtNtNtNtBI_6parser7matches11matched_arg10MatchedArgEECscjwHxV1jUiA_13stdio_fixture.exit, label %bb.j

bb.j:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCscjwHxV1jUiA_13stdio_fixture.exit.i.i
  %i.bc = mul nuw i64 %.val2.i.i, 104
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.bc, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !193
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map7FlatMapNtNtBG_2id2IdNtNtNtNtBI_6parser7matches11matched_arg10MatchedArgEECscjwHxV1jUiA_13stdio_fixture.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map7FlatMapNtNtBG_2id2IdNtNtNtNtBI_6parser7matches11matched_arg10MatchedArgEECscjwHxV1jUiA_13stdio_fixture.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCscjwHxV1jUiA_13stdio_fixture.exit.i.i, %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !245, !align !94, !noundef !10 ; 5 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %common.ret9, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map7FlatMapNtNtBG_2id2IdNtNtNtNtBI_6parser7matches11matched_arg10MatchedArgEECscjwHxV1jUiA_13stdio_fixture.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %.val.i2 = load i64, ptr %i.be, align 8, !range !9, !alias.scope !248, !noalias !251, !noundef !10 ; 2 uses
  %i.bg = icmp eq i64 %.val.i2, 0
  br i1 %i.bg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECscjwHxV1jUiA_13stdio_fixture.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.val1.i3 = load ptr, ptr %i.bh, align 8, !alias.scope !248, !noalias !251, !nonnull !10, !noundef !10
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i3, i64 noundef %.val.i2, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !254
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECscjwHxV1jUiA_13stdio_fixture.exit

common.ret9:                                      ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map7FlatMapNtNtBG_2id2IdNtNtNtNtBI_6parser7matches11matched_arg10MatchedArgEECscjwHxV1jUiA_13stdio_fixture.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECscjwHxV1jUiA_13stdio_fixture.exit
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECscjwHxV1jUiA_13stdio_fixture.exit: ; preds = %bb.k, %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11arg_matches10ArgMatchesECscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef align 8 dereferenceable(56) %i.bi) #19, !noalias !251, !inline_history !255
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef 80, i64 noundef 8) #19, !noalias !251, !inline_history !256
  br label %common.ret9
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsaKJjC64KgbL_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECscjwHxV1jUiA_13stdio_fixture(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  tail call void %0() #19, !inline_history !257
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !258
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 16, 73) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !9, !alias.scope !259, !noundef !10 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 range(i64 0, -1) %i.e)
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !259
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.f, align 8, !alias.scope !259
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef 8, i64 noundef range(i64 8, 73) %3) #19, !noalias !259
  %i.g = load i64, ptr %i.a, align 8, !range !262, !noalias !259, !noundef !10
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !range !263, !noalias !259, !noundef !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !259
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.l, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.j, %bb.c ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #22
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.i, align 8, !noalias !259, !nonnull !10, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !259
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !259
  %i.n = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.n)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !259
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef i32 @_RNCINvNtCsaKJjC64KgbL_3std2rt10lang_startuE0CscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  tail call fastcc void @_RINvNtNtCsaKJjC64KgbL_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECscjwHxV1jUiA_13stdio_fixture(ptr noundef nonnull %i.a) #21
  ret i32 0
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef i32 @_RNSNvYNCINvNtCsaKJjC64KgbL_3std2rt10lang_startuE0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceuE9call_once6vtableCscjwHxV1jUiA_13stdio_fixture(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  tail call fastcc void @_RINvNtNtCsaKJjC64KgbL_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECscjwHxV1jUiA_13stdio_fixture(ptr noundef nonnull readonly %i.a) #21, !noalias !264
  ret i32 0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvCscjwHxV1jUiA_13stdio_fixture4main() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %.sroa.4.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [64 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.4.i.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.4.i.i.i.i.i = alloca [16 x i8], align 8  ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 13 uses
  %i.i = alloca [712 x i8], align 8               ; 3 uses
  %i.j = alloca [712 x i8], align 8               ; 4 uses
  %i.k = alloca [56 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 5 uses
  %i.u = alloca [32 x i8], align 8                ; 6 uses
  %i.v = alloca [32 x i8], align 8                ; 5 uses
  %i.w = alloca [32 x i8], align 8                ; 6 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [56 x i8], align 8               ; 4 uses
  %i.ag = alloca [712 x i8], align 8              ; 5 uses
  %i.ah = alloca [712 x i8], align 8              ; 15 uses
  %i.ai = alloca [600 x i8], align 8              ; 56 uses
  %.sroa.01028 = alloca [344 x i8], align 8       ; 2 uses
  %.sroa.101038 = alloca [96 x i8], align 8       ; 2 uses
  %.sroa.131041.sroa.2 = alloca [84 x i8], align 8 ; 2 uses
  %.sroa.151043 = alloca [3 x i8], align 1        ; 2 uses
  %i.aj = alloca [600 x i8], align 8              ; 17 uses
  %i.ak = alloca [600 x i8], align 8              ; 59 uses
  %.sroa.0902 = alloca [368 x i8], align 8        ; 4 uses
  %.sroa.9912 = alloca [208 x i8], align 8        ; 4 uses
  %i.al = alloca [600 x i8], align 8              ; 8 uses
  %i.am = alloca [600 x i8], align 8              ; 59 uses
  %i.an = alloca [600 x i8], align 8              ; 57 uses
  %i.ao = alloca [712 x i8], align 8              ; 53 uses
  %i.ap = alloca [712 x i8], align 8              ; 7 uses
  %i.aq = alloca [712 x i8], align 8              ; 7 uses
  %i.ar = alloca [712 x i8], align 8              ; 4 uses
  %i.as = alloca [712 x i8], align 8              ; 53 uses
  %i.at = alloca [712 x i8], align 8              ; 4 uses
  %i.au = alloca [712 x i8], align 8              ; 54 uses
  %i.av = alloca [712 x i8], align 8              ; 4 uses
  %i.aw = alloca [712 x i8], align 8              ; 56 uses
  %.sroa.0425 = alloca [320 x i8], align 8        ; 4 uses
  %.sroa.10434.sroa.4 = alloca [344 x i8], align 8 ; 4 uses
  %.sroa.0416.sroa.0 = alloca [320 x i8], align 8 ; 4 uses
  %.sroa.8423.sroa.5 = alloca [344 x i8], align 8 ; 4 uses
  %i.ax = alloca [712 x i8], align 8              ; 11 uses
  %i.ay = alloca [712 x i8], align 8              ; 55 uses
  %.sroa.0407 = alloca [344 x i8], align 8        ; 4 uses
  %.sroa.8414.sroa.5 = alloca [344 x i8], align 8 ; 4 uses
  %i.az = alloca [712 x i8], align 8              ; 8 uses
  %i.ba = alloca [712 x i8], align 8              ; 54 uses
  %i.bb = alloca [712 x i8], align 8              ; 53 uses
  %i.bc = alloca [712 x i8], align 8              ; 5 uses
  %i.bd = alloca [712 x i8], align 8              ; 3 uses
  %i.be = alloca [712 x i8], align 8              ; 4 uses
  %i.bf = alloca [712 x i8], align 8              ; 4 uses
  %i.bg = alloca [712 x i8], align 8              ; 4 uses
  %i.bh = alloca [712 x i8], align 8              ; 4 uses
  %i.bi = alloca [712 x i8], align 8              ; 4 uses
  %i.bj = alloca [712 x i8], align 8              ; 5 uses
  %i.bk = alloca [712 x i8], align 8              ; 5 uses
  %i.bl = alloca [712 x i8], align 8              ; 5 uses
  %i.bm = alloca [712 x i8], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  %.sroa.7.0..sroa_idx389 = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx389, i8 0, i64 16, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.23.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 0, ptr %i.bb, align 8
  %.sroa.2384.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 1, ptr %.sroa.2384.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx385 = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store i64 0, ptr %.sroa.3.0..sroa_idx385, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store i64 -1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5387.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  store i64 0, ptr %.sroa.5387.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx388 = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa_idx388, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 120
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 216
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.24.0..sroa_idx, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 264
  store i64 0, ptr %.sroa.25.0..sroa_idx, align 8
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 272
  store i64 -1, ptr %.sroa.26.0..sroa_idx, align 8
  %.sroa.27390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 296
  store i64 -1, ptr %.sroa.27390.0..sroa_idx, align 8
  %.sroa.28391.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 320
  store i64 -1, ptr %.sroa.28391.0..sroa_idx, align 8
  %.sroa.29392.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 344
  store i64 -1, ptr %.sroa.29392.0..sroa_idx, align 8
  %.sroa.30393.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 368
  store i64 -1, ptr %.sroa.30393.0..sroa_idx, align 8
  %.sroa.31394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 392
  store i64 -1, ptr %.sroa.31394.0..sroa_idx, align 8
  %.sroa.32395.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 416
  store i64 -1, ptr %.sroa.32395.0..sroa_idx, align 8
  %.sroa.33396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 440
  store i64 -1, ptr %.sroa.33396.0..sroa_idx, align 8
  %.sroa.34397.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 464
  store i64 -1, ptr %.sroa.34397.0..sroa_idx, align 8
  %.sroa.35398.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 488
  store i64 -1, ptr %.sroa.35398.0..sroa_idx, align 8
  %.sroa.36399.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 512
  store i64 -1, ptr %.sroa.36399.0..sroa_idx, align 8
  %.sroa.37400.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 536
  store i64 -1, ptr %.sroa.37400.0..sroa_idx, align 8
  %.sroa.38401.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 560
  store ptr @7, ptr %.sroa.38401.0..sroa_idx, align 8
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 568
  store i64 13, ptr %.sroa.39.0..sroa_idx, align 8
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 576
  store ptr null, ptr %.sroa.40.0..sroa_idx, align 8
  %.sroa.41402.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 592
  store ptr null, ptr %.sroa.41402.0..sroa_idx, align 8
  %.sroa.42403.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 608
  store ptr @8, ptr %.sroa.42403.0..sroa_idx, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 616
  store i64 3, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 624
  store ptr @9, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 632
  store i64 12, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 640
  store ptr null, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.49404.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 656
  store ptr null, ptr %.sroa.49404.0..sroa_idx, align 8
  %.sroa.50405.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 672
  store ptr null, ptr %.sroa.50405.0..sroa_idx, align 8
  %.sroa.51406.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 688
  store ptr null, ptr %.sroa.51406.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 696
  store i32 -1, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 700
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.53.0..sroa_idx, i8 0, i64 9, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !267
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !270
  %i.bn = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef 8) #19, !noalias !270 ; 5 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.b, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i, !prof !273

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #22, !noalias !270
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.a
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 224
  store i64 1, ptr %i.bn, align 8, !noalias !267
  %.sroa.4.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i44, align 8, !noalias !267
  %.sroa.5.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i45, align 8, !noalias !267
  store ptr %i.bn, ptr %i.w, align 8, !noalias !267
  %i.bp = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @3, ptr %i.bp, align 8, !noalias !267
  %i.bq = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) @2, i64 16, i1 false), !noalias !267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !267
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.sroa.21.0..sroa_idx, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(16) @2, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.w) #19
  %i.br = load ptr, ptr %i.v, align 8, !noalias !267, !noundef !10 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_7command9TermWidthECscjwHxV1jUiA_13stdio_fixture.exit, label %bb.c

bb.c:                                             ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i
  %i.bt = atomicrmw sub ptr %i.br, i64 1 release, align 8, !noalias !274
  %i.bu = icmp eq i64 %i.bt, 1
  br i1 %i.bu, label %bb.d, label %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_7command9TermWidthECscjwHxV1jUiA_13stdio_fixture.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v) #21
  br label %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_7command9TermWidthECscjwHxV1jUiA_13stdio_fixture.exit

_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_7command9TermWidthECscjwHxV1jUiA_13stdio_fixture.exit: ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.bc, ptr noundef nonnull align 8 dereferenceable(712) %i.bb, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !283
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !286
  %i.bv = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef 8) #19, !noalias !286 ; 5 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.e, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i46, !prof !273

bb.e:                                             ; preds = %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_7command9TermWidthECscjwHxV1jUiA_13stdio_fixture.exit
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #22, !noalias !286
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i46: ; preds = %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_7command9TermWidthECscjwHxV1jUiA_13stdio_fixture.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bc, i64 224
  store i64 1, ptr %i.bv, align 8, !noalias !283
  %.sroa.4.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i47, align 8, !noalias !283
  %.sroa.5.0..sroa_idx.i48 = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i48, align 8, !noalias !283
  store ptr %i.bv, ptr %i.u, align 8, !noalias !283
end_hunk_0
begin_hunk_1_@_RNvCscjwHxV1jUiA_13stdio_fixture4main:bb.a
  br label %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.i203

_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.i203: ; preds = %bb.q, %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15visible_aliasesReAB1m_j1_ECscjwHxV1jUiA_13stdio_fixture.exit
  %i.if = phi i64 [ %.pre1093, %bb.q ], [ %i.id, %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15visible_aliasesReAB1m_j1_ECscjwHxV1jUiA_13stdio_fixture.exit ]
  %i.ig = load ptr, ptr %i.ib, align 8, !alias.scope !547, !noalias !548, !nonnull !10, !noundef !10 ; 2 uses
  %i.ih = getelementptr inbounds nuw [24 x i8], ptr %i.ig, i64 %i.ic ; 3 uses
  store ptr @30, ptr %i.ih, align 8, !noalias !558
  %.sroa.4.0..sroa_idx.i.i204 = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i204, align 8, !noalias !559
  %.sroa.5.0..sroa_idx.i.i205 = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.i205, align 8, !noalias !559
  %i.ii = add i64 %i.ic, 1                        ; 3 uses
  store i64 %i.ii, ptr %i.ia, align 8, !alias.scope !547, !noalias !548
  call void @llvm.experimental.noalias.scope.decl(metadata !560)
  call void @llvm.experimental.noalias.scope.decl(metadata !561)
  %i.ij = icmp eq i64 %i.ii, %i.if
  br i1 %i.ij, label %bb.r, label %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command25visible_long_flag_aliasesReAB1w_j2_ECscjwHxV1jUiA_13stdio_fixture.exit

bb.r:                                             ; preds = %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.i203
  call fastcc void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEE8grow_oneCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hz) #21, !noalias !556
  %.pre1094 = load ptr, ptr %i.ib, align 8, !alias.scope !553, !noalias !556
  br label %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command25visible_long_flag_aliasesReAB1w_j2_ECscjwHxV1jUiA_13stdio_fixture.exit

_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command25visible_long_flag_aliasesReAB1w_j2_ECscjwHxV1jUiA_13stdio_fixture.exit: ; preds = %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.i203, %bb.r
  %i.ik = phi ptr [ %i.ig, %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.i203 ], [ %.pre1094, %bb.r ]
  %i.il = getelementptr inbounds nuw [24 x i8], ptr %i.ik, i64 %i.ii ; 3 uses
  store ptr @31, ptr %i.il, align 8, !noalias !562
  %.sroa.4.0..sroa_idx.i.1.i207 = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store i64 3, ptr %.sroa.4.0..sroa_idx.i.1.i207, align 8, !noalias !563
  %.sroa.5.0..sroa_idx.i.1.i208 = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.1.i208, align 8, !noalias !563
  %i.im = add i64 %i.ic, 2
  store i64 %i.im, ptr %i.ia, align 8, !alias.scope !553, !noalias !556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.aq, ptr noundef nonnull align 8 dereferenceable(712) %i.ap, i64 712, i1 false), !alias.scope !564, !noalias !565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.experimental.noalias.scope.decl(metadata !566)
  call void @llvm.experimental.noalias.scope.decl(metadata !569)
  %i.in = getelementptr inbounds nuw i8, ptr %i.aq, i64 80 ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.aq, i64 96 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.aq, i64 88 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !571)
  %i.iq = load i64, ptr %i.io, align 8, !alias.scope !574, !noalias !566, !noundef !10 ; 4 uses
  %i.ir = load i64, ptr %i.in, align 8, !range !9, !alias.scope !574, !noalias !566, !noundef !10 ; 2 uses
  %i.is = icmp eq i64 %i.iq, %i.ir
  br i1 %i.is, label %bb.s, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTcbEE8push_mutCscjwHxV1jUiA_13stdio_fixture.exit.i209

bb.s:                                             ; preds = %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command25visible_long_flag_aliasesReAB1w_j2_ECscjwHxV1jUiA_13stdio_fixture.exit
  call fastcc void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTcbEE8grow_oneCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.in) #21, !noalias !566
  %.pre.i211 = load i64, ptr %i.in, align 8, !range !9, !alias.scope !575, !noalias !566
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTcbEE8push_mutCscjwHxV1jUiA_13stdio_fixture.exit.i209

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTcbEE8push_mutCscjwHxV1jUiA_13stdio_fixture.exit.i209: ; preds = %bb.s, %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command25visible_long_flag_aliasesReAB1w_j2_ECscjwHxV1jUiA_13stdio_fixture.exit
  %i.it = phi i64 [ %i.ir, %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command25visible_long_flag_aliasesReAB1w_j2_ECscjwHxV1jUiA_13stdio_fixture.exit ], [ %.pre.i211, %bb.s ]
  %i.iu = load ptr, ptr %i.ip, align 8, !alias.scope !574, !noalias !566, !nonnull !10, !noundef !10 ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.iq ; 2 uses
  store i32 114, ptr %i.iv, align 4, !noalias !577
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  store i8 1, ptr %i.iw, align 4, !noalias !577
  %i.ix = add i64 %i.iq, 1                        ; 3 uses
  store i64 %i.ix, ptr %i.io, align 8, !alias.scope !574, !noalias !566
  call void @llvm.experimental.noalias.scope.decl(metadata !578)
  %i.iy = icmp eq i64 %i.ix, %i.it
  br i1 %i.iy, label %bb.t, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit250

bb.t:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTcbEE8push_mutCscjwHxV1jUiA_13stdio_fixture.exit.i209
  call fastcc void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTcbEE8grow_oneCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.in) #21, !noalias !566
  %.pre8.i210 = load ptr, ptr %i.ip, align 8, !alias.scope !575, !noalias !566
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit250

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit250: ; preds = %bb.t, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTcbEE8push_mutCscjwHxV1jUiA_13stdio_fixture.exit.i209
  %i.iz = phi ptr [ %.pre8.i210, %bb.t ], [ %i.iu, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTcbEE8push_mutCscjwHxV1jUiA_13stdio_fixture.exit.i209 ]
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.ix ; 2 uses
  store i32 121, ptr %i.ja, align 4, !noalias !579
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 4
  store i8 1, ptr %i.jb, align 4, !noalias !579
  %i.jc = add i64 %i.iq, 2
  store i64 %i.jc, ptr %i.io, align 8, !alias.scope !575, !noalias !566
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.ar, ptr noundef nonnull align 8 dereferenceable(712) %i.aq, i64 712, i1 false), !alias.scope !580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB2_7Command19subcommand_internal(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.bj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.bi, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.ar) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @_RNvXs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCsj6eKBz9Db1c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 3) #19
  %.sroa.01050.0.copyload = load i64, ptr %i.ae, align 8
  %.sroa.41051.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.41051.0.copyload = load ptr, ptr %.sroa.41051.0..sroa_idx, align 8
  %.sroa.51052.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.51052.0.copyload = load i64, ptr %.sroa.51052.0..sroa_idx, align 8
  call void @_RNvXs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCsj6eKBz9Db1c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 8) #19
  %.sroa.01053.0.copyload = load i64, ptr %i.ad, align 8
  %.sroa.41054.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.41054.0.copyload = load ptr, ptr %.sroa.41054.0..sroa_idx, align 8
  %.sroa.51055.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.51055.0.copyload = load i64, ptr %.sroa.51055.0..sroa_idx, align 8
  store i64 0, ptr %i.an, align 8
  %.sroa.0669.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 0, ptr %.sroa.0669.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store i64 0, ptr %.sroa.0669.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  store i64 0, ptr %.sroa.0669.sroa.0.sroa.9.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  store i64 -1, ptr %.sroa.0669.sroa.0.sroa.11.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 104
  store i64 0, ptr %.sroa.0669.sroa.0.sroa.13.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0669.sroa.0.sroa.14.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0669.sroa.0.sroa.15.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0669.sroa.0.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0669.sroa.0.sroa.16.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0669.sroa.0.sroa.17.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0669.sroa.0.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0669.sroa.0.sroa.18.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0669.sroa.0.sroa.19.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0669.sroa.0.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0669.sroa.0.sroa.20.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0669.sroa.0.sroa.21.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0669.sroa.0.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0669.sroa.0.sroa.22.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0669.sroa.0.sroa.23.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0669.sroa.0.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0669.sroa.0.sroa.24.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0669.sroa.0.sroa.25.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0669.sroa.0.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0669.sroa.0.sroa.26.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0669.sroa.0.sroa.27.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0669.sroa.0.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0669.sroa.0.sroa.28.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 288
  %.sroa.0669.sroa.0.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0669.sroa.0.sroa.29.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0669.sroa.0.sroa.31.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0669.sroa.0.sroa.32.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0669.sroa.0.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0669.sroa.0.sroa.33.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0669.sroa.0.sroa.34.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0669.sroa.0.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 352
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0669.sroa.0.sroa.35.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 360
  %.sroa.0669.sroa.0.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0669.sroa.0.sroa.36.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0669.sroa.0.sroa.38.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0669.sroa.0.sroa.39.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0669.sroa.0.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0669.sroa.0.sroa.40.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0669.sroa.0.sroa.41.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0669.sroa.0.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0669.sroa.0.sroa.42.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0669.sroa.0.sroa.43.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0669.sroa.0.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 448
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0669.sroa.0.sroa.44.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0669.sroa.0.sroa.45.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0669.sroa.0.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 472
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0669.sroa.0.sroa.46.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 480
  store i64 0, ptr %.sroa.0669.sroa.0.sroa.47.0..sroa_idx, align 8
  %.sroa.0669.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 488
  store i64 %.sroa.01050.0.copyload, ptr %.sroa.0669.sroa.4.0..sroa_idx, align 8
  %.sroa.0669.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 496
  store ptr %.sroa.41051.0.copyload, ptr %.sroa.0669.sroa.5.0..sroa_idx, align 8
  %.sroa.0669.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 504
  store i64 %.sroa.51052.0.copyload, ptr %.sroa.0669.sroa.6.0..sroa_idx, align 8
  %.sroa.4670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 512
  store i64 %.sroa.01053.0.copyload, ptr %.sroa.4670.0..sroa_idx, align 8
  %.sroa.6672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 520
  store ptr %.sroa.41054.0.copyload, ptr %.sroa.6672.0..sroa_idx, align 8
  %.sroa.7674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 528
  store i64 %.sroa.51055.0.copyload, ptr %.sroa.7674.0..sroa_idx, align 8
  %.sroa.7674.sroa.5.0..sroa.7674.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 536
  store ptr @32, ptr %.sroa.7674.sroa.5.0..sroa.7674.0..sroa_idx.sroa_idx, align 8
  %.sroa.7674.sroa.6.0..sroa.7674.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 544
  store i64 7, ptr %.sroa.7674.sroa.6.0..sroa.7674.0..sroa_idx.sroa_idx, align 8
  %.sroa.7674.sroa.7.0..sroa.7674.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 552
  store ptr @32, ptr %.sroa.7674.sroa.7.0..sroa.7674.0..sroa_idx.sroa_idx, align 8
  %.sroa.7674.sroa.8.0..sroa.7674.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 560
  store i64 7, ptr %.sroa.7674.sroa.8.0..sroa.7674.0..sroa_idx.sroa_idx, align 8
  %.sroa.7674.sroa.9.0..sroa.7674.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 568
  store ptr null, ptr %.sroa.7674.sroa.9.0..sroa.7674.0..sroa_idx.sroa_idx, align 8
  %.sroa.7674.sroa.11.0..sroa.7674.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 584
  store i32 -1, ptr %.sroa.7674.sroa.11.0..sroa.7674.0..sroa_idx.sroa_idx, align 8
  %.sroa.7674.sroa.12.0..sroa.7674.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 588
  store i32 -1, ptr %.sroa.7674.sroa.12.0..sroa.7674.0..sroa_idx.sroa_idx, align 4
  %.sroa.7674.sroa.13.0..sroa.7674.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 592
  store i32 0, ptr %.sroa.7674.sroa.13.0..sroa.7674.0..sroa_idx.sroa_idx, align 8
  %.sroa.7675.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 596
  store i8 2, ptr %.sroa.7675.0..sroa_idx, align 4
  %.sroa.8676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 597
  store i24 0, ptr %.sroa.8676.0..sroa_idx, align 1
  call void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.bj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(600) %i.an) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.bk, ptr noundef nonnull align 8 dereferenceable(712) %i.bj, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @_RNvXs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCsj6eKBz9Db1c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 19) #19
  %.sroa.01056.0.copyload = load i64, ptr %i.ac, align 8
  %.sroa.41057.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.41057.0.copyload = load ptr, ptr %.sroa.41057.0..sroa_idx, align 8
  %.sroa.51058.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.51058.0.copyload = load i64, ptr %.sroa.51058.0..sroa_idx, align 8
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !581
  %i.jd = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #19, !noalias !581 ; 4 uses
  %i.je = icmp eq ptr %i.jd, null
  br i1 %i.je, label %bb.u, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit257

bb.u:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit250
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 16) #22, !noalias !594
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit257: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit250
  store ptr @37, ptr %i.jd, align 8, !noalias !595
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  store i64 4, ptr %i.jf, align 8, !noalias !628
  call void @_RNvXs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCsj6eKBz9Db1c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 16) #19
  %.sroa.01061.0.copyload = load i64, ptr %i.ab, align 8
  %.sroa.41062.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.41062.0.copyload = load ptr, ptr %.sroa.41062.0..sroa_idx, align 8
  %.sroa.51063.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.51063.0.copyload = load i64, ptr %.sroa.51063.0..sroa_idx, align 8
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !629
  %i.jg = call noundef align 8 dereferenceable_or_null(216) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 216, i64 noundef range(i64 1, 9) 8) #19, !noalias !629 ; 25 uses
  %i.jh = icmp eq ptr %i.jg, null
  br i1 %i.jh, label %bb.v, label %_RNvXss_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserINtNtCsj6eKBz9Db1c_4core7convert4FromANtNtB7_14possible_value13PossibleValuej3_E4fromCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i

bb.v:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit257
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 216) #22, !noalias !654
  unreachable

_RNvXss_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserINtNtCsj6eKBz9Db1c_4core7convert4FromANtNtB7_14possible_value13PossibleValuej3_E4fromCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit257
  store i64 0, ptr %i.jg, align 8, !noalias !655
  %.sroa.4865.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4865.0..sroa_idx, align 8, !noalias !655
  %.sroa.5866.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  store i64 0, ptr %.sroa.5866.0..sroa_idx, align 8, !noalias !655
  %.sroa.6867.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  store i64 -1, ptr %.sroa.6867.0..sroa_idx, align 8, !noalias !655
  %.sroa.7869.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jg, i64 48
  store ptr @38, ptr %.sroa.7869.0..sroa_idx, align 8, !noalias !655
  %.sroa.8870.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jg, i64 56
  store i64 4, ptr %.sroa.8870.0..sroa_idx, align 8, !noalias !655
  %.sroa.9871.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jg, i64 64
  store i8 0, ptr %.sroa.9871.0..sroa_idx, align 8, !noalias !655
  %.sroa.10872.sroa.3.0..sroa.10872.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.jg, i64 72
  store i64 0, ptr %.sroa.10872.sroa.3.0..sroa.10872.0..sroa_idx.sroa_idx, align 8, !noalias !655
  %.sroa.10872.sroa.4.0..sroa.10872.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.jg, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10872.sroa.4.0..sroa.10872.0..sroa_idx.sroa_idx, align 8, !noalias !655
  %.sroa.10872.sroa.5.0..sroa.10872.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.jg, i64 88
  store i64 0, ptr %.sroa.10872.sroa.5.0..sroa.10872.0..sroa_idx.sroa_idx, align 8, !noalias !655
  %.sroa.10872.sroa.6.0..sroa.10872.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.jg, i64 96
  store i64 %.sroa.01061.0.copyload, ptr %.sroa.10872.sroa.6.0..sroa.10872.0..sroa_idx.sroa_idx, align 8, !noalias !655
  %.sroa.10872.sroa.7.0..sroa.10872.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.jg, i64 104
  store ptr %.sroa.41062.0.copyload, ptr %.sroa.10872.sroa.7.0..sroa.10872.0..sroa_idx.sroa_idx, align 8, !noalias !655
  %.sroa.10872.sroa.8.0..sroa.10872.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.jg, i64 112
  store i64 %.sroa.51063.0.copyload, ptr %.sroa.10872.sroa.8.0..sroa.10872.0..sroa_idx.sroa_idx, align 8, !noalias !655
  %.sroa.10872.sroa.9.0..sroa.10872.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.jg, i64 120
  store ptr @39, ptr %.sroa.10872.sroa.9.0..sroa.10872.0..sroa_idx.sroa_idx, align 8, !noalias !655
  %.sroa.10872.sroa.10.0..sroa.10872.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.jg, i64 128
  store i64 4, ptr %.sroa.10872.sroa.10.0..sroa.10872.0..sroa_idx.sroa_idx, align 8, !noalias !655
  %.sroa.10872.sroa.11.0..sroa.10872.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.jg, i64 136
  store i8 0, ptr %.sroa.10872.sroa.11.0..sroa.10872.0..sroa_idx.sroa_idx, align 8, !noalias !655
  %.sroa.11873.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jg, i64 144
  store i64 0, ptr %.sroa.11873.0..sroa_idx, align 8, !noalias !655
  %.sroa.12874.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jg, i64 152
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.12874.0..sroa_idx, align 8, !noalias !655
  %.sroa.13875.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jg, i64 160
  store i64 0, ptr %.sroa.13875.0..sroa_idx, align 8, !noalias !655
  %.sroa.14876.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jg, i64 168
  store i64 -1, ptr %.sroa.14876.0..sroa_idx, align 8, !noalias !655
  %.sroa.15878.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jg, i64 192
  store ptr @41, ptr %.sroa.15878.0..sroa_idx, align 8, !noalias !655
  %.sroa.16879.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jg, i64 200
  store i64 12, ptr %.sroa.16879.0..sroa_idx, align 8, !noalias !655
  %.sroa.17880.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jg, i64 208
  store i8 1, ptr %.sroa.17880.0..sroa_idx, align 8, !noalias !655
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !671
  %i.ji = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef 8) #19, !noalias !671 ; 5 uses
  %i.jj = icmp eq ptr %i.ji, null
  br i1 %i.jj, label %bb.w, label %_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg12value_parserANtNtB7_14possible_value13PossibleValuej3_ECscjwHxV1jUiA_13stdio_fixture.exit, !prof !273

bb.w:                                             ; preds = %_RNvXss_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserINtNtCsj6eKBz9Db1c_4core7convert4FromANtNtB7_14possible_value13PossibleValuej3_E4fromCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #22, !noalias !671
  unreachable

_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg12value_parserANtNtB7_14possible_value13PossibleValuej3_ECscjwHxV1jUiA_13stdio_fixture.exit: ; preds = %_RNvXss_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserINtNtCsj6eKBz9Db1c_4core7convert4FromANtNtB7_14possible_value13PossibleValuej3_E4fromCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i
  store i64 3, ptr %i.ji, align 8, !noalias !674
  %.sroa.4.0..sroa_idx1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  store ptr %i.jg, ptr %.sroa.4.0..sroa_idx1.i.i.i.i, align 8, !noalias !674
  %.sroa.5.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx2.i.i.i.i, align 8, !noalias !674
  call void @llvm.experimental.noalias.scope.decl(metadata !675)
  call void @llvm.experimental.noalias.scope.decl(metadata !678)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !680
  %i.jk = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #19, !noalias !680 ; 4 uses
  %i.jl = icmp eq ptr %i.jk, null
  br i1 %i.jl, label %bb.x, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit302

bb.x:                                             ; preds = %_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg12value_parserANtNtB7_14possible_value13PossibleValuej3_ECscjwHxV1jUiA_13stdio_fixture.exit
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 16) #22, !noalias !690
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit302: ; preds = %_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg12value_parserANtNtB7_14possible_value13PossibleValuej3_ECscjwHxV1jUiA_13stdio_fixture.exit
  store ptr @38, ptr %i.jk, align 8, !noalias !691
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  store i64 4, ptr %i.jm, align 8, !noalias !724
  store i64 0, ptr %i.am, align 8, !alias.scope !725, !noalias !726
  %.sroa.0746.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 0, ptr %.sroa.0746.sroa.0.sroa.5.0..sroa_idx, align 8, !alias.scope !725, !noalias !726
  %.sroa.0746.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store i64 0, ptr %.sroa.0746.sroa.0.sroa.7.0..sroa_idx, align 8, !alias.scope !725, !noalias !726
  %.sroa.0746.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  store i64 0, ptr %.sroa.0746.sroa.0.sroa.9.0..sroa_idx, align 8, !alias.scope !725, !noalias !726
  %.sroa.0746.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  store i64 4, ptr %.sroa.0746.sroa.4.0..sroa_idx, align 8, !alias.scope !725, !noalias !726
  %.sroa.0746.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  store ptr %i.ji, ptr %.sroa.0746.sroa.5.0..sroa_idx, align 8, !alias.scope !725, !noalias !726
  %.sroa.0746.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  store ptr @60, ptr %.sroa.0746.sroa.6.0..sroa_idx, align 8, !alias.scope !725, !noalias !726
  %.sroa.0746.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 104
  store i64 0, ptr %.sroa.0746.sroa.7.0..sroa_idx, align 8, !alias.scope !725, !noalias !726
  %.sroa.0746.sroa.7.sroa.0.sroa.4.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0746.sroa.7.sroa.0.sroa.4.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx, align 8, !alias.scope !725, !noalias !726
  %.sroa.0746.sroa.7.sroa.0.sroa.5.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0746.sroa.7.sroa.0.sroa.5.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0746.sroa.7.sroa.0.sroa.6.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0746.sroa.7.sroa.0.sroa.6.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx, align 8, !alias.scope !725, !noalias !726
  %.sroa.0746.sroa.7.sroa.0.sroa.7.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0746.sroa.7.sroa.0.sroa.7.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0746.sroa.7.sroa.0.sroa.8.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0746.sroa.7.sroa.0.sroa.8.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx, align 8, !alias.scope !725, !noalias !726
  %.sroa.0746.sroa.7.sroa.0.sroa.9.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0746.sroa.7.sroa.0.sroa.9.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0746.sroa.7.sroa.0.sroa.10.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0746.sroa.7.sroa.0.sroa.10.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx, align 8, !alias.scope !725, !noalias !726
  %.sroa.0746.sroa.7.sroa.0.sroa.11.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0746.sroa.7.sroa.0.sroa.11.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0746.sroa.7.sroa.0.sroa.12.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0746.sroa.7.sroa.0.sroa.12.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx, align 8, !alias.scope !725, !noalias !726
  %.sroa.0746.sroa.7.sroa.0.sroa.13.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0746.sroa.7.sroa.0.sroa.13.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0746.sroa.7.sroa.0.sroa.14.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0746.sroa.7.sroa.0.sroa.14.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx, align 8, !alias.scope !725, !noalias !726
  %.sroa.0746.sroa.7.sroa.0.sroa.15.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0746.sroa.7.sroa.0.sroa.15.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0746.sroa.7.sroa.0.sroa.16.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0746.sroa.7.sroa.0.sroa.16.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx, align 8, !alias.scope !725, !noalias !726
  %.sroa.0746.sroa.7.sroa.0.sroa.17.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0746.sroa.7.sroa.0.sroa.17.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0746.sroa.7.sroa.0.sroa.18.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0746.sroa.7.sroa.0.sroa.18.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx, align 8, !alias.scope !725, !noalias !726
  %.sroa.0746.sroa.7.sroa.0.sroa.19.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 288
  %.sroa.0746.sroa.7.sroa.0.sroa.21.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0746.sroa.7.sroa.0.sroa.19.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0746.sroa.7.sroa.0.sroa.21.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx, align 8, !alias.scope !725, !noalias !726
  %.sroa.0746.sroa.7.sroa.0.sroa.22.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0746.sroa.7.sroa.0.sroa.22.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0746.sroa.7.sroa.0.sroa.23.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0746.sroa.7.sroa.0.sroa.23.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx, align 8, !alias.scope !725, !noalias !726
  %.sroa.0746.sroa.7.sroa.0.sroa.24.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 336
  store i64 0, ptr %.sroa.0746.sroa.7.sroa.0.sroa.24.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx, align 8, !alias.scope !725, !noalias !726
  %.sroa.0746.sroa.7.sroa.4.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 344
  store i64 1, ptr %.sroa.0746.sroa.7.sroa.4.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx, align 8, !alias.scope !725, !noalias !726
  %.sroa.0746.sroa.7.sroa.5.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 352
  store ptr %i.jd, ptr %.sroa.0746.sroa.7.sroa.5.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx, align 8, !alias.scope !725, !noalias !726
  %.sroa.0746.sroa.7.sroa.6.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 360
  store i64 1, ptr %.sroa.0746.sroa.7.sroa.6.0..sroa.0746.sroa.7.0..sroa_idx.sroa_idx, align 8, !alias.scope !725, !noalias !726
  %.sroa.4747.0..sroa_idx748 = getelementptr inbounds nuw i8, ptr %i.am, i64 368
  store i64 1, ptr %.sroa.4747.0..sroa_idx748, align 8, !alias.scope !725, !noalias !726
  %.sroa.6750.0..sroa_idx751 = getelementptr inbounds nuw i8, ptr %i.am, i64 376
  store ptr %i.jk, ptr %.sroa.6750.0..sroa_idx751, align 8, !alias.scope !725, !noalias !726
  %.sroa.8753.0..sroa_idx754 = getelementptr inbounds nuw i8, ptr %i.am, i64 384
  store i64 1, ptr %.sroa.8753.0..sroa_idx754, align 8, !alias.scope !725, !noalias !726
  %.sroa.9756.0..sroa_idx757 = getelementptr inbounds nuw i8, ptr %i.am, i64 392
  store i64 0, ptr %.sroa.9756.0..sroa_idx757, align 8, !alias.scope !725, !noalias !726
  %.sroa.9756.sroa.0.sroa.0.sroa.4.0..sroa.9756.0..sroa_idx757.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.9756.sroa.0.sroa.0.sroa.4.0..sroa.9756.0..sroa_idx757.sroa_idx, align 8, !alias.scope !725, !noalias !726
  %.sroa.9756.sroa.0.sroa.0.sroa.5.0..sroa.9756.0..sroa_idx757.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9756.sroa.0.sroa.0.sroa.5.0..sroa.9756.0..sroa_idx757.sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.9756.sroa.0.sroa.0.sroa.6.0..sroa.9756.0..sroa_idx757.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.9756.sroa.0.sroa.0.sroa.6.0..sroa.9756.0..sroa_idx757.sroa_idx, align 8, !alias.scope !725, !noalias !726
  %.sroa.9756.sroa.0.sroa.0.sroa.7.0..sroa.9756.0..sroa_idx757.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9756.sroa.0.sroa.0.sroa.7.0..sroa.9756.0..sroa_idx757.sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.9756.sroa.0.sroa.0.sroa.8.0..sroa.9756.0..sroa_idx757.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 448
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.9756.sroa.0.sroa.0.sroa.8.0..sroa.9756.0..sroa_idx757.sroa_idx, align 8, !alias.scope !725, !noalias !726
  %.sroa.9756.sroa.0.sroa.0.sroa.9.0..sroa.9756.0..sroa_idx757.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9756.sroa.0.sroa.0.sroa.9.0..sroa.9756.0..sroa_idx757.sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.9756.sroa.0.sroa.0.sroa.10.0..sroa.9756.0..sroa_idx757.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 472
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.9756.sroa.0.sroa.0.sroa.10.0..sroa.9756.0..sroa_idx757.sroa_idx, align 8, !alias.scope !725, !noalias !726
  %.sroa.9756.sroa.0.sroa.0.sroa.11.0..sroa.9756.0..sroa_idx757.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 480
  store i64 0, ptr %.sroa.9756.sroa.0.sroa.0.sroa.11.0..sroa.9756.0..sroa_idx757.sroa_idx, align 8, !alias.scope !725, !noalias !726
end_hunk_1
