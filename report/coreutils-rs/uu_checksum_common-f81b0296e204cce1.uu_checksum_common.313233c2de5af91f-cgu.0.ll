Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_checksum_common-f81b0296e204cce1.uu_checksum_common.313233c2de5af91f-cgu.0?download=true
inline.NumInlined: 667
inline.NumDeleted: 426
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesECs4dRV7rdzHEF_18uu_checksum_common:bb.a
  %i.ad = shl nuw i64 %.val2.i.i.i.i.i.i.i.i.i, 5
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !147
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i.i.i.i: ; preds = %bb.e, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i.i.i.i.i
  %i.ae = icmp eq i64 %i.s, %.val1.i.i.i.i.i.i
  br i1 %i.ae, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecjEECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i
  %.val2.i.i.i.i.i.i = load i64, ptr %i.n, align 8, !range !11, !alias.scope !138, !noalias !132, !noundef !6 ; 2 uses
  %i.af = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.af, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecIBC_NtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i.i
  %i.ag = mul nuw i64 %.val2.i.i.i.i.i.i, 24
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !142
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecIBC_NtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecIBC_NtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i: ; preds = %bb.f, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %.val.i2.i.i.i.i.i = load ptr, ptr %i.ai, align 8, !alias.scope !150, !noalias !132, !nonnull !6, !noundef !6 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %.val1.i3.i.i.i.i.i = load i64, ptr %i.aj, align 8, !alias.scope !150, !noalias !132, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %i.ak = icmp eq i64 %.val1.i3.i.i.i.i.i, 0
  br i1 %i.ak, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i4.i.i.i.i.i

.lr.ph.i.i.i4.i.i.i.i.i:                          ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecIBC_NtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i.i.i.i
  %.sroa.0.03.i.i.i5.i.i.i.i.i = phi i64 [ %i.am, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i.i.i.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecIBC_NtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %.val.i2.i.i.i.i.i, i64 %.sroa.0.03.i.i.i5.i.i.i.i.i ; 3 uses
  %i.am = add nuw nsw i64 %.sroa.0.03.i.i.i5.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.val.i.i.i.i6.i.i.i.i.i = load ptr, ptr %i.an, align 8, !alias.scope !153, !noalias !154, !nonnull !6, !noundef !6 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.val1.i.i.i.i7.i.i.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !153, !noalias !154, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.ap = icmp eq i64 %.val1.i.i.i.i7.i.i.i.i.i, 0
  br i1 %i.ap, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i8.i.i.i.i.i

.lr.ph.i.i.i.i.i.i8.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i4.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i.i9.i.i.i.i.i = phi i64 [ %i.ar, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i4.i.i.i.i.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i6.i.i.i.i.i, i64 %.sroa.0.03.i.i.i.i.i.i9.i.i.i.i.i ; 2 uses
  %i.ar = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i9.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aq, align 8, !range !11, !alias.scope !157, !noalias !158, !noundef !6 ; 2 uses
  %i.as = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.as, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i8.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !157, !noalias !158, !nonnull !6, !noundef !6
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !159
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i8.i.i.i.i.i
  %i.au = icmp eq i64 %i.ar, %.val1.i.i.i.i7.i.i.i.i.i
  br i1 %i.au, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i8.i.i.i.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i4.i.i.i.i.i
  %.val2.i.i.i.i10.i.i.i.i.i = load i64, ptr %i.al, align 8, !range !11, !alias.scope !153, !noalias !154, !noundef !6 ; 2 uses
  %i.av = icmp eq i64 %.val2.i.i.i.i10.i.i.i.i.i, 0
  br i1 %i.av, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i.i.i.i.i
  %i.aw = mul nuw i64 %.val2.i.i.i.i10.i.i.i.i.i, 24
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i6.i.i.i.i.i, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !158
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i.i.i.i.i
  %i.ax = icmp eq i64 %i.am, %.val1.i3.i.i.i.i.i
  br i1 %i.ax, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i4.i.i.i.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecIBC_NtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i
  %.val2.i11.i.i.i.i.i = load i64, ptr %i.ah, align 8, !range !11, !alias.scope !150, !noalias !132, !noundef !6 ; 2 uses
  %i.ay = icmp eq i64 %.val2.i11.i.i.i.i.i, 0
  br i1 %i.ay, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_arg10MatchedArgECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i.i
  %i.az = mul nuw i64 %.val2.i11.i.i.i.i.i, 24
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i2.i.i.i.i.i, i64 noundef %i.az, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !154
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_arg10MatchedArgECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_arg10MatchedArgECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i: ; preds = %bb.i, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i.i.i
  %i.ba = icmp eq i64 %i.i, %.val1.i.i
  br i1 %i.ba, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs4dRV7rdzHEF_18uu_checksum_common.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs4dRV7rdzHEF_18uu_checksum_common.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_arg10MatchedArgECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util2id2IdEECs4dRV7rdzHEF_18uu_checksum_common.exit.i
  %.val2.i.i = load i64, ptr %i.d, align 8, !range !11, !alias.scope !132, !noundef !6 ; 2 uses
  %i.bb = icmp eq i64 %.val2.i.i, 0
  br i1 %i.bb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCsgNwXemyrBWj_12clap_builder4util8flat_map7FlatMapNtNtBG_2id2IdNtNtNtNtBI_6parser7matches11matched_arg10MatchedArgEECs4dRV7rdzHEF_18uu_checksum_common.exit, label %bb.j

bb.j:                                             ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs4dRV7rdzHEF_18uu_checksum_common.exit.i.i
  %i.bc = mul nuw i64 %.val2.i.i, 104
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.bc, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !132
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCsgNwXemyrBWj_12clap_builder4util8flat_map7FlatMapNtNtBG_2id2IdNtNtNtNtBI_6parser7matches11matched_arg10MatchedArgEECs4dRV7rdzHEF_18uu_checksum_common.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCsgNwXemyrBWj_12clap_builder4util8flat_map7FlatMapNtNtBG_2id2IdNtNtNtNtBI_6parser7matches11matched_arg10MatchedArgEECs4dRV7rdzHEF_18uu_checksum_common.exit: ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs4dRV7rdzHEF_18uu_checksum_common.exit.i.i, %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !160, !align !13, !noundef !6 ; 5 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %common.ret9, label %bb.k

bb.k:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCsgNwXemyrBWj_12clap_builder4util8flat_map7FlatMapNtNtBG_2id2IdNtNtNtNtBI_6parser7matches11matched_arg10MatchedArgEECs4dRV7rdzHEF_18uu_checksum_common.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %.val.i2 = load i64, ptr %i.be, align 8, !range !11, !alias.scope !161, !noalias !162, !noundef !6 ; 2 uses
  %i.bg = icmp eq i64 %.val.i2, 0
  br i1 %i.bg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.val1.i3 = load ptr, ptr %i.bh, align 8, !alias.scope !161, !noalias !162, !nonnull !6, !noundef !6
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i3, i64 noundef %.val.i2, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !163
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit

common.ret9:                                      ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCsgNwXemyrBWj_12clap_builder4util8flat_map7FlatMapNtNtBG_2id2IdNtNtNtNtBI_6parser7matches11matched_arg10MatchedArgEECs4dRV7rdzHEF_18uu_checksum_common.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit
  ret void

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit: ; preds = %bb.k, %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesECs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree noundef align 8 dereferenceable(56) %i.bi) #22, !noalias !162, !inline_history !128
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef 80, i64 noundef 8) #22, !noalias !162, !inline_history !129
  br label %common.ret9
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0) unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !8, !noundef !6 ; 2 uses
  %i.a = icmp sgt i64 %.val, 0
  br i1 %i.a, label %bb.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs4dRV7rdzHEF_18uu_checksum_common.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !177
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs4dRV7rdzHEF_18uu_checksum_common.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs4dRV7rdzHEF_18uu_checksum_common.exit: ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.d = load i64, ptr %i.c, align 8, !range !179, !alias.scope !178, !noundef !6 ; 3 uses
  %i.e = icmp ne i64 %i.d, 3
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i64 %i.d, -2
  %i.g = icmp samesign ugt i64 %i.d, 1
  %i.h = select i1 %i.g, i64 %i.f, i64 1
  switch i64 %i.h, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs4dRV7rdzHEF_18uu_checksum_common.exit [
    i64 0, label %bb.c
    i64 1, label %bb.e
    i64 2, label %bb.g
  ]

bb.c:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs4dRV7rdzHEF_18uu_checksum_common.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load i64, ptr %i.i, align 8, !range !8, !alias.scope !178, !noundef !6 ; 2 uses
  %i.j = icmp sgt i64 %.val.i, 0
  br i1 %i.j, label %bb.d, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs4dRV7rdzHEF_18uu_checksum_common.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i = load ptr, ptr %i.k, align 8, !alias.scope !178, !nonnull !6, !noundef !6
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !180
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs4dRV7rdzHEF_18uu_checksum_common.exit

bb.e:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs4dRV7rdzHEF_18uu_checksum_common.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val2.i = load i64, ptr %i.l, align 8, !range !8, !alias.scope !181, !noundef !6 ; 2 uses
  %i.m = icmp sgt i64 %.val2.i, 0
  br i1 %i.m, label %bb.f, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs4dRV7rdzHEF_18uu_checksum_common.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val3.i = load ptr, ptr %i.n, align 8, !alias.scope !178, !nonnull !6, !noundef !6
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !182
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs4dRV7rdzHEF_18uu_checksum_common.exit

bb.g:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs4dRV7rdzHEF_18uu_checksum_common.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val4.i = load ptr, ptr %i.o, align 8, !alias.scope !178 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val5.i = load ptr, ptr %i.p, align 8, !alias.scope !178, !nonnull !6, !align !13, !noundef !6 ; 3 uses
  %i.q = load ptr, ptr %.val5.i, align 8, !invariant.load !6, !noalias !178 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  tail call void %i.q(ptr noundef nonnull %.val4.i) #24, !noalias !178, !inline_history !176
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !11, !invariant.load !6, !noalias !178 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs4dRV7rdzHEF_18uu_checksum_common.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !14, !invariant.load !6, !noalias !178
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.v) #22, !noalias !178
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs4dRV7rdzHEF_18uu_checksum_common.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs4dRV7rdzHEF_18uu_checksum_common.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs4dRV7rdzHEF_18uu_checksum_common.exit, %bb.c, %bb.d, %bb.e, %bb.f, %bb.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute28perform_checksum_computationNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtB1t_3ffi6os_str8OsStringENvYB42_INtNtB2a_6borrow6BorrowNtB44_5OsStrE6borrowEECs4dRV7rdzHEF_18uu_checksum_common(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [40 x i8], align 8                ; 8 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = alloca [8 x i8], align 8                 ; 3 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [48 x i8], align 8                ; 9 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [64 x i8], align 8                ; 11 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [48 x i8], align 8                ; 9 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [40 x i8], align 8                ; 8 uses
  %i.aa = alloca [16 x i8], align 8               ; 8 uses
  %i.ab = alloca [8 x i8], align 8                ; 6 uses
  %i.ac = alloca [2 x i8], align 2                ; 4 uses
  %i.ad = alloca [4 x i8], align 4                ; 4 uses
  %i.ae = alloca [16 x i8], align 8               ; 4 uses
  %i.af = alloca [16 x i8], align 8               ; 4 uses
  %i.ag = alloca [16 x i8], align 8               ; 6 uses
  %.sroa.0.i = alloca [24 x i8], align 8          ; 4 uses
  %i.ah = alloca [16 x i8], align 8               ; 6 uses
  %i.ai = alloca [32 x i8], align 8               ; 7 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
  %i.ak = alloca [16 x i8], align 8               ; 8 uses
  %i.al = alloca [16 x i8], align 8               ; 4 uses
  %i.am = alloca [16 x i8], align 8               ; 4 uses
  %i.an = alloca [16 x i8], align 8               ; 4 uses
  %i.ao = alloca [16 x i8], align 8               ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 6 uses
  %i.aq = alloca [24 x i8], align 8               ; 5 uses
  %i.ar = alloca [24 x i8], align 8               ; 7 uses
  %i.as = alloca [24 x i8], align 8               ; 6 uses
  %i.at = alloca [16 x i8], align 16              ; 4 uses
  %i.au = alloca [24 x i8], align 8               ; 5 uses
  %i.av = alloca [24 x i8], align 8               ; 7 uses
  %i.aw = alloca [16 x i8], align 8               ; 6 uses
  %i.ax = alloca [32 x i8], align 8               ; 8 uses
  %i.ay = alloca [24 x i8], align 8               ; 7 uses
  %i.az = alloca [24 x i8], align 8               ; 9 uses
  %i.ba = alloca [32 x i8], align 8               ; 8 uses
  %i.bb = alloca [24 x i8], align 8               ; 7 uses
  %i.bc = alloca [24 x i8], align 8               ; 9 uses
  %i.bd = alloca [24 x i8], align 8               ; 11 uses
  %i.be = alloca [16 x i8], align 8               ; 9 uses
  %i.bf = alloca [32 x i8], align 8               ; 7 uses
  %i.bg = alloca [16 x i8], align 8               ; 5 uses
  %i.bh = alloca [8 x i8], align 8                ; 4 uses
  %i.bi = alloca [8 x i8], align 8                ; 5 uses
  %i.bj = alloca [8 x i8], align 8                ; 5 uses
  %i.bk = alloca [4 x i8], align 4                ; 2 uses
  %i.bl = alloca [16 x i8], align 8               ; 7 uses
  %i.bm = alloca [32 x i8], align 8               ; 7 uses
  %i.bn = alloca [16 x i8], align 8               ; 5 uses
  %i.bo = alloca [8 x i8], align 8                ; 4 uses
  %i.bp = alloca [8 x i8], align 8                ; 5 uses
  %i.bq = alloca [24 x i8], align 8               ; 8 uses
  %i.br = alloca [16 x i8], align 8               ; 6 uses
  %i.bs = alloca [24 x i8], align 8               ; 13 uses
  %i.bt = alloca [24 x i8], align 8               ; 5 uses
  %i.bu = alloca [16 x i8], align 8               ; 6 uses
  %i.bv = alloca [8 x i8], align 8                ; 16 uses
  store ptr %0, ptr %i.bv, align 8
  %.sroa.14.24.copyload = load ptr, ptr %2, align 8, !alias.scope !467 ; 3 uses
  %.sroa.17.24..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.17.24.copyload = load ptr, ptr %.sroa.17.24..sroa_idx, align 8, !alias.scope !467
  %.sroa.21.24..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.21.24.copyload = load ptr, ptr %.sroa.21.24..sroa_idx, align 8, !alias.scope !467 ; 2 uses
  %.sroa.23.24..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.23.24.copyload = load ptr, ptr %.sroa.23.24..sroa_idx, align 8, !alias.scope !467
  %.sroa.29.24..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.29.24.copyload = load ptr, ptr %.sroa.29.24..sroa_idx, align 8, !alias.scope !467
  %.sroa.33.24..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.33.24.copyload = load ptr, ptr %.sroa.33.24..sroa_idx, align 8, !alias.scope !467
  %.sroa.37.24..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.37.24.copyload = load ptr, ptr %.sroa.37.24..sroa_idx, align 8, !alias.scope !467 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 25
  %.val = load i8, ptr %i.bw, align 1, !range !468 ; 5 uses
  %i.bx = icmp eq i8 %.val, 2                     ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.sroa.644.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 7 uses
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 7 uses
  %.sroa.6542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.8545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ak, i64 9
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 6 uses
  %.sroa.3194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.cx = add nsw i8 %.val, -2
  %i.cy = icmp samesign ugt i8 %.val, 1
  %narrow = select i1 %i.cy, i8 %i.cx, i8 3
  %i.cz = trunc nuw i8 %.val to i1
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.db = load i8, ptr %i.da, align 2, !range !15 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.de = trunc nuw i8 %i.db to i1                ; 2 uses
  %.sroa.4133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.5134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 3 uses
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %.val221 = load i8, ptr %i.df, align 8, !range !469
  %i.dg = icmp eq i8 %.val221, 0                  ; 3 uses
  %.sroa.6.0..sroa_idx.phi.trans.insert.i374 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.9.0..sroa_idx.phi.trans.insert.i376 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.phi.trans.insert.i378 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.phi.trans.insert18.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %..i = select i1 %i.de, i32 32, i32 42
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.5114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.sroa.6.0..sroa_idx.phi.trans.insert.i354 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.9.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.phi.trans.insert.i356 = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.phi.trans.insert57.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.6.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.10.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.phi.trans.insert118.i = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.01.0.copyload.i = load i8, ptr %1, align 8 ; 3 uses
  %.sroa.447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.451.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.dx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.456.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.dy = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.sroa.461.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ea = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.eb = and i8 %.sroa.01.0.copyload.i, -2
  %switch.i = icmp eq i8 %i.eb, 2
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.465.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
end_hunk_0
begin_hunk_1_@_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute28perform_checksum_computationNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtB1t_3ffi6os_str8OsStringENvYB42_INtNtB2a_6borrow6BorrowNtB44_5OsStrE6borrowEECs4dRV7rdzHEF_18uu_checksum_common:bb.a
bb.ac:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs4dRV7rdzHEF_18uu_checksum_common.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.ha = icmp eq i64 %i.gy, 0
  br i1 %i.ha, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hb = getelementptr inbounds nuw i8, ptr %.val214, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.hb, align 8, !alias.scope !499, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %i.gy, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !499
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i: ; preds = %bb.ad, %bb.ac, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs4dRV7rdzHEF_18uu_checksum_common.exit
  %i.hc = getelementptr inbounds nuw i8, ptr %.val214, i64 24
  %.val.i.i = load ptr, ptr %i.hc, align 8, !alias.scope !495, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !495
  %i.hd = ptrtoint ptr %.val.i.i to i64           ; 2 uses
  %i.he = and i64 %i.hd, 3
  switch i64 %i.he, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECs4dRV7rdzHEF_18uu_checksum_common.exit
    i64 3, label %bb.ae
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECs4dRV7rdzHEF_18uu_checksum_common.exit
    i64 1, label %bb.af
  ], !prof !9

bb.ae:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i
  %i.hf = icmp ult ptr %.val.i.i, inttoptr (i64 188978561024 to ptr)
  %i.hg = and i64 %i.hd, 1095216660480
  %i.hh = icmp ne i64 %i.hg, 1095216660480
  call void @llvm.assume(i1 %i.hf)
  call void @llvm.assume(i1 %i.hh)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECs4dRV7rdzHEF_18uu_checksum_common.exit

bb.af:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i
  %i.hi = getelementptr i8, ptr %.val.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hi) ]
  store ptr %i.hi, ptr %i.cg, align 8, !alias.scope !500, !noalias !495
  store i8 3, ptr %i.al, align 8, !alias.scope !500, !noalias !495
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cg) #22, !noalias !495
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECs4dRV7rdzHEF_18uu_checksum_common.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECs4dRV7rdzHEF_18uu_checksum_common.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !495
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val214, i64 noundef 32, i64 noundef 8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  br label %.backedge

.split:                                           ; preds = %bb.k
  %i.hj = load i32, ptr %i.by, align 4, !range !10, !noundef !6 ; 2 uses
  store i32 %i.hj, ptr %i.bk, align 4
  %i.hk = call noundef i32 @_RNvXs3_NtNtNtCs2vKOLqTMYjT_3std3sys2fd4unixNtB5_8FileDescNtNtNtNtBb_2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.bk) #22
  %i.hl = zext i32 %i.hk to i64
  %i.hm = inttoptr i64 %i.hl to ptr
  %i.hn = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},~{memory}"(ptr nonnull inttoptr (i64 221 to ptr), ptr %i.hm, ptr null, ptr null, ptr nonnull inttoptr (i64 2 to ptr)) #26, !srcloc !501 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.ho = call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 4, i64 noundef range(i64 1, 9) 4) #22 ; 3 uses
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %bb.ag, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit237, !prof !7

