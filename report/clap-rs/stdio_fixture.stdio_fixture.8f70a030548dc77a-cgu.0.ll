Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clap-rs/original/stdio_fixture.stdio_fixture.8f70a030548dc77a-cgu.0?download=true
inline.NumInlined: 654
inline.NumDeleted: 466
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11arg_matches10ArgMatchesECscjwHxV1jUiA_13stdio_fixture:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.val3.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !238, !noalias !239, !noundef !10 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %i.ap = icmp eq i64 %.val3.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ap, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i7.i.i.i.i.i

.lr.ph.i.i.i.i.i.i7.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i4.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ar, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i4.i.i.i.i.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %.val2.i.i.i.i6.i.i.i.i.i, i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ar = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aq, align 8, !range !9, !alias.scope !240, !noalias !243, !noundef !10 ; 2 uses
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
  %i.by = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @1, ptr %i.by, align 8, !noalias !283
  %i.bz = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) @0, i64 16, i1 false), !noalias !283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !283
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bx, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(16) @0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.u) #19
  %i.ca = load ptr, ptr %i.t, align 8, !noalias !283, !noundef !10 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command13visible_aliasReECscjwHxV1jUiA_13stdio_fixture.exit, label %bb.f

bb.f:                                             ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i46
  %i.cc = atomicrmw sub ptr %i.ca, i64 1 release, align 8, !noalias !289
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.g, label %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command13visible_aliasReECscjwHxV1jUiA_13stdio_fixture.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t) #21
  br label %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command13visible_aliasReECscjwHxV1jUiA_13stdio_fixture.exit

_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command13visible_aliasReECscjwHxV1jUiA_13stdio_fixture.exit: ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i46, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !283
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.bd, ptr noundef nonnull align 8 dereferenceable(712) %i.bc, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bd, i64 700 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !noundef !10
  %i.cg = or i32 %i.cf, 65536
  store i32 %i.cg, ptr %i.ce, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ba, i64 560
  store ptr @10, ptr %i.ch, align 8, !alias.scope !298, !noalias !301
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ba, i64 568
  store i64 4, ptr %i.ci, align 8, !alias.scope !298, !noalias !301
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ba, i64 576
  store ptr null, ptr %i.cj, align 8, !alias.scope !298, !noalias !301
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ba, i64 696
  store i32 -1, ptr %i.ck, align 8, !alias.scope !298, !noalias !301
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ba, i64 272
  store i64 -1, ptr %i.cl, align 8, !alias.scope !298, !noalias !301
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ba, i64 296
  store i64 -1, ptr %i.cm, align 8, !alias.scope !298, !noalias !301
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ba, i64 592
  store ptr null, ptr %i.cn, align 8, !alias.scope !298, !noalias !301
  %i.co = getelementptr inbounds nuw i8, ptr %i.ba, i64 608
  store ptr null, ptr %i.co, align 8, !alias.scope !298, !noalias !301
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ba, i64 624
  store ptr null, ptr %i.cp, align 8, !alias.scope !298, !noalias !301
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ba, i64 320
  store i64 -1, ptr %i.cq, align 8, !alias.scope !298, !noalias !301
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ba, i64 344
  store i64 -1, ptr %i.cr, align 8, !alias.scope !298, !noalias !301
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ba, i64 368
  store i64 -1, ptr %i.cs, align 8, !alias.scope !298, !noalias !301
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ba, i64 392
  store i64 -1, ptr %i.ct, align 8, !alias.scope !298, !noalias !301
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ba, i64 416
  store i64 -1, ptr %i.cu, align 8, !alias.scope !298, !noalias !301
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ba, i64 440
  store i64 -1, ptr %i.cv, align 8, !alias.scope !298, !noalias !301
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  store i64 0, ptr %i.cw, align 8, !alias.scope !298, !noalias !301
  %.sroa.4.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i49, align 8, !alias.scope !298, !noalias !301
  %.sroa.5.0..sroa_idx.i50 = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %.sroa.424.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %i.ba, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i50, i8 0, i64 16, i1 false), !alias.scope !298, !noalias !301
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.424.0..sroa_idx.i51, align 8, !alias.scope !298, !noalias !301
  %.sroa.525.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %i.ba, i64 96
  %.sroa.427.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.525.0..sroa_idx.i52, i8 0, i64 16, i1 false), !alias.scope !298, !noalias !301
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.427.0..sroa_idx.i53, align 8, !alias.scope !298, !noalias !301
  %.sroa.528.0..sroa_idx.i54 = getelementptr inbounds nuw i8, ptr %i.ba, i64 120
  store i64 0, ptr %.sroa.528.0..sroa_idx.i54, align 8, !alias.scope !298, !noalias !301
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ba, i64 464
  store i64 -1, ptr %i.cx, align 8, !alias.scope !298, !noalias !301
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ba, i64 488
  store i64 -1, ptr %i.cy, align 8, !alias.scope !298, !noalias !301
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ba, i64 512
  store i64 -1, ptr %i.cz, align 8, !alias.scope !298, !noalias !301
  store i64 0, ptr %i.ba, align 8, !alias.scope !298, !noalias !301
  %i.da = getelementptr inbounds nuw i8, ptr %i.ba, i64 536
  store i64 -1, ptr %i.da, align 8, !alias.scope !298, !noalias !301
  %i.db = getelementptr inbounds nuw i8, ptr %i.ba, i64 700
  store i32 0, ptr %i.db, align 4, !alias.scope !298, !noalias !301
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ba, i64 704
  store i32 0, ptr %i.dc, align 8, !alias.scope !298, !noalias !301
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ba, i64 128
  store i64 0, ptr %i.dd, align 8, !alias.scope !298, !noalias !301
  %.sroa.441.0..sroa_idx.i55 = getelementptr inbounds nuw i8, ptr %i.ba, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.441.0..sroa_idx.i55, align 8, !alias.scope !298, !noalias !301
  %.sroa.542.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %i.ba, i64 144
  %.sroa.643.sroa.4.0..sroa.643.0..sroa_idx.sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.542.0..sroa_idx.i56, i8 0, i64 16, i1 false), !alias.scope !298, !noalias !301
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.643.sroa.4.0..sroa.643.0..sroa_idx.sroa_idx.i57, align 8, !alias.scope !298, !noalias !301
  %.sroa.643.sroa.5.0..sroa.643.0..sroa_idx.sroa_idx.i58 = getelementptr inbounds nuw i8, ptr %i.ba, i64 168
  %.sroa.430.0..sroa_idx.i59 = getelementptr inbounds nuw i8, ptr %i.ba, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.643.sroa.5.0..sroa.643.0..sroa_idx.sroa_idx.i58, i8 0, i64 16, i1 false), !alias.scope !298, !noalias !301
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.430.0..sroa_idx.i59, align 8, !alias.scope !298, !noalias !301
  %.sroa.531.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %i.ba, i64 192
  %.sroa.433.0..sroa_idx.i61 = getelementptr inbounds nuw i8, ptr %i.ba, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.531.0..sroa_idx.i60, i8 0, i64 16, i1 false), !alias.scope !298, !noalias !301
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.433.0..sroa_idx.i61, align 8, !alias.scope !298, !noalias !301
  %.sroa.534.0..sroa_idx.i62 = getelementptr inbounds nuw i8, ptr %i.ba, i64 216
  store i64 0, ptr %.sroa.534.0..sroa_idx.i62, align 8, !alias.scope !298, !noalias !301
  %i.de = getelementptr inbounds nuw i8, ptr %i.ba, i64 640
  store ptr null, ptr %i.de, align 8, !alias.scope !298, !noalias !301
  %i.df = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 1, ptr %i.df, align 8, !alias.scope !298, !noalias !301
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store i64 0, ptr %i.dg, align 8, !alias.scope !298, !noalias !301
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ba, i64 656
  store ptr null, ptr %i.dh, align 8, !alias.scope !298, !noalias !301
  %i.di = getelementptr inbounds nuw i8, ptr %i.ba, i64 672
  store ptr null, ptr %i.di, align 8, !alias.scope !298, !noalias !301
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store i64 -1, ptr %i.dj, align 8, !alias.scope !298, !noalias !301
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ba, i64 708
  store i8 0, ptr %i.dk, align 4, !alias.scope !298, !noalias !301
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ba, i64 688
  store ptr null, ptr %i.dl, align 8, !alias.scope !298, !noalias !301
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ba, i64 224
  store i64 0, ptr %i.dm, align 8, !alias.scope !298, !noalias !301
  %.sroa.455.0..sroa_idx.i63 = getelementptr inbounds nuw i8, ptr %i.ba, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.455.0..sroa_idx.i63, align 8, !alias.scope !298, !noalias !301
  %.sroa.556.0..sroa_idx.i64 = getelementptr inbounds nuw i8, ptr %i.ba, i64 240
  %.sroa.657.sroa.4.0..sroa.657.0..sroa_idx.sroa_idx.i65 = getelementptr inbounds nuw i8, ptr %i.ba, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.556.0..sroa_idx.i64, i8 0, i64 16, i1 false), !alias.scope !298, !noalias !301
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.657.sroa.4.0..sroa.657.0..sroa_idx.sroa_idx.i65, align 8, !alias.scope !298, !noalias !301
  %.sroa.657.sroa.5.0..sroa.657.0..sroa_idx.sroa_idx.i66 = getelementptr inbounds nuw i8, ptr %i.ba, i64 264
  store i64 0, ptr %.sroa.657.sroa.5.0..sroa.657.0..sroa_idx.sroa_idx.i66, align 8, !alias.scope !298, !noalias !301
  call void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB2_7Command19subcommand_internal(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.be, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.bd, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.ba) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0407)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8414.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ay, i64 560
  store ptr @11, ptr %i.dn, align 8, !alias.scope !303, !noalias !306
  %i.do = getelementptr inbounds nuw i8, ptr %i.ay, i64 568
  store i64 4, ptr %i.do, align 8, !alias.scope !303, !noalias !306
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ay, i64 576
  store ptr null, ptr %i.dp, align 8, !alias.scope !303, !noalias !306
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ay, i64 696
  store i32 -1, ptr %i.dq, align 8, !alias.scope !303, !noalias !306
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ay, i64 272
  store i64 -1, ptr %i.dr, align 8, !alias.scope !303, !noalias !306
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ay, i64 296
  store i64 -1, ptr %i.ds, align 8, !alias.scope !303, !noalias !306
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ay, i64 592
  store ptr null, ptr %i.dt, align 8, !alias.scope !303, !noalias !306
  %i.du = getelementptr inbounds nuw i8, ptr %i.ay, i64 608
  store ptr null, ptr %i.du, align 8, !alias.scope !303, !noalias !306
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ay, i64 624
  store ptr null, ptr %i.dv, align 8, !alias.scope !303, !noalias !306
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ay, i64 320
  store i64 -1, ptr %i.dw, align 8, !alias.scope !303, !noalias !306
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ay, i64 344 ; 2 uses
  store i64 -1, ptr %i.dx, align 8, !alias.scope !303, !noalias !306
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ay, i64 368 ; 2 uses
  store i64 -1, ptr %i.dy, align 8, !alias.scope !303, !noalias !306
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ay, i64 392
  store i64 -1, ptr %i.dz, align 8, !alias.scope !303, !noalias !306
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ay, i64 416
  store i64 -1, ptr %i.ea, align 8, !alias.scope !303, !noalias !306
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ay, i64 440
  store i64 -1, ptr %i.eb, align 8, !alias.scope !303, !noalias !306
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ay, i64 56 ; 2 uses
  store i64 0, ptr %i.ec, align 8, !alias.scope !303, !noalias !306
  %.sroa.4.0..sroa_idx.i67 = getelementptr inbounds nuw i8, ptr %i.ay, i64 64 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i67, align 8, !alias.scope !303, !noalias !306
  %.sroa.5.0..sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %i.ay, i64 72 ; 2 uses
  %.sroa.424.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %i.ay, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i68, i8 0, i64 16, i1 false), !alias.scope !303, !noalias !306
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.424.0..sroa_idx.i69, align 8, !alias.scope !303, !noalias !306
  %.sroa.525.0..sroa_idx.i70 = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  %.sroa.427.0..sroa_idx.i71 = getelementptr inbounds nuw i8, ptr %i.ay, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.525.0..sroa_idx.i70, i8 0, i64 16, i1 false), !alias.scope !303, !noalias !306
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.427.0..sroa_idx.i71, align 8, !alias.scope !303, !noalias !306
  %.sroa.528.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  store i64 0, ptr %.sroa.528.0..sroa_idx.i72, align 8, !alias.scope !303, !noalias !306
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ay, i64 464
  store i64 -1, ptr %i.ed, align 8, !alias.scope !303, !noalias !306
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ay, i64 488
  store i64 -1, ptr %i.ee, align 8, !alias.scope !303, !noalias !306
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ay, i64 512
  store i64 -1, ptr %i.ef, align 8, !alias.scope !303, !noalias !306
  store i64 0, ptr %i.ay, align 8, !alias.scope !303, !noalias !306
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ay, i64 536
  store i64 -1, ptr %i.eg, align 8, !alias.scope !303, !noalias !306
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ay, i64 700
  store i32 0, ptr %i.eh, align 4, !alias.scope !303, !noalias !306
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ay, i64 704
  store i32 0, ptr %i.ei, align 8, !alias.scope !303, !noalias !306
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ay, i64 128
  store i64 0, ptr %i.ej, align 8, !alias.scope !303, !noalias !306
  %.sroa.441.0..sroa_idx.i73 = getelementptr inbounds nuw i8, ptr %i.ay, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.441.0..sroa_idx.i73, align 8, !alias.scope !303, !noalias !306
  %.sroa.542.0..sroa_idx.i74 = getelementptr inbounds nuw i8, ptr %i.ay, i64 144
  %.sroa.643.sroa.4.0..sroa.643.0..sroa_idx.sroa_idx.i75 = getelementptr inbounds nuw i8, ptr %i.ay, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.542.0..sroa_idx.i74, i8 0, i64 16, i1 false), !alias.scope !303, !noalias !306
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.643.sroa.4.0..sroa.643.0..sroa_idx.sroa_idx.i75, align 8, !alias.scope !303, !noalias !306
  %.sroa.643.sroa.5.0..sroa.643.0..sroa_idx.sroa_idx.i76 = getelementptr inbounds nuw i8, ptr %i.ay, i64 168
  %.sroa.430.0..sroa_idx.i77 = getelementptr inbounds nuw i8, ptr %i.ay, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.643.sroa.5.0..sroa.643.0..sroa_idx.sroa_idx.i76, i8 0, i64 16, i1 false), !alias.scope !303, !noalias !306
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.430.0..sroa_idx.i77, align 8, !alias.scope !303, !noalias !306
  %.sroa.531.0..sroa_idx.i78 = getelementptr inbounds nuw i8, ptr %i.ay, i64 192
  %.sroa.433.0..sroa_idx.i79 = getelementptr inbounds nuw i8, ptr %i.ay, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.531.0..sroa_idx.i78, i8 0, i64 16, i1 false), !alias.scope !303, !noalias !306
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.433.0..sroa_idx.i79, align 8, !alias.scope !303, !noalias !306
  %.sroa.534.0..sroa_idx.i80 = getelementptr inbounds nuw i8, ptr %i.ay, i64 216
  store i64 0, ptr %.sroa.534.0..sroa_idx.i80, align 8, !alias.scope !303, !noalias !306
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ay, i64 640
  store ptr null, ptr %i.ek, align 8, !alias.scope !303, !noalias !306
  %i.el = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 1, ptr %i.el, align 8, !alias.scope !303, !noalias !306
  %i.em = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store i64 0, ptr %i.em, align 8, !alias.scope !303, !noalias !306
  %i.en = getelementptr inbounds nuw i8, ptr %i.ay, i64 656
  store ptr null, ptr %i.en, align 8, !alias.scope !303, !noalias !306
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ay, i64 672
  store ptr null, ptr %i.eo, align 8, !alias.scope !303, !noalias !306
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store i64 -1, ptr %i.ep, align 8, !alias.scope !303, !noalias !306
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ay, i64 708
  store i8 0, ptr %i.eq, align 4, !alias.scope !303, !noalias !306
  %i.er = getelementptr inbounds nuw i8, ptr %i.ay, i64 688
  store ptr null, ptr %i.er, align 8, !alias.scope !303, !noalias !306
  %i.es = getelementptr inbounds nuw i8, ptr %i.ay, i64 224
  store i64 0, ptr %i.es, align 8, !alias.scope !303, !noalias !306
  %.sroa.455.0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %i.ay, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.455.0..sroa_idx.i81, align 8, !alias.scope !303, !noalias !306
  %.sroa.556.0..sroa_idx.i82 = getelementptr inbounds nuw i8, ptr %i.ay, i64 240
  %.sroa.657.sroa.4.0..sroa.657.0..sroa_idx.sroa_idx.i83 = getelementptr inbounds nuw i8, ptr %i.ay, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.556.0..sroa_idx.i82, i8 0, i64 16, i1 false), !alias.scope !303, !noalias !306
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.657.sroa.4.0..sroa.657.0..sroa_idx.sroa_idx.i83, align 8, !alias.scope !303, !noalias !306
  %.sroa.657.sroa.5.0..sroa.657.0..sroa_idx.sroa_idx.i84 = getelementptr inbounds nuw i8, ptr %i.ay, i64 264
  store i64 0, ptr %.sroa.657.sroa.5.0..sroa.657.0..sroa_idx.sroa_idx.i84, align 8, !alias.scope !303, !noalias !306
  call void @llvm.experimental.noalias.scope.decl(metadata !308)
  call void @llvm.experimental.noalias.scope.decl(metadata !311)
  call void @llvm.experimental.noalias.scope.decl(metadata !313)
  call fastcc void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEE8grow_oneCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ec) #21, !noalias !316
  %i.et = load ptr, ptr %.sroa.4.0..sroa_idx.i67, align 8, !alias.scope !318, !noalias !316, !nonnull !10, !noundef !10 ; 3 uses
  store ptr @12, ptr %i.et, align 8, !noalias !319
  %.sroa.4.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i64 8, ptr %.sroa.4.0..sroa_idx.i85, align 8, !noalias !319
  %.sroa.5.0..sroa_idx.i86 = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i8 1, ptr %.sroa.5.0..sroa_idx.i86, align 8, !noalias !319
  store i64 1, ptr %.sroa.5.0..sroa_idx.i68, align 8, !alias.scope !318, !noalias !316
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.0407, ptr noundef nonnull align 8 dereferenceable(344) %i.ay, i64 344, i1 false), !alias.scope !320
  %.sroa.4408.0.copyload = load i64, ptr %i.dx, align 8, !alias.scope !320 ; 2 uses
  %.sroa.6411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 352
  %.sroa.6411.0.copyload = load ptr, ptr %.sroa.6411.0..sroa_idx, align 8, !alias.scope !320 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.8414.sroa.5, ptr noundef nonnull align 8 dereferenceable(344) %i.dy, i64 344, i1 false), !alias.scope !320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  call void @llvm.experimental.noalias.scope.decl(metadata !324)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !326
  call void @_RNvXs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCsj6eKBz9Db1c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef range(i64 23, 41) 33) #19, !noalias !328
  %i.eu = load i64, ptr %i.s, align 8, !range !20, !noalias !326, !noundef !10 ; 2 uses
  %i.ev = icmp eq i64 %i.eu, -1                   ; 2 uses
  %.sroa.4.0..sroa_idx.i87 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5.i.sroa.0.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i87, align 8
  %.sroa.5.i.sroa.4.0..sroa.4.0..sroa_idx.i87.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.5.i.sroa.4.0.copyload = load i64, ptr %.sroa.5.i.sroa.4.0..sroa.4.0..sroa_idx.i87.sroa_idx, align 8
  %.sroa.5.i.sroa.0.0 = select i1 %i.ev, ptr undef, ptr %.sroa.5.i.sroa.0.0.copyload
  %.sroa.5.i.sroa.4.0 = select i1 %i.ev, i64 undef, i64 %.sroa.5.i.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !326
  %i.ew = icmp sgt i64 %.sroa.4408.0.copyload, 0
  br i1 %i.ew, label %bb.h, label %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15visible_aliasesReAB1m_j2_ECscjwHxV1jUiA_13stdio_fixture.exit

