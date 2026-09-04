Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clap-rs/original/stdio_fixture.stdio_fixture.8f70a030548dc77a-cgu.0?download=true
inline.NumInlined: 654
inline.NumDeleted: 466
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11arg_matches10ArgMatchesECscjwHxV1jUiA_13stdio_fixture:bb.a
  br i1 %i.ae, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i
  %.val2.i.i.i.i.i.i = load i64, ptr %i.n, align 8, !range !5, !alias.scope !238, !noalias !232, !noundef !6 ; 2 uses
  %i.af = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.af, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i
  %i.ag = mul nuw i64 %.val2.i.i.i.i.i.i, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !242
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i: ; preds = %bb.f, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %.val.i2.i.i.i.i.i = load ptr, ptr %i.ai, align 8, !alias.scope !250, !noalias !232, !nonnull !6, !noundef !6 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %.val1.i3.i.i.i.i.i = load i64, ptr %i.aj, align 8, !alias.scope !250, !noalias !232, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.ak = icmp eq i64 %.val1.i3.i.i.i.i.i, 0
  br i1 %i.ak, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i4.i.i.i.i.i

.lr.ph.i.i.i4.i.i.i.i.i:                          ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i
  %.sroa.0.03.i.i.i5.i.i.i.i.i = phi i64 [ %i.am, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %.val.i2.i.i.i.i.i, i64 %.sroa.0.03.i.i.i5.i.i.i.i.i ; 3 uses
  %i.am = add nuw nsw i64 %.sroa.0.03.i.i.i5.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.val2.i.i.i.i6.i.i.i.i.i = load ptr, ptr %i.an, align 8, !alias.scope !253, !noalias !254, !nonnull !6, !noundef !6 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.val3.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !253, !noalias !254, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.ap = icmp eq i64 %.val3.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ap, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i7.i.i.i.i.i

.lr.ph.i.i.i.i.i.i7.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i4.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ar, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i4.i.i.i.i.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %.val2.i.i.i.i6.i.i.i.i.i, i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ar = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aq, align 8, !range !5, !alias.scope !255, !noalias !256, !noundef !6 ; 2 uses
  %i.as = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.as, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i7.i.i.i.i.i
  %i.at = getelementptr i8, ptr %i.aq, i64 8
  %.val3.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !255, !noalias !256, !nonnull !6, !noundef !6
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !257
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i7.i.i.i.i.i
  %i.au = icmp eq i64 %i.ar, %.val3.i.i.i.i.i.i.i.i.i
  br i1 %i.au, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i7.i.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i4.i.i.i.i.i
  %.val.i.i.i.i8.i.i.i.i.i = load i64, ptr %i.al, align 8, !range !5, !alias.scope !253, !noalias !254, !noundef !6 ; 2 uses
  %i.av = icmp eq i64 %.val.i.i.i.i8.i.i.i.i.i, 0
  br i1 %i.av, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i
  %i.aw = mul nuw i64 %.val.i.i.i.i8.i.i.i.i.i, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i6.i.i.i.i.i, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !256
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i
  %i.ax = icmp eq i64 %i.am, %.val1.i3.i.i.i.i.i
  br i1 %i.ax, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i4.i.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i
  %.val2.i9.i.i.i.i.i = load i64, ptr %i.ah, align 8, !range !5, !alias.scope !250, !noalias !232, !noundef !6 ; 2 uses
  %i.ay = icmp eq i64 %.val2.i9.i.i.i.i.i, 0
  br i1 %i.ay, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i
  %i.az = mul nuw i64 %.val2.i9.i.i.i.i.i, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i2.i.i.i.i.i, i64 noundef %i.az, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !254
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i: ; preds = %bb.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i
  %i.ba = icmp eq i64 %i.i, %.val1.i.i
  br i1 %i.ba, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCscjwHxV1jUiA_13stdio_fixture.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCscjwHxV1jUiA_13stdio_fixture.exit.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEECscjwHxV1jUiA_13stdio_fixture.exit.i
  %.val2.i.i = load i64, ptr %i.d, align 8, !range !5, !alias.scope !232, !noundef !6 ; 2 uses
  %i.bb = icmp eq i64 %.val2.i.i, 0
  br i1 %i.bb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map7FlatMapNtNtBG_2id2IdNtNtNtNtBI_6parser7matches11matched_arg10MatchedArgEECscjwHxV1jUiA_13stdio_fixture.exit, label %bb.j

bb.j:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCscjwHxV1jUiA_13stdio_fixture.exit.i.i
  %i.bc = mul nuw i64 %.val2.i.i, 104
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.bc, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !232
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map7FlatMapNtNtBG_2id2IdNtNtNtNtBI_6parser7matches11matched_arg10MatchedArgEECscjwHxV1jUiA_13stdio_fixture.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map7FlatMapNtNtBG_2id2IdNtNtNtNtBI_6parser7matches11matched_arg10MatchedArgEECscjwHxV1jUiA_13stdio_fixture.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCscjwHxV1jUiA_13stdio_fixture.exit.i.i, %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !258, !align !8, !noundef !6 ; 5 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %common.ret9, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map7FlatMapNtNtBG_2id2IdNtNtNtNtBI_6parser7matches11matched_arg10MatchedArgEECscjwHxV1jUiA_13stdio_fixture.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  %.val.i2 = load i64, ptr %i.be, align 8, !range !5, !alias.scope !259, !noalias !260, !noundef !6 ; 2 uses
  %i.bg = icmp eq i64 %.val.i2, 0
  br i1 %i.bg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECscjwHxV1jUiA_13stdio_fixture.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.val1.i3 = load ptr, ptr %i.bh, align 8, !alias.scope !259, !noalias !260, !nonnull !6, !noundef !6
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i3, i64 noundef %.val.i2, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !261
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECscjwHxV1jUiA_13stdio_fixture.exit

common.ret9:                                      ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map7FlatMapNtNtBG_2id2IdNtNtNtNtBI_6parser7matches11matched_arg10MatchedArgEECscjwHxV1jUiA_13stdio_fixture.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECscjwHxV1jUiA_13stdio_fixture.exit
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECscjwHxV1jUiA_13stdio_fixture.exit: ; preds = %bb.k, %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11arg_matches10ArgMatchesECscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef align 8 dereferenceable(56) %i.bi) #19, !noalias !260, !inline_history !228
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef 80, i64 noundef 8) #19, !noalias !260, !inline_history !229
  br label %common.ret9
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsaKJjC64KgbL_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECscjwHxV1jUiA_13stdio_fixture(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  tail call void %0() #19, !inline_history !262
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !263
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 16, 73) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !5, !alias.scope !266, !noundef !6 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 range(i64 0, -1) %i.e)
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !266
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.f, align 8, !alias.scope !266
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef 8, i64 noundef range(i64 8, 73) %3) #19, !noalias !266
  %i.g = load i64, ptr %i.a, align 8, !range !9, !noalias !266, !noundef !6
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !range !10, !noalias !266, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !266
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.l, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.j, %bb.c ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #22
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.i, align 8, !noalias !266, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !266
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !266
  %i.n = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.n)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !266
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef i32 @_RNCINvNtCsaKJjC64KgbL_3std2rt10lang_startuE0CscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  tail call fastcc void @_RINvNtNtCsaKJjC64KgbL_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECscjwHxV1jUiA_13stdio_fixture(ptr noundef nonnull %i.a) #21
  ret i32 0
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef i32 @_RNSNvYNCINvNtCsaKJjC64KgbL_3std2rt10lang_startuE0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceuE9call_once6vtableCscjwHxV1jUiA_13stdio_fixture(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  tail call fastcc void @_RINvNtNtCsaKJjC64KgbL_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECscjwHxV1jUiA_13stdio_fixture(ptr noundef nonnull readonly %i.a) #21, !noalias !269
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !948
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !949
  %i.bn = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef 8) #19, !noalias !949 ; 5 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.b, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #22, !noalias !949
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.a
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 224
  store i64 1, ptr %i.bn, align 8, !noalias !948
  %.sroa.4.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i44, align 8, !noalias !948
  %.sroa.5.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i45, align 8, !noalias !948
  store ptr %i.bn, ptr %i.w, align 8, !noalias !948
  %i.bp = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @3, ptr %i.bp, align 8, !noalias !948