bb.ag:                                            ; preds = %.split
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 4) #25
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit237: ; preds = %.split
  store i32 %i.hj, ptr %i.ho, align 4
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !502
  %i.hq = call noundef dereferenceable_or_null(32768) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32768, i64 noundef range(i64 1, 9) 1) #22, !noalias !502 ; 2 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit237
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 32768) #25, !noalias !503
  unreachable

bb.ai:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit229, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit237
  %.sroa.39438.0 = phi ptr [ @38, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit229 ], [ @34, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit237 ] ; 7 uses
  %.sroa.33437.0 = phi ptr [ %i.fh, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit229 ], [ %i.ho, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit237 ] ; 5 uses
  %.sroa.0431.0 = phi ptr [ %i.fj, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit229 ], [ %i.hq, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit237 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  %i.hs = call { ptr, ptr } @_RNvMs3_NtNtCsh036I4OHgIr_6uucore8features8checksumNtB5_13SizedAlgoKind13create_digest(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #22 ; 2 uses
  %i.ht = extractvalue { ptr, ptr } %i.hs, 0      ; 2 uses
  %i.hu = extractvalue { ptr, ptr } %i.hs, 1      ; 2 uses
  store ptr %i.ht, ptr %i.be, align 8
  store ptr %i.hu, ptr %i.cp, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !504)
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 40
  %i.hw = load ptr, ptr %i.hv, align 8, !invariant.load !6, !noalias !505, !nonnull !6
  call void %i.hw(ptr noundef nonnull %i.ht) #24, !noalias !505, !inline_history !263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !505
  store ptr %i.be, ptr %i.ak, align 8, !noalias !505
  store i8 1, ptr %i.cq, align 8, !noalias !505
  store i8 0, ptr %i.cr, align 1, !noalias !505
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.39438.0, i64 72
  br label %.outer.i.i.i.i

.outer.i.i.i.i:                                   ; preds = %bb.an, %bb.ai
  %.promoted31.i.i.i.i = phi i8 [ %.promoted27.i.i.i.i, %bb.an ], [ 0, %bb.ai ] ; 2 uses
  %.sroa.01.0.ph.i.i.i.i = phi i64 [ %i.je, %bb.an ], [ 0, %bb.ai ] ; 6 uses
  br label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i, %.outer.i.i.i.i
  %i.hy = phi i64 [ 0, %.outer.i.i.i.i ], [ %i.if, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i ] ; 2 uses
  %.promoted30.i.i.i.i = phi i8 [ %.promoted31.i.i.i.i, %.outer.i.i.i.i ], [ %.promoted27.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i ]
  %i.hz = phi i8 [ %.promoted31.i.i.i.i, %.outer.i.i.i.i ], [ %i.ig, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i ] ; 2 uses
  %.not.i.i.i3.i.i.i.not = icmp eq i64 %i.hy, 0
  br i1 %.not.i.i.i3.i.i.i.not, label %bb.ak, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_4readCs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !506
  store ptr %.sroa.0431.0, ptr %i.ai, align 8, !noalias !506
  store i64 32768, ptr %i.cs, align 8, !noalias !506
  store i64 0, ptr %i.ct, align 8, !noalias !506
  store i8 %i.hz, ptr %i.cu, align 8, !noalias !506
  %i.ia = load ptr, ptr %i.hx, align 8, !invariant.load !6, !noalias !507, !nonnull !6
  %i.ib = call noundef ptr %i.ia(ptr noundef nonnull %.sroa.33437.0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ai) #24, !noalias !508, !inline_history !283 ; 2 uses
  %i.ic = load i64, ptr %i.ct, align 8, !noalias !506, !noundef !6
  %i.id = load i8, ptr %i.cu, align 8, !range !15, !noalias !506, !noundef !6 ; 2 uses
  %.not3.i.i.i.i.i.i = icmp eq ptr %i.ib, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !506
  %i.ie = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.ib, 1
  %spec.select = select i1 %.not3.i.i.i.i.i.i, { i64, ptr } zeroinitializer, { i64, ptr } %i.ie
  br label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_4readCs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_4readCs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i: ; preds = %bb.ak, %bb.aj
  %i.if = phi i64 [ %i.ic, %bb.ak ], [ %i.hy, %bb.aj ] ; 4 uses
  %.promoted27.i.i.i.i = phi i8 [ %i.id, %bb.ak ], [ %.promoted30.i.i.i.i, %bb.aj ] ; 2 uses
  %i.ig = phi i8 [ %i.id, %bb.ak ], [ %i.hz, %bb.aj ]
  %.merged.i.i.i.i.i = phi { i64, ptr } [ %spec.select, %bb.ak ], [ zeroinitializer, %bb.aj ] ; 2 uses
  %i.ih = extractvalue { i64, ptr } %.merged.i.i.i.i.i, 0
  %i.ii = trunc nuw i64 %i.ih to i1
  br i1 %i.ii, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_4readCs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i
  %i.ij = extractvalue { i64, ptr } %.merged.i.i.i.i.i, 1 ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ij) ]
  %i.ik = ptrtoint ptr %i.ij to i64               ; 4 uses
  %i.il = and i64 %i.ik, 3
  switch i64 %i.il, label %default.unreachable [
    i64 2, label %.split.i.i.i.i
    i64 3, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i
    i64 0, label %.split11.i.i.i.i
    i64 1, label %.split10.i.i.i.i
  ], !prof !9

.split.i.i.i.i:                                   ; preds = %bb.al
  %i.im = lshr i64 %i.ik, 32
  %i.in = trunc nuw i64 %i.im to i32
  %i.io = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #22, !noalias !509
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8, !noalias !509, !nonnull !6, !noundef !6
  %i.ir = call noundef zeroext i1 %i.iq(i32 noundef %i.in) #22, !noalias !509, !inline_history !284
  br i1 %i.ir, label %.thread.i.i.i.i, label %.loopexit

.split11.i.i.i.i:                                 ; preds = %bb.al
  %i.is = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.it = load i8, ptr %i.is, align 8, !range !17, !noalias !509, !noundef !6
  %i.iu = icmp eq i8 %i.it, 35
  br i1 %i.iu, label %.thread.i.i.i.i, label %.loopexit

.split10.i.i.i.i:                                 ; preds = %bb.al
  %i.iv = getelementptr i8, ptr %i.ij, i64 31
  %i.iw = load i8, ptr %i.iv, align 8, !range !17, !noalias !509, !noundef !6
  %i.ix = icmp eq i8 %i.iw, 35
  br i1 %i.ix, label %bb.ap, label %.loopexit

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i: ; preds = %bb.al
  %i.iy = lshr i64 %i.ik, 32
  %i.iz = icmp ult ptr %i.ij, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i.i.i.i = trunc i64 %i.iy to i8
  %spec.select.i.i.i.i.i.i.i = select i1 %i.iz, i8 %switch.idx.cast.i.i.i.i.i.i.i, i8 -1 ; 2 uses
  %i.ja = icmp ne i8 %spec.select.i.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.ja)
  %i.jb = icmp eq i8 %spec.select.i.i.i.i.i.i.i, 35
  br i1 %i.jb, label %bb.ao, label %.loopexit

bb.am:                                            ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_4readCs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i
  %i.jc = icmp eq i64 %i.if, 0
  br i1 %i.jc, label %.thread53.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jd = call fastcc noundef ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore8features3sum12DigestWriterNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0431.0, i64 noundef %i.if) #22, !noalias !509 ; 2 uses
  %.not.i.i.i.i245 = icmp eq ptr %i.jd, null
  %i.je = add i64 %i.if, %.sroa.01.0.ph.i.i.i.i
  br i1 %.not.i.i.i.i245, label %.outer.i.i.i.i, label %.loopexit

.thread.i.i.i.i:                                  ; preds = %.split11.i.i.i.i, %.split.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !510
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i

bb.ao:                                            ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !510
  %i.jf = and i64 %i.ik, 1095216660480
  %i.jg = icmp ne i64 %i.jf, 1095216660480
  call void @llvm.assume(i1 %i.iz)
  call void @llvm.assume(i1 %i.jg)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i

bb.ap:                                            ; preds = %.split10.i.i.i.i
  %i.jh = getelementptr i8, ptr %i.ij, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !510
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jh) ]
  store ptr %i.jh, ptr %i.cv, align 8, !alias.scope !511, !noalias !510
  store i8 3, ptr %i.ah, align 8, !alias.scope !511, !noalias !510
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cv) #22, !noalias !509
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i.i: ; preds = %bb.ap, %bb.ao, %.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !510
  br label %bb.aj

.thread53.i.i.i.i:                                ; preds = %bb.am
  %i.ji = call noundef zeroext i1 @_RNvMse_NtNtCsh036I4OHgIr_6uucore8features3sumNtB5_12DigestWriter8finalize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ak) #22, !noalias !512 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !505
  %i.jj = load ptr, ptr %i.be, align 8, !alias.scope !504, !nonnull !6, !noundef !6
  %i.jk = load ptr, ptr %i.cp, align 8, !alias.scope !504, !nonnull !6, !align !13, !noundef !6
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 64
  %i.jm = load ptr, ptr %i.jl, align 8, !invariant.load !6, !noalias !512, !nonnull !6
  call void %i.jm(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aj, ptr noundef nonnull %i.jj) #24, !noalias !512, !inline_history !263
  %i.jn = load i64, ptr %i.aj, align 8, !range !513, !noalias !505, !noundef !6 ; 7 uses
  %i.jo = icmp eq i64 %i.jn, -1
  %i.jp = load ptr, ptr %i.cw, align 8, !noalias !505 ; 4 uses
  br i1 %i.jo, label %bb.aq, label %bb.cw

bb.aq:                                            ; preds = %.thread53.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !505
  br label %.loopexit

.loopexit:                                        ; preds = %bb.an, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i, %.split10.i.i.i.i, %.split11.i.i.i.i, %.split.i.i.i.i, %bb.aq
  %.sroa.6466.0.ph = phi ptr [ %i.ij, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i ], [ %i.jp, %bb.aq ], [ %i.ij, %.split.i.i.i.i ], [ %i.ij, %.split11.i.i.i.i ], [ %i.ij, %.split10.i.i.i.i ], [ %i.jd, %bb.an ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !505
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6466.0.ph) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i), !noalias !514
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.0.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 35) #22, !noalias !514
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !515
  %i.jq = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #22, !noalias !515 ; 4 uses
  %i.jr = icmp eq ptr %i.jq, null
  br i1 %i.jr, label %bb.ar, label %bb.cv, !prof !7

bb.ar:                                            ; preds = %.loopexit
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #25, !noalias !515
  unreachable

.backedge:                                        ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.gf, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECs4dRV7rdzHEF_18uu_checksum_common.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECs4dRV7rdzHEF_18uu_checksum_common.exit
  br i1 %i.bx, label %bb.d, label %.preheader626.preheader

bb.as:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE6unwrapCs4dRV7rdzHEF_18uu_checksum_common.exit, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4470.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE6unwrapCs4dRV7rdzHEF_18uu_checksum_common.exit ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4470.0.ph, i64 %.sroa.7.sroa.7.sroa.7.0569) #25
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4dRV7rdzHEF_18uu_checksum_common.exit.thread594: ; preds = %bb.n, %bb.bh
  %i.js = phi ptr [ %i.fr, %bb.bh ], [ inttoptr (i64 1 to ptr), %bb.n ] ; 9 uses
  %i.jt = icmp eq i64 %.sroa.7.sroa.0.0570, 0
  br i1 %i.jt, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit, label %bb.at

bb.at:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4dRV7rdzHEF_18uu_checksum_common.exit.thread594
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.pre-phi, i64 noundef %.sroa.7.sroa.0.0570, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !516
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4dRV7rdzHEF_18uu_checksum_common.exit.thread594, %bb.at
  switch i64 %.sroa.7.sroa.7.sroa.7.0569, label %thread-pre-split.i [
    i64 0, label %.loopexit618
    i64 1, label %bb.au
  ]

bb.au:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit
  %i.ju = load i8, ptr %i.js, align 1, !alias.scope !517, !noundef !6 ; 2 uses
  switch i8 %i.ju, label %bb.av [
    i8 43, label %.loopexit618
    i8 45, label %.loopexit618
  ]

thread-pre-split.i:                               ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit
  %.pr.i = load i8, ptr %i.js, align 1, !alias.scope !517
  br label %bb.av

bb.av:                                            ; preds = %thread-pre-split.i, %bb.au
  %i.jv = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.ju, %bb.au ]
  switch i8 %i.jv, label %bb.bc [
    i8 43, label %bb.aw
    i8 45, label %bb.ax
  ]

bb.aw:                                            ; preds = %bb.av
  %i.jw = getelementptr inbounds nuw i8, ptr %i.js, i64 1
  %i.jx = add nsw i64 %.sroa.7.sroa.7.sroa.7.0569, -1
  br label %bb.bc

bb.ax:                                            ; preds = %bb.av
  %i.jy = getelementptr inbounds nuw i8, ptr %i.js, i64 1 ; 2 uses
  %i.jz = add nsw i64 %.sroa.7.sroa.7.sroa.7.0569, -1 ; 3 uses
  %i.ka = icmp samesign ult i64 %.sroa.7.sroa.7.sroa.7.0569, 17
  br i1 %i.ka, label %.preheader114.i, label %.lr.ph.i

.preheader114.i:                                  ; preds = %bb.ax
  %.not103137.i = icmp eq i64 %i.jz, 0
  br i1 %.not103137.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

.lr.ph.i:                                         ; preds = %bb.ax, %bb.ba
  %.sroa.0.1136.i = phi ptr [ %i.kb, %bb.ba ], [ %i.jy, %bb.ax ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.kc, %bb.ba ], [ %i.jz, %bb.ax ]
  %.sroa.084.0134.i = phi i64 [ %i.kn, %bb.ba ], [ 0, %bb.ax ]
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.kc = add nsw i64 %.sroa.26.1135.i, -1        ; 2 uses
  %i.kd = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.ke = extractvalue { i64, i1 } %i.kd, 0
  %i.kf = extractvalue { i64, i1 } %i.kd, 1
  br i1 %i.kf, label %.loopexit618, label %bb.ay, !prof !7

bb.ay:                                            ; preds = %.lr.ph.i
  %i.kg = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !517, !noundef !6
  %i.kh = zext i8 %i.kg to i32
  %i.ki = add nsw i32 %i.kh, -48                  ; 2 uses
  %i.kj = icmp ult i32 %i.ki, 10
  br i1 %i.kj, label %bb.az, label %.loopexit618

bb.az:                                            ; preds = %bb.ay
  %i.kk = zext nneg i32 %i.ki to i64
  %i.kl = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ke, i64 %i.kk) ; 2 uses
  %i.km = extractvalue { i64, i1 } %i.kl, 1
  br i1 %i.km, label %.loopexit618, label %bb.ba, !prof !7

bb.ba:                                            ; preds = %bb.az
  %i.kn = extractvalue { i64, i1 } %i.kl, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.kc, 0
  br i1 %.not102.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.lr.ph141.i:                                      ; preds = %.preheader114.i, %bb.bb
  %.sroa.0.2140.i = phi ptr [ %i.ku, %bb.bb ], [ %i.jy, %.preheader114.i ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.kt, %bb.bb ], [ %i.jz, %.preheader114.i ]
  %.sroa.084.2138.i = phi i64 [ %i.kw, %bb.bb ], [ 0, %.preheader114.i ]
  %i.ko = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !517, !noundef !6
  %i.kp = zext i8 %i.ko to i32
  %i.kq = add nsw i32 %i.kp, -48                  ; 2 uses
  %i.kr = icmp ult i32 %i.kq, 10
  br i1 %i.kr, label %bb.bb, label %.loopexit618

bb.bb:                                            ; preds = %.lr.ph141.i
  %i.ks = mul i64 %.sroa.084.2138.i, 10
  %i.kt = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.kv = zext nneg i32 %i.kq to i64
  %i.kw = sub i64 %i.ks, %i.kv                    ; 2 uses
  %.not103.i = icmp eq i64 %i.kt, 0
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.bc:                                            ; preds = %bb.aw, %bb.av
  %.sroa.26.0.i = phi i64 [ %i.jx, %bb.aw ], [ %.sroa.7.sroa.7.sroa.7.0569, %bb.av ] ; 4 uses
  %.sroa.0.0.i251 = phi ptr [ %i.jw, %bb.aw ], [ %i.js, %bb.av ] ; 2 uses
  %i.kx = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.kx, label %.preheader.i, label %.preheader111.i

.preheader.i:                                     ; preds = %bb.bc
  %.not105146.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not105146.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.preheader111.i:                                  ; preds = %bb.bc, %bb.bf
  %.sroa.0.3145.i = phi ptr [ %i.ky, %bb.bf ], [ %.sroa.0.0.i251, %bb.bc ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.kz, %bb.bf ], [ %.sroa.26.0.i, %bb.bc ]
  %.sroa.084.3143.i = phi i64 [ %i.lk, %bb.bf ], [ 0, %bb.bc ]
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.kz = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.la = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.lb = extractvalue { i64, i1 } %i.la, 0
  %i.lc = extractvalue { i64, i1 } %i.la, 1
  br i1 %i.lc, label %.loopexit618, label %bb.bd, !prof !7

bb.bd:                                            ; preds = %.preheader111.i
  %i.ld = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !517, !noundef !6
  %i.le = zext i8 %i.ld to i32
  %i.lf = add nsw i32 %i.le, -48                  ; 2 uses
  %i.lg = icmp ult i32 %i.lf, 10
  br i1 %i.lg, label %bb.be, label %.loopexit618

bb.be:                                            ; preds = %bb.bd
  %i.lh = zext nneg i32 %i.lf to i64
  %i.li = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.lb, i64 %i.lh) ; 2 uses
  %i.lj = extractvalue { i64, i1 } %i.li, 1
  br i1 %i.lj, label %.loopexit618, label %bb.bf, !prof !7

bb.bf:                                            ; preds = %bb.be
  %i.lk = extractvalue { i64, i1 } %i.li, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.kz, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %.preheader.i, %bb.bg
  %.sroa.0.4149.i = phi ptr [ %i.lr, %bb.bg ], [ %.sroa.0.0.i251, %.preheader.i ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.lq, %bb.bg ], [ %.sroa.26.0.i, %.preheader.i ]
  %.sroa.084.4147.i = phi i64 [ %i.lt, %bb.bg ], [ 0, %.preheader.i ]
  %i.ll = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !517, !noundef !6
  %i.lm = zext i8 %i.ll to i32
  %i.ln = add nsw i32 %i.lm, -48                  ; 2 uses
  %i.lo = icmp ult i32 %i.ln, 10
  br i1 %i.lo, label %bb.bg, label %.loopexit618

bb.bg:                                            ; preds = %.lr.ph150.i
  %i.lp = mul i64 %.sroa.084.4147.i, 10
  %i.lq = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.ls = zext nneg i32 %i.ln to i64
  %i.lt = add i64 %i.lp, %i.ls                    ; 2 uses
  %.not105.i = icmp eq i64 %i.lq, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

bb.bh:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fr, ptr nonnull align 1 %.pre-phi, i64 %.sroa.7.sroa.7.sroa.7.0569, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4dRV7rdzHEF_18uu_checksum_common.exit.thread594