bb.h:                                             ; preds = %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command13visible_aliasReECscjwHxV1jUiA_13stdio_fixture.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6411.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6411.0.copyload, i64 noundef %.sroa.4408.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !329
  br label %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15visible_aliasesReAB1m_j2_ECscjwHxV1jUiA_13stdio_fixture.exit

_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15visible_aliasesReAB1m_j2_ECscjwHxV1jUiA_13stdio_fixture.exit: ; preds = %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command13visible_aliasReECscjwHxV1jUiA_13stdio_fixture.exit, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.az, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.0407, i64 344, i1 false), !alias.scope !328, !noalias !332
  %.sroa.4408.0..sroa_idx409 = getelementptr inbounds nuw i8, ptr %i.az, i64 344
  store i64 %i.eu, ptr %.sroa.4408.0..sroa_idx409, align 8, !alias.scope !328, !noalias !332
  %.sroa.6411.0..sroa_idx412 = getelementptr inbounds nuw i8, ptr %i.az, i64 352
  store ptr %.sroa.5.i.sroa.0.0, ptr %.sroa.6411.0..sroa_idx412, align 8, !alias.scope !328, !noalias !332
  %.sroa.8414.0..sroa_idx415 = getelementptr inbounds nuw i8, ptr %i.az, i64 360
  store i64 %.sroa.5.i.sroa.4.0, ptr %.sroa.8414.0..sroa_idx415, align 8, !alias.scope !328, !noalias !332
  %.sroa.8414.sroa.5.0..sroa.8414.0..sroa_idx415.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.8414.sroa.5.0..sroa.8414.0..sroa_idx415.sroa_idx, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.8414.sroa.5, i64 344, i1 false), !alias.scope !328, !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0407)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8414.sroa.5)
  call void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB2_7Command19subcommand_internal(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.bf, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.be, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.az) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0416.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8423.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0425)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10434.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.aw, i64 560
  store ptr @14, ptr %i.ex, align 8, !alias.scope !333, !noalias !336
  %i.ey = getelementptr inbounds nuw i8, ptr %i.aw, i64 568
  store i64 6, ptr %i.ey, align 8, !alias.scope !333, !noalias !336
  %i.ez = getelementptr inbounds nuw i8, ptr %i.aw, i64 576
  store ptr null, ptr %i.ez, align 8, !alias.scope !333, !noalias !336
  %i.fa = getelementptr inbounds nuw i8, ptr %i.aw, i64 696
  store i32 -1, ptr %i.fa, align 8, !alias.scope !333, !noalias !336
  %i.fb = getelementptr inbounds nuw i8, ptr %i.aw, i64 272
  store i64 -1, ptr %i.fb, align 8, !alias.scope !333, !noalias !336
  %i.fc = getelementptr inbounds nuw i8, ptr %i.aw, i64 296
  store i64 -1, ptr %i.fc, align 8, !alias.scope !333, !noalias !336
  %i.fd = getelementptr inbounds nuw i8, ptr %i.aw, i64 592
  store ptr null, ptr %i.fd, align 8, !alias.scope !333, !noalias !336
  %i.fe = getelementptr inbounds nuw i8, ptr %i.aw, i64 608
  store ptr null, ptr %i.fe, align 8, !alias.scope !333, !noalias !336
  %i.ff = getelementptr inbounds nuw i8, ptr %i.aw, i64 624
  store ptr null, ptr %i.ff, align 8, !alias.scope !333, !noalias !336
  %i.fg = getelementptr inbounds nuw i8, ptr %i.aw, i64 320 ; 2 uses
  store i64 -1, ptr %i.fg, align 8, !alias.scope !333, !noalias !336
  %i.fh = getelementptr inbounds nuw i8, ptr %i.aw, i64 344 ; 2 uses
  store i64 -1, ptr %i.fh, align 8, !alias.scope !333, !noalias !336
  %i.fi = getelementptr inbounds nuw i8, ptr %i.aw, i64 368 ; 2 uses
  store i64 -1, ptr %i.fi, align 8, !alias.scope !333, !noalias !336
  %i.fj = getelementptr inbounds nuw i8, ptr %i.aw, i64 392
  store i64 -1, ptr %i.fj, align 8, !alias.scope !333, !noalias !336
  %i.fk = getelementptr inbounds nuw i8, ptr %i.aw, i64 416
  store i64 -1, ptr %i.fk, align 8, !alias.scope !333, !noalias !336
  %i.fl = getelementptr inbounds nuw i8, ptr %i.aw, i64 440
  store i64 -1, ptr %i.fl, align 8, !alias.scope !333, !noalias !336
  %i.fm = getelementptr inbounds nuw i8, ptr %i.aw, i64 56 ; 2 uses
  store i64 0, ptr %i.fm, align 8, !alias.scope !333, !noalias !336
  %.sroa.4.0..sroa_idx.i88 = getelementptr inbounds nuw i8, ptr %i.aw, i64 64 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i88, align 8, !alias.scope !333, !noalias !336
  %.sroa.5.0..sroa_idx.i89 = getelementptr inbounds nuw i8, ptr %i.aw, i64 72 ; 3 uses
  %.sroa.424.0..sroa_idx.i90 = getelementptr inbounds nuw i8, ptr %i.aw, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i89, i8 0, i64 16, i1 false), !alias.scope !333, !noalias !336
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.424.0..sroa_idx.i90, align 8, !alias.scope !333, !noalias !336
  %.sroa.525.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  %.sroa.427.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %i.aw, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.525.0..sroa_idx.i91, i8 0, i64 16, i1 false), !alias.scope !333, !noalias !336
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.427.0..sroa_idx.i92, align 8, !alias.scope !333, !noalias !336
  %.sroa.528.0..sroa_idx.i93 = getelementptr inbounds nuw i8, ptr %i.aw, i64 120
  store i64 0, ptr %.sroa.528.0..sroa_idx.i93, align 8, !alias.scope !333, !noalias !336
  %i.fn = getelementptr inbounds nuw i8, ptr %i.aw, i64 464
  store i64 -1, ptr %i.fn, align 8, !alias.scope !333, !noalias !336
  %i.fo = getelementptr inbounds nuw i8, ptr %i.aw, i64 488
  store i64 -1, ptr %i.fo, align 8, !alias.scope !333, !noalias !336
  %i.fp = getelementptr inbounds nuw i8, ptr %i.aw, i64 512
  store i64 -1, ptr %i.fp, align 8, !alias.scope !333, !noalias !336
  store i64 0, ptr %i.aw, align 8, !alias.scope !333, !noalias !336
  %i.fq = getelementptr inbounds nuw i8, ptr %i.aw, i64 536
  store i64 -1, ptr %i.fq, align 8, !alias.scope !333, !noalias !336
  %i.fr = getelementptr inbounds nuw i8, ptr %i.aw, i64 700
  store i32 0, ptr %i.fr, align 4, !alias.scope !333, !noalias !336
  %i.fs = getelementptr inbounds nuw i8, ptr %i.aw, i64 704
  store i32 0, ptr %i.fs, align 8, !alias.scope !333, !noalias !336
  %i.ft = getelementptr inbounds nuw i8, ptr %i.aw, i64 128
  store i64 0, ptr %i.ft, align 8, !alias.scope !333, !noalias !336
  %.sroa.441.0..sroa_idx.i94 = getelementptr inbounds nuw i8, ptr %i.aw, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.441.0..sroa_idx.i94, align 8, !alias.scope !333, !noalias !336
  %.sroa.542.0..sroa_idx.i95 = getelementptr inbounds nuw i8, ptr %i.aw, i64 144
  %.sroa.643.sroa.4.0..sroa.643.0..sroa_idx.sroa_idx.i96 = getelementptr inbounds nuw i8, ptr %i.aw, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.542.0..sroa_idx.i95, i8 0, i64 16, i1 false), !alias.scope !333, !noalias !336
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.643.sroa.4.0..sroa.643.0..sroa_idx.sroa_idx.i96, align 8, !alias.scope !333, !noalias !336
  %.sroa.643.sroa.5.0..sroa.643.0..sroa_idx.sroa_idx.i97 = getelementptr inbounds nuw i8, ptr %i.aw, i64 168
  %.sroa.430.0..sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %i.aw, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.643.sroa.5.0..sroa.643.0..sroa_idx.sroa_idx.i97, i8 0, i64 16, i1 false), !alias.scope !333, !noalias !336
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.430.0..sroa_idx.i98, align 8, !alias.scope !333, !noalias !336
  %.sroa.531.0..sroa_idx.i99 = getelementptr inbounds nuw i8, ptr %i.aw, i64 192
  %.sroa.433.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.aw, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.531.0..sroa_idx.i99, i8 0, i64 16, i1 false), !alias.scope !333, !noalias !336
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.433.0..sroa_idx.i100, align 8, !alias.scope !333, !noalias !336
  %.sroa.534.0..sroa_idx.i101 = getelementptr inbounds nuw i8, ptr %i.aw, i64 216
  store i64 0, ptr %.sroa.534.0..sroa_idx.i101, align 8, !alias.scope !333, !noalias !336
  %i.fu = getelementptr inbounds nuw i8, ptr %i.aw, i64 640
  store ptr null, ptr %i.fu, align 8, !alias.scope !333, !noalias !336
  %i.fv = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 1, ptr %i.fv, align 8, !alias.scope !333, !noalias !336
  %i.fw = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i64 0, ptr %i.fw, align 8, !alias.scope !333, !noalias !336
  %i.fx = getelementptr inbounds nuw i8, ptr %i.aw, i64 656
  store ptr null, ptr %i.fx, align 8, !alias.scope !333, !noalias !336
  %i.fy = getelementptr inbounds nuw i8, ptr %i.aw, i64 672
  store ptr null, ptr %i.fy, align 8, !alias.scope !333, !noalias !336
  %i.fz = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store i64 -1, ptr %i.fz, align 8, !alias.scope !333, !noalias !336
  %i.ga = getelementptr inbounds nuw i8, ptr %i.aw, i64 708
  store i8 0, ptr %i.ga, align 4, !alias.scope !333, !noalias !336
  %i.gb = getelementptr inbounds nuw i8, ptr %i.aw, i64 688
  store ptr null, ptr %i.gb, align 8, !alias.scope !333, !noalias !336
  %i.gc = getelementptr inbounds nuw i8, ptr %i.aw, i64 224
  store i64 0, ptr %i.gc, align 8, !alias.scope !333, !noalias !336
  %.sroa.455.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %i.aw, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.455.0..sroa_idx.i102, align 8, !alias.scope !333, !noalias !336
  %.sroa.556.0..sroa_idx.i103 = getelementptr inbounds nuw i8, ptr %i.aw, i64 240
  %.sroa.657.sroa.4.0..sroa.657.0..sroa_idx.sroa_idx.i104 = getelementptr inbounds nuw i8, ptr %i.aw, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.556.0..sroa_idx.i103, i8 0, i64 16, i1 false), !alias.scope !333, !noalias !336
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.657.sroa.4.0..sroa.657.0..sroa_idx.sroa_idx.i104, align 8, !alias.scope !333, !noalias !336
  %.sroa.657.sroa.5.0..sroa.657.0..sroa_idx.sroa_idx.i105 = getelementptr inbounds nuw i8, ptr %i.aw, i64 264
  store i64 0, ptr %.sroa.657.sroa.5.0..sroa.657.0..sroa_idx.sroa_idx.i105, align 8, !alias.scope !333, !noalias !336
  call void @llvm.experimental.noalias.scope.decl(metadata !338)
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  call void @llvm.experimental.noalias.scope.decl(metadata !343)
  call void @llvm.experimental.noalias.scope.decl(metadata !346)
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fm, i64 noundef 0, i64 noundef 2, i64 noundef 24) #19
  %.pre.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i89, align 8, !alias.scope !349, !noalias !350 ; 2 uses
  %i.gd = load ptr, ptr %.sroa.4.0..sroa_idx.i88, align 8, !alias.scope !349, !noalias !350, !nonnull !10, !noundef !10
  %i.ge = getelementptr inbounds nuw [24 x i8], ptr %i.gd, i64 %.pre.i.i.i ; 6 uses
  store ptr @15, ptr %i.ge, align 8, !noalias !354
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store i64 14, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !379
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store i8 1, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !379
  %i.gf = getelementptr i8, ptr %i.ge, i64 24
  store ptr @16, ptr %i.gf, align 8, !noalias !354
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.1.i = getelementptr i8, ptr %i.ge, i64 32
  store i64 5, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.1.i, align 8, !noalias !379
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.1.i = getelementptr i8, ptr %i.ge, i64 40
  store i8 1, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.1.i, align 8, !noalias !379
  %i.gg = add i64 %.pre.i.i.i, 2
  store i64 %i.gg, ptr %.sroa.5.0..sroa_idx.i89, align 8, !alias.scope !349, !noalias !380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.0425, ptr noundef nonnull align 8 dereferenceable(320) %i.aw, i64 320, i1 false), !alias.scope !381, !noalias !382
  %.sroa.4426.0.copyload = load i64, ptr %i.fg, align 8, !alias.scope !381, !noalias !382 ; 2 uses
  %.sroa.6428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 328
  %.sroa.6428.0.copyload = load ptr, ptr %.sroa.6428.0..sroa_idx, align 8, !alias.scope !381, !noalias !382 ; 2 uses
  %.sroa.8432.0.copyload = load i64, ptr %i.fh, align 8, !alias.scope !381, !noalias !382 ; 2 uses
  %.sroa.9433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 352
  %.sroa.9433.0.copyload = load ptr, ptr %.sroa.9433.0..sroa_idx, align 8, !alias.scope !381, !noalias !382 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.10434.sroa.4, ptr noundef nonnull align 8 dereferenceable(344) %i.fi, i64 344, i1 false), !alias.scope !381, !noalias !382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.experimental.noalias.scope.decl(metadata !383)
  call void @llvm.experimental.noalias.scope.decl(metadata !386)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !388
  call void @_RNvXs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCsj6eKBz9Db1c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 23, 41) 23) #19, !noalias !390
  %i.gh = load i64, ptr %i.r, align 8, !range !20, !noalias !388, !noundef !10 ; 2 uses
  %i.gi = icmp eq i64 %i.gh, -1                   ; 2 uses
  %.sroa.4.0..sroa_idx.i107 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5.i106.sroa.0.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i107, align 8
  %.sroa.5.i106.sroa.4.0..sroa.4.0..sroa_idx.i107.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.5.i106.sroa.4.0.copyload = load i64, ptr %.sroa.5.i106.sroa.4.0..sroa.4.0..sroa_idx.i107.sroa_idx, align 8
  %.sroa.5.i106.sroa.0.0 = select i1 %i.gi, ptr undef, ptr %.sroa.5.i106.sroa.0.0.copyload
  %.sroa.5.i106.sroa.4.0 = select i1 %i.gi, i64 undef, i64 %.sroa.5.i106.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !388
  %i.gj = icmp sgt i64 %.sroa.4426.0.copyload, 0
  br i1 %i.gj, label %bb.i, label %_RINvMs0_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command5aboutReECscjwHxV1jUiA_13stdio_fixture.exit