end_hunk_0
begin_hunk_1_@_RNvCscjwHxV1jUiA_13stdio_fixture4main:bb.a
  store i64 0, ptr %i.kp, align 8, !alias.scope !1120
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  store i64 0, ptr %i.kq, align 8, !alias.scope !1120
  %.sroa.457.0..sroa_idx.i349 = getelementptr inbounds nuw i8, ptr %i.ai, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.547.0..sroa_idx.i348, i8 0, i64 16, i1 false), !alias.scope !1120
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.457.0..sroa_idx.i349, align 8, !alias.scope !1120
  %.sroa.558.0..sroa_idx.i350 = getelementptr inbounds nuw i8, ptr %i.ai, i64 456
  %.sroa.659.sroa.4.0..sroa.659.0..sroa_idx.sroa_idx.i351 = getelementptr inbounds nuw i8, ptr %i.ai, i64 472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.558.0..sroa_idx.i350, i8 0, i64 16, i1 false), !alias.scope !1120
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.659.sroa.4.0..sroa.659.0..sroa_idx.sroa_idx.i351, align 8, !alias.scope !1120
  %.sroa.659.sroa.5.0..sroa.659.0..sroa_idx.sroa_idx.i352 = getelementptr inbounds nuw i8, ptr %i.ai, i64 480
  store i64 0, ptr %.sroa.659.sroa.5.0..sroa.659.0..sroa_idx.sroa_idx.i352, align 8, !alias.scope !1120
  store ptr @48, ptr %i.ka, align 8
  store i64 6, ptr %i.kb, align 8
  store i32 102, ptr %i.ki, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  call void @llvm.experimental.noalias.scope.decl(metadata !1122)
  call void @llvm.experimental.noalias.scope.decl(metadata !1123)
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ai, i64 320
  call fastcc void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTcbEE8grow_oneCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kr) #21, !noalias !1121
  %.sroa.21029.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ai, i64 344
  %.sroa.21029.0.copyload.pre = load i64, ptr %.sroa.21029.0..sroa_idx.phi.trans.insert, align 8, !alias.scope !1124 ; 2 uses
  %.sroa.41031.0.copyload.pre = load ptr, ptr %.sroa.435.0..sroa_idx.i341, align 8, !alias.scope !1124 ; 2 uses
  %.sroa.71035.0.copyload.pre = load i64, ptr %i.kn, align 8, !alias.scope !1124 ; 2 uses
  %.sroa.81036.0.copyload.pre = load ptr, ptr %.sroa.440.0..sroa_idx.i343, align 8, !alias.scope !1124 ; 2 uses
  %.pre1098 = load ptr, ptr %.sroa.432.0..sroa_idx.i339, align 8, !alias.scope !1125, !noalias !1121 ; 2 uses
  store i32 98, ptr %.pre1098, align 4, !noalias !1126
  %i.ks = getelementptr inbounds nuw i8, ptr %.pre1098, i64 4
  store i8 1, ptr %i.ks, align 4, !noalias !1126
  store i64 1, ptr %.sroa.533.0..sroa_idx.i340, align 8, !alias.scope !1125, !noalias !1121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.01028, ptr noundef nonnull align 8 dereferenceable(344) %i.ai, i64 344, i1 false)
  %.sroa.101038.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.101038, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.101038.0..sroa_idx, i64 96, i1 false)
  %.sroa.111039.0.copyload = load i64, ptr %i.kc, align 8, !alias.scope !1124 ; 2 uses
  %.sroa.121040.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 496
  %.sroa.121040.0.copyload = load ptr, ptr %.sroa.121040.0..sroa_idx, align 8, !alias.scope !1124 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %.sroa.131041.sroa.2, ptr noundef nonnull align 8 dereferenceable(84) %i.kd, i64 84, i1 false)
  %.sroa.151043.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 597
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.151043, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.151043.0..sroa_idx, i64 3, i1 false)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1127
  %i.kt = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #19, !noalias !1127 ; 4 uses
  %i.ku = icmp eq ptr %i.kt, null
  br i1 %i.ku, label %bb.ac, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2f_5array4iter8IntoIterBU_Kj1_ENCINvMs_NtBY_3argNtB3F_3Arg11value_namesBU_ABU_B3t_E0EE9from_iterCscjwHxV1jUiA_13stdio_fixture.exit.i357