.loopexit618:                                     ; preds = %.lr.ph.i, %bb.az, %bb.ay, %.lr.ph141.i, %.preheader111.i, %bb.bd, %bb.be, %.lr.ph150.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit, %bb.au, %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.br, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.js, i64 noundef %.sroa.7.sroa.7.sroa.7.0569) #23
  %i.lu = load i8, ptr %i.br, align 8, !range !15, !noundef !6
  %i.lv = trunc nuw i8 %i.lu to i1
  br i1 %i.lv, label %bb.bq, label %bb.bz

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.ba, %bb.bb, %bb.bf, %bb.bg, %.preheader.i, %.preheader114.i
  %.sroa.15451.0 = phi i64 [ %i.lt, %bb.bg ], [ %i.kw, %bb.bb ], [ %i.lk, %bb.bf ], [ 0, %.preheader.i ], [ 0, %.preheader114.i ], [ %i.kn, %bb.ba ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !518)
  %i.lw = load ptr, ptr %.sroa.451.0..sroa_idx, align 8, !alias.scope !518, !nonnull !6, !noundef !6 ; 3 uses
  %i.lx = load i64, ptr %.sroa.552.0..sroa_idx, align 8, !alias.scope !518, !noundef !6 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !519)
  call void @llvm.experimental.noalias.scope.decl(metadata !520)
  switch i64 %i.lx, label %.lr.ph.i.i.i [
    i64 0, label %.thread.i
    i64 1, label %._crit_edge.i.i.i
  ]

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ], [ %i.mn, %.lr.ph.i.i.i ] ; 4 uses
  %i.ly = getelementptr inbounds nuw [144 x i8], ptr %i.lw, i64 %.sroa.05.0.lcssa.i.i.i ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !521)
end_hunk_1
begin_hunk_2_@_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute28perform_checksum_computationNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtB1t_3ffi6os_str8OsStringENvYB42_INtNtB2a_6borrow6BorrowNtB44_5OsStrE6borrowEECs4dRV7rdzHEF_18uu_checksum_common:bb.a
  br label %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs4dRV7rdzHEF_18uu_checksum_common.exit

bb.ce:                                            ; preds = %._crit_edge.i.i.i279
  %i.pv = icmp ult i64 %.sroa.05.0.lcssa.i.i.i280, %i.oq
  br i1 %i.pv, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree noundef align 8 dereferenceable(144) %i.or) #22, !noalias !551
  store i64 -1, ptr %i.or, align 8, !noalias !551
  store ptr @36, ptr %.sroa.0.0.in.i.i.i.i.i.i281, align 8, !noalias !551
  store i64 4, ptr %.sroa.3.0.in.i.i.i.i.i.i283, align 8, !noalias !551
  %i.pw = getelementptr inbounds nuw i8, ptr %i.or, i64 24
  store i64 0, ptr %i.pw, align 8, !noalias !551
  %.sroa.42.0..sroa_idx.i305 = getelementptr inbounds nuw i8, ptr %i.or, i64 40
  store i64 0, ptr %.sroa.42.0..sroa_idx.i305, align 8, !noalias !551
  %.sroa.53.0..sroa_idx.i306 = getelementptr inbounds nuw i8, ptr %i.or, i64 56
  store i64 0, ptr %.sroa.53.0..sroa_idx.i306, align 8, !noalias !551
  %.sroa.64.0..sroa_idx.i307 = getelementptr inbounds nuw i8, ptr %i.or, i64 72
  store i64 0, ptr %.sroa.64.0..sroa_idx.i307, align 8, !noalias !551
  %.sroa.75.0..sroa_idx.i308 = getelementptr inbounds nuw i8, ptr %i.or, i64 88
  store i64 0, ptr %.sroa.75.0..sroa_idx.i308, align 8, !noalias !551
  %.sroa.86.0..sroa_idx.i309 = getelementptr inbounds nuw i8, ptr %i.or, i64 104
  store i64 -1, ptr %.sroa.86.0..sroa_idx.i309, align 8, !noalias !551
  %.sroa.97.0..sroa_idx.i310 = getelementptr inbounds nuw i8, ptr %i.or, i64 128
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.97.0..sroa_idx.i310, align 8, !noalias !551
  %.sroa.138.0..sroa_idx.i314 = getelementptr inbounds nuw i8, ptr %i.or, i64 136
  store double %i.oo, ptr %.sroa.138.0..sroa_idx.i314, align 8, !noalias !551
  br label %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs4dRV7rdzHEF_18uu_checksum_common.exit

bb.cg:                                            ; preds = %bb.ce
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i.i280, i64 noundef %i.oq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21, !noalias !551
  unreachable

_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs4dRV7rdzHEF_18uu_checksum_common.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs4dRV7rdzHEF_18uu_checksum_common.exit.i290, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  br label %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs4dRV7rdzHEF_18uu_checksum_common.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit257: ; preds = %bb.bp, %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs4dRV7rdzHEF_18uu_checksum_common.exit, %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !566
  %i.px = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #22, !noalias !566 ; 4 uses
  %i.py = icmp eq ptr %i.px, null
  br i1 %i.py, label %bb.ch, label %_RINvMs_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_12USimpleError3newNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit, !prof !7

bb.ch:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit257
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #25, !noalias !566
  unreachable

_RINvMs_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_12USimpleError3newNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit257
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.px, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bt, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.i325 = getelementptr inbounds nuw i8, ptr %i.px, i64 24
  store i32 1, ptr %.sroa.4.0..sroa_idx.i325, align 8, !noalias !567
  store ptr %i.px, ptr %i.bu, align 8
  store ptr @11, ptr %i.cj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error13set_exit_code(i32 noundef 1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.bo, align 8
  %i.pz = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bo) #22
  store ptr %i.pz, ptr %i.bp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  %i.qa = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #22 ; 2 uses
  %i.qb = extractvalue { ptr, i64 } %i.qa, 0
  %i.qc = extractvalue { ptr, i64 } %i.qa, 1
  store ptr %i.qb, ptr %i.bn, align 8
  store i64 %i.qc, ptr %i.ck, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  store ptr %i.bn, ptr %i.bm, align 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs4dRV7rdzHEF_18uu_checksum_common, ptr %.sroa.459.0..sroa_idx, align 8
  store ptr %i.bu, ptr %i.cl, align 8
  store ptr @_RNvXsm_NtCs7tKScEop1B6_5alloc5boxedINtB5_3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_ENtNtCs6JMX4GRUq9U_4core3fmt7Display3fmtCs4dRV7rdzHEF_18uu_checksum_common, ptr %.sroa.463.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !568
  store ptr %i.bp, ptr %i.ag, align 8, !noalias !568
  store ptr null, ptr %i.cm, align 8, !noalias !568
  %i.qd = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @12, ptr noundef nonnull @35, ptr noundef nonnull %i.bm) #22
  %i.qe = load ptr, ptr %i.cm, align 8, !noalias !568, !noundef !6 ; 7 uses
  %.not.i5.i327 = icmp eq ptr %i.qe, null         ; 2 uses
  br i1 %i.qd, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %_RINvMs_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_12USimpleError3newNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit
  br i1 %.not.i5.i327, label %bb.cn, label %bb.co, !prof !7

bb.cj:                                            ; preds = %_RINvMs_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_12USimpleError3newNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit
  br i1 %.not.i5.i327, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs4dRV7rdzHEF_18uu_checksum_common.exit.i329.thread, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !568
  %i.qf = ptrtoint ptr %i.qe to i64               ; 2 uses
  %i.qg = and i64 %i.qf, 3
  switch i64 %i.qg, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i328
    i64 3, label %bb.cl
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i328
    i64 1, label %bb.cm
  ], !prof !9

bb.cl:                                            ; preds = %bb.ck
  %i.qh = icmp ult ptr %i.qe, inttoptr (i64 188978561024 to ptr)
  %i.qi = and i64 %i.qf, 1095216660480
  %i.qj = icmp ne i64 %i.qi, 1095216660480
  call void @llvm.assume(i1 %i.qh)
  call void @llvm.assume(i1 %i.qj)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i328

bb.cm:                                            ; preds = %bb.ck
  %i.qk = getelementptr i8, ptr %i.qe, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qk) ]
  store ptr %i.qk, ptr %i.cn, align 8, !alias.scope !569, !noalias !568
  store i8 3, ptr %i.af, align 8, !alias.scope !569, !noalias !568
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cn) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i328

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i328: ; preds = %bb.cm, %bb.cl, %bb.ck, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !568
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs4dRV7rdzHEF_18uu_checksum_common.exit.i329.thread

bb.cn:                                            ; preds = %bb.ci
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #21
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs4dRV7rdzHEF_18uu_checksum_common.exit.i329.thread: ; preds = %bb.cj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i.i328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !568
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs4dRV7rdzHEF_18uu_checksum_common.exit336

bb.co:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.ql = ptrtoint ptr %i.qe to i64               ; 2 uses
  %i.qm = and i64 %i.ql, 3
  switch i64 %i.qm, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i334
    i64 3, label %bb.cp
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i334
    i64 1, label %bb.cq
  ], !prof !9

bb.cp:                                            ; preds = %bb.co
  %i.qn = icmp ult ptr %i.qe, inttoptr (i64 188978561024 to ptr)
  %i.qo = and i64 %i.ql, 1095216660480
  %i.qp = icmp ne i64 %i.qo, 1095216660480
  call void @llvm.assume(i1 %i.qn)
  call void @llvm.assume(i1 %i.qp)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i334

bb.cq:                                            ; preds = %bb.co
  %i.qq = getelementptr i8, ptr %i.qe, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qq) ]
  store ptr %i.qq, ptr %i.co, align 8, !alias.scope !570
  store i8 3, ptr %i.ae, align 8, !alias.scope !570
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.co) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i334

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i334: ; preds = %bb.cq, %bb.cp, %bb.co, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs4dRV7rdzHEF_18uu_checksum_common.exit336

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs4dRV7rdzHEF_18uu_checksum_common.exit336: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs4dRV7rdzHEF_18uu_checksum_common.exit.i329.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  %.val212 = load ptr, ptr %i.bp, align 8, !nonnull !6, !align !13, !noundef !6 ; 3 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.val212, i64 12 ; 2 uses
  %i.qs = load i32, ptr %i.qr, align 4, !noundef !6
  %i.qt = add i32 %i.qs, -1                       ; 2 uses
  store i32 %i.qt, ptr %i.qr, align 4
  %i.qu = icmp eq i32 %i.qt, 0
  br i1 %i.qu, label %bb.cr, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs4dRV7rdzHEF_18uu_checksum_common.exit337

bb.cr:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs4dRV7rdzHEF_18uu_checksum_common.exit336
  store atomic i64 0, ptr %.val212 monotonic, align 8
  %i.qv = getelementptr inbounds nuw i8, ptr %.val212, i64 8 ; 2 uses
  %i.qw = atomicrmw xchg ptr %i.qv, i32 0 release, align 4
  %i.qx = icmp eq i32 %i.qw, 2
  br i1 %i.qx, label %bb.cs, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs4dRV7rdzHEF_18uu_checksum_common.exit337, !prof !7

bb.cs:                                            ; preds = %bb.cr
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.qv) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs4dRV7rdzHEF_18uu_checksum_common.exit337

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs4dRV7rdzHEF_18uu_checksum_common.exit337: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs4dRV7rdzHEF_18uu_checksum_common.exit336, %bb.cr, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  %.val215 = load ptr, ptr %i.bu, align 8         ; 4 uses
  %.val216 = load ptr, ptr %i.cj, align 8, !nonnull !6, !align !13, !noundef !6 ; 3 uses
  %i.qy = load ptr, ptr %.val216, align 8, !invariant.load !6 ; 2 uses
  %.not.i338 = icmp eq ptr %i.qy, null
  br i1 %.not.i338, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs4dRV7rdzHEF_18uu_checksum_common.exit337
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val215) ]
  call void %i.qy(ptr noundef nonnull %.val215) #24, !inline_history !389
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs4dRV7rdzHEF_18uu_checksum_common.exit337
  %i.qz = getelementptr inbounds nuw i8, ptr %.val216, i64 8
  %i.ra = load i64, ptr %i.qz, align 8, !range !11, !invariant.load !6 ; 2 uses
  %i.rb = icmp eq i64 %i.ra, 0
  br i1 %i.rb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECs4dRV7rdzHEF_18uu_checksum_common.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.cu
  %i.rc = getelementptr inbounds nuw i8, ptr %.val216, i64 16
  %i.rd = load i64, ptr %i.rc, align 8, !range !14, !invariant.load !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val215) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val215, i64 noundef %i.ra, i64 noundef range(i64 1, -9223372036854775807) %i.rd) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECs4dRV7rdzHEF_18uu_checksum_common.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECs4dRV7rdzHEF_18uu_checksum_common.exit: ; preds = %bb.cu, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  br label %.backedge

bb.cv:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jq, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, i64 24, i1 false), !noalias !514
  %.sroa.4.0..sroa_idx.i247 = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  store ptr %.sroa.6466.0.ph, ptr %.sroa.4.0..sroa_idx.i247, align 8, !noalias !514
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i), !noalias !514
  br label %bb.gi

bb.cw:                                            ; preds = %.thread53.i.i.i.i
  %.sroa.514.0.copyload.i = load i64, ptr %.sroa.514.0..sroa_idx.i, align 8, !noalias !505 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !505
  %i.re = inttoptr i64 %.sroa.514.0.copyload.i to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store i64 %i.jn, ptr %i.bd, align 8
  store ptr %i.jp, ptr %.sroa.2.0..sroa_idx, align 8
  store ptr %i.re, ptr %.sroa.3194.0..sroa_idx, align 8
  switch i8 %narrow, label %bb.cx [
    i8 0, label %bb.cy
    i8 1, label %bb.dd
    i8 2, label %bb.eb
    i8 3, label %bb.eg
  ]

bb.cx:                                            ; preds = %bb.cw
  unreachable

bb.cy:                                            ; preds = %bb.cw
  %i.rf = ptrtoint ptr %i.jp to i64               ; 2 uses
  %i.rg = icmp slt i64 %i.jn, 0
  %i.rh = add i64 %i.jn, -9223372036854775807
  %i.ri = select i1 %i.rg, i64 %i.rh, i64 0
  switch i64 %i.ri, label %bb.cz [
    i64 0, label %bb.da
    i64 1, label %bb.db
    i64 2, label %bb.dc
  ]

bb.cz:                                            ; preds = %bb.cy
  unreachable

bb.da:                                            ; preds = %bb.cy
  %i.rj = call noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jp, i64 noundef range(i64 0, -9223372036854775808) %.sroa.514.0.copyload.i) #22, !noalias !571
  br label %_RINvMNtNtCsh036I4OHgIr_6uucore8features3sumNtB3_12DigestOutput9write_rawQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit

bb.db:                                            ; preds = %bb.cy
  %i.rk = trunc i64 %i.rf to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !572
  %i.rl = call i32 @llvm.bswap.i32(i32 %i.rk)
  store i32 %i.rl, ptr %i.ad, align 4, !noalias !572
  %i.rm = call noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef 4) #22, !noalias !571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !572
  br label %_RINvMNtNtCsh036I4OHgIr_6uucore8features3sumNtB3_12DigestOutput9write_rawQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit

bb.dc:                                            ; preds = %bb.cy
  %i.rn = trunc i64 %i.rf to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !572
  %i.ro = call i16 @llvm.bswap.i16(i16 %i.rn)
  store i16 %i.ro, ptr %i.ac, align 2, !noalias !572
  %i.rp = call noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef 2) #22, !noalias !571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !572
  br label %_RINvMNtNtCsh036I4OHgIr_6uucore8features3sumNtB3_12DigestOutput9write_rawQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit

_RINvMNtNtCsh036I4OHgIr_6uucore8features3sumNtB3_12DigestOutput9write_rawQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit: ; preds = %bb.da, %bb.db, %bb.dc
  %.sroa.0.0.i339 = phi ptr [ %i.rj, %bb.da ], [ %i.rm, %bb.db ], [ %i.rp, %bb.dc ] ; 2 uses
  %.not204 = icmp eq ptr %.sroa.0.0.i339, null
  br i1 %.not204, label %bb.ep, label %bb.el

bb.dd:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i64 %.sroa.01.0.ph.i.i.i.i, ptr %i.ab, align 8, !noalias !573
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !573
  br i1 %i.dg, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @_RNvNtNtCsh036I4OHgIr_6uucore8features8checksum15escape_filename(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val3.i) #22, !noalias !574
  %.sroa.095.0.copyload.pre.i = load i64, ptr %i.z, align 8, !noalias !573
  %.sroa.6.0.copyload.pre.i = load ptr, ptr %.sroa.6.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !573
  %.sroa.10.0.copyload.pre.i = load i64, ptr %.sroa.10.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !573
  %.pre.i340 = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !573
  %.pre119.i = load i64, ptr %.phi.trans.insert118.i, align 8, !noalias !573
  br label %bb.dh

bb.df:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !573
  call void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val3.i) #22, !noalias !574
  %i.rq = load i64, ptr %i.y, align 8, !range !8, !noalias !573, !noundef !6 ; 2 uses
  %i.rr = load ptr, ptr %i.dt, align 8, !noalias !573 ; 3 uses
  %i.rs = load i64, ptr %i.du, align 8, !noalias !573 ; 7 uses
  %.not.i.i343 = icmp slt i64 %i.rs, 0
  br i1 %.not.i.i343, label %bb.di, label %bb.dg, !prof !16

bb.dg:                                            ; preds = %bb.df
  %i.rt = icmp eq i64 %i.rs, 0
  br i1 %i.rt, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4dRV7rdzHEF_18uu_checksum_common.exit.thread106.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.dg
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !575
  %i.ru = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.rs, i64 noundef range(i64 1, 9) 1) #22, !noalias !575 ; 3 uses
  %i.rv = icmp eq ptr %i.ru, null
  br i1 %i.rv, label %bb.di, label %bb.dk

bb.dh:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs4dRV7rdzHEF_18uu_checksum_common.exit.i, %bb.de
  %i.rw = phi i64 [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs4dRV7rdzHEF_18uu_checksum_common.exit.i ], [ %.pre119.i, %bb.de ]
  %i.rx = phi ptr [ inttoptr (i64 1 to ptr), %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs4dRV7rdzHEF_18uu_checksum_common.exit.i ], [ %.pre.i340, %bb.de ]
  %.sroa.10.0.copyload.i = phi i64 [ %i.rs, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs4dRV7rdzHEF_18uu_checksum_common.exit.i ], [ %.sroa.10.0.copyload.pre.i, %bb.de ] ; 2 uses
  %.sroa.6.0.copyload.i = phi ptr [ %i.ry, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs4dRV7rdzHEF_18uu_checksum_common.exit.i ], [ %.sroa.6.0.copyload.pre.i, %bb.de ] ; 8 uses
  %.sroa.095.0.copyload.i = phi i64 [ %i.rs, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs4dRV7rdzHEF_18uu_checksum_common.exit.i ], [ %.sroa.095.0.copyload.pre.i, %bb.de ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !573
  store ptr %i.rx, ptr %i.aa, align 8, !noalias !573, !captures !18
  store i64 %i.rw, ptr %i.dv, align 8, !noalias !573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !573
  switch i8 %.sroa.01.0.copyload.i, label %bb.dl [
    i8 0, label %bb.dm
    i8 1, label %bb.dn
  ]

bb.di:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i, %bb.df
  %.sroa.4.0.ph.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.df ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.rs) #25, !noalias !574
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4dRV7rdzHEF_18uu_checksum_common.exit.thread106.i: ; preds = %bb.dk, %bb.dg
  %i.ry = phi ptr [ %i.ru, %bb.dk ], [ inttoptr (i64 1 to ptr), %bb.dg ]
  %i.rz = icmp sgt i64 %i.rq, 0
  br i1 %i.rz, label %bb.dj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs4dRV7rdzHEF_18uu_checksum_common.exit.i