bb.i:                                             ; preds = %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15visible_aliasesReAB1m_j2_ECscjwHxV1jUiA_13stdio_fixture.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6428.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6428.0.copyload, i64 noundef %.sroa.4426.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !391
  br label %_RINvMs0_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command5aboutReECscjwHxV1jUiA_13stdio_fixture.exit

_RINvMs0_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command5aboutReECscjwHxV1jUiA_13stdio_fixture.exit: ; preds = %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15visible_aliasesReAB1m_j2_ECscjwHxV1jUiA_13stdio_fixture.exit, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.0416.sroa.0, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.0425, i64 320, i1 false), !alias.scope !390, !noalias !394
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.8423.sroa.5, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.10434.sroa.4, i64 344, i1 false), !alias.scope !390, !noalias !394
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0425)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10434.sroa.4)
  call void @llvm.experimental.noalias.scope.decl(metadata !395)
  call void @llvm.experimental.noalias.scope.decl(metadata !398)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !400
  call void @_RNvXs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCsj6eKBz9Db1c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef range(i64 23, 41) 40) #19, !noalias !402
  %i.gk = load i64, ptr %i.q, align 8, !range !20, !noalias !400, !noundef !10 ; 2 uses
  %i.gl = icmp eq i64 %i.gk, -1                   ; 2 uses
  %.sroa.4.0..sroa_idx.i112 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.5.i111.sroa.0.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i112, align 8
  %.sroa.5.i111.sroa.4.0..sroa.4.0..sroa_idx.i112.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.5.i111.sroa.4.0.copyload = load i64, ptr %.sroa.5.i111.sroa.4.0..sroa.4.0..sroa_idx.i112.sroa_idx, align 8
  %.sroa.5.i111.sroa.0.0 = select i1 %i.gl, ptr undef, ptr %.sroa.5.i111.sroa.0.0.copyload
  %.sroa.5.i111.sroa.4.0 = select i1 %i.gl, i64 undef, i64 %.sroa.5.i111.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !400
  %i.gm = icmp sgt i64 %.sroa.8432.0.copyload, 0
  br i1 %i.gm, label %bb.j, label %_RINvMs0_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command10long_aboutReECscjwHxV1jUiA_13stdio_fixture.exit116

bb.j:                                             ; preds = %_RINvMs0_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command5aboutReECscjwHxV1jUiA_13stdio_fixture.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9433.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9433.0.copyload, i64 noundef %.sroa.8432.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !403
  br label %_RINvMs0_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command10long_aboutReECscjwHxV1jUiA_13stdio_fixture.exit116