bb.ac:                                            ; preds = %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB3_3Arg19visible_short_aliascECscjwHxV1jUiA_13stdio_fixture.exit
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 16) #22, !noalias !1128
  unreachable

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2f_5array4iter8IntoIterBU_Kj1_ENCINvMs_NtBY_3argNtB3F_3Arg11value_namesBU_ABU_B3t_E0EE9from_iterCscjwHxV1jUiA_13stdio_fixture.exit.i357: ; preds = %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB3_3Arg19visible_short_aliascECscjwHxV1jUiA_13stdio_fixture.exit
  store ptr @49, ptr %i.kt, align 8, !noalias !1129
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  store i64 6, ptr %i.kv, align 8, !noalias !1130
  %i.kw = icmp eq i64 %.sroa.21029.0.copyload.pre, 0
  br i1 %i.kw, label %_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECscjwHxV1jUiA_13stdio_fixture.exit361, label %bb.ad

bb.ad:                                            ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2f_5array4iter8IntoIterBU_Kj1_ENCINvMs_NtBY_3argNtB3F_3Arg11value_namesBU_ABU_B3t_E0EE9from_iterCscjwHxV1jUiA_13stdio_fixture.exit.i357
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41031.0.copyload.pre) ]
  %i.kx = shl nuw i64 %.sroa.21029.0.copyload.pre, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.41031.0.copyload.pre, i64 noundef %i.kx, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1131
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
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.121040.0.copyload, i64 noundef %.sroa.111039.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1132
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit364

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit364: ; preds = %_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECscjwHxV1jUiA_13stdio_fixture.exit361, %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !1133)
  call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1135
  %i.ky = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 48, i64 noundef range(i64 1, 9) 8) #19, !noalias !1135 ; 8 uses
  %i.kz = icmp eq ptr %i.ky, null
  br i1 %i.kz, label %bb.af, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i

bb.af:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit364
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 48) #22, !noalias !1136
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit364
  store ptr @51, ptr %i.ky, align 8, !noalias !1137
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  store i64 5, ptr %i.la, align 8, !noalias !1138
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  store ptr @52, ptr %i.lb, align 8, !noalias !1137
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 24
  store i64 6, ptr %i.lc, align 8, !noalias !1138
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ky, i64 32
  store ptr @53, ptr %i.ld, align 8, !noalias !1137
  %i.le = getelementptr inbounds nuw i8, ptr %i.ky, i64 40
  store i64 6, ptr %i.le, align 8, !noalias !1138
  %i.lf = icmp eq i64 %.sroa.71035.0.copyload.pre, 0
  br i1 %i.lf, label %_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg14default_valuesReAB1c_j3_ECscjwHxV1jUiA_13stdio_fixture.exit, label %bb.ag

bb.ag:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.81036.0.copyload.pre) ]
  %i.lg = shl nuw i64 %.sroa.71035.0.copyload.pre, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.81036.0.copyload.pre, i64 noundef %i.lg, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1139
  br label %_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg14default_valuesReAB1c_j3_ECscjwHxV1jUiA_13stdio_fixture.exit