bb.dj:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4dRV7rdzHEF_18uu_checksum_common.exit.thread106.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rr) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.rr, i64 noundef %i.rq, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !576
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs4dRV7rdzHEF_18uu_checksum_common.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs4dRV7rdzHEF_18uu_checksum_common.exit.i: ; preds = %bb.dj, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4dRV7rdzHEF_18uu_checksum_common.exit.thread106.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !573
  br label %bb.dh

bb.dk:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ru, ptr nonnull align 1 %i.rr, i64 %i.rs, i1 false), !noalias !574
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4dRV7rdzHEF_18uu_checksum_common.exit.thread106.i

bb.dl:                                            ; preds = %bb.dh
  %i.sa = icmp eq i64 %i.jn, -9223372036854775808
  %or.cond.i = and i1 %i.sa, %switch.i
  br i1 %or.cond.i, label %bb.dw, label %.thread.i341, !prof !577

bb.dm:                                            ; preds = %bb.dh
  %i.sb = icmp eq i64 %i.jn, -9223372036854775807
  br i1 %i.sb, label %bb.do, label %.thread.i341

bb.dn:                                            ; preds = %bb.dh
  %i.sc = icmp eq i64 %i.jn, -9223372036854775807
  br i1 %i.sc, label %bb.dt, label %.thread.i341

bb.do:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !573
  store ptr %.sroa.2.0..sroa_idx, ptr %i.x, align 8, !noalias !573
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !573
  %i.sd = call noundef i64 @_RNvMs3_NtNtCsh036I4OHgIr_6uucore8features8checksumNtB5_13SizedAlgoKind6bitlen(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) #22, !noalias !578 ; 3 uses
  %i.se = icmp eq i64 %i.sd, 0
  br i1 %i.se, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.sf = udiv i64 %.sroa.01.0.ph.i.i.i.i, %i.sd
  %i.sg = urem i64 %.sroa.01.0.ph.i.i.i.i, %i.sd
  %.not79.i = icmp ne i64 %i.sg, 0
  %i.sh = zext i1 %.not79.i to i64
  %storemerge80.i = add i64 %i.sf, %i.sh
  store i64 %storemerge80.i, ptr %i.w, align 8, !noalias !573
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !573
  store ptr %i.aa, ptr %i.v, align 8, !noalias !573
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs4dRV7rdzHEF_18uu_checksum_common, ptr %.sroa.435.0..sroa_idx.i, align 8, !noalias !573
  store ptr %i.x, ptr %i.dz, align 8, !noalias !573
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRtNtB6_7Display3fmtCs4dRV7rdzHEF_18uu_checksum_common, ptr %.sroa.439.0..sroa_idx.i, align 8, !noalias !573
  store ptr %i.w, ptr %i.ea, align 8, !noalias !573
  store ptr @_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.443.0..sroa_idx.i, align 8, !noalias !573
  %i.si = call noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull @25, ptr noundef nonnull %i.v) #22 ; 2 uses
  %.not81.i = icmp eq ptr %i.si, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !573
  br i1 %.not81.i, label %bb.dr, label %bb.ds

bb.dq:                                            ; preds = %bb.do
  call void @_RNvNtNtCs6JMX4GRUq9U_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #21, !noalias !578
  unreachable

bb.dr:                                            ; preds = %bb.dw, %bb.du, %bb.dp
  %i.sj = icmp eq i64 %.sroa.10.0.copyload.i, 1
  br i1 %i.sj, label %bb.dx, label %bb.dy

bb.ds:                                            ; preds = %bb.ea, %bb.dy, %bb.dw, %bb.du, %bb.dp
  %.sroa.0.0.i342 = phi ptr [ %i.sq, %bb.du ], [ %i.si, %bb.dp ], [ %i.st, %bb.dy ], [ %i.sv, %bb.ea ], [ %i.ss, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !573
  %i.sk = icmp eq i64 %.sroa.095.0.copyload.i, 0
end_hunk_2
begin_hunk_3_@_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute28perform_checksum_computationNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtB1t_3ffi6os_str8OsStringENvYB42_INtNtB2a_6borrow6BorrowNtB44_5OsStrE6borrowEECs4dRV7rdzHEF_18uu_checksum_common:bb.a
  %i.sw = load i64, ptr %i.bb, align 8, !range !8, !noundef !6 ; 2 uses
  %i.sx = icmp eq i64 %i.sw, -1
  %i.sy = load ptr, ptr %.sroa.4113.0..sroa_idx, align 8 ; 2 uses
  %i.sz = load ptr, ptr %.sroa.5114.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br i1 %i.sx, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit370, label %bb.er

bb.eg:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false)
  store i8 %.val, ptr %i.dc, align 8
  br i1 %i.cz, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  call void @_RNvMNtNtCsh036I4OHgIr_6uucore8features3sumNtB2_12DigestOutput6to_hex(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax) #22
  br label %bb.ej

bb.ei:                                            ; preds = %bb.eg
  call void @_RNvMNtNtCsh036I4OHgIr_6uucore8features3sumNtB2_12DigestOutput9to_base64(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax) #22
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %.val.i346 = load i64, ptr %i.ax, align 8, !range !19, !alias.scope !584, !noundef !6 ; 2 uses
  %or.cond.i.i347 = icmp slt i64 %.val.i346, 1
  br i1 %or.cond.i.i347, label %_RNCINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute28perform_checksum_computationNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtB1v_3ffi6os_str8OsStringENvYB44_INtNtB2c_6borrow6BorrowNtB46_5OsStrE6borrowEEs_0Cs4dRV7rdzHEF_18uu_checksum_common.exit349, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %.val1.i348 = load ptr, ptr %i.dd, align 8, !alias.scope !584, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i348, i64 noundef %.val.i346, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !585
  br label %_RNCINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute28perform_checksum_computationNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtB1v_3ffi6os_str8OsStringENvYB44_INtNtB2c_6borrow6BorrowNtB46_5OsStrE6borrowEEs_0Cs4dRV7rdzHEF_18uu_checksum_common.exit349

_RNCINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute28perform_checksum_computationNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtB1v_3ffi6os_str8OsStringENvYB44_INtNtB2c_6borrow6BorrowNtB46_5OsStrE6borrowEEs_0Cs4dRV7rdzHEF_18uu_checksum_common.exit349: ; preds = %bb.ej, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %i.ta = load i64, ptr %i.ay, align 8, !range !8, !noundef !6 ; 2 uses
  %i.tb = icmp eq i64 %i.ta, -1
  %i.tc = load ptr, ptr %.sroa.4133.0..sroa_idx, align 8 ; 2 uses
  %i.td = load ptr, ptr %.sroa.5134.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br i1 %i.tb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit395, label %bb.fk

bb.el:                                            ; preds = %_RINvMNtNtCsh036I4OHgIr_6uucore8features3sumNtB3_12DigestOutput9write_rawQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !586
  %i.te = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #22, !noalias !586 ; 2 uses
  %i.tf = icmp eq ptr %i.te, null
  br i1 %i.tf, label %bb.em, label %.sink.split, !prof !7

bb.em:                                            ; preds = %bb.el
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #25, !noalias !586
  unreachable

_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute21write_legacy_checksumQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit.thread604: ; preds = %bb.ds, %_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute21write_legacy_checksumQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !587
  %i.tg = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #22, !noalias !587 ; 2 uses
  %i.th = icmp eq ptr %i.tg, null
  br i1 %i.th, label %bb.en, label %.sink.split, !prof !7

bb.en:                                            ; preds = %_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute21write_legacy_checksumQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit.thread604
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #25, !noalias !587
  unreachable

bb.eo:                                            ; preds = %_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute21write_legacy_checksumQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit.thread608, %_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute21write_legacy_checksumQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit398, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit373
  %.sroa.043.0 = phi i1 [ false, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit398 ], [ false, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit373 ], [ true, %_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute21write_legacy_checksumQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit.thread608 ], [ true, %_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute21write_legacy_checksumQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store ptr %i.df, ptr %i.aw, align 8
  store ptr @_RNvXNtNtCsh036I4OHgIr_6uucore4mods11line_endingNtB2_10LineEndingNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4156.0..sroa_idx, align 8
  %i.ti = call noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull @39, ptr noundef nonnull %i.aw) #22 ; 2 uses
  %.not203 = icmp eq ptr %i.ti, null
  br i1 %.not203, label %bb.gb, label %bb.fz

.sink.split:                                      ; preds = %_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute21write_legacy_checksumQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit.thread604, %bb.el
  %.sink1553 = phi ptr [ %i.te, %bb.el ], [ %i.tg, %_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute21write_legacy_checksumQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit.thread604 ] ; 3 uses
  %.sroa.0.0.i339.sink = phi ptr [ %.sroa.0.0.i339, %bb.el ], [ %.sroa.0.0.i342, %_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute21write_legacy_checksumQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit.thread604 ]
  store i64 17, ptr %.sink1553, align 8
  %.sroa.4474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sink1553, i64 8
  store ptr %.sroa.0.0.i339.sink, ptr %.sroa.4474.0..sroa_idx, align 8
  br label %bb.ep

bb.ep:                                            ; preds = %.sink.split, %_RINvMNtNtCsh036I4OHgIr_6uucore8features3sumNtB3_12DigestOutput9write_rawQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit, %_RNvXNtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB2_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB6_8features8checksum13ChecksumErrorE4fromCs4dRV7rdzHEF_18uu_checksum_common.exit400
  %.sroa.0.0 = phi ptr [ null, %_RINvMNtNtCsh036I4OHgIr_6uucore8features3sumNtB3_12DigestOutput9write_rawQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit ], [ %i.uw, %_RNvXNtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB2_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB6_8features8checksum13ChecksumErrorE4fromCs4dRV7rdzHEF_18uu_checksum_common.exit400 ], [ %.sink1553, %.sink.split ] ; 2 uses
  %.val219 = load i64, ptr %i.bd, align 8, !range !19, !noundef !6 ; 2 uses
  %or.cond.i353 = icmp slt i64 %.val219, 1
  br i1 %or.cond.i353, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features3sum12DigestOutputECs4dRV7rdzHEF_18uu_checksum_common.exit, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %.val220 = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val220, i64 noundef %.val219, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features3sum12DigestOutputECs4dRV7rdzHEF_18uu_checksum_common.exit

bb.er:                                            ; preds = %_RNCINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute28perform_checksum_computationNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtB1v_3ffi6os_str8OsStringENvYB44_INtNtB2c_6borrow6BorrowNtB46_5OsStrE6borrowEEs_0Cs4dRV7rdzHEF_18uu_checksum_common.exit
  store i64 %i.sw, ptr %i.bc, align 8
  store ptr %i.sy, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %i.sz, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.bc, ptr %i.m, align 8, !noalias !588
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !588
  br i1 %i.dg, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  call void @_RNvNtNtCsh036I4OHgIr_6uucore8features8checksum15escape_filename(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val3.i) #22, !noalias !589
  %.sroa.040.0.copyload.pre.i = load i64, ptr %i.k, align 8, !noalias !588
  %.sroa.6.0.copyload.pre.i355 = load ptr, ptr %.sroa.6.0..sroa_idx.phi.trans.insert.i354, align 8, !noalias !588
  %.sroa.9.0.copyload.pre.i = load i64, ptr %.sroa.9.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !588
  %.pre.i357 = load ptr, ptr %.phi.trans.insert.i356, align 8, !noalias !588
  %.pre58.i = load i64, ptr %.phi.trans.insert57.i, align 8, !noalias !588
  br label %bb.ev

bb.et:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !588
  call void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val3.i) #22, !noalias !589
  %i.tj = load i64, ptr %i.j, align 8, !range !8, !noalias !588, !noundef !6 ; 2 uses
  %i.tk = load ptr, ptr %i.do, align 8, !noalias !588 ; 3 uses
  %i.tl = load i64, ptr %i.dp, align 8, !noalias !588 ; 7 uses
  %.not.i.i362 = icmp slt i64 %i.tl, 0
  br i1 %.not.i.i362, label %bb.ew, label %bb.eu, !prof !16

bb.eu:                                            ; preds = %bb.et
  %i.tm = icmp eq i64 %i.tl, 0
  br i1 %i.tm, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4dRV7rdzHEF_18uu_checksum_common.exit.thread48.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i363

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i363: ; preds = %bb.eu
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !590
  %i.tn = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.tl, i64 noundef range(i64 1, 9) 1) #22, !noalias !590 ; 3 uses
  %i.to = icmp eq ptr %i.tn, null
  br i1 %i.to, label %bb.ew, label %bb.ey

bb.ev:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs4dRV7rdzHEF_18uu_checksum_common.exit.i364, %bb.es
  %i.tp = phi i64 [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs4dRV7rdzHEF_18uu_checksum_common.exit.i364 ], [ %.pre58.i, %bb.es ]
  %i.tq = phi ptr [ inttoptr (i64 1 to ptr), %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs4dRV7rdzHEF_18uu_checksum_common.exit.i364 ], [ %.pre.i357, %bb.es ]
  %.sroa.9.0.copyload.i = phi i64 [ %i.tl, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs4dRV7rdzHEF_18uu_checksum_common.exit.i364 ], [ %.sroa.9.0.copyload.pre.i, %bb.es ]
  %.sroa.6.0.copyload.i358 = phi ptr [ %i.ts, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs4dRV7rdzHEF_18uu_checksum_common.exit.i364 ], [ %.sroa.6.0.copyload.pre.i355, %bb.es ] ; 4 uses
  %.sroa.040.0.copyload.i = phi i64 [ %i.tl, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs4dRV7rdzHEF_18uu_checksum_common.exit.i364 ], [ %.sroa.040.0.copyload.pre.i, %bb.es ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !588
  store ptr %i.tq, ptr %i.l, align 8, !noalias !588, !captures !18
  store i64 %i.tp, ptr %i.dq, align 8, !noalias !588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !588
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !588
  call void @_RNvMs3_NtNtCsh036I4OHgIr_6uucore8features8checksumNtB5_13SizedAlgoKind6to_tag(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) #22, !noalias !591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !588
  store ptr %i.l, ptr %i.h, align 8, !noalias !588
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs4dRV7rdzHEF_18uu_checksum_common, ptr %.sroa.415.0..sroa_idx.i, align 8, !noalias !588
  store ptr %i.i, ptr %i.dr, align 8, !noalias !588
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !588
  %i.tr = call noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull @32, ptr noundef nonnull %i.h) #22, !noalias !592 ; 2 uses
  %.not25.i = icmp eq ptr %i.tr, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !588
  br i1 %.not25.i, label %bb.fb, label %bb.ez

bb.ew:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i363, %bb.et
  %.sroa.4.0.ph.i365 = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i363 ], [ 0, %bb.et ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i365, i64 %i.tl) #25, !noalias !589
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4dRV7rdzHEF_18uu_checksum_common.exit.thread48.i: ; preds = %bb.ey, %bb.eu
  %i.ts = phi ptr [ %i.tn, %bb.ey ], [ inttoptr (i64 1 to ptr), %bb.eu ]
  %i.tt = icmp sgt i64 %i.tj, 0
  br i1 %i.tt, label %bb.ex, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs4dRV7rdzHEF_18uu_checksum_common.exit.i364

bb.ex:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4dRV7rdzHEF_18uu_checksum_common.exit.thread48.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.tk) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.tk, i64 noundef %i.tj, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !593
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs4dRV7rdzHEF_18uu_checksum_common.exit.i364

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs4dRV7rdzHEF_18uu_checksum_common.exit.i364: ; preds = %bb.ex, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4dRV7rdzHEF_18uu_checksum_common.exit.thread48.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !588
  br label %bb.ev

bb.ey:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i363
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.tn, ptr nonnull align 1 %i.tk, i64 %i.tl, i1 false), !noalias !589
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4dRV7rdzHEF_18uu_checksum_common.exit.thread48.i

bb.ez:                                            ; preds = %bb.ev
  call void @llvm.experimental.noalias.scope.decl(metadata !594)
  %.val.i.i359 = load i64, ptr %i.i, align 8, !range !11, !alias.scope !594, !noalias !588, !noundef !6 ; 2 uses
  %i.tu = icmp eq i64 %.val.i.i359, 0
  br i1 %i.tu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit.i, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %.val1.i.i = load ptr, ptr %i.ds, align 8, !alias.scope !594, !noalias !588, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i359, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !595
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit.i: ; preds = %bb.fa, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !588
  br label %bb.fe

bb.fb:                                            ; preds = %bb.ev
  call void @llvm.experimental.noalias.scope.decl(metadata !596)
  %.val.i31.i = load i64, ptr %i.i, align 8, !range !11, !alias.scope !596, !noalias !588, !noundef !6 ; 2 uses
  %i.tv = icmp eq i64 %.val.i31.i, 0
  br i1 %i.tv, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit33.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %.val1.i32.i = load ptr, ptr %i.ds, align 8, !alias.scope !596, !noalias !588, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i32.i, i64 noundef %.val.i31.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !597
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit33.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit33.i: ; preds = %bb.fc, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !588
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i358) ]
  %i.tw = call noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6.0.copyload.i358, i64 noundef range(i64 0, -9223372036854775808) %.sroa.9.0.copyload.i) #22, !noalias !592 ; 2 uses
  %.not26.i = icmp eq ptr %i.tw, null
  br i1 %.not26.i, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit33.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !588
  store ptr %i.m, ptr %i.g, align 8, !noalias !588
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRNtNtCs7tKScEop1B6_5alloc6string6StringNtB6_7Display3fmtCs4dRV7rdzHEF_18uu_checksum_common, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !588
  %i.tx = call noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull @33, ptr noundef nonnull %i.g) #22, !noalias !592 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !588
  %i.ty = icmp eq i64 %.sroa.040.0.copyload.i, 0
  br i1 %i.ty, label %_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute21write_tagged_checksumQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit36.sink.split.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit36.sink.split.i: ; preds = %bb.ff, %bb.fd
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.0.1.i360, %bb.ff ], [ %i.tx, %bb.fd ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i358, i64 noundef %.sroa.040.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !592
  br label %_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute21write_tagged_checksumQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit

bb.fe:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit33.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit.i
  %.sroa.0.1.i360 = phi ptr [ %i.tr, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit.i ], [ %i.tw, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit33.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !588
  %i.tz = icmp eq i64 %.sroa.040.0.copyload.i, 0
  br i1 %i.tz, label %_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute21write_tagged_checksumQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit.thread, label %bb.ff

_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute21write_tagged_checksumQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit.thread: ; preds = %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.loopexit629

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i358) ]
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit36.sink.split.i