_RINvMs0_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command10long_aboutReECscjwHxV1jUiA_13stdio_fixture.exit116: ; preds = %_RINvMs0_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command5aboutReECscjwHxV1jUiA_13stdio_fixture.exit, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.ax, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.0416.sroa.0, i64 320, i1 false), !alias.scope !402, !noalias !406
  %.sroa.0416.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 320
  store i64 %i.gh, ptr %.sroa.0416.sroa.4.0..sroa_idx, align 8, !alias.scope !402, !noalias !406
  %.sroa.0416.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 328
  store ptr %.sroa.5.i106.sroa.0.0, ptr %.sroa.0416.sroa.5.0..sroa_idx, align 8, !alias.scope !402, !noalias !406
  %.sroa.0416.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 336
  store i64 %.sroa.5.i106.sroa.4.0, ptr %.sroa.0416.sroa.6.0..sroa_idx, align 8, !alias.scope !402, !noalias !406
  %.sroa.4417.0..sroa_idx418 = getelementptr inbounds nuw i8, ptr %i.ax, i64 344
  store i64 %i.gk, ptr %.sroa.4417.0..sroa_idx418, align 8, !alias.scope !402, !noalias !406
  %.sroa.6420.0..sroa_idx421 = getelementptr inbounds nuw i8, ptr %i.ax, i64 352
  store ptr %.sroa.5.i111.sroa.0.0, ptr %.sroa.6420.0..sroa_idx421, align 8, !alias.scope !402, !noalias !406
  %.sroa.8423.0..sroa_idx424 = getelementptr inbounds nuw i8, ptr %i.ax, i64 360
  store i64 %.sroa.5.i111.sroa.4.0, ptr %.sroa.8423.0..sroa_idx424, align 8, !alias.scope !402, !noalias !406
  %.sroa.8423.sroa.5.0..sroa.8423.0..sroa_idx424.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.8423.sroa.5.0..sroa.8423.0..sroa_idx424.sroa_idx, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.8423.sroa.5, i64 344, i1 false), !alias.scope !402, !noalias !406
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0416.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8423.sroa.5)
  call void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB2_7Command19subcommand_internal(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.bg, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.bf, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.ax) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %.sroa.7447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7447.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !10
  %.sroa.9449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9449.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !10
  %.sroa.14454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14454.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !10
  %.sroa.16456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16456.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !10
  %.sroa.18458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18458.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !10
  %.sroa.23463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.23463.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !10
  call void @llvm.experimental.noalias.scope.decl(metadata !407)
  call void @llvm.experimental.noalias.scope.decl(metadata !410)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !412
  call void @_RNvXs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCsj6eKBz9Db1c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef range(i64 23, 41) 33) #19, !noalias !414
  %i.gn = load i64, ptr %i.p, align 8, !range !20, !noalias !412, !noundef !10 ; 2 uses
  %i.go = icmp eq i64 %i.gn, -1                   ; 2 uses
  %.sroa.4.0..sroa_idx.i136 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.5.i135.sroa.0.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i136, align 8
  %.sroa.5.i135.sroa.4.0..sroa.4.0..sroa_idx.i136.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.5.i135.sroa.4.0.copyload = load i64, ptr %.sroa.5.i135.sroa.4.0..sroa.4.0..sroa_idx.i136.sroa_idx, align 8
  %.sroa.5.i135.sroa.0.0 = select i1 %i.go, ptr undef, ptr %.sroa.5.i135.sroa.0.0.copyload
  %.sroa.5.i135.sroa.4.0 = select i1 %i.go, i64 undef, i64 %.sroa.5.i135.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !412
  store i64 0, ptr %i.au, align 8, !alias.scope !414, !noalias !415
  %.sroa.2441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 1, ptr %.sroa.2441.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.3442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store i64 0, ptr %.sroa.3442.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.4443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store i64 -1, ptr %.sroa.4443.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.5445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  store i64 0, ptr %.sroa.5445.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.6446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6446.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.8448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.8448.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.10450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 112 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10450.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.11451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 120 ; 4 uses
  %.sroa.13453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11451.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.13453.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.15455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.15455.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.17457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.17457.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.19459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.19459.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.20460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 216
  %.sroa.22462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20460.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.22462.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.24464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.24464.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.25465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 264
  store i64 0, ptr %.sroa.25465.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.26466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 272
  store i64 -1, ptr %.sroa.26466.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.27468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 296
  store i64 -1, ptr %.sroa.27468.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.28470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 320
  store i64 %i.gn, ptr %.sroa.28470.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.31471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 328
  store ptr %.sroa.5.i135.sroa.0.0, ptr %.sroa.31471.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.33472.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.au, i64 336
  store i64 %.sroa.5.i135.sroa.4.0, ptr %.sroa.33472.0..sroa_idx.a, align 8, !alias.scope !414, !noalias !415
  %.sroa.33473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 344
  store i64 -1, ptr %.sroa.33473.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.34475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 368
  store i64 -1, ptr %.sroa.34475.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.35477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 392
  store i64 -1, ptr %.sroa.35477.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.36479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 416
  store i64 -1, ptr %.sroa.36479.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.37481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 440
  store i64 -1, ptr %.sroa.37481.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.38483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 464
  store i64 -1, ptr %.sroa.38483.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.39485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 488
  store i64 -1, ptr %.sroa.39485.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.40487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 512
  store i64 -1, ptr %.sroa.40487.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.41489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 536
  store i64 -1, ptr %.sroa.41489.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.42491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 560
  store ptr @19, ptr %.sroa.42491.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 568
  store i64 6, ptr %.sroa.43.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.44492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 576
  store ptr @11, ptr %.sroa.44492.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 584
  store i64 4, ptr %.sroa.46.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.47493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 592
  store ptr null, ptr %.sroa.47493.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.48495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 608
  store ptr null, ptr %.sroa.48495.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.49497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 624
  store ptr null, ptr %.sroa.49497.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.50499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 640
  store ptr null, ptr %.sroa.50499.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.51501.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 656
  store ptr null, ptr %.sroa.51501.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.52503.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 672
  store ptr null, ptr %.sroa.52503.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.53505.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 688
  store ptr null, ptr %.sroa.53505.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.54506.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 696
  store i32 -1, ptr %.sroa.54506.0..sroa_idx, align 8, !alias.scope !414, !noalias !415
  %.sroa.55507.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 700
  call void @llvm.experimental.noalias.scope.decl(metadata !416)
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.au, i64 104 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !421)
  call void @llvm.experimental.noalias.scope.decl(metadata !424)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.55507.0..sroa_idx, i8 0, i64 9, i1 false)
  %i.gq = load i64, ptr %i.gp, align 8, !range !9, !alias.scope !427, !noalias !428, !noundef !10 ; 2 uses
  %i.gr = icmp eq i64 %i.gq, 0
  br i1 %i.gr, label %bb.k, label %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.i

bb.k:                                             ; preds = %_RINvMs0_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command10long_aboutReECscjwHxV1jUiA_13stdio_fixture.exit116
  call fastcc void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEE8grow_oneCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gp) #21, !noalias !428
  %.pre = load ptr, ptr %.sroa.10450.0..sroa_idx, align 8, !alias.scope !427, !noalias !428
  %.pre1088.a = load i64, ptr %i.gp, align 8, !range !9, !alias.scope !433, !noalias !436
  br label %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.i

_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.i: ; preds = %bb.k, %_RINvMs0_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command10long_aboutReECscjwHxV1jUiA_13stdio_fixture.exit116
  %i.gs = phi i64 [ %.pre1088.a, %bb.k ], [ %i.gq, %_RINvMs0_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command10long_aboutReECscjwHxV1jUiA_13stdio_fixture.exit116 ] ; 2 uses
  %i.gt = phi ptr [ %.pre, %bb.k ], [ inttoptr (i64 8 to ptr), %_RINvMs0_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command10long_aboutReECscjwHxV1jUiA_13stdio_fixture.exit116 ] ; 4 uses
  store ptr @21, ptr %i.gt, align 8, !noalias !438
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  store i64 7, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !439
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !439
  store i64 1, ptr %.sroa.11451.0..sroa_idx, align 8, !alias.scope !427, !noalias !428
  call void @llvm.experimental.noalias.scope.decl(metadata !440)
  call void @llvm.experimental.noalias.scope.decl(metadata !441)
  %i.gu = icmp eq i64 %i.gs, 1
  br i1 %i.gu, label %bb.l, label %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.1.i

bb.l:                                             ; preds = %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.i
  call fastcc void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEE8grow_oneCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gp) #21, !noalias !436
  %.pre1089.a = load ptr, ptr %.sroa.10450.0..sroa_idx, align 8, !alias.scope !433, !noalias !436
  %.pre1090.a = load i64, ptr %i.gp, align 8, !range !9, !alias.scope !442, !noalias !445
  br label %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.1.i

_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.1.i: ; preds = %bb.l, %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.i
  %i.gv = phi i64 [ %.pre1090.a, %bb.l ], [ %i.gs, %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.i ]
  %i.gw = phi ptr [ %.pre1089.a, %bb.l ], [ %i.gt, %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.i ] ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  store ptr @22, ptr %i.gx, align 8, !noalias !447
  %.sroa.4.0..sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  store i64 7, ptr %.sroa.4.0..sroa_idx.i.1.i, align 8, !noalias !448
  %.sroa.5.0..sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %i.gw, i64 40
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.1.i, align 8, !noalias !448
  store i64 2, ptr %.sroa.11451.0..sroa_idx, align 8, !alias.scope !433, !noalias !436
  call void @llvm.experimental.noalias.scope.decl(metadata !449)
  call void @llvm.experimental.noalias.scope.decl(metadata !450)
  %i.gy = icmp eq i64 %i.gv, 2
  br i1 %i.gy, label %bb.m, label %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command25visible_long_flag_aliasesReAB1w_j3_ECscjwHxV1jUiA_13stdio_fixture.exit

bb.m:                                             ; preds = %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.1.i
  call fastcc void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEE8grow_oneCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gp) #21, !noalias !445
  %.pre1091.a = load ptr, ptr %.sroa.10450.0..sroa_idx, align 8, !alias.scope !442, !noalias !445
  br label %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command25visible_long_flag_aliasesReAB1w_j3_ECscjwHxV1jUiA_13stdio_fixture.exit

_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command25visible_long_flag_aliasesReAB1w_j3_ECscjwHxV1jUiA_13stdio_fixture.exit: ; preds = %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.1.i, %bb.m
  %i.gz = phi ptr [ %i.gw, %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.1.i ], [ %.pre1091.a, %bb.m ] ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 48
  store ptr @23, ptr %i.ha, align 8, !noalias !451
  %.sroa.4.0..sroa_idx.i.2.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 56
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.2.i, align 8, !noalias !452
  %.sroa.5.0..sroa_idx.i.2.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 64
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.2.i, align 8, !noalias !452
  store i64 3, ptr %.sroa.11451.0..sroa_idx, align 8, !alias.scope !442, !noalias !445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.av, ptr noundef nonnull align 8 dereferenceable(712) %i.au, i64 712, i1 false), !alias.scope !453, !noalias !454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB2_7Command19subcommand_internal(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.bh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.bg, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.av) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %.sroa.7523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7523.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !10
  %.sroa.9525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 96 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9525.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !10
  %.sroa.14530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14530.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !10
  %.sroa.16532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16532.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !10
  %.sroa.18534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18534.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !10
  %.sroa.23539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.23539.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !10
  call void @llvm.experimental.noalias.scope.decl(metadata !455)
  call void @llvm.experimental.noalias.scope.decl(metadata !458)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !460
  call void @_RNvXs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCsj6eKBz9Db1c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef range(i64 23, 41) 34) #19, !noalias !462
  %i.hb = load i64, ptr %i.o, align 8, !range !20, !noalias !460, !noundef !10 ; 2 uses
  %i.hc = icmp eq i64 %i.hb, -1                   ; 2 uses
  %.sroa.4.0..sroa_idx.i164 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.5.i163.sroa.0.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i164, align 8
  %.sroa.5.i163.sroa.4.0..sroa.4.0..sroa_idx.i164.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.5.i163.sroa.4.0.copyload = load i64, ptr %.sroa.5.i163.sroa.4.0..sroa.4.0..sroa_idx.i164.sroa_idx, align 8
  %.sroa.5.i163.sroa.0.0 = select i1 %i.hc, ptr undef, ptr %.sroa.5.i163.sroa.0.0.copyload
  %.sroa.5.i163.sroa.4.0 = select i1 %i.hc, i64 undef, i64 %.sroa.5.i163.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !460
  store i64 0, ptr %i.as, align 8, !alias.scope !462, !noalias !463
  %.sroa.2517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 1, ptr %.sroa.2517.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.3518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i64 0, ptr %.sroa.3518.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.4519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store i64 -1, ptr %.sroa.4519.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.5521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  store i64 0, ptr %.sroa.5521.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.6522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6522.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.8524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 88 ; 3 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.8524.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.10526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10526.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.11527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 120
  %.sroa.13529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11527.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.13529.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.15531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.15531.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.17533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.17533.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.19535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.19535.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.20536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 216
  %.sroa.22538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20536.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.22538.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.24540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.24540.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.25541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 264
  store i64 0, ptr %.sroa.25541.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.26542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 272
  store i64 -1, ptr %.sroa.26542.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.27544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 296
  store i64 -1, ptr %.sroa.27544.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.28546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 320
  store i64 %i.hb, ptr %.sroa.28546.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.31547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 328
  store ptr %.sroa.5.i163.sroa.0.0, ptr %.sroa.31547.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.33548.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.as, i64 336
  store i64 %.sroa.5.i163.sroa.4.0, ptr %.sroa.33548.0..sroa_idx.a, align 8, !alias.scope !462, !noalias !463
  %.sroa.33549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 344
  store i64 -1, ptr %.sroa.33549.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.34551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 368
  store i64 -1, ptr %.sroa.34551.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.35553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 392
  store i64 -1, ptr %.sroa.35553.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.36555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 416
  store i64 -1, ptr %.sroa.36555.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.37557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 440
  store i64 -1, ptr %.sroa.37557.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.38559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 464
  store i64 -1, ptr %.sroa.38559.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.39561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 488
  store i64 -1, ptr %.sroa.39561.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.40563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 512
  store i64 -1, ptr %.sroa.40563.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.41565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 536
  store i64 -1, ptr %.sroa.41565.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.42567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 560
  store ptr @24, ptr %.sroa.42567.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.43568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 568
  store i64 6, ptr %.sroa.43568.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.44569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 576
  store ptr null, ptr %.sroa.44569.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.45571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 592
  store ptr null, ptr %.sroa.45571.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.46573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 608
  store ptr null, ptr %.sroa.46573.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.47575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 624
  store ptr null, ptr %.sroa.47575.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.48577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 640
  store ptr null, ptr %.sroa.48577.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.49579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 656
  store ptr null, ptr %.sroa.49579.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.50581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 672
  store ptr null, ptr %.sroa.50581.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.51583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 688
  store ptr null, ptr %.sroa.51583.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.52584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 696
  store i32 116, ptr %.sroa.52584.0..sroa_idx, align 8, !alias.scope !462, !noalias !463
  %.sroa.54585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 700
  call void @llvm.experimental.noalias.scope.decl(metadata !464)
  call void @llvm.experimental.noalias.scope.decl(metadata !467)
  %i.hd = getelementptr inbounds nuw i8, ptr %i.as, i64 80 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !469)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.54585.0..sroa_idx, i8 0, i64 9, i1 false)
  %i.he = load i64, ptr %.sroa.9525.0..sroa_idx, align 8, !alias.scope !472, !noalias !464, !noundef !10 ; 4 uses
  %i.hf = load i64, ptr %i.hd, align 8, !range !9, !alias.scope !472, !noalias !464, !noundef !10 ; 2 uses
  %i.hg = icmp eq i64 %i.he, %i.hf
  br i1 %i.hg, label %bb.n, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTcbEE8push_mutCscjwHxV1jUiA_13stdio_fixture.exit.i

bb.n:                                             ; preds = %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command25visible_long_flag_aliasesReAB1w_j3_ECscjwHxV1jUiA_13stdio_fixture.exit
  call fastcc void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTcbEE8grow_oneCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hd) #21, !noalias !464
  %.pre.i = load i64, ptr %i.hd, align 8, !range !9, !alias.scope !473, !noalias !464
  %.pre1092.a = load ptr, ptr %.sroa.8524.0..sroa_idx, align 8, !alias.scope !472, !noalias !464
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTcbEE8push_mutCscjwHxV1jUiA_13stdio_fixture.exit.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTcbEE8push_mutCscjwHxV1jUiA_13stdio_fixture.exit.i: ; preds = %bb.n, %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command25visible_long_flag_aliasesReAB1w_j3_ECscjwHxV1jUiA_13stdio_fixture.exit
  %i.hh = phi ptr [ inttoptr (i64 4 to ptr), %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command25visible_long_flag_aliasesReAB1w_j3_ECscjwHxV1jUiA_13stdio_fixture.exit ], [ %.pre1092.a, %bb.n ] ; 2 uses
  %i.hi = phi i64 [ %i.hf, %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command25visible_long_flag_aliasesReAB1w_j3_ECscjwHxV1jUiA_13stdio_fixture.exit ], [ %.pre.i, %bb.n ]
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.he ; 2 uses
  store i32 113, ptr %i.hj, align 4, !noalias !475
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  store i8 1, ptr %i.hk, align 4, !noalias !475
  %i.hl = add i64 %i.he, 1                        ; 3 uses
  store i64 %i.hl, ptr %.sroa.9525.0..sroa_idx, align 8, !alias.scope !472, !noalias !464
  call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %i.hm = icmp eq i64 %i.hl, %i.hi
  br i1 %i.hm, label %bb.o, label %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command26visible_short_flag_aliasesAcj2_ECscjwHxV1jUiA_13stdio_fixture.exit