_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg14default_valuesReAB1c_j3_ECscjwHxV1jUiA_13stdio_fixture.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i, %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.aj, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.01028, i64 344, i1 false)
  %.sroa.01008.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 344
  store i64 1, ptr %.sroa.01008.sroa.4.0..sroa_idx, align 8, !alias.scope !1140, !noalias !1141
  %.sroa.01008.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 352
  store ptr %i.kt, ptr %.sroa.01008.sroa.5.0..sroa_idx, align 8, !alias.scope !1140, !noalias !1141
  %.sroa.01008.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 360
  store i64 1, ptr %.sroa.01008.sroa.6.0..sroa_idx, align 8, !alias.scope !1140, !noalias !1141
  %.sroa.41009.0..sroa_idx1010 = getelementptr inbounds nuw i8, ptr %i.aj, i64 368
  store i64 3, ptr %.sroa.41009.0..sroa_idx1010, align 8, !alias.scope !1140, !noalias !1141
  %.sroa.61012.0..sroa_idx1013 = getelementptr inbounds nuw i8, ptr %i.aj, i64 376
  store ptr %i.ky, ptr %.sroa.61012.0..sroa_idx1013, align 8, !alias.scope !1140, !noalias !1141
  %.sroa.81015.0..sroa_idx1016 = getelementptr inbounds nuw i8, ptr %i.aj, i64 384
  store i64 3, ptr %.sroa.81015.0..sroa_idx1016, align 8, !alias.scope !1140, !noalias !1141
  %.sroa.91018.0..sroa_idx1019 = getelementptr inbounds nuw i8, ptr %i.aj, i64 392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.91018.0..sroa_idx1019, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.101038, i64 96, i1 false)
  %.sroa.91018.sroa.4.0..sroa.91018.0..sroa_idx1019.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 488
  store i64 %.sroa.01078.0.copyload, ptr %.sroa.91018.sroa.4.0..sroa.91018.0..sroa_idx1019.sroa_idx, align 8, !alias.scope !1140, !noalias !1141
  %.sroa.91018.sroa.5.0..sroa.91018.0..sroa_idx1019.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 496
  store ptr %.sroa.41079.0.copyload, ptr %.sroa.91018.sroa.5.0..sroa.91018.0..sroa_idx1019.sroa_idx, align 8, !alias.scope !1140, !noalias !1141
  %.sroa.91018.sroa.6.0..sroa.91018.0..sroa_idx1019.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 504
  store i64 %.sroa.51080.0.copyload, ptr %.sroa.91018.sroa.6.0..sroa.91018.0..sroa_idx1019.sroa_idx, align 8, !alias.scope !1140, !noalias !1141
  %.sroa.91018.sroa.6.sroa.0.sroa.4.0..sroa.91018.sroa.6.0..sroa.91018.0..sroa_idx1019.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %.sroa.91018.sroa.6.sroa.0.sroa.4.0..sroa.91018.sroa.6.0..sroa.91018.0..sroa_idx1019.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(84) %.sroa.131041.sroa.2, i64 84, i1 false)
  %.sroa.91018.sroa.6.sroa.4.0..sroa.91018.sroa.6.0..sroa.91018.0..sroa_idx1019.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 596
  store i8 1, ptr %.sroa.91018.sroa.6.sroa.4.0..sroa.91018.sroa.6.0..sroa.91018.0..sroa_idx1019.sroa_idx.sroa_idx, align 4, !alias.scope !1140, !noalias !1141
  %.sroa.91018.sroa.6.sroa.5.0..sroa.91018.sroa.6.0..sroa.91018.0..sroa_idx1019.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 597
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.91018.sroa.6.sroa.5.0..sroa.91018.sroa.6.0..sroa.91018.0..sroa_idx1019.sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.151043, i64 3, i1 false)
  call void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.bm, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(600) %i.aj) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.ah, ptr noundef nonnull align 8 dereferenceable(712) %i.bm, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.ag, ptr noundef nonnull align 8 dereferenceable(712) %i.ah, i64 712, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1142
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1143
  %i.lh = call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 144, i64 noundef 8) #19, !noalias !1143 ; 5 uses
  %i.li = icmp eq ptr %i.lh, null
  br i1 %i.li, label %bb.ah, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i379, !prof !11

bb.ah:                                            ; preds = %_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg14default_valuesReAB1c_j3_ECscjwHxV1jUiA_13stdio_fixture.exit
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #22, !noalias !1143
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i379: ; preds = %_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg14default_valuesReAB1c_j3_ECscjwHxV1jUiA_13stdio_fixture.exit
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ag, i64 224
  store i64 1, ptr %i.lh, align 8, !noalias !1142
  %.sroa.4.0..sroa_idx.i380 = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i380, align 8, !noalias !1142
  %.sroa.5.0..sroa_idx.i381 = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(126) %.sroa.5.0..sroa_idx.i381, ptr noundef nonnull align 2 dereferenceable(126) @54, i64 126, i1 false), !noalias !1144
  store ptr %i.lh, ptr %i.m, align 8, !noalias !1142
  %i.lk = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @5, ptr %i.lk, align 8, !noalias !1142
  %i.ll = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ll, ptr noundef nonnull align 8 dereferenceable(16) @4, i64 16, i1 false), !noalias !1142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1142
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.lj, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(16) @4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.m) #19, !noalias !1145
  %i.lm = load ptr, ptr %i.l, align 8, !noalias !1142, !noundef !6 ; 2 uses
  %i.ln = icmp eq ptr %i.lm, null
  br i1 %i.ln, label %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_7styling6StylesECscjwHxV1jUiA_13stdio_fixture.exit, label %bb.ai

bb.ai:                                            ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i379
  %i.lo = atomicrmw sub ptr %i.lm, i64 1 release, align 8, !noalias !1146
  %i.lp = icmp eq i64 %i.lo, 1
  br i1 %i.lp, label %bb.aj, label %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_7styling6StylesECscjwHxV1jUiA_13stdio_fixture.exit

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l) #21, !noalias !1145
  br label %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_7styling6StylesECscjwHxV1jUiA_13stdio_fixture.exit

_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_7styling6StylesECscjwHxV1jUiA_13stdio_fixture.exit: ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i379, %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.ah, ptr noundef nonnull align 8 dereferenceable(712) %i.ag, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @_RNvNtCsaKJjC64KgbL_3std3env7args_os(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.x) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1149
  call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  call void @llvm.experimental.noalias.scope.decl(metadata !1151)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1152
  call void @llvm.experimental.noalias.scope.decl(metadata !1153)
  call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  %.sroa.09.0.copyload.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !1155, !noalias !1156 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1155, !noalias !1156, !nonnull !6, !noundef !6 ; 5 uses
  %.sroa.510.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.510.0.copyload.i.i.i = load i64, ptr %.sroa.510.0..sroa_idx.i.i.i, align 8, !alias.scope !1155, !noalias !1156 ; 4 uses
  %.sroa.611.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.611.0.copyload.i.i.i = load ptr, ptr %.sroa.611.0..sroa_idx.i.i.i, align 8, !alias.scope !1155, !noalias !1156, !nonnull !6, !noundef !6 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1157
  %i.lq = icmp eq ptr %.sroa.4.0.copyload.i.i.i, %.sroa.611.0.copyload.i.i.i
  br i1 %i.lq, label %bb.ar, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i: ; preds = %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_7styling6StylesECscjwHxV1jUiA_13stdio_fixture.exit
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i, i64 24 ; 5 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i = load i64, ptr %.sroa.4.0.copyload.i.i.i, align 8, !noalias !1158 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.ar, label %bb.ak

bb.ak:                                            ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i, i64 16, i1 false), !noalias !1157
  %i.ls = ptrtoint ptr %.sroa.611.0.copyload.i.i.i to i64 ; 3 uses
  %i.lt = ptrtoint ptr %i.lr to i64
  %i.lu = sub nuw i64 %i.ls, %i.lt                ; 2 uses
  %i.lv = udiv exact i64 %i.lu, 24
  %i.lw = call i64 @llvm.umax.i64(i64 %i.lv, i64 3) ; 2 uses
  %..i.i.i.i.i.i = add nuw nsw i64 %i.lw, 1       ; 2 uses
  %i.lx = mul i64 %..i.i.i.i.i.i, 24              ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.lu, 9223372036854775776
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.am, label %bb.al, !prof !12