_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute21write_tagged_checksumQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit: ; preds = %bb.fd, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit36.sink.split.i
  %.sroa.0.0.i361 = phi ptr [ %.sroa.0.0.ph.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit36.sink.split.i ], [ %i.tx, %bb.fd ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.not201 = icmp eq ptr %.sroa.0.0.i361, null
  br i1 %.not201, label %bb.fi, label %.loopexit629

.loopexit629:                                     ; preds = %_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute21write_tagged_checksumQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit, %_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute21write_tagged_checksumQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit.thread
  %.sroa.0.0.i361613 = phi ptr [ %.sroa.0.1.i360, %_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute21write_tagged_checksumQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit.thread ], [ %.sroa.0.0.i361, %_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute21write_tagged_checksumQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit ]
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !598
  %i.ua = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #22, !noalias !598 ; 5 uses
  %i.ub = icmp eq ptr %i.ua, null
  br i1 %i.ub, label %bb.fg, label %_RNvXNtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB2_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB6_8features8checksum13ChecksumErrorE4fromCs4dRV7rdzHEF_18uu_checksum_common.exit367, !prof !7

bb.fg:                                            ; preds = %.loopexit629
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #25, !noalias !598
  unreachable

_RNvXNtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB2_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB6_8features8checksum13ChecksumErrorE4fromCs4dRV7rdzHEF_18uu_checksum_common.exit367: ; preds = %.loopexit629
  store i64 17, ptr %i.ua, align 8
  %.sroa.4480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  store ptr %.sroa.0.0.i361613, ptr %.sroa.4480.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !599)
  %.val.i368 = load i64, ptr %i.bc, align 8, !range !11, !alias.scope !599, !noundef !6 ; 2 uses
  %i.uc = icmp eq i64 %.val.i368, 0
  br i1 %i.uc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit370, label %bb.fh

bb.fh:                                            ; preds = %_RNvXNtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB2_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB6_8features8checksum13ChecksumErrorE4fromCs4dRV7rdzHEF_18uu_checksum_common.exit367
  %.val1.i369 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !599, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i369, i64 noundef %.val.i368, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !599
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit370

bb.fi:                                            ; preds = %_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute21write_tagged_checksumQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %.val.i371 = load i64, ptr %i.bc, align 8, !range !11, !alias.scope !600, !noundef !6 ; 2 uses
  %i.ud = icmp eq i64 %.val.i371, 0
  br i1 %i.ud, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit373, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %.val1.i372 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !600, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i372, i64 noundef %.val.i371, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !600
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit373

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit373: ; preds = %bb.fi, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %bb.eo

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit370: ; preds = %_RNCINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute28perform_checksum_computationNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtB1v_3ffi6os_str8OsStringENvYB44_INtNtB2c_6borrow6BorrowNtB46_5OsStrE6borrowEEs_0Cs4dRV7rdzHEF_18uu_checksum_common.exit, %bb.fh, %_RNvXNtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB2_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB6_8features8checksum13ChecksumErrorE4fromCs4dRV7rdzHEF_18uu_checksum_common.exit367
  %.sroa.13.1 = phi ptr [ @41, %bb.fh ], [ @41, %_RNvXNtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB2_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB6_8features8checksum13ChecksumErrorE4fromCs4dRV7rdzHEF_18uu_checksum_common.exit367 ], [ %i.sz, %_RNCINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute28perform_checksum_computationNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtB1v_3ffi6os_str8OsStringENvYB44_INtNtB2c_6borrow6BorrowNtB46_5OsStrE6borrowEEs_0Cs4dRV7rdzHEF_18uu_checksum_common.exit ]
  %.sroa.0.1 = phi ptr [ %i.ua, %bb.fh ], [ %i.ua, %_RNvXNtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB2_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB6_8features8checksum13ChecksumErrorE4fromCs4dRV7rdzHEF_18uu_checksum_common.exit367 ], [ %i.sy, %_RNCINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute28perform_checksum_computationNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtB1v_3ffi6os_str8OsStringENvYB44_INtNtB2c_6borrow6BorrowNtB46_5OsStrE6borrowEEs_0Cs4dRV7rdzHEF_18uu_checksum_common.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features3sum12DigestOutputECs4dRV7rdzHEF_18uu_checksum_common.exit

bb.fk:                                            ; preds = %_RNCINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute28perform_checksum_computationNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtB1v_3ffi6os_str8OsStringENvYB44_INtNtB2c_6borrow6BorrowNtB46_5OsStrE6borrowEEs_0Cs4dRV7rdzHEF_18uu_checksum_common.exit349
  store i64 %i.ta, ptr %i.az, align 8
  store ptr %i.tc, ptr %.sroa.437.0..sroa_idx, align 8
  store ptr %i.td, ptr %.sroa.538.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.az, ptr %i.f, align 8, !noalias !601
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !601
  br i1 %i.dg, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  call void @_RNvNtNtCsh036I4OHgIr_6uucore8features8checksum15escape_filename(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val3.i) #22, !noalias !602
  %.sroa.01.0.copyload.pre.i = load i64, ptr %i.d, align 8, !noalias !601
  %.sroa.6.0.copyload.pre.i375 = load ptr, ptr %.sroa.6.0..sroa_idx.phi.trans.insert.i374, align 8, !noalias !601
  %.sroa.9.0.copyload.pre.i377 = load i64, ptr %.sroa.9.0..sroa_idx.phi.trans.insert.i376, align 8, !noalias !601
  %.pre.i379 = load ptr, ptr %.phi.trans.insert.i378, align 8, !noalias !601
  %.pre19.i = load i64, ptr %.phi.trans.insert18.i, align 8, !noalias !601
  br label %bb.fo

bb.fm:                                            ; preds = %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !601
  call void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val3.i) #22, !noalias !602
  %i.ue = load i64, ptr %i.c, align 8, !range !8, !noalias !601, !noundef !6 ; 2 uses
  %i.uf = load ptr, ptr %i.dh, align 8, !noalias !601 ; 3 uses
  %i.ug = load i64, ptr %i.di, align 8, !noalias !601 ; 7 uses
  %.not.i.i387 = icmp slt i64 %i.ug, 0
  br i1 %.not.i.i387, label %bb.fp, label %bb.fn, !prof !16

bb.fn:                                            ; preds = %bb.fm
  %i.uh = icmp eq i64 %i.ug, 0
  br i1 %i.uh, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4dRV7rdzHEF_18uu_checksum_common.exit.thread9.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i388

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i388: ; preds = %bb.fn
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !603
  %i.ui = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ug, i64 noundef range(i64 1, 9) 1) #22, !noalias !603 ; 3 uses
  %i.uj = icmp eq ptr %i.ui, null
  br i1 %i.uj, label %bb.fp, label %bb.fr

bb.fo:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs4dRV7rdzHEF_18uu_checksum_common.exit.i389, %bb.fl
  %i.uk = phi i64 [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs4dRV7rdzHEF_18uu_checksum_common.exit.i389 ], [ %.pre19.i, %bb.fl ]
  %i.ul = phi ptr [ inttoptr (i64 1 to ptr), %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs4dRV7rdzHEF_18uu_checksum_common.exit.i389 ], [ %.pre.i379, %bb.fl ]
  %.sroa.9.0.copyload.i380 = phi i64 [ %i.ug, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs4dRV7rdzHEF_18uu_checksum_common.exit.i389 ], [ %.sroa.9.0.copyload.pre.i377, %bb.fl ]
  %.sroa.6.0.copyload.i381 = phi ptr [ %i.un, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs4dRV7rdzHEF_18uu_checksum_common.exit.i389 ], [ %.sroa.6.0.copyload.pre.i375, %bb.fl ] ; 4 uses
  %.sroa.01.0.copyload.i382 = phi i64 [ %i.ug, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs4dRV7rdzHEF_18uu_checksum_common.exit.i389 ], [ %.sroa.01.0.copyload.pre.i, %bb.fl ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !601
  store ptr %i.ul, ptr %i.e, align 8, !noalias !601, !captures !18
  store i64 %i.uk, ptr %i.dj, align 8, !noalias !601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !601
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !601
  store i32 %..i, ptr %i.b, align 4, !noalias !601
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !601
  store ptr %i.e, ptr %i.a, align 8, !noalias !601
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs4dRV7rdzHEF_18uu_checksum_common, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !601
  store ptr %i.f, ptr %i.dk, align 8, !noalias !601
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRNtNtCs7tKScEop1B6_5alloc6string6StringNtB6_7Display3fmtCs4dRV7rdzHEF_18uu_checksum_common, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !601
  store ptr %i.b, ptr %i.dl, align 8, !noalias !601
  store ptr @_RNvXsk_NtCs6JMX4GRUq9U_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !601
  %i.um = call noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull @25, ptr noundef nonnull %i.a) #22 ; 3 uses
  %.not22.i = icmp eq ptr %i.um, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !601
  br i1 %.not22.i, label %bb.fu, label %bb.fs

bb.fp:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i388, %bb.fm
  %.sroa.4.0.ph.i390 = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i388 ], [ 0, %bb.fm ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i390, i64 %i.ug) #25, !noalias !602
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4dRV7rdzHEF_18uu_checksum_common.exit.thread9.i: ; preds = %bb.fr, %bb.fn
  %i.un = phi ptr [ %i.ui, %bb.fr ], [ inttoptr (i64 1 to ptr), %bb.fn ]
  %i.uo = icmp sgt i64 %i.ue, 0
  br i1 %i.uo, label %bb.fq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs4dRV7rdzHEF_18uu_checksum_common.exit.i389

bb.fq:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4dRV7rdzHEF_18uu_checksum_common.exit.thread9.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.uf) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.uf, i64 noundef %i.ue, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !604
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs4dRV7rdzHEF_18uu_checksum_common.exit.i389

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs4dRV7rdzHEF_18uu_checksum_common.exit.i389: ; preds = %bb.fq, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4dRV7rdzHEF_18uu_checksum_common.exit.thread9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !601
  br label %bb.fo

bb.fr:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i388
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ui, ptr nonnull align 1 %i.uf, i64 %i.ug, i1 false), !noalias !602
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4dRV7rdzHEF_18uu_checksum_common.exit.thread9.i

bb.fs:                                            ; preds = %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !601
  %i.up = icmp eq i64 %.sroa.01.0.copyload.i382, 0
  br i1 %i.up, label %_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute23write_untagged_checksumQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit.thread, label %bb.ft

_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute23write_untagged_checksumQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit.thread: ; preds = %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.loopexit628

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i381) ]
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit.sink.split.i383

bb.fu:                                            ; preds = %bb.fo
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i381) ]
  %i.uq = call noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6.0.copyload.i381, i64 noundef range(i64 0, -9223372036854775808) %.sroa.9.0.copyload.i380) #22 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !601
  %i.ur = icmp eq i64 %.sroa.01.0.copyload.i382, 0
  br i1 %i.ur, label %_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute23write_untagged_checksumQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit.sink.split.i383

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit.sink.split.i383: ; preds = %bb.fu, %bb.ft
  %.sroa.0.0.ph.i384 = phi ptr [ %i.um, %bb.ft ], [ %i.uq, %bb.fu ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i381, i64 noundef %.sroa.01.0.copyload.i382, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !6
  br label %_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute23write_untagged_checksumQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit

_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute23write_untagged_checksumQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit: ; preds = %bb.fu, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit.sink.split.i383
  %.sroa.0.0.i386 = phi ptr [ %i.uq, %bb.fu ], [ %.sroa.0.0.ph.i384, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit.sink.split.i383 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not200 = icmp eq ptr %.sroa.0.0.i386, null
  br i1 %.not200, label %bb.fx, label %.loopexit628

.loopexit628:                                     ; preds = %_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute23write_untagged_checksumQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit, %_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute23write_untagged_checksumQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit.thread
  %.sroa.0.0.i386616 = phi ptr [ %i.um, %_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute23write_untagged_checksumQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit.thread ], [ %.sroa.0.0.i386, %_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute23write_untagged_checksumQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit ]
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !605
  %i.us = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #22, !noalias !605 ; 5 uses
  %i.ut = icmp eq ptr %i.us, null
  br i1 %i.ut, label %bb.fv, label %_RNvXNtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB2_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB6_8features8checksum13ChecksumErrorE4fromCs4dRV7rdzHEF_18uu_checksum_common.exit392, !prof !7

bb.fv:                                            ; preds = %.loopexit628
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #25, !noalias !605
  unreachable

_RNvXNtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB2_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB6_8features8checksum13ChecksumErrorE4fromCs4dRV7rdzHEF_18uu_checksum_common.exit392: ; preds = %.loopexit628
  store i64 17, ptr %i.us, align 8
  %.sroa.4483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  store ptr %.sroa.0.0.i386616, ptr %.sroa.4483.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !606)
  %.val.i393 = load i64, ptr %i.az, align 8, !range !11, !alias.scope !606, !noundef !6 ; 2 uses
  %i.uu = icmp eq i64 %.val.i393, 0
  br i1 %i.uu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit395, label %bb.fw

bb.fw:                                            ; preds = %_RNvXNtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB2_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB6_8features8checksum13ChecksumErrorE4fromCs4dRV7rdzHEF_18uu_checksum_common.exit392
  %.val1.i394 = load ptr, ptr %.sroa.437.0..sroa_idx, align 8, !alias.scope !606, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i394, i64 noundef %.val.i393, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !606
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit395

bb.fx:                                            ; preds = %_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute23write_untagged_checksumQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECs4dRV7rdzHEF_18uu_checksum_common.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !607)
  %.val.i396 = load i64, ptr %i.az, align 8, !range !11, !alias.scope !607, !noundef !6 ; 2 uses
  %i.uv = icmp eq i64 %.val.i396, 0
  br i1 %i.uv, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit398, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %.val1.i397 = load ptr, ptr %.sroa.437.0..sroa_idx, align 8, !alias.scope !607, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i397, i64 noundef %.val.i396, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !607
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit398

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit398: ; preds = %bb.fx, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.eo

bb.fz:                                            ; preds = %bb.eo
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !608
  %i.uw = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #22, !noalias !608 ; 5 uses
  %i.ux = icmp eq ptr %i.uw, null
  br i1 %i.ux, label %bb.ga, label %_RNvXNtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB2_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB6_8features8checksum13ChecksumErrorE4fromCs4dRV7rdzHEF_18uu_checksum_common.exit400, !prof !7

bb.ga:                                            ; preds = %bb.fz
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #25, !noalias !608
  unreachable

_RNvXNtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB2_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB6_8features8checksum13ChecksumErrorE4fromCs4dRV7rdzHEF_18uu_checksum_common.exit400: ; preds = %bb.fz
  store i64 17, ptr %i.uw, align 8
  %.sroa.4486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  store ptr %i.ti, ptr %.sroa.4486.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br i1 %.sroa.043.0, label %bb.ep, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features3sum12DigestOutputECs4dRV7rdzHEF_18uu_checksum_common.exit

bb.gb:                                            ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br i1 %.sroa.043.0, label %bb.gg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features3sum12DigestOutputECs4dRV7rdzHEF_18uu_checksum_common.exit408

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features3sum12DigestOutputECs4dRV7rdzHEF_18uu_checksum_common.exit408: ; preds = %bb.gh, %bb.gg, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %.val224 = load ptr, ptr %i.be, align 8         ; 4 uses
  %.val225 = load ptr, ptr %i.cp, align 8, !nonnull !6, !align !13, !noundef !6 ; 3 uses
  %i.uy = load ptr, ptr %.val225, align 8, !invariant.load !6 ; 2 uses
  %.not.i401 = icmp eq ptr %i.uy, null
  br i1 %.not.i401, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features3sum12DigestOutputECs4dRV7rdzHEF_18uu_checksum_common.exit408
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val224) ]
  call void %i.uy(ptr noundef nonnull %.val224) #24, !inline_history !457
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features3sum12DigestOutputECs4dRV7rdzHEF_18uu_checksum_common.exit408
  %i.uz = getelementptr inbounds nuw i8, ptr %.val225, i64 8
  %i.va = load i64, ptr %i.uz, align 8, !range !11, !invariant.load !6 ; 2 uses
  %i.vb = icmp eq i64 %i.va, 0
  br i1 %i.vb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECs4dRV7rdzHEF_18uu_checksum_common.exit.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i402

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i402: ; preds = %bb.gd
  %i.vc = getelementptr inbounds nuw i8, ptr %.val225, i64 16
  %i.vd = load i64, ptr %i.vc, align 8, !range !14, !invariant.load !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val224) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val224, i64 noundef %i.va, i64 noundef range(i64 1, -9223372036854775807) %i.vd) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECs4dRV7rdzHEF_18uu_checksum_common.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECs4dRV7rdzHEF_18uu_checksum_common.exit.i: ; preds = %bb.gd, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0431.0, i64 noundef 32768, i64 noundef 1) #22, !noalias !609
  %i.ve = load ptr, ptr %.sroa.39438.0, align 8, !invariant.load !6, !noalias !609 ; 2 uses
  %.not.i.i406 = icmp eq ptr %i.ve, null
  br i1 %.not.i.i406, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECs4dRV7rdzHEF_18uu_checksum_common.exit.i
  call void %i.ve(ptr noundef nonnull %.sroa.33437.0) #24, !noalias !609, !inline_history !460
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECs4dRV7rdzHEF_18uu_checksum_common.exit.i
  %i.vf = getelementptr inbounds nuw i8, ptr %.sroa.39438.0, i64 8
  %i.vg = load i64, ptr %i.vf, align 8, !range !11, !invariant.load !6, !noalias !609 ; 2 uses
  %i.vh = icmp eq i64 %i.vg, 0
  br i1 %i.vh, label %.backedge, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.gf
  %i.vi = getelementptr inbounds nuw i8, ptr %.sroa.39438.0, i64 16
  %i.vj = load i64, ptr %i.vi, align 8, !range !14, !invariant.load !6, !noalias !609
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.33437.0, i64 noundef %i.vg, i64 noundef range(i64 1, -9223372036854775807) %i.vj) #22, !noalias !609
  br label %.backedge