bb.o:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTcbEE8push_mutCscjwHxV1jUiA_13stdio_fixture.exit.i
  call fastcc void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTcbEE8grow_oneCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hd) #21, !noalias !464
  %.pre8.i = load ptr, ptr %.sroa.8524.0..sroa_idx, align 8, !alias.scope !473, !noalias !464
  br label %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command26visible_short_flag_aliasesAcj2_ECscjwHxV1jUiA_13stdio_fixture.exit

_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command26visible_short_flag_aliasesAcj2_ECscjwHxV1jUiA_13stdio_fixture.exit: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTcbEE8push_mutCscjwHxV1jUiA_13stdio_fixture.exit.i, %bb.o
  %i.hn = phi ptr [ %.pre8.i, %bb.o ], [ %i.hh, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTcbEE8push_mutCscjwHxV1jUiA_13stdio_fixture.exit.i ]
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.hl ; 2 uses
  store i32 119, ptr %i.ho, align 4, !noalias !477
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  store i8 1, ptr %i.hp, align 4, !noalias !477
  %i.hq = add i64 %i.he, 2
  store i64 %i.hq, ptr %.sroa.9525.0..sroa_idx, align 8, !alias.scope !473, !noalias !464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.at, ptr noundef nonnull align 8 dereferenceable(712) %i.as, i64 712, i1 false), !alias.scope !478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB2_7Command19subcommand_internal(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.bi, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.bh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.at) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %.sroa.7597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 72 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7597.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !10
  %.sroa.9599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9599.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !10
  %.sroa.14604.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14604.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !10
  %.sroa.16606.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16606.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !10
  %.sroa.18608.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18608.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !10
  %.sroa.23613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.23613.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !10
  call void @llvm.experimental.noalias.scope.decl(metadata !479)
  call void @llvm.experimental.noalias.scope.decl(metadata !482)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !484
  call void @_RNvXs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCsj6eKBz9Db1c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef range(i64 23, 41) 28) #19, !noalias !486
  %i.hr = load i64, ptr %i.n, align 8, !range !20, !noalias !484, !noundef !10 ; 2 uses
  %i.hs = icmp eq i64 %i.hr, -1                   ; 2 uses
  %.sroa.4.0..sroa_idx.i188 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5.i187.sroa.0.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i188, align 8
  %.sroa.5.i187.sroa.4.0..sroa.4.0..sroa_idx.i188.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.5.i187.sroa.4.0.copyload = load i64, ptr %.sroa.5.i187.sroa.4.0..sroa.4.0..sroa_idx.i188.sroa_idx, align 8
  %.sroa.5.i187.sroa.0.0 = select i1 %i.hs, ptr undef, ptr %.sroa.5.i187.sroa.0.0.copyload
  %.sroa.5.i187.sroa.4.0 = select i1 %i.hs, i64 undef, i64 %.sroa.5.i187.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !484
  store i64 0, ptr %i.ao, align 8, !alias.scope !486, !noalias !487
  %.sroa.2591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 1, ptr %.sroa.2591.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.3592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 0, ptr %.sroa.3592.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.4593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store i64 -1, ptr %.sroa.4593.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.5595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 56 ; 2 uses
  store i64 0, ptr %.sroa.5595.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.6596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 64 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6596.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.8598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.8598.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.10600.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10600.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.11601.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  %.sroa.13603.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11601.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.13603.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.15605.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.15605.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.17607.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.17607.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.19609.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.19609.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.20610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 216
  %.sroa.22612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20610.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.22612.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.24614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.24614.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.25615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 264
  store i64 0, ptr %.sroa.25615.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.26616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 272
  store i64 -1, ptr %.sroa.26616.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.27618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 296
  store i64 -1, ptr %.sroa.27618.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.28620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 320
  store i64 %i.hr, ptr %.sroa.28620.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.31621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 328
  store ptr %.sroa.5.i187.sroa.0.0, ptr %.sroa.31621.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.33622.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ao, i64 336
  store i64 %.sroa.5.i187.sroa.4.0, ptr %.sroa.33622.0..sroa_idx.a, align 8, !alias.scope !486, !noalias !487
  %.sroa.33623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 344
  store i64 -1, ptr %.sroa.33623.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.34625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 368
  store i64 -1, ptr %.sroa.34625.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.35627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 392
  store i64 -1, ptr %.sroa.35627.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.36629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 416
  store i64 -1, ptr %.sroa.36629.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.37631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 440
  store i64 -1, ptr %.sroa.37631.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.38633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 464
  store i64 -1, ptr %.sroa.38633.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.39635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 488
  store i64 -1, ptr %.sroa.39635.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.40637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 512
  store i64 -1, ptr %.sroa.40637.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.41639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 536
  store i64 -1, ptr %.sroa.41639.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.42641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 560
  store ptr @26, ptr %.sroa.42641.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.43642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 568
  store i64 6, ptr %.sroa.43642.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.44643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 576
  store ptr @27, ptr %.sroa.44643.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.46644.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 584
  store i64 8, ptr %.sroa.46644.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.47645.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 592
  store ptr null, ptr %.sroa.47645.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.48647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 608
  store ptr null, ptr %.sroa.48647.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.49649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 624
  store ptr null, ptr %.sroa.49649.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.50651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 640
  store ptr null, ptr %.sroa.50651.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.51653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 656
  store ptr null, ptr %.sroa.51653.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.52655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 672
  store ptr null, ptr %.sroa.52655.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.53657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 688
  store ptr null, ptr %.sroa.53657.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.54658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 696
  store i32 101, ptr %.sroa.54658.0..sroa_idx, align 8, !alias.scope !486, !noalias !487
  %.sroa.56659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 700
  call void @llvm.experimental.noalias.scope.decl(metadata !488)
  call void @llvm.experimental.noalias.scope.decl(metadata !491)
  call void @llvm.experimental.noalias.scope.decl(metadata !493)
  call void @llvm.experimental.noalias.scope.decl(metadata !496)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.56659.0..sroa_idx, i8 0, i64 9, i1 false)
  %i.ht = load i64, ptr %.sroa.7597.0..sroa_idx, align 8, !alias.scope !499, !noalias !502, !noundef !10 ; 2 uses
  %i.hu = icmp eq i64 %i.ht, 0
  br i1 %i.hu, label %bb.p, label %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15visible_aliasesReAB1m_j1_ECscjwHxV1jUiA_13stdio_fixture.exit, !prof !273

bb.p:                                             ; preds = %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command26visible_short_flag_aliasesAcj2_ECscjwHxV1jUiA_13stdio_fixture.exit
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5595.0..sroa_idx, i64 noundef 0, i64 noundef 1, i64 noundef 24) #19
  %.pre.i.i.i195 = load i64, ptr %.sroa.7597.0..sroa_idx, align 8, !alias.scope !506, !noalias !502
  br label %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15visible_aliasesReAB1m_j1_ECscjwHxV1jUiA_13stdio_fixture.exit

_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15visible_aliasesReAB1m_j1_ECscjwHxV1jUiA_13stdio_fixture.exit: ; preds = %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command26visible_short_flag_aliasesAcj2_ECscjwHxV1jUiA_13stdio_fixture.exit, %bb.p
  %i.hv = phi i64 [ %i.ht, %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command26visible_short_flag_aliasesAcj2_ECscjwHxV1jUiA_13stdio_fixture.exit ], [ %.pre.i.i.i195, %bb.p ] ; 2 uses
  %i.hw = load ptr, ptr %.sroa.6596.0..sroa_idx, align 8, !alias.scope !506, !noalias !502, !nonnull !10, !noundef !10
  %i.hx = getelementptr inbounds nuw [24 x i8], ptr %i.hw, i64 %i.hv ; 3 uses
  store ptr @29, ptr %i.hx, align 8, !noalias !507
  %.sroa.42.0..sroa_idx.i.i.i.i.us.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store i64 8, ptr %.sroa.42.0..sroa_idx.i.i.i.i.us.i.i.i.i.i.i, align 8, !noalias !532
  %.sroa.53.0..sroa_idx.i.i.i.i.us.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  store i8 1, ptr %.sroa.53.0..sroa_idx.i.i.i.i.us.i.i.i.i.i.i, align 8, !noalias !532
  %i.hy = add i64 %i.hv, 1
  store i64 %i.hy, ptr %.sroa.7597.0..sroa_idx, align 8, !alias.scope !506, !noalias !533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.ap, ptr noundef nonnull align 8 dereferenceable(712) %i.ao, i64 712, i1 false), !alias.scope !534, !noalias !535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.experimental.noalias.scope.decl(metadata !536)
  call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ap, i64 104 ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ap, i64 120 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ap, i64 112 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !541)
  call void @llvm.experimental.noalias.scope.decl(metadata !544)
  %i.ic = load i64, ptr %i.ia, align 8, !alias.scope !547, !noalias !548, !noundef !10 ; 4 uses
  %i.id = load i64, ptr %i.hz, align 8, !range !9, !alias.scope !547, !noalias !548, !noundef !10 ; 2 uses
  %i.ie = icmp eq i64 %i.ic, %i.id
  br i1 %i.ie, label %bb.q, label %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.i203

bb.q:                                             ; preds = %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15visible_aliasesReAB1m_j1_ECscjwHxV1jUiA_13stdio_fixture.exit
  call fastcc void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEE8grow_oneCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hz) #21, !noalias !548
  %.pre1093 = load i64, ptr %i.hz, align 8, !range !9, !alias.scope !553, !noalias !556
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
  %.sroa.01050.0.copyload.a = load i64, ptr %i.ae, align 8
  %.sroa.41051.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.41051.0.copyload.a = load ptr, ptr %.sroa.41051.0..sroa_idx.a, align 8
  %.sroa.51052.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.51052.0.copyload = load i64, ptr %.sroa.51052.0..sroa_idx.a, align 8
  call void @_RNvXs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCsj6eKBz9Db1c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 8) #19
  %.sroa.01053.0.copyload.a = load i64, ptr %i.ad, align 8
  %.sroa.41054.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.41054.0.copyload.a = load ptr, ptr %.sroa.41054.0..sroa_idx.a, align 8
  %.sroa.51055.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.51055.0.copyload = load i64, ptr %.sroa.51055.0..sroa_idx.a, align 8
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
  store i64 %.sroa.01050.0.copyload.a, ptr %.sroa.0669.sroa.4.0..sroa_idx, align 8
  %.sroa.0669.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 496
  store ptr %.sroa.41051.0.copyload.a, ptr %.sroa.0669.sroa.5.0..sroa_idx, align 8
  %.sroa.0669.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 504
  store i64 %.sroa.51052.0.copyload, ptr %.sroa.0669.sroa.6.0..sroa_idx, align 8
  %.sroa.4670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 512
  store i64 %.sroa.01053.0.copyload.a, ptr %.sroa.4670.0..sroa_idx, align 8
  %.sroa.6672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 520
  store ptr %.sroa.41054.0.copyload.a, ptr %.sroa.6672.0..sroa_idx, align 8
  %.sroa.7674.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.an, i64 528
  store i64 %.sroa.51055.0.copyload, ptr %.sroa.7674.0..sroa_idx.a, align 8
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
end_hunk_0
begin_hunk_1_@_RNvCscjwHxV1jUiA_13stdio_fixture4main:bb.a
  %.sroa.51071.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.51071.0.copyload = load i64, ptr %.sroa.51071.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !727)
  call void @llvm.experimental.noalias.scope.decl(metadata !730)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !732
  %i.jn = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #19, !noalias !732 ; 4 uses
  %i.jo = icmp eq ptr %i.jn, null
  br i1 %i.jo, label %bb.y, label %_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECscjwHxV1jUiA_13stdio_fixture.exit310

bb.y:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit302
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 16) #22, !noalias !742
  unreachable