bb.al:                                            ; preds = %bb.ak
  %i.ly = icmp eq i64 %i.lx, 0
  br i1 %i.ly, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i: ; preds = %bb.al
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1159
  %i.lz = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.lx, i64 noundef range(i64 1, 9) 8) #19, !noalias !1159 ; 2 uses
  %i.ma = icmp eq ptr %i.lz, null
  br i1 %i.ma, label %bb.am, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i

bb.am:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i, %bb.ak
  %.sroa.10.0.ph.i.i.i.i.i.i = phi i64 [ %i.lx, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ], [ undef, %bb.ak ]
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 8, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ], [ 0, %bb.ak ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %.sroa.10.0.ph.i.i.i.i.i.i) #22, !noalias !1157
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i, %bb.al
  %.sroa.10.0.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.al ], [ %i.lz, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ 0, %bb.al ], [ %..i.i.i.i.i.i, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.mb = icmp samesign ult i64 %i.lw, %.sroa.4.0.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.mb)
  %.sroa.49.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.49.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i.i, i64 16, i1 false), !noalias !1157
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, ptr %.sroa.10.0.i.i.i.i.i.i, align 8, !noalias !1157
  store i64 %.sroa.4.0.i.i.i.i.i.i, ptr %i.e, align 8, !noalias !1157
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1157
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1157
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  %i.mc = icmp eq ptr %i.lr, %.sroa.611.0.copyload.i.i.i
  br i1 %i.mc, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i, %bb.aq
  %i.md = phi ptr [ %i.mv, %bb.aq ], [ %.sroa.10.0.i.i.i.i.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i ]
  %i.me = phi i64 [ %i.mx, %bb.aq ], [ 1, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i ] ; 6 uses
  %.val1011.i.i.i.i.i.i.i = phi ptr [ %i.mf, %bb.aq ], [ %i.lr, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i ] ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.val1011.i.i.i.i.i.i.i, i64 24 ; 5 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i = load i64, ptr %.val1011.i.i.i.i.i.i.i, align 8, !noalias !1162 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val1011.i.i.i.i.i.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !1163
  %i.mg = icmp samesign ult i64 %i.me, 384307168202282326
  call void @llvm.assume(i1 %i.mg)
  %i.mh = load i64, ptr %i.e, align 8, !range !5, !alias.scope !1164, !noalias !1165, !noundef !6
  %i.mi = icmp eq i64 %i.me, %i.mh
  br i1 %i.mi, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i, label %bb.aq

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i.i.i: ; preds = %bb.aq, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i
  %.sroa.6.0.copyload512.i.i.i = phi i64 [ %i.mx, %bb.aq ], [ %i.me, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i ]
  %.pre17.i.i.i.i.i = ptrtoint ptr %i.mf to i64
  %.pre18.i.i.i.i.i = sub nuw i64 %i.ls, %.pre17.i.i.i.i.i
  %.pre20.i.i.i.i.i = udiv exact i64 %.pre18.i.i.i.i.i, 24
  br label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i: ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i
  %.sroa.6.0.copyload5.i.i.i = phi i64 [ %.sroa.6.0.copyload512.i.i.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i.i.i ], [ 1, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i ]
  %.pre-phi21.i.i.i.i.i = phi i64 [ %.pre20.i.i.i.i.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i.i.i ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i ]
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.mf, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i.i.i ], [ %i.lr, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  %i.mj = icmp eq ptr %.sroa.611.0.copyload.i.i.i, %.val.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.mj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ml, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.mk = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ml = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.mk, align 8, !range !5, !alias.scope !1166, !noalias !1167, !noundef !6 ; 2 uses
  %i.mm = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.mm, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mn = getelementptr i8, ptr %i.mk, i64 8
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.mn, align 8, !alias.scope !1166, !noalias !1167, !nonnull !6, !noundef !6
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1168
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ao, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mo = icmp eq i64 %i.ml, %.pre-phi21.i.i.i.i.i
  br i1 %i.mo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i
  %i.mp = icmp eq i64 %.sroa.510.0.copyload.i.i.i, 0
  br i1 %i.mp, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.copyload.i.i.i) ]
  %i.mq = mul nuw i64 %.sroa.510.0.copyload.i.i.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.09.0.copyload.i.i.i, i64 noundef %i.mq, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1167
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i: ; preds = %bb.an
  %i.mr = ptrtoint ptr %i.mf to i64
  %i.ms = sub nuw i64 %i.ls, %i.mr
  %i.mt = udiv exact i64 %i.ms, 24
  %i.mu = add nuw nsw i64 %i.mt, 1
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.me, i64 noundef %i.mu, i64 noundef 24) #19
  %.pre.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !1164, !noalias !1165
  br label %bb.aq

bb.aq:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i, %bb.an
  %i.mv = phi ptr [ %.pre.i.i.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i ], [ %i.md, %bb.an ] ; 2 uses
  %i.mw = getelementptr inbounds nuw [24 x i8], ptr %i.mv, i64 %i.me ; 2 uses
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !1163
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, ptr %i.mw, align 8, !noalias !1163
  %i.mx = add nuw nsw i64 %i.me, 1                ; 3 uses
  store i64 %i.mx, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !1164, !noalias !1165
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i)
  %i.my = icmp eq ptr %i.mf, %.sroa.611.0.copyload.i.i.i
  br i1 %i.my, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i: ; preds = %bb.ap, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.e, align 8, !noalias !1169
  %.sroa.5.0.copyload3.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1157
  br label %_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECscjwHxV1jUiA_13stdio_fixture.exit.i.i