bb.gg:                                            ; preds = %bb.gb
  %.val217 = load i64, ptr %i.bd, align 8, !range !19, !noundef !6 ; 2 uses
  %or.cond.i407 = icmp slt i64 %.val217, 1
  br i1 %or.cond.i407, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features3sum12DigestOutputECs4dRV7rdzHEF_18uu_checksum_common.exit408, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %.val218 = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val218, i64 noundef %.val217, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features3sum12DigestOutputECs4dRV7rdzHEF_18uu_checksum_common.exit408

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features3sum12DigestOutputECs4dRV7rdzHEF_18uu_checksum_common.exit: ; preds = %bb.eq, %bb.ep, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit370, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit395, %_RNvXNtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB2_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB6_8features8checksum13ChecksumErrorE4fromCs4dRV7rdzHEF_18uu_checksum_common.exit400
  %.sroa.13.2 = phi ptr [ %.sroa.13.3, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit395 ], [ @41, %_RNvXNtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB2_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB6_8features8checksum13ChecksumErrorE4fromCs4dRV7rdzHEF_18uu_checksum_common.exit400 ], [ %.sroa.13.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit370 ], [ @41, %bb.ep ], [ @41, %bb.eq ]
  %.sroa.0.2 = phi ptr [ %.sroa.0.3, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit395 ], [ %i.uw, %_RNvXNtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB2_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB6_8features8checksum13ChecksumErrorE4fromCs4dRV7rdzHEF_18uu_checksum_common.exit400 ], [ %.sroa.0.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit370 ], [ %.sroa.0.0, %bb.ep ], [ %.sroa.0.0, %bb.eq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %bb.gi

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4dRV7rdzHEF_18uu_checksum_common.exit395: ; preds = %_RNCINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute28perform_checksum_computationNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtB1v_3ffi6os_str8OsStringENvYB44_INtNtB2c_6borrow6BorrowNtB46_5OsStrE6borrowEEs_0Cs4dRV7rdzHEF_18uu_checksum_common.exit349, %bb.fw, %_RNvXNtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB2_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB6_8features8checksum13ChecksumErrorE4fromCs4dRV7rdzHEF_18uu_checksum_common.exit392
  %.sroa.13.3 = phi ptr [ @41, %bb.fw ], [ @41, %_RNvXNtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB2_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB6_8features8checksum13ChecksumErrorE4fromCs4dRV7rdzHEF_18uu_checksum_common.exit392 ], [ %i.td, %_RNCINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute28perform_checksum_computationNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtB1v_3ffi6os_str8OsStringENvYB44_INtNtB2c_6borrow6BorrowNtB46_5OsStrE6borrowEEs_0Cs4dRV7rdzHEF_18uu_checksum_common.exit349 ]
  %.sroa.0.3 = phi ptr [ %i.us, %bb.fw ], [ %i.us, %_RNvXNtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB2_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB6_8features8checksum13ChecksumErrorE4fromCs4dRV7rdzHEF_18uu_checksum_common.exit392 ], [ %i.tc, %_RNCINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute28perform_checksum_computationNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtB1v_3ffi6os_str8OsStringENvYB44_INtNtB2c_6borrow6BorrowNtB46_5OsStrE6borrowEEs_0Cs4dRV7rdzHEF_18uu_checksum_common.exit349 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features3sum12DigestOutputECs4dRV7rdzHEF_18uu_checksum_common.exit

bb.gi:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features3sum12DigestOutputECs4dRV7rdzHEF_18uu_checksum_common.exit, %bb.cv
  %.sroa.13.4 = phi ptr [ @43, %bb.cv ], [ %.sroa.13.2, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features3sum12DigestOutputECs4dRV7rdzHEF_18uu_checksum_common.exit ] ; 2 uses
  %.sroa.0.4 = phi ptr [ %i.jq, %bb.cv ], [ %.sroa.0.2, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features3sum12DigestOutputECs4dRV7rdzHEF_18uu_checksum_common.exit ] ; 2 uses
  %.val222 = load ptr, ptr %i.be, align 8         ; 4 uses
  %.val223 = load ptr, ptr %i.cp, align 8, !nonnull !6, !align !13, !noundef !6 ; 3 uses
  %i.vk = load ptr, ptr %.val223, align 8, !invariant.load !6 ; 2 uses
  %.not.i409 = icmp eq ptr %i.vk, null
  br i1 %.not.i409, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val222) ]
  call void %i.vk(ptr noundef nonnull %.val222) #24, !inline_history !457
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %i.vl = getelementptr inbounds nuw i8, ptr %.val223, i64 8
  %i.vm = load i64, ptr %i.vl, align 8, !range !11, !invariant.load !6 ; 2 uses
  %i.vn = icmp eq i64 %i.vm, 0
  br i1 %i.vn, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECs4dRV7rdzHEF_18uu_checksum_common.exit.i415, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i410

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i410: ; preds = %bb.gk
  %i.vo = getelementptr inbounds nuw i8, ptr %.val223, i64 16
  %i.vp = load i64, ptr %i.vo, align 8, !range !14, !invariant.load !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val222) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val222, i64 noundef %i.vm, i64 noundef range(i64 1, -9223372036854775807) %i.vp) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECs4dRV7rdzHEF_18uu_checksum_common.exit.i415

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECs4dRV7rdzHEF_18uu_checksum_common.exit.i415: ; preds = %bb.gk, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0431.0, i64 noundef 32768, i64 noundef 1) #22, !noalias !610
  %i.vq = load ptr, ptr %.sroa.39438.0, align 8, !invariant.load !6, !noalias !610 ; 2 uses
  %.not.i.i418 = icmp eq ptr %i.vq, null
  br i1 %.not.i.i418, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECs4dRV7rdzHEF_18uu_checksum_common.exit.i415
  call void %i.vq(ptr noundef nonnull %.sroa.33437.0) #24, !noalias !610, !inline_history !460
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECs4dRV7rdzHEF_18uu_checksum_common.exit.i415
  %i.vr = getelementptr inbounds nuw i8, ptr %.sroa.39438.0, i64 8
  %i.vs = load i64, ptr %i.vr, align 8, !range !11, !invariant.load !6, !noalias !610 ; 2 uses
  %i.vt = icmp eq i64 %i.vs, 0
  br i1 %i.vt, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderINtNtBK_5boxed3BoxDNtNtBI_4read4ReadEL_EEECs4dRV7rdzHEF_18uu_checksum_common.exit420, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i419

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i419: ; preds = %bb.gm
  %i.vu = getelementptr inbounds nuw i8, ptr %.sroa.39438.0, i64 16
  %i.vv = load i64, ptr %i.vu, align 8, !range !14, !invariant.load !6, !noalias !610
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.33437.0, i64 noundef %i.vs, i64 noundef range(i64 1, -9223372036854775807) %i.vv) #22, !noalias !610
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderINtNtBK_5boxed3BoxDNtNtBI_4read4ReadEL_EEECs4dRV7rdzHEF_18uu_checksum_common.exit420

bb.gn:                                            ; preds = %bb.d
  %i.vw = call noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bv) #22 ; 2 uses
  %.not197 = icmp eq ptr %i.vw, null
  br i1 %.not197, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderINtNtBK_5boxed3BoxDNtNtBI_4read4ReadEL_EEECs4dRV7rdzHEF_18uu_checksum_common.exit420, label %bb.go

bb.go:                                            ; preds = %bb.gn
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !611
  %i.vx = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #22, !noalias !611 ; 4 uses
  %i.vy = icmp eq ptr %i.vx, null
  br i1 %i.vy, label %bb.gp, label %_RNvXNtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB2_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB6_8features8checksum13ChecksumErrorE4fromCs4dRV7rdzHEF_18uu_checksum_common.exit422, !prof !7

bb.gp:                                            ; preds = %bb.go
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #25, !noalias !611
  unreachable

_RNvXNtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB2_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB6_8features8checksum13ChecksumErrorE4fromCs4dRV7rdzHEF_18uu_checksum_common.exit422: ; preds = %bb.go
  store i64 17, ptr %i.vx, align 8
  %.sroa.4489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vx, i64 8
  store ptr %i.vw, ptr %.sroa.4489.0..sroa_idx, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderINtNtBK_5boxed3BoxDNtNtBI_4read4ReadEL_EEECs4dRV7rdzHEF_18uu_checksum_common.exit420

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderINtNtBK_5boxed3BoxDNtNtBI_4read4ReadEL_EEECs4dRV7rdzHEF_18uu_checksum_common.exit420: ; preds = %bb.d, %bb.gn, %_RNvXNtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB2_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB6_8features8checksum13ChecksumErrorE4fromCs4dRV7rdzHEF_18uu_checksum_common.exit422, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.gm, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i419
  %.sroa.13.7 = phi ptr [ %.sroa.13.4, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i419 ], [ @41, %_RNvXNtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB2_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB6_8features8checksum13ChecksumErrorE4fromCs4dRV7rdzHEF_18uu_checksum_common.exit422 ], [ @41, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ %.sroa.13.4, %bb.gm ], [ undef, %bb.gn ], [ undef, %bb.d ]
  %.sroa.0.7 = phi ptr [ %.sroa.0.4, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i419 ], [ %i.vx, %_RNvXNtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB2_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB6_8features8checksum13ChecksumErrorE4fromCs4dRV7rdzHEF_18uu_checksum_common.exit422 ], [ %i.fc, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ %.sroa.0.4, %bb.gm ], [ null, %bb.gn ], [ null, %bb.d ]
  %i.vz = insertvalue { ptr, ptr } poison, ptr %.sroa.0.7, 0
  %i.wa = insertvalue { ptr, ptr } %i.vz, ptr %.sroa.13.7, 1
  ret { ptr, ptr } %i.wa
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum8validate27perform_checksum_validationINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYB3o_INtNtB1w_6borrow6BorrowNtB3q_5OsStrE6borrowEECs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, i8 noundef range(i8 -1, 17) %1, i64 noundef range(i64 0, 2) %2, i64 %3, i24 range(i24 0, 197120) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.13.0.copyload = load ptr, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.15.0.copyload = load ptr, ptr %.sroa.15.0..sroa_idx, align 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %bb.a
  %.sroa.13.0 = phi ptr [ %.sroa.13.0.copyload, %bb.a ], [ %.sroa.13.1, %bb.j ] ; 5 uses
  %.sroa.11.0 = phi ptr [ %.sroa.11.0.copyload, %bb.a ], [ %.sroa.11.143, %bb.j ] ; 3 uses
  %.sroa.8.0 = phi ptr [ %.sroa.8.0.copyload, %bb.a ], [ %.sroa.8.2, %bb.j ] ; 3 uses
  %.sroa.5.0 = phi ptr [ %.sroa.5.0.copyload, %bb.a ], [ %.sroa.5.140, %bb.j ] ; 2 uses
  %.sroa.04.0 = phi i1 [ false, %bb.a ], [ %.sroa.04.1, %bb.j ] ; 2 uses
  %.not.i.i.i.i46 = icmp eq ptr %.sroa.8.0, null
  %i.b = icmp eq ptr %.sroa.8.0, %.sroa.11.0
  %or.cond47 = select i1 %.not.i.i.i.i46, i1 true, i1 %i.b
  br i1 %or.cond47, label %select.unfold.i.i.i, label %.loopexit

select.unfold.i.i.i:                              ; preds = %bb.b, %bb.c
  %.sroa.5.149 = phi ptr [ %i.d, %bb.c ], [ %.sroa.5.0, %bb.b ] ; 6 uses
  %.sroa.11.148 = phi ptr [ %i.g, %bb.c ], [ %.sroa.11.0, %bb.b ]
  %.not.i5.i.i.i = icmp eq ptr %.sroa.5.149, null
  %i.c = icmp eq ptr %.sroa.5.149, %.sroa.7.0.copyload
  %or.cond.i.i.i.i = select i1 %.not.i5.i.i.i, i1 true, i1 %i.c
  br i1 %or.cond.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %select.unfold.i.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.5.149, i64 24 ; 2 uses
  %i.e = getelementptr i8, ptr %.sroa.5.149, i64 8
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !noalias !620, !nonnull !6, !noundef !6 ; 2 uses
  %i.f = getelementptr i8, ptr %.sroa.5.149, i64 16
  %.val4.i.i.i = load i64, ptr %i.f, align 8, !noalias !620, !noundef !6 ; 2 uses
  %.idx = shl nuw nsw i64 %.val4.i.i.i, 5
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.idx ; 2 uses
  %i.h = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.h, label %select.unfold.i.i.i, label %.loopexit

bb.d:                                             ; preds = %select.unfold.i.i.i
  %.not.i7.i.i.i = icmp eq ptr %.sroa.13.0, null
  br i1 %.not.i7.i.i.i, label %bb.f, label %.sink.split.i8.i.i.i

.sink.split.i8.i.i.i:                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.15.0.copyload) ]
  %i.i = icmp eq ptr %.sroa.13.0, %.sroa.15.0.copyload
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.13.0, i64 32
  br i1 %i.i, label %bb.f, label %bb.e