_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECscjwHxV1jUiA_13stdio_fixture.exit310: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit302
  store ptr @45, ptr %i.jn, align 8, !noalias !743
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  store i64 4, ptr %i.jp, align 8, !noalias !776
  store i64 0, ptr %i.ak, align 8, !alias.scope !777, !noalias !778
  %.sroa.0914.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 0, ptr %.sroa.0914.sroa.5.0..sroa_idx, align 8, !alias.scope !777, !noalias !778
  %.sroa.0914.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store i64 0, ptr %.sroa.0914.sroa.7.0..sroa_idx, align 8, !alias.scope !777, !noalias !778
  %.sroa.0914.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  store i64 0, ptr %.sroa.0914.sroa.9.0..sroa_idx, align 8, !alias.scope !777, !noalias !778
  %.sroa.0914.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  store i64 -1, ptr %.sroa.0914.sroa.11.0..sroa_idx, align 8, !alias.scope !777, !noalias !778
  %.sroa.0914.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 104
  store i64 0, ptr %.sroa.0914.sroa.13.0..sroa_idx, align 8, !alias.scope !777, !noalias !778
  %.sroa.0914.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0914.sroa.14.0..sroa_idx, align 8, !alias.scope !777, !noalias !778
  %.sroa.0914.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0914.sroa.15.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0914.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0914.sroa.16.0..sroa_idx, align 8, !alias.scope !777, !noalias !778
  %.sroa.0914.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0914.sroa.17.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0914.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0914.sroa.18.0..sroa_idx, align 8, !alias.scope !777, !noalias !778
  %.sroa.0914.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0914.sroa.19.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0914.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0914.sroa.20.0..sroa_idx, align 8, !alias.scope !777, !noalias !778
  %.sroa.0914.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0914.sroa.21.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0914.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0914.sroa.22.0..sroa_idx, align 8, !alias.scope !777, !noalias !778
  %.sroa.0914.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0914.sroa.23.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0914.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0914.sroa.24.0..sroa_idx, align 8, !alias.scope !777, !noalias !778
  %.sroa.0914.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0914.sroa.25.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0914.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0914.sroa.26.0..sroa_idx, align 8, !alias.scope !777, !noalias !778
  %.sroa.0914.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0914.sroa.27.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0914.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0914.sroa.28.0..sroa_idx, align 8, !alias.scope !777, !noalias !778
  %.sroa.0914.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 288
  %.sroa.0914.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 304 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0914.sroa.29.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0914.sroa.31.0..sroa_idx, align 8, !alias.scope !777, !noalias !778
  %.sroa.0914.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 312 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0914.sroa.32.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0914.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0914.sroa.33.0..sroa_idx, align 8, !alias.scope !777, !noalias !778
  %.sroa.0914.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 336
  store i64 0, ptr %.sroa.0914.sroa.34.0..sroa_idx, align 8, !alias.scope !777, !noalias !778
  %.sroa.4915.0..sroa_idx916 = getelementptr inbounds nuw i8, ptr %i.ak, i64 344
  store i64 1, ptr %.sroa.4915.0..sroa_idx916, align 8, !alias.scope !777, !noalias !778
  %.sroa.6918.0..sroa_idx919 = getelementptr inbounds nuw i8, ptr %i.ak, i64 352
  store ptr %i.jn, ptr %.sroa.6918.0..sroa_idx919, align 8, !alias.scope !777, !noalias !778
  %.sroa.8921.0..sroa_idx922 = getelementptr inbounds nuw i8, ptr %i.ak, i64 360
  store i64 1, ptr %.sroa.8921.0..sroa_idx922, align 8, !alias.scope !777, !noalias !778
  %.sroa.9924.0..sroa_idx925 = getelementptr inbounds nuw i8, ptr %i.ak, i64 368 ; 2 uses
  store i64 0, ptr %.sroa.9924.0..sroa_idx925, align 8, !alias.scope !777, !noalias !778
  %.sroa.9924.sroa.0.sroa.0.sroa.4.0..sroa.9924.0..sroa_idx925.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 376 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.9924.sroa.0.sroa.0.sroa.4.0..sroa.9924.0..sroa_idx925.sroa_idx, align 8, !alias.scope !777, !noalias !778
  %.sroa.9924.sroa.0.sroa.0.sroa.5.0..sroa.9924.0..sroa_idx925.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9924.sroa.0.sroa.0.sroa.5.0..sroa.9924.0..sroa_idx925.sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.9924.sroa.0.sroa.0.sroa.6.0..sroa.9924.0..sroa_idx925.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.9924.sroa.0.sroa.0.sroa.6.0..sroa.9924.0..sroa_idx925.sroa_idx, align 8, !alias.scope !777, !noalias !778
  %.sroa.9924.sroa.0.sroa.0.sroa.7.0..sroa.9924.0..sroa_idx925.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9924.sroa.0.sroa.0.sroa.7.0..sroa.9924.0..sroa_idx925.sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.9924.sroa.0.sroa.0.sroa.8.0..sroa.9924.0..sroa_idx925.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.9924.sroa.0.sroa.0.sroa.8.0..sroa.9924.0..sroa_idx925.sroa_idx, align 8, !alias.scope !777, !noalias !778
  %.sroa.9924.sroa.0.sroa.0.sroa.9.0..sroa.9924.0..sroa_idx925.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9924.sroa.0.sroa.0.sroa.9.0..sroa.9924.0..sroa_idx925.sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.9924.sroa.0.sroa.0.sroa.10.0..sroa.9924.0..sroa_idx925.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 448
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.9924.sroa.0.sroa.0.sroa.10.0..sroa.9924.0..sroa_idx925.sroa_idx, align 8, !alias.scope !777, !noalias !778
  %.sroa.9924.sroa.0.sroa.0.sroa.11.0..sroa.9924.0..sroa_idx925.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9924.sroa.0.sroa.0.sroa.11.0..sroa.9924.0..sroa_idx925.sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.9924.sroa.0.sroa.0.sroa.12.0..sroa.9924.0..sroa_idx925.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 472
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.9924.sroa.0.sroa.0.sroa.12.0..sroa.9924.0..sroa_idx925.sroa_idx, align 8, !alias.scope !777, !noalias !778
  %.sroa.9924.sroa.0.sroa.0.sroa.13.0..sroa.9924.0..sroa_idx925.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 480
  store i64 0, ptr %.sroa.9924.sroa.0.sroa.0.sroa.13.0..sroa.9924.0..sroa_idx925.sroa_idx, align 8, !alias.scope !777, !noalias !778
  %.sroa.9924.sroa.0.sroa.4.0..sroa.9924.0..sroa_idx925.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 488
  store i64 %.sroa.01066.0.copyload.a, ptr %.sroa.9924.sroa.0.sroa.4.0..sroa.9924.0..sroa_idx925.sroa_idx, align 8, !alias.scope !777, !noalias !778
  %.sroa.9924.sroa.0.sroa.5.0..sroa.9924.0..sroa_idx925.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 496
  store ptr %.sroa.41067.0.copyload.a, ptr %.sroa.9924.sroa.0.sroa.5.0..sroa.9924.0..sroa_idx925.sroa_idx, align 8, !alias.scope !777, !noalias !778
  %.sroa.9924.sroa.0.sroa.6.0..sroa.9924.0..sroa_idx925.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 504
  store i64 %.sroa.51068.0.copyload, ptr %.sroa.9924.sroa.0.sroa.6.0..sroa.9924.0..sroa_idx925.sroa_idx, align 8, !alias.scope !777, !noalias !778
  %.sroa.9924.sroa.4.0..sroa.9924.0..sroa_idx925.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 512
  store i64 %.sroa.01069.0.copyload, ptr %.sroa.9924.sroa.4.0..sroa.9924.0..sroa_idx925.sroa_idx, align 8, !alias.scope !777, !noalias !778
  %.sroa.9924.sroa.5.0..sroa.9924.0..sroa_idx925.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 520
  store ptr %.sroa.41070.0.copyload, ptr %.sroa.9924.sroa.5.0..sroa.9924.0..sroa_idx925.sroa_idx, align 8, !alias.scope !777, !noalias !778
  %.sroa.9924.sroa.6.0..sroa.9924.0..sroa_idx925.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 528
  store i64 %.sroa.51071.0.copyload, ptr %.sroa.9924.sroa.6.0..sroa.9924.0..sroa_idx925.sroa_idx, align 8, !alias.scope !777, !noalias !778
  %.sroa.9924.sroa.6.sroa.4.0..sroa.9924.sroa.6.0..sroa.9924.0..sroa_idx925.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 536
  store ptr @42, ptr %.sroa.9924.sroa.6.sroa.4.0..sroa.9924.sroa.6.0..sroa.9924.0..sroa_idx925.sroa_idx.sroa_idx, align 8, !alias.scope !777, !noalias !778
  %.sroa.9924.sroa.6.sroa.5.0..sroa.9924.sroa.6.0..sroa.9924.0..sroa_idx925.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 544
  store i64 4, ptr %.sroa.9924.sroa.6.sroa.5.0..sroa.9924.sroa.6.0..sroa.9924.0..sroa_idx925.sroa_idx.sroa_idx, align 8, !alias.scope !777, !noalias !778
  %.sroa.9924.sroa.6.sroa.6.0..sroa.9924.sroa.6.0..sroa.9924.0..sroa_idx925.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 552
  store ptr null, ptr %.sroa.9924.sroa.6.sroa.6.0..sroa.9924.sroa.6.0..sroa.9924.0..sroa_idx925.sroa_idx.sroa_idx, align 8, !alias.scope !777, !noalias !778
  %.sroa.9924.sroa.6.sroa.8.0..sroa.9924.sroa.6.0..sroa.9924.0..sroa_idx925.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 568
  store ptr null, ptr %.sroa.9924.sroa.6.sroa.8.0..sroa.9924.sroa.6.0..sroa.9924.0..sroa_idx925.sroa_idx.sroa_idx, align 8, !alias.scope !777, !noalias !778
  %.sroa.9924.sroa.6.sroa.10.0..sroa.9924.sroa.6.0..sroa.9924.0..sroa_idx925.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 584
  store i32 -1, ptr %.sroa.9924.sroa.6.sroa.10.0..sroa.9924.sroa.6.0..sroa.9924.0..sroa_idx925.sroa_idx.sroa_idx, align 8, !alias.scope !777, !noalias !778
  %.sroa.9924.sroa.6.sroa.11.0..sroa.9924.sroa.6.0..sroa.9924.0..sroa_idx925.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 588
  store i32 -1, ptr %.sroa.9924.sroa.6.sroa.11.0..sroa.9924.sroa.6.0..sroa.9924.0..sroa_idx925.sroa_idx.sroa_idx, align 4, !alias.scope !777, !noalias !778
  %.sroa.9924.sroa.6.sroa.12.0..sroa.9924.sroa.6.0..sroa.9924.0..sroa_idx925.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 592
  store i32 0, ptr %.sroa.9924.sroa.6.sroa.12.0..sroa.9924.sroa.6.0..sroa.9924.0..sroa_idx925.sroa_idx.sroa_idx, align 8, !alias.scope !777, !noalias !778
  %.sroa.9924.sroa.6.sroa.13.0..sroa.9924.sroa.6.0..sroa.9924.0..sroa_idx925.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 596
  store i8 0, ptr %.sroa.9924.sroa.6.sroa.13.0..sroa.9924.sroa.6.0..sroa.9924.0..sroa_idx925.sroa_idx.sroa_idx, align 4, !alias.scope !777, !noalias !778
  call void @llvm.experimental.noalias.scope.decl(metadata !779)
  call void @llvm.experimental.noalias.scope.decl(metadata !782)
  call void @llvm.experimental.noalias.scope.decl(metadata !784)
  %i.jq = load i64, ptr %.sroa.0914.sroa.32.0..sroa_idx, align 8, !alias.scope !787, !noalias !788, !noundef !10 ; 3 uses
  %i.jr = icmp eq i64 %i.jq, 0
  br i1 %i.jr, label %bb.z, label %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB3_3Arg13visible_aliasReECscjwHxV1jUiA_13stdio_fixture.exit

bb.z:                                             ; preds = %_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECscjwHxV1jUiA_13stdio_fixture.exit310
  %.sroa.0914.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 296
  call fastcc void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEE8grow_oneCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.0914.sroa.30.0..sroa_idx) #21, !noalias !788
  %.pre1095.a = load ptr, ptr %.sroa.0914.sroa.31.0..sroa_idx, align 8, !alias.scope !787, !noalias !788
  %.sroa.4903.0.copyload.pre = load i64, ptr %.sroa.9924.0..sroa_idx925, align 8, !alias.scope !790
  %.sroa.6906.0.copyload.pre = load ptr, ptr %.sroa.9924.sroa.0.sroa.0.sroa.4.0..sroa.9924.0..sroa_idx925.sroa_idx, align 8, !alias.scope !790
  br label %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB3_3Arg13visible_aliasReECscjwHxV1jUiA_13stdio_fixture.exit

_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB3_3Arg13visible_aliasReECscjwHxV1jUiA_13stdio_fixture.exit: ; preds = %_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECscjwHxV1jUiA_13stdio_fixture.exit310, %bb.z
  %.sroa.6906.0.copyload = phi ptr [ inttoptr (i64 8 to ptr), %_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECscjwHxV1jUiA_13stdio_fixture.exit310 ], [ %.sroa.6906.0.copyload.pre, %bb.z ] ; 2 uses
  %.sroa.4903.0.copyload = phi i64 [ 0, %_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECscjwHxV1jUiA_13stdio_fixture.exit310 ], [ %.sroa.4903.0.copyload.pre, %bb.z ] ; 2 uses
  %i.js = phi ptr [ inttoptr (i64 8 to ptr), %_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECscjwHxV1jUiA_13stdio_fixture.exit310 ], [ %.pre1095.a, %bb.z ]
  %i.jt = getelementptr inbounds nuw [24 x i8], ptr %i.js, i64 %i.jq ; 3 uses
  store ptr @46, ptr %i.jt, align 8, !noalias !791
  %.sroa.4.0..sroa_idx.i311 = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  store i64 8, ptr %.sroa.4.0..sroa_idx.i311, align 8, !noalias !791
  %.sroa.5.0..sroa_idx.i312 = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  store i8 1, ptr %.sroa.5.0..sroa_idx.i312, align 8, !noalias !791
  %i.ju = add i64 %i.jq, 1
  store i64 %i.ju, ptr %.sroa.0914.sroa.32.0..sroa_idx, align 8, !alias.scope !787, !noalias !788
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.0902, ptr noundef nonnull align 8 dereferenceable(368) %i.ak, i64 368, i1 false), !alias.scope !790
  %.sroa.9912.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.9912, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.9912.0..sroa_idx, i64 208, i1 false), !alias.scope !790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.experimental.noalias.scope.decl(metadata !792)
  call void @llvm.experimental.noalias.scope.decl(metadata !795)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !797
  %i.jv = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #19, !noalias !797 ; 4 uses
  %i.jw = icmp eq ptr %i.jv, null
  br i1 %i.jw, label %bb.aa, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2k_5array4iter8IntoIterBU_Kj1_ENCINvMs_NtBY_3argNtB3K_3Arg14default_valuesBU_ABU_B3y_E0EE9from_iterCscjwHxV1jUiA_13stdio_fixture.exit.i316