bb.ar:                                            ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_7styling6StylesECscjwHxV1jUiA_13stdio_fixture.exit
  %.val.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.lr, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.4.0.copyload.i.i.i, %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_7styling6StylesECscjwHxV1jUiA_13stdio_fixture.exit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1157
  %i.mz = ptrtoint ptr %.sroa.611.0.copyload.i.i.i to i64
  %i.na = ptrtoint ptr %.val.i.i.i.i.i.i.i.i.i.i to i64
  %i.nb = sub nuw i64 %i.mz, %i.na
  %i.nc = udiv exact i64 %i.nb, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  %i.nd = icmp eq ptr %.sroa.611.0.copyload.i.i.i, %.val.i.i.i.i.i.i.i.i.i.i
  br i1 %i.nd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ar, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.nf, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.ar ] ; 2 uses
  %i.ne = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.nf = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ne, align 8, !range !5, !alias.scope !1170, !noalias !1171, !noundef !6 ; 2 uses
  %i.ng = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ng, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.nh = getelementptr i8, ptr %i.ne, i64 8
  %.val3.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.nh, align 8, !alias.scope !1170, !noalias !1171, !nonnull !6, !noundef !6
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1172
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.as, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ni = icmp eq i64 %i.nf, %i.nc
  br i1 %i.ni, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.ar
  %i.nj = icmp eq i64 %.sroa.510.0.copyload.i.i.i, 0
  br i1 %i.nj, label %_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECscjwHxV1jUiA_13stdio_fixture.exit.i.i, label %bb.at

bb.at:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.copyload.i.i.i) ]
  %i.nk = mul nuw i64 %.sroa.510.0.copyload.i.i.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.09.0.copyload.i.i.i, i64 noundef %i.nk, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1171
  br label %_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECscjwHxV1jUiA_13stdio_fixture.exit.i.i

_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECscjwHxV1jUiA_13stdio_fixture.exit.i.i: ; preds = %bb.at, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i
  %.sroa.6.0.i.i.i = phi i64 [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.at ], [ %.sroa.6.0.copyload5.i.i.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.5.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.at ], [ %.sroa.5.0.copyload3.i.i.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i = phi i64 [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.at ], [ %.sroa.0.0.copyload1.i.i.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i ]
  store i64 %.sroa.0.0.i.i.i, ptr %i.h, align 8, !alias.scope !1153, !noalias !1173
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 7 uses
  store ptr %.sroa.5.0.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !1153, !noalias !1173
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 9 uses
  store i64 %.sroa.6.0.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !1153, !noalias !1173
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ah, i64 700
  %.val47.i.i = load i32, ptr %i.nl, align 4, !alias.scope !1174, !noalias !1175, !noundef !6 ; 2 uses
  %i.nm = and i32 %.val47.i.i, 2048
  %.not101.i.i.a = icmp eq i32 %i.nm, 0
  br i1 %.not101.i.i.a, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECscjwHxV1jUiA_13stdio_fixture.exit.i.i
  %.not.i.i = icmp eq i64 %.sroa.6.0.i.i.i, 0
  br i1 %.not.i.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.ax, %bb.aw, %bb.au, %_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECscjwHxV1jUiA_13stdio_fixture.exit.i.i
  %i.nn = phi i64 [ 0, %_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECscjwHxV1jUiA_13stdio_fixture.exit.i.i ], [ 1, %bb.ax ], [ 1, %bb.aw ], [ 1, %bb.au ] ; 5 uses
  %i.no = and i32 %.val47.i.i, 67108864
  %.not102.i.i = icmp eq i32 %i.no, 0
  br i1 %.not102.i.i, label %bb.by, label %bb.cb

bb.aw:                                            ; preds = %bb.au
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.i.i, i64 8
  %i.nq = load ptr, ptr %i.np, align 8, !noalias !1152, !nonnull !6, !noundef !6
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.i.i, i64 16
  %i.ns = load i64, ptr %i.nr, align 8, !noalias !1152, !noundef !6
  %i.nt = call { ptr, i64 } @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path9file_stem(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.nq, i64 noundef %i.ns) #19, !noalias !1152 ; 2 uses
  %i.nu = extractvalue { ptr, i64 } %i.nt, 0      ; 2 uses
  %.not41.i.i = icmp eq ptr %i.nu, null
  br i1 %.not41.i.i, label %bb.av, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.nv = extractvalue { ptr, i64 } %i.nt, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1176
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.nu, i64 noundef %i.nv) #19, !noalias !1152
  %i.nw = load i64, ptr %i.d, align 8, !range !9, !noalias !1176, !noundef !6
  %i.nx = trunc nuw i64 %i.nw to i1
  %i.ny = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.nz = load ptr, ptr %i.ny, align 8, !noalias !1176, !nonnull !6
  %i.oa = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ob = load i64, ptr %i.oa, align 8, !noalias !1176 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1176
  br i1 %i.nx, label %bb.av, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1152
  %.not.i.i.i = icmp slt i64 %i.ob, 0
  br i1 %.not.i.i.i, label %bb.ba, label %bb.az, !prof !12

bb.az:                                            ; preds = %bb.ay
  %i.oc = icmp eq i64 %i.ob, 0
  br i1 %i.oc, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscjwHxV1jUiA_13stdio_fixture.exit.thread84.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.az
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1177
  %i.od = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ob, i64 noundef range(i64 1, 9) 1) #19, !noalias !1177 ; 3 uses
  %i.oe = icmp eq ptr %i.od, null
  br i1 %i.oe, label %bb.ba, label %bb.bx