.loopexit:                                        ; preds = %bb.c, %bb.b
  %.sroa.11.1.lcssa = phi ptr [ %.sroa.11.0, %bb.b ], [ %i.g, %bb.c ]
  %.sroa.8.1.lcssa = phi ptr [ %.sroa.8.0, %bb.b ], [ %.val.i.i.i, %bb.c ] ; 2 uses
  %.sroa.5.1.lcssa = phi ptr [ %.sroa.5.0, %bb.b ], [ %i.d, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.8.1.lcssa, i64 32
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %.sink.split.i8.i.i.i
  %.sroa.11.143 = phi ptr [ %.sroa.11.148, %.sink.split.i8.i.i.i ], [ %.sroa.11.1.lcssa, %.loopexit ]
  %.sroa.5.140 = phi ptr [ %.sroa.5.149, %.sink.split.i8.i.i.i ], [ %.sroa.5.1.lcssa, %.loopexit ]
  %.sroa.13.1 = phi ptr [ %i.j, %.sink.split.i8.i.i.i ], [ %.sroa.13.0, %.loopexit ]
  %.sroa.8.2 = phi ptr [ null, %.sink.split.i8.i.i.i ], [ %i.k, %.loopexit ]
  %.sroa.0.0.i.i.i = phi ptr [ %.sroa.13.0, %.sink.split.i8.i.i.i ], [ %.sroa.8.1.lcssa, %.loopexit ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.l = tail call noundef nonnull align 8 ptr %.sroa.0.0.copyload(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i) #22, !noalias !621, !inline_history !0 ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %.val.i = load ptr, ptr %i.m, align 8, !noalias !622, !nonnull !6, !noundef !6
  %i.n = getelementptr i8, ptr %i.l, i64 16
  %.val3.i = load i64, ptr %i.n, align 8, !noalias !622, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtNtCsh036I4OHgIr_6uucore8features8checksum8validate21process_checksum_file(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val3.i, i8 noundef %1, i64 noundef %2, i64 %3, i24 %4) #22
  %i.o = load i64, ptr %i.a, align 8, !range !623, !noundef !6
  switch i64 %i.o, label %default.unreachable [
    i64 -1, label %bb.j
    i64 0, label %bb.k
    i64 1, label %bb.l
    i64 2, label %bb.l
  ]

bb.f:                                             ; preds = %bb.d, %.sink.split.i8.i.i.i
  br i1 %.sroa.04.0, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !624
  %i.p = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #22, !noalias !624 ; 6 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %_RINvMs_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_12USimpleError3newReECs4dRV7rdzHEF_18uu_checksum_common.exit, !prof !7

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #25, !noalias !624
  unreachable

_RINvMs_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_12USimpleError3newReECs4dRV7rdzHEF_18uu_checksum_common.exit: ; preds = %bb.g
  store i64 0, ptr %i.p, align 8
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i32 1, ptr %.sroa.4.0..sroa_idx.i, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %_RINvMs_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_12USimpleError3newReECs4dRV7rdzHEF_18uu_checksum_common.exit, %bb.k
  %.sroa.43.0 = phi ptr [ %i.w, %bb.k ], [ @11, %_RINvMs_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_12USimpleError3newReECs4dRV7rdzHEF_18uu_checksum_common.exit ], [ undef, %bb.f ]
  %.sroa.02.0 = phi ptr [ %i.u, %bb.k ], [ %i.p, %_RINvMs_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_12USimpleError3newReECs4dRV7rdzHEF_18uu_checksum_common.exit ], [ null, %bb.f ]
  %i.r = insertvalue { ptr, ptr } poison, ptr %.sroa.02.0, 0
  %i.s = insertvalue { ptr, ptr } %i.r, ptr %.sroa.43.0, 1
  ret { ptr, ptr } %i.s

bb.j:                                             ; preds = %bb.e, %bb.l
  %.sroa.04.1 = phi i1 [ true, %bb.l ], [ %.sroa.04.0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.k:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !6, !noundef !6
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !6, !align !13, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.l:                                             ; preds = %bb.e, %bb.e
  br label %bb.j
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 16, 73) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
end_hunk_3
begin_hunk_4_@_RNvCs4dRV7rdzHEF_18uu_checksum_common35standalone_checksum_app_with_length:bb.a
  %.sroa.435.0..sroa_idx.i.i54 = getelementptr inbounds nuw i8, ptr %i.f, i64 352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.533.0..sroa_idx.i.i53, i8 0, i64 16, i1 false), !noalias !861
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.435.0..sroa_idx.i.i54, align 8, !noalias !861
  %.sroa.536.0..sroa_idx.i.i55 = getelementptr inbounds nuw i8, ptr %i.f, i64 360
  store i64 0, ptr %.sroa.536.0..sroa_idx.i.i55, align 8, !noalias !861
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %i.bq, align 8, !noalias !861
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 628
  store i32 -1, ptr %i.br, align 4, !noalias !861
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 368
  store i64 0, ptr %i.bs, align 8, !noalias !861
  %.sroa.440.0..sroa_idx.i.i56 = getelementptr inbounds nuw i8, ptr %i.f, i64 376
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.440.0..sroa_idx.i.i56, align 8, !noalias !861
  %.sroa.541.0..sroa_idx.i.i57 = getelementptr inbounds nuw i8, ptr %i.f, i64 384
  %.sroa.443.0..sroa_idx.i.i58 = getelementptr inbounds nuw i8, ptr %i.f, i64 400
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.541.0..sroa_idx.i.i57, i8 0, i64 16, i1 false), !noalias !861
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.443.0..sroa_idx.i.i58, align 8, !noalias !861
  %.sroa.544.0..sroa_idx.i.i59 = getelementptr inbounds nuw i8, ptr %i.f, i64 408
  %.sroa.446.0..sroa_idx.i.i60 = getelementptr inbounds nuw i8, ptr %i.f, i64 424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.544.0..sroa_idx.i.i59, i8 0, i64 16, i1 false), !noalias !861
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.446.0..sroa_idx.i.i60, align 8, !noalias !861
  %.sroa.547.0..sroa_idx.i.i61 = getelementptr inbounds nuw i8, ptr %i.f, i64 432
  store i64 0, ptr %.sroa.547.0..sroa_idx.i.i61, align 8, !noalias !861
  %.sroa.3.0..sroa_idx.i.i62 = getelementptr inbounds nuw i8, ptr %i.f, i64 552
  store i64 -2, ptr %.sroa.3.0..sroa_idx.i.i62, align 8, !noalias !861
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 608
  store ptr null, ptr %i.bt, align 8, !noalias !861
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 0, ptr %i.bu, align 8, !noalias !861
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i64 0, ptr %i.bv, align 8, !noalias !861
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 440
  store i64 0, ptr %i.bw, align 8, !noalias !861
  %.sroa.459.0..sroa_idx.i.i63 = getelementptr inbounds nuw i8, ptr %i.f, i64 448
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.459.0..sroa_idx.i.i63, align 8, !noalias !861
  %.sroa.560.0..sroa_idx.i.i64 = getelementptr inbounds nuw i8, ptr %i.f, i64 456
  %.sroa.661.sroa.4.0..sroa.661.0..sroa_idx.sroa_idx.i.i65 = getelementptr inbounds nuw i8, ptr %i.f, i64 472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.560.0..sroa_idx.i.i64, i8 0, i64 16, i1 false), !noalias !861
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.661.sroa.4.0..sroa.661.0..sroa_idx.sroa_idx.i.i65, align 8, !noalias !861
  %.sroa.661.sroa.5.0..sroa.661.0..sroa_idx.sroa_idx.i.i66 = getelementptr inbounds nuw i8, ptr %i.f, i64 480
  store i64 0, ptr %.sroa.661.sroa.5.0..sroa.661.0..sroa_idx.sroa_idx.i.i66, align 8, !noalias !861
  store ptr @53, ptr %i.bg, align 8, !noalias !861
  store i64 4, ptr %i.bh, align 8, !noalias !861
  store ptr @53, ptr %i.bp, align 8, !noalias !861
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 600
  store i64 4, ptr %i.bx, align 8, !noalias !861
  store i32 116, ptr %i.bo, align 8, !noalias !861
  store i8 2, ptr %i.bk, align 4, !noalias !861
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 496
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !861
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 19) #22, !noalias !861
  %.sroa.010.0.copyload.i = load i64, ptr %i.e, align 8, !noalias !861
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !861
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !861
  store i64 %.sroa.010.0.copyload.i, ptr %i.bi, align 8, !noalias !861
  store ptr %.sroa.2.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !861
  store i64 %.sroa.3.0.copyload.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !861
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.f) #22, !noalias !861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !862
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.c, ptr noundef nonnull align 8 dereferenceable(712) %i.d, i64 712, i1 false), !noalias !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.0.sroa.15.0..sroa_idx.i67 = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.15.0..sroa_idx.i67, i8 0, i64 16, i1 false), !noalias !862
  %.sroa.0.sroa.17.0..sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.17.0..sroa_idx.i68, i8 0, i64 16, i1 false), !noalias !862
  %.sroa.0.sroa.19.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.19.0..sroa_idx.i69, i8 0, i64 16, i1 false), !noalias !862
  %.sroa.0.sroa.21.0..sroa_idx.i70 = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.21.0..sroa_idx.i70, i8 0, i64 16, i1 false), !noalias !862
  %.sroa.0.sroa.23.0..sroa_idx.i71 = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.23.0..sroa_idx.i71, i8 0, i64 16, i1 false), !noalias !862
  %.sroa.0.sroa.25.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.25.0..sroa_idx.i72, i8 0, i64 16, i1 false), !noalias !862
  %.sroa.0.sroa.27.0..sroa_idx.i73 = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.27.0..sroa_idx.i73, i8 0, i64 16, i1 false), !noalias !862
  %.sroa.0.sroa.32.0..sroa_idx.i74 = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.32.0..sroa_idx.i74, i8 0, i64 16, i1 false), !noalias !862
  %.sroa.0.sroa.34.0..sroa_idx.i75 = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.34.0..sroa_idx.i75, i8 0, i64 16, i1 false), !noalias !862
  %.sroa.0.sroa.39.0..sroa_idx.i76 = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.39.0..sroa_idx.i76, i8 0, i64 16, i1 false), !noalias !862
  %.sroa.0.sroa.41.0..sroa_idx.i77 = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.41.0..sroa_idx.i77, i8 0, i64 16, i1 false), !noalias !862
  %.sroa.0.sroa.46.0..sroa_idx.i78 = getelementptr inbounds nuw i8, ptr %i.b, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.46.0..sroa_idx.i78, i8 0, i64 16, i1 false), !noalias !862
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !862
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 19) #22, !noalias !862
  %.sroa.024.0.copyload.i79 = load i64, ptr %i.a, align 8, !noalias !862
  %.sroa.225.0..sroa_idx.i80 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.225.0.copyload.i81 = load ptr, ptr %.sroa.225.0..sroa_idx.i80, align 8, !noalias !862
  %.sroa.326.0..sroa_idx.i82 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.326.0.copyload.i83 = load i64, ptr %.sroa.326.0..sroa_idx.i82, align 8, !noalias !862
  store i64 0, ptr %i.b, align 8, !noalias !862
  %.sroa.0.sroa.5.0..sroa_idx.i84 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.0.sroa.5.0..sroa_idx.i84, align 8, !noalias !862
  %.sroa.0.sroa.7.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %.sroa.0.sroa.7.0..sroa_idx.i85, align 8, !noalias !862
  %.sroa.0.sroa.9.0..sroa_idx.i86 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 0, ptr %.sroa.0.sroa.9.0..sroa_idx.i86, align 8, !noalias !862
  %.sroa.0.sroa.11.0..sroa_idx.i87 = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 -1, ptr %.sroa.0.sroa.11.0..sroa_idx.i87, align 8, !noalias !862
  %.sroa.0.sroa.13.0..sroa_idx.i88 = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 0, ptr %.sroa.0.sroa.13.0..sroa_idx.i88, align 8, !noalias !862
  %.sroa.0.sroa.14.0..sroa_idx.i89 = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.14.0..sroa_idx.i89, align 8, !noalias !862
  %.sroa.0.sroa.16.0..sroa_idx.i90 = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.16.0..sroa_idx.i90, align 8, !noalias !862
  %.sroa.0.sroa.18.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.18.0..sroa_idx.i91, align 8, !noalias !862
  %.sroa.0.sroa.20.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.20.0..sroa_idx.i92, align 8, !noalias !862
  %.sroa.0.sroa.22.0..sroa_idx.i93 = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.22.0..sroa_idx.i93, align 8, !noalias !862
  %.sroa.0.sroa.24.0..sroa_idx.i94 = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.24.0..sroa_idx.i94, align 8, !noalias !862
  %.sroa.0.sroa.26.0..sroa_idx.i95 = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.26.0..sroa_idx.i95, align 8, !noalias !862
  %.sroa.0.sroa.28.0..sroa_idx.i96 = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.28.0..sroa_idx.i96, align 8, !noalias !862
  %.sroa.0.sroa.29.0..sroa_idx.i97 = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %.sroa.0.sroa.31.0..sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.29.0..sroa_idx.i97, i8 0, i64 16, i1 false), !noalias !862
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.31.0..sroa_idx.i98, align 8, !noalias !862
  %.sroa.0.sroa.33.0..sroa_idx.i99 = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0.sroa.33.0..sroa_idx.i99, align 8, !noalias !862
  %.sroa.0.sroa.35.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.35.0..sroa_idx.i100, align 8, !noalias !862
  %.sroa.0.sroa.36.0..sroa_idx.i101 = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %.sroa.0.sroa.38.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.36.0..sroa_idx.i101, i8 0, i64 16, i1 false), !noalias !862
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.38.0..sroa_idx.i102, align 8, !noalias !862
  %.sroa.0.sroa.40.0..sroa_idx.i103 = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.40.0..sroa_idx.i103, align 8, !noalias !862
  %.sroa.0.sroa.42.0..sroa_idx.i104 = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.42.0..sroa_idx.i104, align 8, !noalias !862
  %.sroa.0.sroa.43.0..sroa_idx.i105 = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  %.sroa.0.sroa.45.0..sroa_idx.i106 = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.43.0..sroa_idx.i105, i8 0, i64 16, i1 false), !noalias !862
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.45.0..sroa_idx.i106, align 8, !noalias !862
  %.sroa.0.sroa.47.0..sroa_idx.i107 = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.47.0..sroa_idx.i107, align 8, !noalias !862
  %.sroa.0.sroa.48.0..sroa_idx.i108 = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  store i64 0, ptr %.sroa.0.sroa.48.0..sroa_idx.i108, align 8, !noalias !862
  %.sroa.4.0..sroa_idx2.i109 = getelementptr inbounds nuw i8, ptr %i.b, i64 488
  store i64 %.sroa.024.0.copyload.i79, ptr %.sroa.4.0..sroa_idx2.i109, align 8, !noalias !862
  %.sroa.6.0..sroa_idx4.i110 = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  store ptr %.sroa.225.0.copyload.i81, ptr %.sroa.6.0..sroa_idx4.i110, align 8, !noalias !862
  %.sroa.7.0..sroa_idx6.i111 = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  store i64 %.sroa.326.0.copyload.i83, ptr %.sroa.7.0..sroa_idx6.i111, align 8, !noalias !862
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx6.sroa_idx.i112 = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  store i64 -1, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx6.sroa_idx.i112, align 8, !noalias !862
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx6.sroa_idx.i113 = getelementptr inbounds nuw i8, ptr %i.b, i64 552
  store i64 -2, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx6.sroa_idx.i113, align 8, !noalias !862
  %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx6.sroa_idx.i114 = getelementptr inbounds nuw i8, ptr %i.b, i64 576
  store ptr @58, ptr %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx6.sroa_idx.i114, align 8, !noalias !862
  %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx6.sroa_idx.i115 = getelementptr inbounds nuw i8, ptr %i.b, i64 584
  store i64 4, ptr %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx6.sroa_idx.i115, align 8, !noalias !862
  %.sroa.7.sroa.11.0..sroa.7.0..sroa_idx6.sroa_idx.i116 = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  store ptr @58, ptr %.sroa.7.sroa.11.0..sroa.7.0..sroa_idx6.sroa_idx.i116, align 8, !noalias !862
  %.sroa.7.sroa.12.0..sroa.7.0..sroa_idx6.sroa_idx.i117 = getelementptr inbounds nuw i8, ptr %i.b, i64 600
  store i64 4, ptr %.sroa.7.sroa.12.0..sroa.7.0..sroa_idx6.sroa_idx.i117, align 8, !noalias !862
  %.sroa.7.sroa.13.0..sroa.7.0..sroa_idx6.sroa_idx.i118 = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  store ptr null, ptr %.sroa.7.sroa.13.0..sroa.7.0..sroa_idx6.sroa_idx.i118, align 8, !noalias !862
  %.sroa.7.sroa.15.0..sroa.7.0..sroa_idx6.sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %i.b, i64 624
  store i32 122, ptr %.sroa.7.sroa.15.0..sroa.7.0..sroa_idx6.sroa_idx.i119, align 8, !noalias !862
  %.sroa.7.sroa.16.0..sroa.7.0..sroa_idx6.sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %i.b, i64 628
  store i32 -1, ptr %.sroa.7.sroa.16.0..sroa.7.0..sroa_idx6.sroa_idx.i120, align 4, !noalias !862
  %.sroa.7.sroa.17.0..sroa.7.0..sroa_idx6.sroa_idx.i121 = getelementptr inbounds nuw i8, ptr %i.b, i64 632
  store i32 0, ptr %.sroa.7.sroa.17.0..sroa.7.0..sroa_idx6.sroa_idx.i121, align 8, !noalias !862
  %.sroa.7.sroa.18.0..sroa.7.0..sroa_idx6.sroa_idx.i122 = getelementptr inbounds nuw i8, ptr %i.b, i64 636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !862
  store i8 2, ptr %.sroa.7.sroa.18.0..sroa.7.0..sroa_idx6.sroa_idx.i122, align 4, !noalias !862
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.b) #22, !noalias !862
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(712) %i.c, i64 712, i1 false), !noalias !863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs4dRV7rdzHEF_18uu_checksum_common(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 16, 73) %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = icmp ugt i64 %i.b, 9223372036854775800
  %or.cond.not = or i1 %i.c, %i.d
  br i1 %or.cond.not, label %bb.f, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %3 = mul nuw i64 %2, %.0.val                    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %i.b, %3
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %3, i64 noundef 8, i64 noundef range(i64 0, 9223372036854775801) %i.b) #22
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.i = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, 9) 8) #22
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit ], [ %i.i, %bb.d ] ; 2 uses
  %i.j = icmp eq ptr %.pn8, null
  br i1 %i.j, label %bb.e, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread

bb.e:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.k, align 8
  br label %bb.f

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %.pn8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit ], [ inttoptr (i64 8 to ptr), %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.l, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread ], [ 1, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.m, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintE9drop_slowCs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECs4dRV7rdzHEF_18uu_checksum_common.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECs4dRV7rdzHEF_18uu_checksum_common.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef 8) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECs4dRV7rdzHEF_18uu_checksum_common.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECs4dRV7rdzHEF_18uu_checksum_common.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit(i64 noundef range(i64 4, 9) %0, i64 noundef range(i64 4, 41) %1) unnamed_addr #2 {
bb.a:
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.a = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef range(i64 1, 9) %0) #22 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef %0, i64 noundef %1) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXNtCs4dRV7rdzHEF_18uu_checksum_common3cliNtNtNtCsgNwXemyrBWj_12clap_builder7builder7command7CommandNtB2_15ChecksumCommand10with_debug(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) initializes((0, 712)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(712) %1) unnamed_addr #0 {
_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECs4dRV7rdzHEF_18uu_checksum_common.exit:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [640 x i8], align 8               ; 53 uses
  %i.c = alloca [712 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.c, ptr noundef nonnull align 8 dereferenceable(712) %1, i64 712, i1 false)
  %.sroa.0.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.15.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.17.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.19.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.21.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.23.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.25.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.27.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.32.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.34.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.39.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.41.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.46.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 20) #22
  %.sroa.024.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  store i64 0, ptr %i.b, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 0, ptr %.sroa.0.sroa.9.0..sroa_idx, align 8
  %.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 -1, ptr %.sroa.0.sroa.11.0..sroa_idx, align 8
  %.sroa.0.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 0, ptr %.sroa.0.sroa.13.0..sroa_idx, align 8
  %.sroa.0.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.14.0..sroa_idx, align 8
  %.sroa.0.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.16.0..sroa_idx, align 8
  %.sroa.0.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.18.0..sroa_idx, align 8
  %.sroa.0.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.20.0..sroa_idx, align 8
  %.sroa.0.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.22.0..sroa_idx, align 8
  %.sroa.0.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.24.0..sroa_idx, align 8
  %.sroa.0.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.26.0..sroa_idx, align 8
  %.sroa.0.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.28.0..sroa_idx, align 8
  %.sroa.0.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %.sroa.0.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.29.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.31.0..sroa_idx, align 8
  %.sroa.0.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0.sroa.33.0..sroa_idx, align 8
  %.sroa.0.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.35.0..sroa_idx, align 8
  %.sroa.0.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %.sroa.0.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.36.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.38.0..sroa_idx, align 8
  %.sroa.0.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.40.0..sroa_idx, align 8
  %.sroa.0.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.42.0..sroa_idx, align 8
  %.sroa.0.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  %.sroa.0.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.43.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.45.0..sroa_idx, align 8
  %.sroa.0.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.47.0..sroa_idx, align 8
  %.sroa.0.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  store i64 0, ptr %.sroa.0.sroa.48.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 488
  store i64 %.sroa.024.0.copyload, ptr %.sroa.4.0..sroa_idx2, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  store ptr %.sroa.2.0.copyload, ptr %.sroa.6.0..sroa_idx4, align 8
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  store i64 %.sroa.3.0.copyload, ptr %.sroa.7.0..sroa_idx6, align 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  store i64 -1, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx6.sroa_idx, align 8
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 552
  store i64 -2, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx6.sroa_idx, align 8
  %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 576
  store ptr @63, ptr %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx6.sroa_idx, align 8
  %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 584
  store i64 5, ptr %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx6.sroa_idx, align 8
  %.sroa.7.sroa.11.0..sroa.7.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  store ptr @63, ptr %.sroa.7.sroa.11.0..sroa.7.0..sroa_idx6.sroa_idx, align 8
  %.sroa.7.sroa.12.0..sroa.7.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 600
  store i64 5, ptr %.sroa.7.sroa.12.0..sroa.7.0..sroa_idx6.sroa_idx, align 8
  %.sroa.7.sroa.13.0..sroa.7.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  store ptr null, ptr %.sroa.7.sroa.13.0..sroa.7.0..sroa_idx6.sroa_idx, align 8
  %.sroa.7.sroa.15.0..sroa.7.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 624
  store i32 -1, ptr %.sroa.7.sroa.15.0..sroa.7.0..sroa_idx6.sroa_idx, align 8
  %.sroa.7.sroa.16.0..sroa.7.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 628
  store i32 -1, ptr %.sroa.7.sroa.16.0..sroa.7.0..sroa_idx6.sroa_idx, align 4
  %.sroa.7.sroa.17.0..sroa.7.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 632
  store i32 0, ptr %.sroa.7.sroa.17.0..sroa.7.0..sroa_idx6.sroa_idx, align 8
  %.sroa.7.sroa.18.0..sroa.7.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 2, ptr %.sroa.7.sroa.18.0..sroa.7.0..sroa_idx6.sroa_idx, align 4
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.b) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(712) %i.c, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
end_hunk_4
begin_hunk_5_@_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRNtNtNtCsh036I4OHgIr_6uucore8features8checksum10HashLengthNtB6_5Debug3fmtCs4dRV7rdzHEF_18uu_checksum_common:bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !align !13, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1152
  store ptr %i.b, ptr %i.a, align 8, !noalias !1152
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @121, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @122, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @120) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1152
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRNtNtNtCsh036I4OHgIr_6uucore8features8checksum9ShaLengthNtB6_5Debug3fmtCs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %.val = load i8, ptr %i.a, align 1, !range !1153, !noundef !6
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRNtNtNtCsh036I4OHgIr_6uucore8features8checksum9ShaLengthNtB6_5Debug3fmtCs4dRV7rdzHEF_18uu_checksum_common, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load, i64 noundef 6) #22
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRhNtB6_5Debug3fmtCs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !1156, !noundef !6 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXse_NtNtCs6JMX4GRUq9U_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #22
  br label %_RNvXsU_NtNtCs6JMX4GRUq9U_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXNtNtNtCs6JMX4GRUq9U_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #22
  br label %_RNvXsU_NtNtCs6JMX4GRUq9U_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsg_NtNtCs6JMX4GRUq9U_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #22
  br label %_RNvXsU_NtNtCs6JMX4GRUq9U_4core3fmt3numhNtB7_5Debug3fmt.exit

_RNvXsU_NtNtCs6JMX4GRUq9U_4core3fmt3numhNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRjNtB6_5Debug3fmtCs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !13, !noundef !6 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !1159, !noundef !6 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXs6_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #22
  br label %_RNvXsZ_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #22
  br label %_RNvXsZ_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXs8_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #22
  br label %_RNvXsZ_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_5Debug3fmt.exit

_RNvXsZ_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRmNtB6_5Debug3fmtCs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !21, !noundef !6 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !1162, !noundef !6 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXsu_NtNtCs6JMX4GRUq9U_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #22
  br label %_RNvXsW_NtNtCs6JMX4GRUq9U_4core3fmt3nummNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #22
  br label %_RNvXsW_NtNtCs6JMX4GRUq9U_4core3fmt3nummNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsw_NtNtCs6JMX4GRUq9U_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #22
  br label %_RNvXsW_NtNtCs6JMX4GRUq9U_4core3fmt3nummNtB7_5Debug3fmt.exit

_RNvXsW_NtNtCs6JMX4GRUq9U_4core3fmt3nummNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRtNtB6_5Debug3fmtCs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !22, !noundef !6 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !1165, !noundef !6 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXsm_NtNtCs6JMX4GRUq9U_4core3fmt3numtNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #22
  br label %_RNvXsV_NtNtCs6JMX4GRUq9U_4core3fmt3numtNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs3_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3imptNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #22
  br label %_RNvXsV_NtNtCs6JMX4GRUq9U_4core3fmt3numtNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXso_NtNtCs6JMX4GRUq9U_4core3fmt3numtNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #22
  br label %_RNvXsV_NtNtCs6JMX4GRUq9U_4core3fmt3numtNtB7_5Debug3fmt.exit

_RNvXsV_NtNtCs6JMX4GRUq9U_4core3fmt3numtNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRNtNtCs7tKScEop1B6_5alloc6string6StringNtB6_7Display3fmtCs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1168)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1168, !nonnull !6, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1168, !noundef !6
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #22, !noalias !1168
  ret i1 %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #22
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRmNtB6_7Display3fmtCs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !21, !noundef !6
  %i.b = tail call noundef zeroext i1 @_RNvXs8_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #22
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRtNtB6_7Display3fmtCs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !22, !noundef !6
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3imptNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #22
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs2_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_12USimpleErrorNtB5_6UError4code(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !noundef !6
  ret i32 %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_5StdinNtNtNtCs7tKScEop1B6_5alloc2io4read4Read16is_read_vectored(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call { ptr, i1 } @_RNvMs1_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_5Stdin4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) #22 ; 2 uses
  %i.b = extractvalue { ptr, i1 } %i.a, 0         ; 4 uses
  %1 = extractvalue { ptr, i1 } %i.a, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.b) ]
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br i1 %1, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #23
  br i1 %i.g, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.c monotonic, align 1
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw xchg ptr %i.b, i32 0 release, align 4
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockECs4dRV7rdzHEF_18uu_checksum_common.exit, !prof !7