bb.aa:                                            ; preds = %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB3_3Arg13visible_aliasReECscjwHxV1jUiA_13stdio_fixture.exit
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 16) #22, !noalias !807
  unreachable

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2k_5array4iter8IntoIterBU_Kj1_ENCINvMs_NtBY_3argNtB3K_3Arg14default_valuesBU_ABU_B3y_E0EE9from_iterCscjwHxV1jUiA_13stdio_fixture.exit.i316: ; preds = %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB3_3Arg13visible_aliasReECscjwHxV1jUiA_13stdio_fixture.exit
  store ptr @47, ptr %i.jv, align 8, !noalias !808
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  store i64 4, ptr %i.jx, align 8, !noalias !841
  %i.jy = icmp eq i64 %.sroa.4903.0.copyload, 0
  br i1 %i.jy, label %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB3_3Arg19visible_short_aliascECscjwHxV1jUiA_13stdio_fixture.exit, label %bb.ab

bb.ab:                                            ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2k_5array4iter8IntoIterBU_Kj1_ENCINvMs_NtBY_3argNtB3K_3Arg14default_valuesBU_ABU_B3y_E0EE9from_iterCscjwHxV1jUiA_13stdio_fixture.exit.i316
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6906.0.copyload) ]
  %i.jz = shl nuw i64 %.sroa.4903.0.copyload, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6906.0.copyload, i64 noundef %i.jz, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !842
  br label %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB3_3Arg19visible_short_aliascECscjwHxV1jUiA_13stdio_fixture.exit

_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB3_3Arg19visible_short_aliascECscjwHxV1jUiA_13stdio_fixture.exit: ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2k_5array4iter8IntoIterBU_Kj1_ENCINvMs_NtBY_3argNtB3K_3Arg14default_valuesBU_ABU_B3y_E0EE9from_iterCscjwHxV1jUiA_13stdio_fixture.exit.i316, %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %i.al, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.0902, i64 368, i1 false), !alias.scope !843, !noalias !844
  %.sroa.4903.0..sroa_idx904 = getelementptr inbounds nuw i8, ptr %i.al, i64 368
  store i64 1, ptr %.sroa.4903.0..sroa_idx904, align 8, !alias.scope !843, !noalias !844
  %.sroa.6906.0..sroa_idx907 = getelementptr inbounds nuw i8, ptr %i.al, i64 376
  store ptr %i.jv, ptr %.sroa.6906.0..sroa_idx907, align 8, !alias.scope !843, !noalias !844
  %.sroa.8909.0..sroa_idx910 = getelementptr inbounds nuw i8, ptr %i.al, i64 384
  store i64 1, ptr %.sroa.8909.0..sroa_idx910, align 8, !alias.scope !843, !noalias !844
  %.sroa.9912.0..sroa_idx913 = getelementptr inbounds nuw i8, ptr %i.al, i64 392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.9912.0..sroa_idx913, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.9912, i64 208, i1 false), !alias.scope !843, !noalias !844
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0902)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9912)
  call void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.bl, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(600) %i.al) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.bm, ptr noundef nonnull align 8 dereferenceable(712) %i.bl, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ai, i64 536
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ai, i64 544
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ai, i64 488 ; 2 uses
  store i64 -1, ptr %i.kc, align 8, !alias.scope !845
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ai, i64 512 ; 2 uses
  store i64 -1, ptr %i.kd, align 8, !alias.scope !845
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ai, i64 596
  store i8 -1, ptr %i.ke, align 4, !alias.scope !845
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  store i64 -1, ptr %i.kf, align 8, !alias.scope !845
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  store i64 0, ptr %i.kg, align 8, !alias.scope !845
  %.sroa.45.0..sroa_idx.i321 = getelementptr inbounds nuw i8, ptr %i.ai, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx.i321, align 8, !alias.scope !845
  %.sroa.56.0..sroa_idx.i322 = getelementptr inbounds nuw i8, ptr %i.ai, i64 120
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ai, i64 592
  store i32 0, ptr %i.kh, align 8, !alias.scope !845
  %.sroa.48.0..sroa_idx.i323 = getelementptr inbounds nuw i8, ptr %i.ai, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx.i322, i8 0, i64 16, i1 false), !alias.scope !845
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx.i323, align 8, !alias.scope !845
  %.sroa.59.0..sroa_idx.i324 = getelementptr inbounds nuw i8, ptr %i.ai, i64 144
  %.sroa.411.0..sroa_idx.i325 = getelementptr inbounds nuw i8, ptr %i.ai, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx.i324, i8 0, i64 16, i1 false), !alias.scope !845
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.411.0..sroa_idx.i325, align 8, !alias.scope !845
  %.sroa.512.0..sroa_idx.i326 = getelementptr inbounds nuw i8, ptr %i.ai, i64 168
  %.sroa.414.0..sroa_idx.i327 = getelementptr inbounds nuw i8, ptr %i.ai, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx.i326, i8 0, i64 16, i1 false), !alias.scope !845
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.414.0..sroa_idx.i327, align 8, !alias.scope !845
  %.sroa.515.0..sroa_idx.i328 = getelementptr inbounds nuw i8, ptr %i.ai, i64 192
  %.sroa.417.0..sroa_idx.i329 = getelementptr inbounds nuw i8, ptr %i.ai, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.515.0..sroa_idx.i328, i8 0, i64 16, i1 false), !alias.scope !845
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.417.0..sroa_idx.i329, align 8, !alias.scope !845
  %.sroa.518.0..sroa_idx.i330 = getelementptr inbounds nuw i8, ptr %i.ai, i64 216
  %.sroa.420.0..sroa_idx.i331 = getelementptr inbounds nuw i8, ptr %i.ai, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.518.0..sroa_idx.i330, i8 0, i64 16, i1 false), !alias.scope !845
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.420.0..sroa_idx.i331, align 8, !alias.scope !845
  %.sroa.521.0..sroa_idx.i332 = getelementptr inbounds nuw i8, ptr %i.ai, i64 240
  %.sroa.423.0..sroa_idx.i333 = getelementptr inbounds nuw i8, ptr %i.ai, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521.0..sroa_idx.i332, i8 0, i64 16, i1 false), !alias.scope !845
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.423.0..sroa_idx.i333, align 8, !alias.scope !845
  %.sroa.524.0..sroa_idx.i334 = getelementptr inbounds nuw i8, ptr %i.ai, i64 264
  %.sroa.426.0..sroa_idx.i335 = getelementptr inbounds nuw i8, ptr %i.ai, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.524.0..sroa_idx.i334, i8 0, i64 16, i1 false), !alias.scope !845
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.426.0..sroa_idx.i335, align 8, !alias.scope !845
  %.sroa.527.0..sroa_idx.i336 = getelementptr inbounds nuw i8, ptr %i.ai, i64 288
  store i64 0, ptr %.sroa.527.0..sroa_idx.i336, align 8, !alias.scope !845
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ai, i64 584
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ai, i64 552
  store ptr null, ptr %i.kj, align 8, !alias.scope !845
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ai, i64 296
  store i64 0, ptr %i.kk, align 8, !alias.scope !845
  %.sroa.429.0..sroa_idx.i337 = getelementptr inbounds nuw i8, ptr %i.ai, i64 304
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.429.0..sroa_idx.i337, align 8, !alias.scope !845
  %.sroa.530.0..sroa_idx.i338 = getelementptr inbounds nuw i8, ptr %i.ai, i64 312
  %.sroa.432.0..sroa_idx.i339 = getelementptr inbounds nuw i8, ptr %i.ai, i64 328 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.530.0..sroa_idx.i338, i8 0, i64 16, i1 false), !alias.scope !845
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.432.0..sroa_idx.i339, align 8, !alias.scope !845
  %.sroa.533.0..sroa_idx.i340 = getelementptr inbounds nuw i8, ptr %i.ai, i64 336 ; 2 uses
  store i64 0, ptr %i.ai, align 8, !alias.scope !845
  %.sroa.435.0..sroa_idx.i341 = getelementptr inbounds nuw i8, ptr %i.ai, i64 352 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.533.0..sroa_idx.i340, i8 0, i64 16, i1 false), !alias.scope !845
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.435.0..sroa_idx.i341, align 8, !alias.scope !845
  %.sroa.536.0..sroa_idx.i342 = getelementptr inbounds nuw i8, ptr %i.ai, i64 360
  store i64 0, ptr %.sroa.536.0..sroa_idx.i342, align 8, !alias.scope !845
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 0, ptr %i.kl, align 8, !alias.scope !845
  %i.km = getelementptr inbounds nuw i8, ptr %i.ai, i64 588
  store i32 -1, ptr %i.km, align 4, !alias.scope !845
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ai, i64 368 ; 2 uses
  store i64 0, ptr %i.kn, align 8, !alias.scope !845
  %.sroa.440.0..sroa_idx.i343 = getelementptr inbounds nuw i8, ptr %i.ai, i64 376 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.440.0..sroa_idx.i343, align 8, !alias.scope !845
  %.sroa.541.0..sroa_idx.i344 = getelementptr inbounds nuw i8, ptr %i.ai, i64 384
  %.sroa.443.0..sroa_idx.i345 = getelementptr inbounds nuw i8, ptr %i.ai, i64 400
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.541.0..sroa_idx.i344, i8 0, i64 16, i1 false), !alias.scope !845
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.443.0..sroa_idx.i345, align 8, !alias.scope !845
  %.sroa.544.0..sroa_idx.i346 = getelementptr inbounds nuw i8, ptr %i.ai, i64 408
  %.sroa.446.0..sroa_idx.i347 = getelementptr inbounds nuw i8, ptr %i.ai, i64 424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.544.0..sroa_idx.i346, i8 0, i64 16, i1 false), !alias.scope !845
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.446.0..sroa_idx.i347, align 8, !alias.scope !845
  %.sroa.547.0..sroa_idx.i348 = getelementptr inbounds nuw i8, ptr %i.ai, i64 432
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ai, i64 568
  store ptr null, ptr %i.ko, align 8, !alias.scope !845
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store i64 0, ptr %i.kp, align 8, !alias.scope !845
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  store i64 0, ptr %i.kq, align 8, !alias.scope !845
  %.sroa.457.0..sroa_idx.i349 = getelementptr inbounds nuw i8, ptr %i.ai, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.547.0..sroa_idx.i348, i8 0, i64 16, i1 false), !alias.scope !845
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.457.0..sroa_idx.i349, align 8, !alias.scope !845
  %.sroa.558.0..sroa_idx.i350 = getelementptr inbounds nuw i8, ptr %i.ai, i64 456
  %.sroa.659.sroa.4.0..sroa.659.0..sroa_idx.sroa_idx.i351 = getelementptr inbounds nuw i8, ptr %i.ai, i64 472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.558.0..sroa_idx.i350, i8 0, i64 16, i1 false), !alias.scope !845
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.659.sroa.4.0..sroa.659.0..sroa_idx.sroa_idx.i351, align 8, !alias.scope !845
  %.sroa.659.sroa.5.0..sroa.659.0..sroa_idx.sroa_idx.i352 = getelementptr inbounds nuw i8, ptr %i.ai, i64 480
  store i64 0, ptr %.sroa.659.sroa.5.0..sroa.659.0..sroa_idx.sroa_idx.i352, align 8, !alias.scope !845
  store ptr @48, ptr %i.ka, align 8
  store i64 6, ptr %i.kb, align 8
  store i32 102, ptr %i.ki, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !848)
  call void @llvm.experimental.noalias.scope.decl(metadata !851)
  call void @llvm.experimental.noalias.scope.decl(metadata !853)
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ai, i64 320
  call fastcc void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTcbEE8grow_oneCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kr) #21, !noalias !848
  %.sroa.21029.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ai, i64 344
  %.sroa.21029.0.copyload.pre = load i64, ptr %.sroa.21029.0..sroa_idx.phi.trans.insert, align 8, !alias.scope !856 ; 2 uses
  %.sroa.41031.0.copyload.pre = load ptr, ptr %.sroa.435.0..sroa_idx.i341, align 8, !alias.scope !856 ; 2 uses
  %.sroa.71035.0.copyload.pre = load i64, ptr %i.kn, align 8, !alias.scope !856 ; 2 uses
  %.sroa.81036.0.copyload.pre = load ptr, ptr %.sroa.440.0..sroa_idx.i343, align 8, !alias.scope !856 ; 2 uses
  %.pre1098 = load ptr, ptr %.sroa.432.0..sroa_idx.i339, align 8, !alias.scope !857, !noalias !848 ; 2 uses
  store i32 98, ptr %.pre1098, align 4, !noalias !858
  %i.ks = getelementptr inbounds nuw i8, ptr %.pre1098, i64 4
  store i8 1, ptr %i.ks, align 4, !noalias !858
  store i64 1, ptr %.sroa.533.0..sroa_idx.i340, align 8, !alias.scope !857, !noalias !848
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.01028, ptr noundef nonnull align 8 dereferenceable(344) %i.ai, i64 344, i1 false)
  %.sroa.101038.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.101038, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.101038.0..sroa_idx, i64 96, i1 false)
  %.sroa.111039.0.copyload = load i64, ptr %i.kc, align 8, !alias.scope !856 ; 2 uses
  %.sroa.121040.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 496
  %.sroa.121040.0.copyload = load ptr, ptr %.sroa.121040.0..sroa_idx, align 8, !alias.scope !856 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %.sroa.131041.sroa.2, ptr noundef nonnull align 8 dereferenceable(84) %i.kd, i64 84, i1 false)
  %.sroa.151043.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 597
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.151043, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.151043.0..sroa_idx, i64 3, i1 false)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !859
  %i.kt = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #19, !noalias !859 ; 4 uses
  %i.ku = icmp eq ptr %i.kt, null
  br i1 %i.ku, label %bb.ac, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2f_5array4iter8IntoIterBU_Kj1_ENCINvMs_NtBY_3argNtB3F_3Arg11value_namesBU_ABU_B3t_E0EE9from_iterCscjwHxV1jUiA_13stdio_fixture.exit.i357