bb.ba:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.ay
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %bb.ay ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.ob) #22, !noalias !1152
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscjwHxV1jUiA_13stdio_fixture.exit.thread84.i.i: ; preds = %bb.bx, %bb.az
  %i.of = phi ptr [ %i.od, %bb.bx ], [ inttoptr (i64 1 to ptr), %bb.az ] ; 2 uses
  store i64 %i.ob, ptr %i.g, align 8, !noalias !1152
  %.sroa.423.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.of, ptr %.sroa.423.0..sroa_idx.i.i, align 8, !noalias !1152
  %.sroa.624.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 %i.ob, ptr %.sroa.624.0..sroa_idx.i.i, align 8, !noalias !1152
  call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1179
  call void @llvm.experimental.noalias.scope.decl(metadata !1180)
  call void @llvm.experimental.noalias.scope.decl(metadata !1181)
  call void @llvm.experimental.noalias.scope.decl(metadata !1182)
  call void @llvm.experimental.noalias.scope.decl(metadata !1183)
  %i.og = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !1184, !noalias !1185, !noundef !6 ; 6 uses
  %i.oh = icmp ult i64 %i.og, 384307168202282326
  call void @llvm.assume(i1 %i.oh)
  %i.oi = icmp eq i64 %i.og, 0
  br i1 %i.oi, label %bb.bb, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE6spliceINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEINtNtNtNtB1D_4iter8adapters3map3MapINtNtNtB1D_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3i_INtNtB1D_7convert4IntoBG_E4intoEECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i, !prof !11

bb.bb:                                            ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscjwHxV1jUiA_13stdio_fixture.exit.thread84.i.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 1, i64 noundef range(i64 0, 384307168202282326) 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #23, !noalias !1186
  unreachable

_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE6spliceINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEINtNtNtNtB1D_4iter8adapters3map3MapINtNtNtB1D_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3i_INtNtB1D_7convert4IntoBG_E4intoEECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscjwHxV1jUiA_13stdio_fixture.exit.thread84.i.i
  %i.oj = ptrtoint ptr %i.g to i64
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !1184, !noalias !1185
  %i.ok = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !1184, !noalias !1185, !nonnull !6, !noundef !6 ; 3 uses
  %i.ol = add nsw i64 %i.og, -1                   ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1180, !noalias !1187
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 7 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1180, !noalias !1187
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 4 uses
  store i64 %i.ol, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1180, !noalias !1187
  %i.om = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 4 uses
  store i64 0, ptr %i.om, align 8, !alias.scope !1188, !noalias !1189
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 1, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !1188, !noalias !1189
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %i.oj, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !alias.scope !1188, !noalias !1189
  call void @llvm.experimental.noalias.scope.decl(metadata !1190)
  call void @llvm.experimental.noalias.scope.decl(metadata !1191)
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8, !alias.scope !1192, !noalias !1179
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1192, !noalias !1179
  %i.on = icmp eq i64 %i.og, 1
  br i1 %i.on, label %bb.bc, label %_RINvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4fillINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1W_5array4iter8IntoIterRNtNtBa_6string6StringKj1_ENvYB36_INtNtB1W_7convert4IntoBZ_E4intoEECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i

bb.bc:                                            ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE6spliceINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEINtNtNtNtB1D_4iter8adapters3map3MapINtNtNtB1D_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3i_INtNtB1D_7convert4IntoBG_E4intoEECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i
  call fastcc void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB4_10SpecExtendBT_QINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB27_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3h_INtNtB27_7convert4IntoBT_E4intoEE11spec_extendCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef align 8 dereferenceable(24) %i.om) #19, !noalias !1152
  br label %_RNvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB10_5array4iter8IntoIterRNtNtB9_6string6StringKj1_ENvYB2a_INtNtB10_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoEENtNtNtB10_3ops4drop4Drop4dropCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i

bb.bd:                                            ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCscjwHxV1jUiA_13stdio_fixture.exit.thread6.peel.i37.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1193
  br label %bb.bf

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1193
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1194
  %i.oo = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef range(i64 1, 9) 8) #19, !noalias !1194 ; 2 uses
  %i.op = icmp eq ptr %i.oo, null
  br i1 %i.op, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 24) #22, !noalias !1195
  unreachable

_RINvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4fillINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1W_5array4iter8IntoIterRNtNtBa_6string6StringKj1_ENvYB36_INtNtB1W_7convert4IntoBZ_E4intoEECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i: ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE6spliceINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEINtNtNtNtB1D_4iter8adapters3map3MapINtNtNtB1D_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3i_INtNtB1D_7convert4IntoBG_E4intoEECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  %i.oq = load i64, ptr %i.h, align 8, !range !5, !alias.scope !1178, !noalias !1197, !noundef !6
  %i.or = icmp eq i64 %i.oq, %i.og
  br i1 %i.or, label %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i, label %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.thread.i.i, !prof !11

_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.thread.i.i: ; preds = %_RINvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4fillINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1W_5array4iter8IntoIterRNtNtBa_6string6StringKj1_ENvYB36_INtNtB1W_7convert4IntoBZ_E4intoEECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i
  %i.os = getelementptr inbounds nuw i8, ptr %i.ok, i64 24
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ok, i64 48
  %i.ou = mul nuw nsw i64 %i.ol, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ot, ptr nonnull align 8 %i.os, i64 %i.ou, i1 false), !noalias !1197
  store i64 2, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1198, !noalias !1179
  br label %.lr.ph.i29.i.i.i.i.i

_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i: ; preds = %_RINvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4fillINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1W_5array4iter8IntoIterRNtNtBa_6string6StringKj1_ENvYB36_INtNtB1W_7convert4IntoBZ_E4intoEECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.og, i64 noundef 1, i64 noundef 24) #19
  %.pre.i.i.i383 = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !1178, !noalias !1197 ; 3 uses
  %.pre.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !1178, !noalias !1199 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.pre.i.i.i383, i64 24
  %i.ow = getelementptr inbounds nuw i8, ptr %.pre.i.i.i383, i64 48
  %i.ox = mul nuw nsw i64 %i.ol, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ow, ptr nonnull align 8 %i.ov, i64 %i.ox, i1 false), !noalias !1197
  store i64 2, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1198, !noalias !1179
  call void @llvm.experimental.noalias.scope.decl(metadata !1200)
  %.not19.i27.i.i.not.not.i.i.i = icmp ugt i64 %.pre.i.i, 1
  br i1 %.not19.i27.i.i.not.not.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i, label %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i..lr.ph.i29.i.i.i.i_crit_edge.i