bb.e:                                             ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  tail call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.b) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockECs4dRV7rdzHEF_18uu_checksum_common.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockECs4dRV7rdzHEF_18uu_checksum_common.exit: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.e
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i32 @_RNvXs4_NtNtCsh036I4OHgIr_6uucore8features8checksumNtB5_13ChecksumErrorNtNtNtB9_4mods5error6UError4code(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret i32 1
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsQ_NtNtCs6JMX4GRUq9U_4core3fmt3numlNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsv_NtNtCs6JMX4GRUq9U_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #22
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsx_NtNtCs6JMX4GRUq9U_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs6JMX4GRUq9U_4core6optionINtB5_6OptionNtNtCs7tKScEop1B6_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !8, !noundef !6
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @106) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 4) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read16is_read_vectored(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret i1 true
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_14AnyValueParser10parse_ref_Cs4dRV7rdzHEF_18uu_checksum_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i8 range(i8 0, 3) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [24 x i8], align 8            ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsr_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_16TypedValueParser9parse_ref(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #22
  %i.b = load i64, ptr %i.a, align 8, !range !8, !noundef !6
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
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1171
  %i.g = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 40, i64 noundef range(i64 1, 9) 8) #22, !noalias !1171 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !7

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #25, !noalias !1171
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
  store ptr @109, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @103, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_14AnyValueParser15possible_valuesCs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXsr_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_16TypedValueParser15possible_values(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) #22
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_14AnyValueParser7type_idCs4dRV7rdzHEF_18uu_checksum_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @103, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_14AnyValueParser9clone_anyCs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !6 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  %i.d = mul nuw nsw i64 %.val1, 72               ; 2 uses
  %i.e = icmp eq i64 %.val1, 0
  br i1 %i.e, label %_RNvXs1r_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB6_20PossibleValuesParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %bb.a
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1194
  %i.f = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.d, i64 noundef range(i64 1, 9) 8) #22, !noalias !1194 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %.lr.ph.i.i.i

bb.b:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.d) #25, !noalias !1195
  unreachable

.lr.ph.i.i.i:                                     ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  %i.h = getelementptr inbounds nuw [72 x i8], ptr %.val, i64 %.val1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.0.054.i.i.i = phi ptr [ %.val, %.lr.ph.i.i.i ], [ %i.l, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i ] ; 8 uses
  %.sroa.7.053.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.m, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i ] ; 2 uses
  %.sroa.10.052.i.i.i = phi i64 [ %.val1, %.lr.ph.i.i.i ], [ %i.j, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i ]
  %i.j = add nsw i64 %.sroa.10.052.i.i.i, -1      ; 2 uses
  %i.k = icmp eq ptr %.sroa.0.054.i.i.i, %i.h
  br i1 %i.k, label %_RNvXs1r_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB6_20PossibleValuesParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 72
end_hunk_5
begin_hunk_6_@_RNvYINtNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmt7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockENtNtBb_3fmt5Write10write_charCs4dRV7rdzHEF_18uu_checksum_common:bb.a
  %i.q = trunc nuw nsw i32 %i.p to i8
  %i.r = or disjoint i8 %i.q, -16
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.s = trunc nuw nsw i32 %1 to i8
  store i8 %i.s, ptr %i.b, align 4, !alias.scope !1218
  br label %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.t = or disjoint i8 %i.i, -64
  store i8 %i.t, ptr %i.b, align 4, !alias.scope !1218
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.g, ptr %i.u, align 1, !alias.scope !1218
  br label %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i32 %1, 65536
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = or disjoint i8 %i.m, -32
  store i8 %i.w, ptr %i.b, align 4, !alias.scope !1218
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.k, ptr %i.x, align 1, !alias.scope !1218
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.g, ptr %i.y, align 2, !alias.scope !1218
  br label %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.r, ptr %i.b, align 4, !alias.scope !1218
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.o, ptr %i.z, align 1, !alias.scope !1218
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.k, ptr %i.aa, align 2, !alias.scope !1218
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.g, ptr %i.ab, align 1, !alias.scope !1218
  br label %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  %i.ac = load ptr, ptr %0, align 8, !alias.scope !1219, !nonnull !6, !align !13, !noundef !6
  %i.ad = call noundef ptr @_RNvXss_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StderrLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %.sroa.0.05.i) #22, !noalias !1219 ; 2 uses
  %.not.i = icmp ne ptr %i.ad, null               ; 2 uses
  br i1 %.not.i, label %bb.h, label %_RNvXNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockENtNtB8_3fmt5Write9write_strCs4dRV7rdzHEF_18uu_checksum_common.exit

bb.h:                                             ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.ae, align 8, !alias.scope !1219, !noundef !6 ; 4 uses
  %i.af = icmp eq ptr %.val.i, null
  br i1 %i.af, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs4dRV7rdzHEF_18uu_checksum_common.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1220
  %i.ag = ptrtoint ptr %.val.i to i64             ; 2 uses
  %i.ah = and i64 %i.ag, 3
  switch i64 %i.ah, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i
    i64 1, label %bb.k
  ], !prof !9

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.aj = and i64 %i.ag, 1095216660480
  %i.ak = icmp ne i64 %i.aj, 1095216660480
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.assume(i1 %i.ak)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %.val.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !1221, !noalias !1220
  store i8 3, ptr %i.a, align 8, !alias.scope !1221, !noalias !1220
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am) #22, !noalias !1219
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1220
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs4dRV7rdzHEF_18uu_checksum_common.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs4dRV7rdzHEF_18uu_checksum_common.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i.i, %bb.h
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !1219
  br label %_RNvXNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockENtNtB8_3fmt5Write9write_strCs4dRV7rdzHEF_18uu_checksum_common.exit

_RNvXNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockENtNtB8_3fmt5Write9write_strCs4dRV7rdzHEF_18uu_checksum_common.exit: ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs4dRV7rdzHEF_18uu_checksum_common.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.not.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmt7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockENtNtBb_3fmt5Write9write_fmtCs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvXs_NvNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_fmtQINtNvNtNtBa_2io5write17default_write_fmt7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockENtB4_12SpecWriteFmt14spec_write_fmtCs4dRV7rdzHEF_18uu_checksum_common.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @12, ptr noundef nonnull %1, ptr noundef nonnull %2) #22, !inline_history !1222
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvYNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read10read_exactCs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree noundef align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactNtNtCs2vKOLqTMYjT_3std2fs4FileECs4dRV7rdzHEF_18uu_checksum_common.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %.lr.ph.i
  %.sroa.0.026.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.0.118.i, %bb.j ] ; 3 uses
  %.sroa.7.025.i = phi i64 [ %2, %.lr.ph.i ], [ %.sroa.7.116.i, %bb.j ] ; 6 uses
  %i.d = call { i64, ptr } @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull %.sroa.0.026.i, i64 noundef %.sroa.7.025.i) #22 ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 11 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 8 uses
  %i.h = trunc nuw i64 %i.e to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.i = and i64 %i.g, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %.split.i
    i64 3, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i
    i64 0, label %.split13.i
    i64 1, label %.split12.i
  ], !prof !9

default.unreachable:                              ; preds = %bb.c
  unreachable

.split.i:                                         ; preds = %bb.c
  %i.j = lshr i64 %i.g, 32
  %i.k = trunc nuw i64 %i.j to i32
  %i.l = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #22
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !6, !noundef !6
  %i.o = call noundef zeroext i1 %i.n(i32 noundef %i.k) #22, !inline_history !1223
  br i1 %i.o, label %.thread.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactNtNtCs2vKOLqTMYjT_3std2fs4FileECs4dRV7rdzHEF_18uu_checksum_common.exit

.split13.i:                                       ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.q = load i8, ptr %i.p, align 8, !range !17, !noundef !6
  %i.r = icmp eq i8 %i.q, 35
  br i1 %i.r, label %.thread.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactNtNtCs2vKOLqTMYjT_3std2fs4FileECs4dRV7rdzHEF_18uu_checksum_common.exit

.split12.i:                                       ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.f, i64 31
  %i.t = load i8, ptr %i.s, align 8, !range !17, !noundef !6
  %i.u = icmp eq i8 %i.t, 35
  br i1 %i.u, label %bb.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactNtNtCs2vKOLqTMYjT_3std2fs4FileECs4dRV7rdzHEF_18uu_checksum_common.exit

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i: ; preds = %bb.c
  %i.v = lshr i64 %i.g, 32
  %i.w = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i = trunc i64 %i.v to i8
  %spec.select.i.i.i.i = select i1 %i.w, i8 %switch.idx.cast.i.i.i.i, i8 -1 ; 2 uses
  %i.x = icmp ne i8 %spec.select.i.i.i.i, -1
  call void @llvm.assume(i1 %i.x)
  %i.y = icmp eq i8 %spec.select.i.i.i.i, 35
  br i1 %i.y, label %bb.h, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactNtNtCs2vKOLqTMYjT_3std2fs4FileECs4dRV7rdzHEF_18uu_checksum_common.exit

bb.d:                                             ; preds = %bb.b
  %i.z = icmp eq ptr %i.f, null
  br i1 %i.z, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactNtNtCs2vKOLqTMYjT_3std2fs4FileECs4dRV7rdzHEF_18uu_checksum_common.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = icmp ult i64 %.sroa.7.025.i, %i.g
  br i1 %i.aa, label %bb.f, label %bb.g, !prof !7

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.g, i64 noundef %.sroa.7.025.i, i64 noundef %.sroa.7.025.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #21
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ab = sub nuw nsw i64 %.sroa.7.025.i, %i.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i, i64 %i.g
  br label %bb.j

.thread.i:                                        ; preds = %.split13.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1229
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i

bb.h:                                             ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1229
  %i.ad = and i64 %i.g, 1095216660480
  %i.ae = icmp ne i64 %i.ad, 1095216660480
  call void @llvm.assume(i1 %i.w)
  call void @llvm.assume(i1 %i.ae)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i

bb.i:                                             ; preds = %.split12.i
  %i.af = getelementptr i8, ptr %i.f, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1229
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  store ptr %i.af, ptr %i.c, align 8, !alias.scope !1230, !noalias !1229
  store i8 3, ptr %i.a, align 8, !alias.scope !1230, !noalias !1229
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i: ; preds = %bb.i, %bb.h, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1229
  br label %bb.j

bb.j:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i, %bb.g
  %.sroa.0.118.i = phi ptr [ %.sroa.0.026.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i ], [ %i.ac, %bb.g ]
  %.sroa.7.116.i = phi i64 [ %.sroa.7.025.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i ], [ %i.ab, %bb.g ] ; 2 uses
  %i.ag = icmp eq i64 %.sroa.7.116.i, 0
  br i1 %i.ag, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactNtNtCs2vKOLqTMYjT_3std2fs4FileECs4dRV7rdzHEF_18uu_checksum_common.exit, label %bb.b

_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactNtNtCs2vKOLqTMYjT_3std2fs4FileECs4dRV7rdzHEF_18uu_checksum_common.exit: ; preds = %.split.i, %.split13.i, %.split12.i, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %bb.d, %bb.j, %bb.a
  %.sroa.09.0.i = phi ptr [ null, %bb.a ], [ %i.f, %.split13.i ], [ null, %bb.j ], [ %i.f, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i ], [ %i.f, %.split.i ], [ %i.f, %.split12.i ], [ @19, %bb.d ]
  ret ptr %.sroa.09.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvYNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read14read_buf_exactCs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree noundef align 4 dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.b, align 8, !alias.scope !1237, !noundef !6
  %i.e = load i64, ptr %i.c, align 8, !alias.scope !1237, !noundef !6 ; 2 uses
  %.not9.i = icmp eq i64 %i.d, %i.e
  br i1 %.not9.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactNtNtCs2vKOLqTMYjT_3std2fs4FileECs4dRV7rdzHEF_18uu_checksum_common.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %.lr.ph.i
  %i.g = phi i64 [ %i.e, %.lr.ph.i ], [ %i.af, %.backedge.i ]
  %i.h = call noundef ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #22 ; 10 uses
  %.not2.i = icmp eq ptr %i.h, null
  br i1 %.not2.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.j = and i64 %i.i, 3
  switch i64 %i.j, label %default.unreachable [
    i64 2, label %.split.i
    i64 3, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i
    i64 0, label %.split7.i
    i64 1, label %.split6.i
  ], !prof !9

default.unreachable:                              ; preds = %bb.c
  unreachable

.split.i:                                         ; preds = %bb.c
  %i.k = lshr i64 %i.i, 32
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #22
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !6, !noundef !6
  %i.p = call noundef zeroext i1 %i.o(i32 noundef %i.l) #22, !inline_history !1233
  br i1 %i.p, label %.thread.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactNtNtCs2vKOLqTMYjT_3std2fs4FileECs4dRV7rdzHEF_18uu_checksum_common.exit

.split7.i:                                        ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.r = load i8, ptr %i.q, align 8, !range !17, !noundef !6
  %i.s = icmp eq i8 %i.r, 35
  br i1 %i.s, label %.thread.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactNtNtCs2vKOLqTMYjT_3std2fs4FileECs4dRV7rdzHEF_18uu_checksum_common.exit

.split6.i:                                        ; preds = %bb.c
  %i.t = getelementptr i8, ptr %i.h, i64 31
  %i.u = load i8, ptr %i.t, align 8, !range !17, !noundef !6
  %i.v = icmp eq i8 %i.u, 35
  br i1 %i.v, label %bb.f, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactNtNtCs2vKOLqTMYjT_3std2fs4FileECs4dRV7rdzHEF_18uu_checksum_common.exit

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i: ; preds = %bb.c
  %i.w = lshr i64 %i.i, 32
  %i.x = icmp ult ptr %i.h, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i = trunc i64 %i.w to i8
  %spec.select.i.i.i.i = select i1 %i.x, i8 %switch.idx.cast.i.i.i.i, i8 -1 ; 2 uses
  %i.y = icmp ne i8 %spec.select.i.i.i.i, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp eq i8 %spec.select.i.i.i.i, 35
  br i1 %i.z, label %bb.e, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactNtNtCs2vKOLqTMYjT_3std2fs4FileECs4dRV7rdzHEF_18uu_checksum_common.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = load i64, ptr %i.c, align 8, !alias.scope !1237, !noundef !6 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.g
  br i1 %i.ab, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactNtNtCs2vKOLqTMYjT_3std2fs4FileECs4dRV7rdzHEF_18uu_checksum_common.exit, label %.backedge.i

.thread.i:                                        ; preds = %.split7.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1238
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i

bb.e:                                             ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1238
  %i.ac = and i64 %i.i, 1095216660480
  %i.ad = icmp ne i64 %i.ac, 1095216660480
  call void @llvm.assume(i1 %i.x)
  call void @llvm.assume(i1 %i.ad)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i

bb.f:                                             ; preds = %.split6.i
  %i.ae = getelementptr i8, ptr %i.h, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1238
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  store ptr %i.ae, ptr %i.f, align 8, !alias.scope !1239, !noalias !1238
  store i8 3, ptr %i.a, align 8, !alias.scope !1239, !noalias !1238
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i: ; preds = %bb.f, %bb.e, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1238
  %.pre.i = load i64, ptr %i.c, align 8, !alias.scope !1237
  br label %.backedge.i

.backedge.i:                                      ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i, %bb.d
  %i.af = phi i64 [ %.pre.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit.i ], [ %i.aa, %bb.d ] ; 2 uses
  %i.ag = load i64, ptr %i.b, align 8, !alias.scope !1237, !noundef !6
  %.not.i = icmp eq i64 %i.ag, %i.af
  br i1 %.not.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactNtNtCs2vKOLqTMYjT_3std2fs4FileECs4dRV7rdzHEF_18uu_checksum_common.exit, label %bb.b

_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactNtNtCs2vKOLqTMYjT_3std2fs4FileECs4dRV7rdzHEF_18uu_checksum_common.exit: ; preds = %.split.i, %.split7.i, %.split6.i, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %bb.d, %.backedge.i, %bb.a
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ null, %.backedge.i ], [ %i.h, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i ], [ %i.h, %.split.i ], [ %i.h, %.split6.i ], [ @19, %bb.d ], [ %i.h, %.split7.i ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtB4_6UError5usageCs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @164, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtNtCs6JMX4GRUq9U_4core5error5Error6sourceCs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCs4dRV7rdzHEF_18uu_checksum_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @165, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i32 @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtB4_6UError4codeCs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtB4_6UError5usageCs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @164, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtNtCs6JMX4GRUq9U_4core5error5Error6sourceCs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCs4dRV7rdzHEF_18uu_checksum_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @166, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore8features3sum12DigestWriterNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 1, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.k
  %.sroa.0.024 = phi ptr [ %1, %bb.a ], [ %.sroa.0.116, %bb.k ] ; 3 uses
  %.sroa.6.023 = phi i64 [ %2, %bb.a ], [ %.sroa.6.114, %bb.k ] ; 6 uses
  %i.c = call { i64, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore8features3sumNtB5_12DigestWriterNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.024, i64 noundef %.sroa.6.023) #22 ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0
  %i.e = extractvalue { i64, ptr } %i.c, 1        ; 12 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 8 uses
  %i.g = trunc nuw i64 %i.d to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.h = and i64 %i.f, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit
    i64 0, label %.split11
    i64 1, label %.split10
  ], !prof !9

default.unreachable:                              ; preds = %bb.c
  unreachable

.split:                                           ; preds = %bb.c
  %i.i = lshr i64 %i.f, 32
  %i.j = trunc nuw i64 %i.i to i32
  %i.k = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #22
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6
  %i.n = call noundef zeroext i1 %i.m(i32 noundef %i.j) #22, !inline_history !1240
  br i1 %i.n, label %.thread, label %bb.h

.split11:                                         ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.p = load i8, ptr %i.o, align 8, !range !17, !noundef !6
  %i.q = icmp eq i8 %i.p, 35
  br i1 %i.q, label %.thread, label %bb.h

.split10:                                         ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.e, i64 31
  %i.s = load i8, ptr %i.r, align 8, !range !17, !noundef !6
  %i.t = icmp eq i8 %i.s, 35
  br i1 %i.t, label %bb.j, label %bb.h

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %bb.c
  %i.u = lshr i64 %i.f, 32
  %i.v = icmp ult ptr %i.e, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.u to i8
  %spec.select.i.i.i = select i1 %i.v, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.w = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.w)
  %i.x = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.x, label %bb.i, label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.y = icmp eq ptr %i.e, null
  br i1 %i.y, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = icmp ult i64 %.sroa.6.023, %i.f
  br i1 %i.z, label %bb.f, label %bb.g, !prof !7

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.f, i64 noundef %.sroa.6.023, i64 noundef %.sroa.6.023, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #21
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.aa = sub nuw nsw i64 %.sroa.6.023, %i.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.024, i64 %i.f
  br label %bb.k

bb.h:                                             ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split10, %.split11, %bb.d, %bb.k
  %.sroa.07.1 = phi ptr [ null, %bb.k ], [ @168, %bb.d ], [ %i.e, %.split11 ], [ %i.e, %.split10 ], [ %i.e, %.split ], [ %i.e, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  ret ptr %.sroa.07.1

.thread:                                          ; preds = %.split11, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit

bb.i:                                             ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = icmp ult ptr %i.e, inttoptr (i64 188978561024 to ptr)
  %i.ad = and i64 %i.f, 1095216660480
  %i.ae = icmp ne i64 %i.ad, 1095216660480
  call void @llvm.assume(i1 %i.ac)
  call void @llvm.assume(i1 %i.ae)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4dRV7rdzHEF_18uu_checksum_common.exit

bb.j:                                             ; preds = %.split10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.af = getelementptr i8, ptr %i.e, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
end_hunk_6