bb.ac:                                            ; preds = %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB3_3Arg19visible_short_aliascECscjwHxV1jUiA_13stdio_fixture.exit
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 16) #22, !noalias !872
  unreachable

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2f_5array4iter8IntoIterBU_Kj1_ENCINvMs_NtBY_3argNtB3F_3Arg11value_namesBU_ABU_B3t_E0EE9from_iterCscjwHxV1jUiA_13stdio_fixture.exit.i357: ; preds = %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB3_3Arg19visible_short_aliascECscjwHxV1jUiA_13stdio_fixture.exit
  store ptr @49, ptr %i.kt, align 8, !noalias !873
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  store i64 6, ptr %i.kv, align 8, !noalias !906
  %i.kw = icmp eq i64 %.sroa.21029.0.copyload.pre, 0
  br i1 %i.kw, label %_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECscjwHxV1jUiA_13stdio_fixture.exit361, label %bb.ad

bb.ad:                                            ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2f_5array4iter8IntoIterBU_Kj1_ENCINvMs_NtBY_3argNtB3F_3Arg11value_namesBU_ABU_B3t_E0EE9from_iterCscjwHxV1jUiA_13stdio_fixture.exit.i357
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41031.0.copyload.pre) ]
  %i.kx = shl nuw i64 %.sroa.21029.0.copyload.pre, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.41031.0.copyload.pre, i64 noundef %i.kx, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !907
  br label %_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECscjwHxV1jUiA_13stdio_fixture.exit361

_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECscjwHxV1jUiA_13stdio_fixture.exit361: ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2f_5array4iter8IntoIterBU_Kj1_ENCINvMs_NtBY_3argNtB3F_3Arg11value_namesBU_ABU_B3t_E0EE9from_iterCscjwHxV1jUiA_13stdio_fixture.exit.i357, %bb.ad
  call void @_RNvXs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCsj6eKBz9Db1c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 14) #19
  %.sroa.01078.0.copyload = load i64, ptr %i.y, align 8
  %.sroa.41079.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.41079.0.copyload = load ptr, ptr %.sroa.41079.0..sroa_idx, align 8
  %.sroa.51080.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.51080.0.copyload = load i64, ptr %.sroa.51080.0..sroa_idx, align 8
  %.0.val.off.i362 = add i64 %.sroa.111039.0.copyload, -1
  %switch.i363 = icmp ult i64 %.0.val.off.i362, -2
  br i1 %switch.i363, label %bb.ae, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit364

bb.ae:                                            ; preds = %_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECscjwHxV1jUiA_13stdio_fixture.exit361
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.121040.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.121040.0.copyload, i64 noundef %.sroa.111039.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !908
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit364

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit364: ; preds = %_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECscjwHxV1jUiA_13stdio_fixture.exit361, %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !911)
  call void @llvm.experimental.noalias.scope.decl(metadata !914)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !916
  %i.ky = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 48, i64 noundef range(i64 1, 9) 8) #19, !noalias !916 ; 8 uses
  %i.kz = icmp eq ptr %i.ky, null
  br i1 %i.kz, label %bb.af, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i

bb.af:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit364
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 48) #22, !noalias !926
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit364
  store ptr @51, ptr %i.ky, align 8, !noalias !927
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  store i64 5, ptr %i.la, align 8, !noalias !960
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  store ptr @52, ptr %i.lb, align 8, !noalias !927
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 24
  store i64 6, ptr %i.lc, align 8, !noalias !960
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ky, i64 32
  store ptr @53, ptr %i.ld, align 8, !noalias !927
  %i.le = getelementptr inbounds nuw i8, ptr %i.ky, i64 40
  store i64 6, ptr %i.le, align 8, !noalias !960
  %i.lf = icmp eq i64 %.sroa.71035.0.copyload.pre, 0
  br i1 %i.lf, label %_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg14default_valuesReAB1c_j3_ECscjwHxV1jUiA_13stdio_fixture.exit, label %bb.ag

bb.ag:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.81036.0.copyload.pre) ]
  %i.lg = shl nuw i64 %.sroa.71035.0.copyload.pre, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.81036.0.copyload.pre, i64 noundef %i.lg, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !961
  br label %_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg14default_valuesReAB1c_j3_ECscjwHxV1jUiA_13stdio_fixture.exit

_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg14default_valuesReAB1c_j3_ECscjwHxV1jUiA_13stdio_fixture.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i, %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.aj, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.01028, i64 344, i1 false)
  %.sroa.01008.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 344
  store i64 1, ptr %.sroa.01008.sroa.4.0..sroa_idx, align 8, !alias.scope !962, !noalias !963
  %.sroa.01008.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 352
  store ptr %i.kt, ptr %.sroa.01008.sroa.5.0..sroa_idx, align 8, !alias.scope !962, !noalias !963
  %.sroa.01008.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 360
  store i64 1, ptr %.sroa.01008.sroa.6.0..sroa_idx, align 8, !alias.scope !962, !noalias !963
  %.sroa.41009.0..sroa_idx1010 = getelementptr inbounds nuw i8, ptr %i.aj, i64 368
  store i64 3, ptr %.sroa.41009.0..sroa_idx1010, align 8, !alias.scope !962, !noalias !963
  %.sroa.61012.0..sroa_idx1013 = getelementptr inbounds nuw i8, ptr %i.aj, i64 376
  store ptr %i.ky, ptr %.sroa.61012.0..sroa_idx1013, align 8, !alias.scope !962, !noalias !963
  %.sroa.81015.0..sroa_idx1016 = getelementptr inbounds nuw i8, ptr %i.aj, i64 384
  store i64 3, ptr %.sroa.81015.0..sroa_idx1016, align 8, !alias.scope !962, !noalias !963
  %.sroa.91018.0..sroa_idx1019 = getelementptr inbounds nuw i8, ptr %i.aj, i64 392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.91018.0..sroa_idx1019, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.101038, i64 96, i1 false)
  %.sroa.91018.sroa.4.0..sroa.91018.0..sroa_idx1019.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 488
  store i64 %.sroa.01078.0.copyload, ptr %.sroa.91018.sroa.4.0..sroa.91018.0..sroa_idx1019.sroa_idx, align 8, !alias.scope !962, !noalias !963
  %.sroa.91018.sroa.5.0..sroa.91018.0..sroa_idx1019.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 496
  store ptr %.sroa.41079.0.copyload, ptr %.sroa.91018.sroa.5.0..sroa.91018.0..sroa_idx1019.sroa_idx, align 8, !alias.scope !962, !noalias !963
  %.sroa.91018.sroa.6.0..sroa.91018.0..sroa_idx1019.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 504
  store i64 %.sroa.51080.0.copyload, ptr %.sroa.91018.sroa.6.0..sroa.91018.0..sroa_idx1019.sroa_idx, align 8, !alias.scope !962, !noalias !963
  %.sroa.91018.sroa.6.sroa.0.sroa.4.0..sroa.91018.sroa.6.0..sroa.91018.0..sroa_idx1019.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %.sroa.91018.sroa.6.sroa.0.sroa.4.0..sroa.91018.sroa.6.0..sroa.91018.0..sroa_idx1019.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(84) %.sroa.131041.sroa.2, i64 84, i1 false)
  %.sroa.91018.sroa.6.sroa.4.0..sroa.91018.sroa.6.0..sroa.91018.0..sroa_idx1019.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 596
  store i8 1, ptr %.sroa.91018.sroa.6.sroa.4.0..sroa.91018.sroa.6.0..sroa.91018.0..sroa_idx1019.sroa_idx.sroa_idx, align 4, !alias.scope !962, !noalias !963
  %.sroa.91018.sroa.6.sroa.5.0..sroa.91018.sroa.6.0..sroa.91018.0..sroa_idx1019.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 597
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.91018.sroa.6.sroa.5.0..sroa.91018.sroa.6.0..sroa.91018.0..sroa_idx1019.sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.151043, i64 3, i1 false)
  call void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.bm, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(600) %i.aj) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.ah, ptr noundef nonnull align 8 dereferenceable(712) %i.bm, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.ag, ptr noundef nonnull align 8 dereferenceable(712) %i.ah, i64 712, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !964
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !968
  %i.lh = call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 144, i64 noundef 8) #19, !noalias !968 ; 5 uses
  %i.li = icmp eq ptr %i.lh, null
  br i1 %i.li, label %bb.ah, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i379, !prof !273

bb.ah:                                            ; preds = %_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg14default_valuesReAB1c_j3_ECscjwHxV1jUiA_13stdio_fixture.exit
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #22, !noalias !968
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i379: ; preds = %_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg14default_valuesReAB1c_j3_ECscjwHxV1jUiA_13stdio_fixture.exit
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ag, i64 224
  store i64 1, ptr %i.lh, align 8, !noalias !964
  %.sroa.4.0..sroa_idx.i380 = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i380, align 8, !noalias !964
  %.sroa.5.0..sroa_idx.i381 = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(126) %.sroa.5.0..sroa_idx.i381, ptr noundef nonnull align 2 dereferenceable(126) @54, i64 126, i1 false), !noalias !971
  store ptr %i.lh, ptr %i.m, align 8, !noalias !964
  %i.lk = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @5, ptr %i.lk, align 8, !noalias !964
  %i.ll = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ll, ptr noundef nonnull align 8 dereferenceable(16) @4, i64 16, i1 false), !noalias !964
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !964
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.lj, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(16) @4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.m) #19, !noalias !972
  %i.lm = load ptr, ptr %i.l, align 8, !noalias !964, !noundef !10 ; 2 uses
  %i.ln = icmp eq ptr %i.lm, null
  br i1 %i.ln, label %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_7styling6StylesECscjwHxV1jUiA_13stdio_fixture.exit, label %bb.ai

bb.ai:                                            ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i379
  %i.lo = atomicrmw sub ptr %i.lm, i64 1 release, align 8, !noalias !973
  %i.lp = icmp eq i64 %i.lo, 1
  br i1 %i.lp, label %bb.aj, label %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_7styling6StylesECscjwHxV1jUiA_13stdio_fixture.exit

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l) #21, !noalias !972
  br label %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_7styling6StylesECscjwHxV1jUiA_13stdio_fixture.exit

_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_7styling6StylesECscjwHxV1jUiA_13stdio_fixture.exit: ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i379, %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !964
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.ah, ptr noundef nonnull align 8 dereferenceable(712) %i.ag, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @_RNvNtCsaKJjC64KgbL_3std3env7args_os(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.x) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !982)
  call void @llvm.experimental.noalias.scope.decl(metadata !985)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !987
  call void @llvm.experimental.noalias.scope.decl(metadata !989)
  call void @llvm.experimental.noalias.scope.decl(metadata !992)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !994
  call void @llvm.experimental.noalias.scope.decl(metadata !996)
  call void @llvm.experimental.noalias.scope.decl(metadata !999)
  %.sroa.09.0.copyload.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !1001, !noalias !1005 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1001, !noalias !1005, !nonnull !10, !noundef !10 ; 5 uses
  %.sroa.510.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.510.0.copyload.i.i.i = load i64, ptr %.sroa.510.0..sroa_idx.i.i.i, align 8, !alias.scope !1001, !noalias !1005 ; 4 uses
  %.sroa.611.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.611.0.copyload.i.i.i = load ptr, ptr %.sroa.611.0..sroa_idx.i.i.i, align 8, !alias.scope !1001, !noalias !1005, !nonnull !10, !noundef !10 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1006
  %i.lq = icmp eq ptr %.sroa.4.0.copyload.i.i.i, %.sroa.611.0.copyload.i.i.i
  br i1 %i.lq, label %bb.ar, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i: ; preds = %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_7styling6StylesECscjwHxV1jUiA_13stdio_fixture.exit
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i, i64 24 ; 5 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i = load i64, ptr %.sroa.4.0.copyload.i.i.i, align 8, !noalias !1013 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.ar, label %bb.ak

bb.ak:                                            ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i, i64 16, i1 false), !noalias !1006
  %i.ls = ptrtoint ptr %.sroa.611.0.copyload.i.i.i to i64 ; 3 uses
  %i.lt = ptrtoint ptr %i.lr to i64
  %i.lu = sub nuw i64 %i.ls, %i.lt                ; 2 uses
  %i.lv = udiv exact i64 %i.lu, 24
  %i.lw = call i64 @llvm.umax.i64(i64 %i.lv, i64 3) ; 2 uses
  %..i.i.i.i.i.i = add nuw nsw i64 %i.lw, 1       ; 2 uses
  %i.lx = mul i64 %..i.i.i.i.i.i, 24              ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.lu, 9223372036854775776
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.am, label %bb.al, !prof !1021

bb.al:                                            ; preds = %bb.ak
  %i.ly = icmp eq i64 %i.lx, 0
  br i1 %i.ly, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i: ; preds = %bb.al
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1022
  %i.lz = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.lx, i64 noundef range(i64 1, 9) 8) #19, !noalias !1022 ; 2 uses
  %i.ma = icmp eq ptr %i.lz, null
end_hunk_1