_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i..lr.ph.i29.i.i.i.i_crit_edge.i: ; preds = %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i
  %.val.i.peel.i32.i.i.i.i.pre.i = load ptr, ptr %.sroa.423.0..sroa_idx.i.i, align 8, !alias.scope !1201, !noalias !1202
  %.val2.i.peel.i33.i.i.i.i.pre.i = load i64, ptr %.sroa.624.0..sroa_idx.i.i, align 8, !alias.scope !1201, !noalias !1202
  br label %.lr.ph.i29.i.i.i.i.i

.lr.ph.i29.i.i.i.i.i:                             ; preds = %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i..lr.ph.i29.i.i.i.i_crit_edge.i, %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.thread.i.i
  %.val2.i.peel.i33.i.i.i.i.i = phi i64 [ %i.ob, %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.thread.i.i ], [ %.val2.i.peel.i33.i.i.i.i.pre.i, %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i..lr.ph.i29.i.i.i.i_crit_edge.i ] ; 7 uses
  %.val.i.peel.i32.i.i.i.i.i = phi ptr [ %i.of, %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.thread.i.i ], [ %.val.i.peel.i32.i.i.i.i.pre.i, %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i..lr.ph.i29.i.i.i.i_crit_edge.i ]
  %i.oy = phi ptr [ %i.ok, %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.thread.i.i ], [ %.pre.i.i.i383, %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i..lr.ph.i29.i.i.i.i_crit_edge.i ]
  %i.oz = phi i64 [ 1, %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.thread.i.i ], [ %.pre.i.i, %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i..lr.ph.i29.i.i.i.i_crit_edge.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  store i64 1, ptr %i.om, align 8, !alias.scope !1204, !noalias !1205
  %i.pa = icmp eq i64 %.val2.i.peel.i33.i.i.i.i.i, 0
  br i1 %i.pa, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCscjwHxV1jUiA_13stdio_fixture.exit.thread6.peel.i37.i.i.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.peel.i34.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.peel.i34.i.i.i.i.i: ; preds = %.lr.ph.i29.i.i.i.i.i
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1206
  %i.pb = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i.peel.i33.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #19, !noalias !1206 ; 3 uses
  %i.pc = icmp eq ptr %i.pb, null
  br i1 %i.pc, label %.loopexit.i44.i.i.i.i.i, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCscjwHxV1jUiA_13stdio_fixture.exit.peel.i35.i.i.i.i.i

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCscjwHxV1jUiA_13stdio_fixture.exit.peel.i35.i.i.i.i.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.peel.i34.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pb, ptr nonnull readonly align 1 %.val.i.peel.i32.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.val2.i.peel.i33.i.i.i.i.i, i1 false), !noalias !1207
  %.not.peel.i36.i.i.i.i.i = icmp eq i64 %.val2.i.peel.i33.i.i.i.i.i, -1
  br i1 %.not.peel.i36.i.i.i.i.i, label %_RNvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB10_5array4iter8IntoIterRNtNtB9_6string6StringKj1_ENvYB2a_INtNtB10_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoEENtNtNtB10_3ops4drop4Drop4dropCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCscjwHxV1jUiA_13stdio_fixture.exit.peel.i35.i.i.i._RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCscjwHxV1jUiA_13stdio_fixture.exit.thread6.peel.i37.i.i.i_crit_edge.i.i

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCscjwHxV1jUiA_13stdio_fixture.exit.peel.i35.i.i.i._RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCscjwHxV1jUiA_13stdio_fixture.exit.thread6.peel.i37.i.i.i_crit_edge.i.i: ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCscjwHxV1jUiA_13stdio_fixture.exit.peel.i35.i.i.i.i.i
  %.pre107.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !1178, !noalias !1199
  br label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCscjwHxV1jUiA_13stdio_fixture.exit.thread6.peel.i37.i.i.i.i.i

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCscjwHxV1jUiA_13stdio_fixture.exit.thread6.peel.i37.i.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCscjwHxV1jUiA_13stdio_fixture.exit.peel.i35.i.i.i._RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCscjwHxV1jUiA_13stdio_fixture.exit.thread6.peel.i37.i.i.i_crit_edge.i.i, %.lr.ph.i29.i.i.i.i.i
  %i.pd = phi ptr [ %.pre107.i.i, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCscjwHxV1jUiA_13stdio_fixture.exit.peel.i35.i.i.i._RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCscjwHxV1jUiA_13stdio_fixture.exit.thread6.peel.i37.i.i.i_crit_edge.i.i ], [ %i.oy, %.lr.ph.i29.i.i.i.i.i ]
  %.sroa.7.012.peel.i38.i.i.i.i.i = phi ptr [ %i.pb, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCscjwHxV1jUiA_13stdio_fixture.exit.peel.i35.i.i.i._RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCscjwHxV1jUiA_13stdio_fixture.exit.thread6.peel.i37.i.i.i_crit_edge.i.i ], [ inttoptr (i64 1 to ptr), %.lr.ph.i29.i.i.i.i.i ]
  %i.pe = getelementptr inbounds nuw [24 x i8], ptr %i.pd, i64 %i.oz ; 3 uses
  store i64 %.val2.i.peel.i33.i.i.i.i.i, ptr %i.pe, align 8, !noalias !1199
  %.sroa.4.0..sroa_idx.peel.i39.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  store ptr %.sroa.7.012.peel.i38.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.peel.i39.i.i.i.i.i, align 8, !noalias !1199
  %.sroa.5.0..sroa_idx.peel.i40.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  store i64 %.val2.i.peel.i33.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.peel.i40.i.i.i.i.i, align 8, !noalias !1199
  %i.pf = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !1178, !noalias !1199, !noundef !6
end_hunk_1
