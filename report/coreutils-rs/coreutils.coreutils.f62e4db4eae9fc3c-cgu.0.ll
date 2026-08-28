Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/coreutils.coreutils.f62e4db4eae9fc3c-cgu.0?download=true
inline.NumInlined: 9927
inline.NumDeleted: 3951
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB8_6cloned6ClonedINtNtNtBc_5slice4iter4IterB1J_EEENtNtNtBa_6traits8iterator8Iterator7collectINtB10_3VecB1J_EECsl8pJiQOn4hA_9coreutils:bb.a
  %i.as = icmp eq i64 %.sroa.6.0.copyload.i, 0
  br i1 %i.as, label %_RINvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4folduQNCINvNvB1G_8for_each4callBX_NCINvMsk_B8_INtB8_3VecBX_E14extend_trustedINtNtNtB1M_8adapters5chain5ChainBI_INtNtB3V_6cloned6ClonedINtNtNtB1O_5slice4iter4IterBX_EEEE0E0ECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.at = mul nuw i64 %.sroa.6.0.copyload.i, 24
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.copyload.i, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !30636
  br label %_RINvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4folduQNCINvNvB1G_8for_each4callBX_NCINvMsk_B8_INtB8_3VecBX_E14extend_trustedINtNtNtB1M_8adapters5chain5ChainBI_INtNtB3V_6cloned6ClonedINtNtNtB1O_5slice4iter4IterBX_EEEE0E0ECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i

_RINvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4folduQNCINvNvB1G_8for_each4callBX_NCINvMsk_B8_INtB8_3VecBX_E14extend_trustedINtNtNtB1M_8adapters5chain5ChainBI_INtNtB3V_6cloned6ClonedINtNtNtB1O_5slice4iter4IterBX_EEEE0E0ECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i: ; preds = %bb.o, %._crit_edge.i.i.i.i.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i
  %.sroa.5.1.i.i.i.i.i.i = phi i64 [ %i.am, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i ], [ %.sroa.5.0.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ], [ %.sroa.5.0.i.i.i.i.i.i, %bb.o ] ; 3 uses
  br i1 %.not7.i.i.i.i, label %_RINvXsf_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1w_8adapters5chain5ChainINtNtB6_9into_iter8IntoIterBG_EINtNtB2I_6cloned6ClonedINtNtNtB1y_5slice4iter4IterBG_EEEECsl8pJiQOn4hA_9coreutils.exit, label %bb.p

bb.p:                                             ; preds = %_RINvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4folduQNCINvNvB1G_8for_each4callBX_NCINvMsk_B8_INtB8_3VecBX_E14extend_trustedINtNtNtB1M_8adapters5chain5ChainBI_INtNtB3V_6cloned6ClonedINtNtNtB1O_5slice4iter4IterBX_EEEE0E0ECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.copyload.i) ]
  %i.au = icmp eq ptr %.sroa.9.0.copyload.i, %.sroa.10.0.copyload.i
  br i1 %i.au, label %_RINvXsf_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1w_8adapters5chain5ChainINtNtB6_9into_iter8IntoIterBG_EINtNtB2I_6cloned6ClonedINtNtNtB1y_5slice4iter4IterBG_EEEECsl8pJiQOn4hA_9coreutils.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = ptrtoint ptr %.sroa.10.0.copyload.i to i64
  %i.aw = ptrtoint ptr %.sroa.9.0.copyload.i to i64
  %i.ax = sub nuw i64 %i.av, %i.aw
  %i.ay = udiv exact i64 %i.ax, 24
  br label %bb.r

bb.r:                                             ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB3h_3VecBV_E14extend_trustedINtNtB6_5chain5ChainINtNtB3h_9into_iter8IntoIterBV_EINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEEE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i, %bb.q
  %i.az = phi i64 [ %.sroa.5.1.i.i.i.i.i.i, %bb.q ], [ %i.bh, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB3h_3VecBV_E14extend_trustedINtNtB6_5chain5ChainINtNtB3h_9into_iter8IntoIterBV_EINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEEE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.q ], [ %i.bi, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB3h_3VecBV_E14extend_trustedINtNtB6_5chain5ChainINtNtB3h_9into_iter8IntoIterBV_EINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEEE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %.sroa.9.0.copyload.i, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %.val11.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bb, align 8, !noalias !30646, !nonnull !12, !noundef !12
  %i.bc = getelementptr i8, ptr %i.ba, i64 16
  %.val12.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bc, align 8, !noalias !30646, !noundef !12 ; 6 uses
  %i.bd = icmp eq i64 %.val12.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bd, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB3h_3VecBV_E14extend_trustedINtNtB6_5chain5ChainINtNtB3h_9into_iter8IntoIterBV_EINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEEE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !30651
  %i.be = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val12.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #45, !noalias !30651 ; 3 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val12.i.i.i.i.i.i.i.i.i) #52, !noalias !30665
  unreachable

bb.u:                                             ; preds = %bb.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.be, ptr nonnull readonly align 1 %.val11.i.i.i.i.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.val12.i.i.i.i.i.i.i.i.i, i1 false), !noalias !30666
  br label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB3h_3VecBV_E14extend_trustedINtNtB6_5chain5ChainINtNtB3h_9into_iter8IntoIterBV_EINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEEE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB3h_3VecBV_E14extend_trustedINtNtB6_5chain5ChainINtNtB3h_9into_iter8IntoIterBV_EINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEEE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.u, %bb.r
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.be, %bb.u ], [ inttoptr (i64 1 to ptr), %bb.r ]
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.az ; 3 uses
  store i64 %.val12.i.i.i.i.i.i.i.i.i, ptr %i.bg, align 8, !noalias !30667
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !30667
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 %.val12.i.i.i.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !30667
  %i.bh = add i64 %i.az, 1                        ; 2 uses
  %i.bi = add nuw i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, %i.ay
  br i1 %i.bj, label %_RINvXsf_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1w_8adapters5chain5ChainINtNtB6_9into_iter8IntoIterBG_EINtNtB2I_6cloned6ClonedINtNtNtB1y_5slice4iter4IterBG_EEEECsl8pJiQOn4hA_9coreutils.exit, label %bb.r

_RINvXsf_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1w_8adapters5chain5ChainINtNtB6_9into_iter8IntoIterBG_EINtNtB2I_6cloned6ClonedINtNtNtB1y_5slice4iter4IterBG_EEEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB3h_3VecBV_E14extend_trustedINtNtB6_5chain5ChainINtNtB3h_9into_iter8IntoIterBV_EINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEEE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i, %.thread.i, %bb.j, %_RINvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4folduQNCINvNvB1G_8for_each4callBX_NCINvMsk_B8_INtB8_3VecBX_E14extend_trustedINtNtNtB1M_8adapters5chain5ChainBI_INtNtB3V_6cloned6ClonedINtNtNtB1O_5slice4iter4IterBX_EEEE0E0ECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i, %bb.p
  %i.bk = phi ptr [ %i.w, %bb.j ], [ %i.w, %bb.p ], [ %i.w, %_RINvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4folduQNCINvNvB1G_8for_each4callBX_NCINvMsk_B8_INtB8_3VecBX_E14extend_trustedINtNtNtB1M_8adapters5chain5ChainBI_INtNtB3V_6cloned6ClonedINtNtNtB1O_5slice4iter4IterBX_EEEE0E0ECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i ], [ %i.g, %.thread.i ], [ %i.w, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB3h_3VecBV_E14extend_trustedINtNtB6_5chain5ChainINtNtB3h_9into_iter8IntoIterBV_EINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEEE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i ]
  %storemerge.i.i.i.i.i.i = phi i64 [ 0, %bb.j ], [ %.sroa.5.1.i.i.i.i.i.i, %bb.p ], [ %.sroa.5.1.i.i.i.i.i.i, %_RINvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4folduQNCINvNvB1G_8for_each4callBX_NCINvMsk_B8_INtB8_3VecBX_E14extend_trustedINtNtNtB1M_8adapters5chain5ChainBI_INtNtB3V_6cloned6ClonedINtNtNtB1O_5slice4iter4IterBX_EEEE0E0ECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i ], [ 0, %.thread.i ], [ %i.bh, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB3h_3VecBV_E14extend_trustedINtNtB6_5chain5ChainINtNtB3h_9into_iter8IntoIterBV_EINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEEE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i ]
  store i64 %storemerge.i.i.i.i.i.i, ptr %i.bk, align 8, !alias.scope !30635, !noalias !30672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !30673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !30616
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5_14PrimeBufferExt7factorsNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr nofree readonly captures(address) %.8.val, i64 %.16.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.8.val1612 = ptrtoaddr ptr %.8.val to i64
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 11 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 13 uses
  %i.q = alloca [24 x i8], align 8                ; 15 uses
  %i.r = alloca [24 x i8], align 8                ; 19 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 5 uses
  %i.v = alloca [8 x i8], align 8                 ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 5 uses
  %i.x = alloca [8 x i8], align 8                 ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 10 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 9 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 7 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 8 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 6 uses
  %i.ak = alloca [24 x i8], align 8               ; 5 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [24 x i8], align 8               ; 8 uses
  %i.an = alloca [24 x i8], align 8               ; 6 uses
  %i.ao = alloca [24 x i8], align 8               ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 7 uses
  %i.ar = alloca [24 x i8], align 8               ; 10 uses
  %i.as = alloca [24 x i8], align 8               ; 6 uses
  %i.at = alloca [24 x i8], align 8               ; 6 uses
  %i.au = alloca [48 x i8], align 8               ; 7 uses
  %i.av = alloca [24 x i8], align 8               ; 11 uses
  %i.aw = alloca [24 x i8], align 8               ; 8 uses
  %i.ax = alloca [24 x i8], align 8               ; 4 uses
  %i.ay = alloca [24 x i8], align 8               ; 4 uses
  %i.az = alloca [24 x i8], align 8               ; 13 uses
  %i.ba = alloca [24 x i8], align 8               ; 6 uses
  %i.bb = alloca [24 x i8], align 8               ; 10 uses
  %i.bc = alloca [24 x i8], align 8               ; 6 uses
  %i.bd = alloca [24 x i8], align 8               ; 6 uses
  %i.be = alloca [24 x i8], align 8               ; 5 uses
  %i.bf = alloca [24 x i8], align 8               ; 4 uses
  %i.bg = alloca [24 x i8], align 8               ; 4 uses
  %i.bh = alloca [24 x i8], align 8               ; 6 uses
  %i.bi = alloca [24 x i8], align 8               ; 7 uses
  %i.bj = alloca [24 x i8], align 8               ; 5 uses
  %i.bk = alloca [24 x i8], align 8               ; 5 uses
  %i.bl = alloca [24 x i8], align 8               ; 10 uses
  %i.bm = alloca [24 x i8], align 8               ; 6 uses
  %i.bn = alloca [24 x i8], align 8               ; 11 uses
  %i.bo = alloca [24 x i8], align 8               ; 6 uses
  %i.bp = alloca [24 x i8], align 8               ; 6 uses
  %i.bq = alloca [24 x i8], align 8               ; 6 uses
  %i.br = alloca [24 x i8], align 8               ; 4 uses
  %i.bs = alloca [24 x i8], align 8               ; 6 uses
  %i.bt = alloca [24 x i8], align 8               ; 4 uses
  %i.bu = alloca [24 x i8], align 8               ; 6 uses
  %i.bv = alloca [24 x i8], align 8               ; 6 uses
  %i.bw = alloca [24 x i8], align 8               ; 4 uses
  %i.bx = alloca [24 x i8], align 8               ; 6 uses
  %i.by = alloca [24 x i8], align 8               ; 6 uses
  %i.bz = alloca [24 x i8], align 8               ; 4 uses
  %i.ca = alloca [24 x i8], align 8               ; 12 uses
  %i.cb = alloca [24 x i8], align 8               ; 6 uses
  %i.cc = alloca [24 x i8], align 8               ; 14 uses
  %i.cd = alloca [24 x i8], align 8               ; 6 uses
  %i.ce = alloca [24 x i8], align 8               ; 6 uses
  %i.cf = alloca [48 x i8], align 8               ; 9 uses
  %i.cg = alloca [24 x i8], align 8               ; 11 uses
  %i.ch = alloca [24 x i8], align 8               ; 4 uses
  %i.ci = alloca [24 x i8], align 8               ; 4 uses
  %i.cj = alloca [24 x i8], align 8               ; 13 uses
  %i.ck = alloca [24 x i8], align 8               ; 6 uses
  %i.cl = alloca [24 x i8], align 8               ; 10 uses
  %i.cm = alloca [24 x i8], align 8               ; 6 uses
  %i.cn = alloca [24 x i8], align 8               ; 5 uses
  %i.co = alloca [24 x i8], align 8               ; 8 uses
  %i.cp = alloca [24 x i8], align 8               ; 4 uses
  %i.cq = alloca [24 x i8], align 8               ; 4 uses
  %i.cr = alloca [24 x i8], align 8               ; 6 uses
  %i.cs = alloca [24 x i8], align 8               ; 6 uses
  %i.ct = alloca [24 x i8], align 8               ; 13 uses
  %i.cu = alloca [24 x i8], align 8               ; 8 uses
  %i.cv = alloca [24 x i8], align 8               ; 4 uses
  %i.cw = alloca [24 x i8], align 8               ; 12 uses
  %i.cx = alloca [24 x i8], align 8               ; 10 uses
  %i.cy = alloca [24 x i8], align 8               ; 4 uses
  %i.cz = alloca [24 x i8], align 8               ; 11 uses
  %i.da = alloca [24 x i8], align 8               ; 8 uses
  %i.db = alloca [8 x i8], align 8                ; 5 uses
  %i.dc = alloca [8 x i8], align 8                ; 5 uses
  %i.dd = alloca [24 x i8], align 8               ; 10 uses
  %i.de = alloca [24 x i8], align 8               ; 6 uses
  %i.df = alloca [32 x i8], align 8               ; 3 uses
  %i.dg = alloca [56 x i8], align 8               ; 7 uses
  %i.dh = alloca [24 x i8], align 8               ; 8 uses
  %i.di = alloca [24 x i8], align 8               ; 9 uses
  %i.dj = alloca [72 x i8], align 8               ; 15 uses
  %i.dk = alloca [24 x i8], align 8               ; 6 uses
  %i.dl = alloca [48 x i8], align 8               ; 6 uses
  %i.dm = alloca [48 x i8], align 8               ; 8 uses
  %i.dn = alloca [24 x i8], align 8               ; 4 uses
  %i.do = alloca [24 x i8], align 8               ; 4 uses
  %i.dp = alloca [24 x i8], align 8               ; 6 uses
  %i.dq = alloca [24 x i8], align 8               ; 4 uses
  %i.dr = alloca [24 x i8], align 8               ; 11 uses
  %i.ds = alloca [24 x i8], align 8               ; 14 uses
  %.sroa.5 = alloca i64, align 8                  ; 5 uses
  %i.dt = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.11 = alloca [8 x i8], align 8            ; 7 uses
  %i.du = alloca [24 x i8], align 8               ; 4 uses
  %i.dv = alloca [24 x i8], align 8               ; 6 uses
  %i.dw = alloca [24 x i8], align 8               ; 15 uses
  %i.dx = alloca [24 x i8], align 8               ; 8 uses
  %i.dy = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.5.i.i.i.i.i.i.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 5 uses
  %.sroa.42.i.i.i.i.i.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %i.dz = alloca [24 x i8], align 8               ; 9 uses
  %i.ea = alloca [72 x i8], align 8               ; 15 uses
  %i.eb = alloca [24 x i8], align 8               ; 6 uses
  %i.ec = alloca [24 x i8], align 8               ; 6 uses
  %i.ed = alloca [24 x i8], align 8               ; 4 uses
  %i.ee = alloca [56 x i8], align 8               ; 7 uses
  %i.ef = alloca [24 x i8], align 8               ; 54 uses
  %i.eg = alloca [24 x i8], align 8               ; 6 uses
  %i.eh = alloca [24 x i8], align 8               ; 11 uses
  %i.ei = alloca [24 x i8], align 8               ; 6 uses
  %i.ej = alloca [24 x i8], align 8               ; 9 uses
  %i.ek = alloca [24 x i8], align 8               ; 9 uses
  %i.el = alloca [24 x i8], align 8               ; 5 uses
  %i.em = alloca [24 x i8], align 8               ; 6 uses
  %i.en = alloca [24 x i8], align 8               ; 6 uses
  %i.eo = load i64, ptr %1, align 8, !range !13, !alias.scope !30674, !noalias !30677, !noundef !12 ; 3 uses
  %.not.i = icmp eq i64 %i.eo, -1
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.eq = load i64, ptr %i.ep, align 8, !range !46, !alias.scope !30674, !noalias !30677, !noundef !12
  %i.er = trunc nuw i64 %i.eq to i1
  br i1 %i.er, label %.lr.ph.preheader.thread.i, label %.loopexit

.lr.ph.preheader.thread.i:                        ; preds = %bb.b
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %.lr.ph.preheader.split.i

bb.c:                                             ; preds = %bb.a
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ev = load i64, ptr %i.eu, align 8, !alias.scope !30674, !noalias !30677, !noundef !12 ; 2 uses
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.ex = shl nuw nsw i64 %i.ev, 3                ; 2 uses
  %i.ey = load ptr, ptr %i.ep, align 8, !alias.scope !30674, !noalias !30677, !nonnull !12, !noundef !12 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ex
  %i.fa = add nsw i64 %i.ex, -17
  %i.fb = icmp ult i64 %i.fa, -9
  br i1 %i.fb, label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive7to_u128.exit, label %.lr.ph.preheader.split.i

.lr.ph.preheader.split.i:                         ; preds = %.lr.ph.preheader.i, %.lr.ph.preheader.thread.i
  %.sroa.06.02023.i = phi ptr [ %i.es, %.lr.ph.preheader.thread.i ], [ %i.ey, %.lr.ph.preheader.i ]
  %i.fc = phi ptr [ %i.et, %.lr.ph.preheader.thread.i ], [ %i.ez, %.lr.ph.preheader.i ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.split.i
  %.sroa.0.013.i = phi i128 [ %i.fi, %.lr.ph.i ], [ 0, %.lr.ph.preheader.split.i ]
  %.sroa.02.012.i = phi i8 [ %i.fj, %.lr.ph.i ], [ 0, %.lr.ph.preheader.split.i ] ; 2 uses
  %.sroa.05.011.i = phi ptr [ %i.fd, %.lr.ph.i ], [ %.sroa.06.02023.i, %.lr.ph.preheader.split.i ] ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.05.011.i, i64 8 ; 2 uses
  %i.fe = load i64, ptr %.sroa.05.011.i, align 8, !noalias !30677, !noundef !12
  %i.ff = zext i64 %i.fe to i128
  %i.fg = zext nneg i8 %.sroa.02.012.i to i128
  %i.fh = shl nuw i128 %i.ff, %i.fg
  %i.fi = or i128 %i.fh, %.sroa.0.013.i           ; 2 uses
  %i.fj = add nuw i8 %.sroa.02.012.i, 64
  %i.fk = icmp eq ptr %i.fd, %i.fc
  br i1 %i.fk, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %.lr.ph.i, %bb.c, %bb.b
  %.sroa.5.067.ph = phi i128 [ 0, %bb.c ], [ 0, %bb.b ], [ %i.fi, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em)
  call void @_RNvNtCs6BhVcHPqRq6_9num_prime8nt_funcs12factorize128(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.em, i128 noundef %.sroa.5.067.ph) #45
  %i.fl = load ptr, ptr %i.em, align 8, !noundef !12 ; 3 uses
  %.not113 = icmp ne ptr %i.fl, null              ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.fn = load i64, ptr %i.fm, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.fp = load i64, ptr %i.fo, align 8
  %.sroa.0.sroa.7.sroa.6.0 = select i1 %.not113, i64 %i.fp, i64 undef ; 2 uses
  %.sroa.0.sroa.0.0 = zext i1 %.not113 to i64     ; 2 uses
  %.sroa.5.0 = select i1 %.not113, i64 %i.fn, i64 0 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em)
  call void @llvm.experimental.noalias.scope.decl(metadata !30679)
  %i.fq = shl i64 %.sroa.5.0, 5                   ; 4 uses
  %i.fr = icmp ugt i64 %.sroa.5.0, 576460752303423487
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.fq, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i = or i1 %i.fr, %.not.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.f, label %bb.d, !prof !328

bb.d:                                             ; preds = %.loopexit
  %i.fs = icmp eq i64 %i.fq, 0
  br i1 %i.fs, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !30682
  %i.ft = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.fq, i64 noundef range(i64 1, 9) 8) #45, !noalias !30682 ; 2 uses
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %bb.f, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e, %.loopexit
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 8, %bb.e ], [ 0, %.loopexit ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %i.fq) #52, !noalias !30698
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.10.0.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.d ], [ %i.ft, %bb.e ] ; 5 uses
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.sroa.5.0, %bb.e ] ; 4 uses
  %i.fv = icmp samesign ule i64 %.sroa.5.0, %.sroa.4.0.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.fv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea), !noalias !30699
  store i64 %.sroa.0.sroa.0.0, ptr %i.ea, align 8, !noalias !30712
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !30712
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store ptr %i.fl, ptr %.sroa.52.0..sroa_idx, align 8, !noalias !30712
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store i64 %.sroa.0.sroa.7.sroa.6.0, ptr %.sroa.6.0..sroa_idx3, align 8, !noalias !30712
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  store i64 %.sroa.0.sroa.0.0, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !30712
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  store ptr null, ptr %.sroa.8.0..sroa_idx5, align 8, !noalias !30712
  %.sroa.9.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  store ptr %i.fl, ptr %.sroa.9.0..sroa_idx6, align 8, !noalias !30712
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  store i64 %.sroa.0.sroa.7.sroa.6.0, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !30712
  %.sroa.4.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 64
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx2.i.i.i.i.i, align 8, !noalias !30713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz), !noalias !30714
  call fastcc void @_RNvMsz_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_8IntoIterojE10dying_nextCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.dz, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ea) #45, !noalias !30721
  %i.fw = load ptr, ptr %i.dz, align 8, !noalias !30714, !noundef !12 ; 2 uses
  %.not.i9.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fw, null
  br i1 %.not.i9.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.fx = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 6 uses
  br label %bb.g

bb.g:                                             ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldTojETNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEuNCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB1U_14PrimeBufferExt7factorsBZ_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4i_3VecBY_E14extend_trustedINtB4_3MapINtNtNtNtB4k_11collections5btree3map8IntoIterojEB1M_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.fz = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.gz, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldTojETNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEuNCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB1U_14PrimeBufferExt7factorsBZ_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4i_3VecBY_E14extend_trustedINtB4_3MapINtNtNtNtB4k_11collections5btree3map8IntoIterojEB1M_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ga = phi ptr [ %i.fw, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.ha, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldTojETNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEuNCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB1U_14PrimeBufferExt7factorsBZ_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4i_3VecBY_E14extend_trustedINtB4_3MapINtNtNtNtB4k_11collections5btree3map8IntoIterojEB1M_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.42.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !30714 ; 2 uses
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %.sroa.42.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  %i.gc = load i128, ptr %i.gb, align 16, !noalias !30722, !noundef !12 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 184
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %.sroa.42.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  %i.gf = load i64, ptr %i.ge, align 8, !noalias !30722, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !30714
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.42.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy), !noalias !30725
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr noundef nonnull align 8 dereferenceable(24) @899, i64 24, i1 false), !noalias !30725
  %i.gg = icmp eq i128 %i.gc, 0
  br i1 %i.gg, label %_RNCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB7_14PrimeBufferExt7factorsNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintE0Csl8pJiQOn4hA_9coreutils.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.backedge
  %.sroa.0.0.copyload15.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload15.i.i.i.i.i.i.i.i.i.i.i.i.be, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.backedge ], [ -1, %bb.g ]
  %i.gh = phi i64 [ %.be, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.backedge ], [ undef, %bb.g ] ; 4 uses
  %i.gi = phi i64 [ %.be1624, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.backedge ], [ -1, %bb.g ] ; 2 uses
  %.sroa.0.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i128 [ %.sroa.0.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i.be, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.backedge ], [ %i.gc, %bb.g ] ; 3 uses
  %i.gj = trunc i128 %.sroa.0.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30734)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gi, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gk = icmp eq i64 %i.gh, %i.gi
  br i1 %i.gk, label %bb.i, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecyE8push_mutCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCsioiJd4mgmsb_10num_bigint(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dy) #53, !noalias !30725
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecyE8push_mutCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecyE8push_mutCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.gl = load ptr, ptr %i.fy, align 8, !alias.scope !30737, !noalias !30725, !nonnull !12, !noundef !12
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.gh
  store i64 %i.gj, ptr %i.gm, align 8, !noalias !30725
  %i.gn = add i64 %i.gh, 1                        ; 2 uses
  store i64 %i.gn, ptr %i.fx, align 8, !alias.scope !30737, !noalias !30725
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dy, align 8, !alias.scope !30734, !noalias !30725 ; 2 uses
  br label %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits4push.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.go = load i64, ptr %i.fy, align 8, !range !46, !alias.scope !30734, !noalias !30725, !noundef !12
  %i.gp = trunc nuw i64 %i.go to i1
  br i1 %i.gp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !30740
  %i.gq = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #45, !noalias !30740 ; 4 uses
  %i.gr = icmp eq ptr %i.gq, null
  br i1 %i.gr, label %bb.m, label %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits4push.exit.i.i.i.thread.i.i.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  store i64 1, ptr %i.fy, align 8, !alias.scope !30734, !noalias !30725
  store i64 %i.gj, ptr %i.fx, align 8, !alias.scope !30734, !noalias !30725
end_hunk_0
begin_hunk_1_@_RNSNvYNCINvNtNtCs2vKOLqTMYjT_3std6thread9lifecycle15spawn_uncheckedNCINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtBd_3ffi6os_str8OsStringEINtNtB1N_6cloned6ClonedINtNtNtB1R_5slice4iter4IterB3o_EEEEs0_0INtNtB1R_6result6ResultuINtNtB2H_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEs_0INtNtNtB1R_3ops8function6FnOnceuE9call_once6vtableCsl8pJiQOn4hA_9coreutils:bb.a

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !63, !invariant.load !12, !noalias !34094 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEIB1p_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsl8pJiQOn4hA_9coreutils.exit.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !267, !invariant.load !12, !noalias !34094
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) %i.ad) #45, !noalias !34094
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEIB1p_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsl8pJiQOn4hA_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEIB1p_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.f, %bb.c, %bb.a
  store i64 0, ptr %i.l, align 8, !noalias !34075
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !34075
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr %i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !34075
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !34075
  store ptr %i.k, ptr %i.c, align 8, !noalias !34075
  %i.ae = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !34096
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.j, label %_RNCINvNtNtCs2vKOLqTMYjT_3std6thread9lifecycle15spawn_uncheckedNCINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtB8_3ffi6os_str8OsStringEINtNtB1I_6cloned6ClonedINtNtNtB1M_5slice4iter4IterB3j_EEEEs0_0INtNtB1M_6result6ResultuINtNtB2C_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEs_0Csl8pJiQOn4hA_9coreutils.exit

bb.j:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEIB1p_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsl8pJiQOn4hA_9coreutils.exit.i
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultuINtNtB7_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #53, !noalias !34075
  br label %_RNCINvNtNtCs2vKOLqTMYjT_3std6thread9lifecycle15spawn_uncheckedNCINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtB8_3ffi6os_str8OsStringEINtNtB1I_6cloned6ClonedINtNtNtB1M_5slice4iter4IterB3j_EEEEs0_0INtNtB1M_6result6ResultuINtNtB2C_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEs_0Csl8pJiQOn4hA_9coreutils.exit

_RNCINvNtNtCs2vKOLqTMYjT_3std6thread9lifecycle15spawn_uncheckedNCINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtB8_3ffi6os_str8OsStringEINtNtB1I_6cloned6ClonedINtNtNtB1M_5slice4iter4IterB3j_EEEEs0_0INtNtB1M_6result6ResultuINtNtB2C_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEs_0Csl8pJiQOn4hA_9coreutils.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEIB1p_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsl8pJiQOn4hA_9coreutils.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !34075
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.520.i)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNSNvYNCINvNvCsgN7rS7e43TA_7uu_more6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBQ_6cloned6ClonedINtNtNtBU_5slice4iter4IterB2r_EEEE0INtNtNtBU_3ops8function6FnOnceTRNtNtB2x_5panic13PanicHookInfoEE9call_once6vtableCsl8pJiQOn4hA_9coreutils(ptr nofree readnone captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34101
  store ptr %1, ptr %i.b, align 8, !noalias !34104
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6__print(ptr noundef nonnull @203, ptr noundef nonnull inttoptr (i64 3 to ptr)) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34104
  store ptr %i.b, ptr %i.a, align 8, !noalias !34104
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRNtNtCs2vKOLqTMYjT_3std5panic13PanicHookInfoNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !34104
  call void @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6__print(ptr noundef nonnull @6, ptr noundef nonnull %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34101
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvCs2S1mliNQtKX_8uu_b2sum6uu_app(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @381, i64 noundef 11) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @382, i64 noundef 11) #45
  call void @_RNvCs4dRV7rdzHEF_18uu_checksum_common35standalone_checksum_app_with_length(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr @383, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i64 5, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvCs2zc8TnwZULP_10uu_sha1sum6uu_app(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @393, i64 noundef 13) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @394, i64 noundef 13) #45
  call void @_RNvCs4dRV7rdzHEF_18uu_checksum_common23standalone_checksum_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr @395, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i64 7, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvCs4ymIm62sNTP_12uu_sha256sum6uu_app(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @426, i64 noundef 15) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @427, i64 noundef 15) #45
  call void @_RNvCs4dRV7rdzHEF_18uu_checksum_common23standalone_checksum_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr @428, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i64 9, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvCs9lcmpQqrDDI_9uu_md5sum6uu_app(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @482, i64 noundef 12) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @483, i64 noundef 12) #45
  call void @_RNvCs4dRV7rdzHEF_18uu_checksum_common23standalone_checksum_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr @484, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i64 6, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvCsPCkMm39seU_12uu_sha384sum6uu_app(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @485, i64 noundef 15) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @486, i64 noundef 15) #45
  call void @_RNvCs4dRV7rdzHEF_18uu_checksum_common23standalone_checksum_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr @487, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i64 9, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvCsg8hoetmhRmG_12uu_sha224sum6uu_app(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @568, i64 noundef 15) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @569, i64 noundef 15) #45
  call void @_RNvCs4dRV7rdzHEF_18uu_checksum_common23standalone_checksum_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr @570, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i64 9, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvCskAyBsUMQctw_12uu_sha512sum6uu_app(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @685, i64 noundef 15) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @686, i64 noundef 15) #45
  call void @_RNvCs4dRV7rdzHEF_18uu_checksum_common23standalone_checksum_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr @687, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i64 9, ptr %i.d, align 8
  ret void
}

; Function Attrs: noreturn nounwind nonlazybind uwtable
define hidden void @_RNvCsl8pJiQOn4hA_9coreutils4main() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [2 x i8], align 2                 ; 6 uses
  %.sroa.4172 = alloca [8 x i8], align 8          ; 7 uses
  %.sroa.9173 = alloca [8 x i8], align 8          ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 9 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 5 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 3 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = tail call { ptr, ptr } @_RNvCsh036I4OHgIr_6uucore7args_os() #45 ; 2 uses
  %i.ac = extractvalue { ptr, ptr } %i.ab, 0      ; 8 uses
  %i.ad = extractvalue { ptr, ptr } %i.ab, 1      ; 5 uses
  %i.ae = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend5param4auxv9getauxval, i64 16) monotonic, align 8, !noalias !34107 ; 2 uses
  %magicptr.i.i.i = ptrtoint ptr %i.ae to i64     ; 2 uses
  switch i64 %magicptr.i.i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend5param4auxv12linux_execfn.exit.i
  ], !prof !34111

bb.b:                                             ; preds = %bb.a
  %i.af = load ptr, ptr @_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend5param4auxv9getauxval, align 8, !noalias !34107, !nonnull !12, !noundef !12
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend5param4auxv9getauxval, i64 8), align 8, !noalias !34107, !noundef !12
  %i.ah = tail call noundef ptr @_RNvNtCscC7ZI6NG8RX_6rustix4weak5fetch(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %i.ag) #45, !noalias !34107 ; 2 uses
  store atomic ptr %i.ah, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend5param4auxv9getauxval, i64 16) release, align 8, !noalias !34107
  br label %_RNvMNtCscC7ZI6NG8RX_6rustix4weakINtB2_4WeakFUKCyEONtNtCs6JMX4GRUq9U_4core3ffi6c_voidE3getCsl8pJiQOn4hA_9coreutils.exit.i.i

bb.c:                                             ; preds = %bb.a
  fence acquire
  br label %_RNvMNtCscC7ZI6NG8RX_6rustix4weakINtB2_4WeakFUKCyEONtNtCs6JMX4GRUq9U_4core3ffi6c_voidE3getCsl8pJiQOn4hA_9coreutils.exit.i.i

_RNvMNtCscC7ZI6NG8RX_6rustix4weakINtB2_4WeakFUKCyEONtNtCs6JMX4GRUq9U_4core3ffi6c_voidE3getCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i = phi ptr [ %i.ah, %bb.b ], [ %i.ae, %bb.c ] ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.i.i.i, null
  br i1 %.not.i.i, label %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend5param4auxv12linux_execfn.exit.i, label %bb.d

bb.d:                                             ; preds = %_RNvMNtCscC7ZI6NG8RX_6rustix4weakINtB2_4WeakFUKCyEONtNtCs6JMX4GRUq9U_4core3ffi6c_voidE3getCsl8pJiQOn4hA_9coreutils.exit.i.i
  %i.ai = tail call noundef ptr %.sroa.0.0.i.i.i(i64 noundef 31) #45, !noalias !34107, !inline_history !34112 ; 2 uses
  %i.aj = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ai) #45, !noalias !34107
  br label %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend5param4auxv12linux_execfn.exit.i

_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend5param4auxv12linux_execfn.exit.i: ; preds = %bb.d, %_RNvMNtCscC7ZI6NG8RX_6rustix4weakINtB2_4WeakFUKCyEONtNtCs6JMX4GRUq9U_4core3ffi6c_voidE3getCsl8pJiQOn4hA_9coreutils.exit.i.i, %bb.a
  %.sroa.3.0.i.i = phi i64 [ %i.aj, %bb.d ], [ 0, %_RNvMNtCscC7ZI6NG8RX_6rustix4weakINtB2_4WeakFUKCyEONtNtCs6JMX4GRUq9U_4core3ffi6c_voidE3getCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ %magicptr.i.i.i, %bb.a ] ; 16 uses
  %.sroa.0.0.i.i = phi ptr [ %i.ai, %bb.d ], [ @510, %_RNvMNtCscC7ZI6NG8RX_6rustix4weakINtB2_4WeakFUKCyEONtNtCs6JMX4GRUq9U_4core3ffi6c_voidE3getCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ @510, %bb.a ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  %i.ak = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ak, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend5param4auxv12linux_execfn.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 3 uses
  %i.am = getelementptr i8, ptr %i.ac, i64 8
  %.val.i.i = load ptr, ptr %i.am, align 8, !noalias !34113, !nonnull !12, !noundef !12
  %i.an = getelementptr i8, ptr %i.ac, i64 16
  %.val2.i.i = load i64, ptr %i.an, align 8, !noalias !34113, !noundef !12 ; 14 uses
  %i.ao = icmp eq i64 %.val2.i.i, 0               ; 2 uses
  br i1 %i.ao, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread66.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !34117
  %i.ap = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i.i, i64 noundef range(i64 1, 9) 1) #45, !noalias !34117 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.g, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val2.i.i) #52, !noalias !34127
  unreachable

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr nonnull readonly align 1 %.val.i.i, i64 range(i64 0, -9223372036854775808) %.val2.i.i, i1 false), !noalias !34128
  %.not.i = icmp eq i64 %.val2.i.i, -1
  br i1 %.not.i, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread66.i, !prof !4546

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread66.i: ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i, %bb.e
  %.sroa.6.072.i = phi ptr [ %i.ap, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i ], [ inttoptr (i64 1 to ptr), %bb.e ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !34107
  store i16 0, ptr %i.i, align 2, !noalias !34107
  %i.ar = icmp samesign eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.ar, label %.loopexit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread66.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %.sroa.3.0.i.i
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.at = icmp eq ptr %.sroa.0.0.i.i, %i.av
  br i1 %i.at, label %.loopexit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.03.0.i.i.i315 = phi i64 [ %.sroa.3.0.i.i, %.lr.ph ], [ %i.aw, %bb.h ] ; 3 uses
  %i.au = phi ptr [ %i.as, %.lr.ph ], [ %i.av, %bb.h ]
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -1 ; 3 uses
  %i.aw = add i64 %.sroa.03.0.i.i.i315, -1        ; 2 uses
  %.val.i.i.i = load i8, ptr %i.av, align 1, !noalias !34129, !noundef !12
  %i.ax = icmp eq i8 %.val.i.i.i, 47
  br i1 %i.ax, label %bb.j, label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.ay = icmp ult i64 %i.aw, %.sroa.3.0.i.i
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = sub nuw i64 %.sroa.3.0.i.i, %.sroa.03.0.i.i.i315
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %.sroa.03.0.i.i.i315
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.h, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread66.i, %bb.j
  %.sroa.5.1.i.i = phi i64 [ %i.az, %bb.j ], [ %.sroa.3.0.i.i, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread66.i ], [ %.sroa.3.0.i.i, %bb.h ] ; 2 uses
  %.sroa.0.1.i.i = phi ptr [ %i.ba, %bb.j ], [ %.sroa.0.0.i.i, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread66.i ], [ %.sroa.0.0.i.i, %bb.h ]
  %i.bb = icmp samesign eq i64 %.val2.i.i, 0
  br i1 %i.bb, label %_RNvXsg_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB5_5SplithNCINvNtNtCsdSs45UTkAAB_9coreutils6common10validation11binary_pathINtNtNtNtB9_4iter8adapters6cloned6ClonedINtB5_4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEs_0ENtNtNtB20_6traits12double_ended19DoubleEndedIterator9next_backCsl8pJiQOn4hA_9coreutils.exit.i, label %.lr.ph317

.lr.ph317:                                        ; preds = %.loopexit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.6.072.i, i64 %.val2.i.i
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %i.bd = icmp eq ptr %.sroa.6.072.i, %i.bf
  br i1 %i.bd, label %_RNvXsg_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB5_5SplithNCINvNtNtCsdSs45UTkAAB_9coreutils6common10validation11binary_pathINtNtNtNtB9_4iter8adapters6cloned6ClonedINtB5_4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEs_0ENtNtNtB20_6traits12double_ended19DoubleEndedIterator9next_backCsl8pJiQOn4hA_9coreutils.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph317, %bb.k
  %.sroa.03.0.i.i29.i316 = phi i64 [ %.val2.i.i, %.lr.ph317 ], [ %i.bg, %bb.k ] ; 3 uses
  %i.be = phi ptr [ %i.bc, %.lr.ph317 ], [ %i.bf, %bb.k ]
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -1 ; 3 uses
  %i.bg = add i64 %.sroa.03.0.i.i29.i316, -1      ; 2 uses
  %.val.i.i30.i = load i8, ptr %i.bf, align 1, !noalias !34134, !noundef !12
  %i.bh = icmp eq i8 %.val.i.i30.i, 47
  br i1 %i.bh, label %bb.m, label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.bi = icmp ult i64 %i.bg, %.val2.i.i
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = sub nuw i64 %.val2.i.i, %.sroa.03.0.i.i29.i316
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.6.072.i, i64 %.sroa.03.0.i.i29.i316
  br label %_RNvXsg_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB5_5SplithNCINvNtNtCsdSs45UTkAAB_9coreutils6common10validation11binary_pathINtNtNtNtB9_4iter8adapters6cloned6ClonedINtB5_4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEs_0ENtNtNtB20_6traits12double_ended19DoubleEndedIterator9next_backCsl8pJiQOn4hA_9coreutils.exit.i

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i: ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i, %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend5param4auxv12linux_execfn.exit.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @338) #50, !noalias !34107
  unreachable

_RNvXsg_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB5_5SplithNCINvNtNtCsdSs45UTkAAB_9coreutils6common10validation11binary_pathINtNtNtNtB9_4iter8adapters6cloned6ClonedINtB5_4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEs_0ENtNtNtB20_6traits12double_ended19DoubleEndedIterator9next_backCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.k, %.loopexit.i, %bb.m
  %.sroa.5.1.i31.i = phi i64 [ %i.bj, %bb.m ], [ %.val2.i.i, %.loopexit.i ], [ %.val2.i.i, %bb.k ]
  %.sroa.0.1.i32.i = phi ptr [ %i.bk, %bb.m ], [ %.sroa.6.072.i, %.loopexit.i ], [ %.sroa.6.072.i, %bb.k ]
  %i.bl = icmp eq i64 %.sroa.5.1.i.i, %.sroa.5.1.i31.i
  br i1 %i.bl, label %.split.i, label %bb.n

.split.i:                                         ; preds = %_RNvXsg_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB5_5SplithNCINvNtNtCsdSs45UTkAAB_9coreutils6common10validation11binary_pathINtNtNtNtB9_4iter8adapters6cloned6ClonedINtB5_4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEs_0ENtNtNtB20_6traits12double_ended19DoubleEndedIterator9next_backCsl8pJiQOn4hA_9coreutils.exit.i
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %.sroa.0.1.i.i, ptr nonnull %.sroa.0.1.i32.i, i64 %.sroa.5.1.i.i), !noalias !34107
  %i.bm = icmp eq i32 %bcmp.i, 0
  br i1 %i.bm, label %bb.v, label %bb.n

bb.n:                                             ; preds = %.split.i, %_RNvXsg_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB5_5SplithNCINvNtNtCsdSs45UTkAAB_9coreutils6common10validation11binary_pathINtNtNtNtB9_4iter8adapters6cloned6ClonedINtB5_4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEs_0ENtNtNtB20_6traits12double_ended19DoubleEndedIterator9next_backCsl8pJiQOn4hA_9coreutils.exit.i
  %.not.i33.i = icmp samesign ult i64 %.sroa.3.0.i.i, 6
  br i1 %.not.i33.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.thread.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.n
  %i.bn = load i32, ptr %.sroa.0.0.i.i, align 1
  %i.bo = xor i32 1869770799, %i.bn
  %i.bp = getelementptr i8, ptr %.sroa.0.0.i.i, i64 4
  %i.bq = load i16, ptr %i.bp, align 1
  %i.br = zext i16 %i.bq to i32
  %i.bs = xor i32 12131, %i.br
  %i.bt = or i32 %i.bo, %i.bs
  %i.bu = icmp ne i32 %i.bt, 0
  %i.bv = zext i1 %i.bu to i32
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.v, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.thread.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.thread.i: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.i, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !34107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !34139
  store i128 18446745954905227264, ptr %i.f, align 16, !noalias !34139
  call void @_RNvMsj_NtCs2vKOLqTMYjT_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.3.0.i.i) #45, !noalias !34107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !34139
  %i.bx = load i32, ptr %i.h, align 8, !range !575, !noalias !34107, !noundef !12
  %i.by = trunc nuw i32 %i.bx to i1
  br i1 %i.by, label %.thread.i, label %bb.o

.thread.i:                                        ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.thread.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !34107, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !34107
  br label %bb.p

bb.o:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.thread.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !range !639, !noalias !34107, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !34107
  store i32 %i.cc, ptr %i.g, align 4, !noalias !34107
  %i.cd = call fastcc noundef ptr @_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactNtNtCs2vKOLqTMYjT_3std2fs4FileECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 4 dereferenceable(4) %i.g, ptr noalias nofree noundef nonnull %i.i, i64 noundef 2) #45, !noalias !34107 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34143)
  %.val.i35.i = load i32, ptr %i.g, align 4, !range !639, !alias.scope !34143, !noalias !34107, !noundef !12
  %i.ce = call noundef i32 @close(i32 noundef %.val.i35.i) #45, !noalias !34146 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !34107
end_hunk_1
begin_hunk_2_@_RNvCsl8pJiQOn4hA_9coreutils4main:bb.a
  %i.hn = or disjoint i64 %.sroa.03.0.i10.i.i.i.i.i.i, 1
  %i.ho = icmp samesign ult i64 %i.hn, %i.hi
  br i1 %i.ho, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.hp = getelementptr i8, ptr %i.fo, i64 %i.hj
  %i.hq = getelementptr i8, ptr %i.hp, i64 %.sroa.03.0.i10.i.i.i.i.i.i
  %.sroa.015.0.copyload.i15.i.i.i.i.i.i = load i16, ptr %i.hq, align 1, !alias.scope !34251, !noalias !34264
  %i.hr = zext i16 %.sroa.015.0.copyload.i15.i.i.i.i.i.i to i64
  %i.hs = shl nuw nsw i64 %.sroa.03.0.i10.i.i.i.i.i.i, 3
  %i.ht = shl nuw nsw i64 %i.hr, %i.hs
  %i.hu = or i64 %i.ht, %.sroa.0.0.i11.i.i.i.i.i.i
  %i.hv = or disjoint i64 %.sroa.03.0.i10.i.i.i.i.i.i, 2
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.sroa.03.1.i12.i.i.i.i.i.i = phi i64 [ %i.hv, %bb.ay ], [ %.sroa.03.0.i10.i.i.i.i.i.i, %bb.ax ] ; 3 uses
  %.sroa.0.1.i13.i.i.i.i.i.i = phi i64 [ %i.hu, %bb.ay ], [ %.sroa.0.0.i11.i.i.i.i.i.i, %bb.ax ] ; 2 uses
  %i.hw = icmp samesign ult i64 %.sroa.03.1.i12.i.i.i.i.i.i, %i.hi
  br i1 %i.hw, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.hx = add nuw i64 %.sroa.03.1.i12.i.i.i.i.i.i, %i.hj ; 2 uses
  %i.hy = icmp ult i64 %i.hx, %i.fq
  call void @llvm.assume(i1 %i.hy)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.hx
  %i.ia = load i8, ptr %i.hz, align 1, !alias.scope !34251, !noalias !34264, !noundef !12
  %i.ib = zext i8 %i.ia to i64
  %i.ic = shl nuw nsw i64 %.sroa.03.1.i12.i.i.i.i.i.i, 3
  %i.id = shl nuw nsw i64 %i.ib, %i.ic
  %i.ie = or i64 %i.id, %.sroa.0.1.i13.i.i.i.i.i.i
  br label %bb.bb

.lr.ph.i.i.i.i.i.i107:                            ; preds = %bb.av, %.lr.ph.i.i.i.i.i.i107
  %i.if = phi i64 [ %i.iy, %.lr.ph.i.i.i.i.i.i107 ], [ %i.hg, %bb.av ]
  %i.ig = phi i64 [ %i.ix, %.lr.ph.i.i.i.i.i.i107 ], [ %i.hf, %bb.av ] ; 3 uses
  %i.ih = phi i64 [ %i.iu, %.lr.ph.i.i.i.i.i.i107 ], [ %i.hd, %bb.av ]
  %.sroa.0.118.i.i.i.i.i.i = phi i64 [ %i.ja, %.lr.ph.i.i.i.i.i.i107 ], [ 0, %bb.av ] ; 2 uses
  %i.ii = phi i64 [ %i.iz, %.lr.ph.i.i.i.i.i.i107 ], [ %i.hh, %bb.av ]
  %i.ij = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.sroa.0.118.i.i.i.i.i.i
  %.sroa.07.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ij, align 1, !alias.scope !34271, !noalias !34264 ; 2 uses
  %i.ik = xor i64 %.sroa.07.0.copyload.i.i.i.i.i.i, %i.ih ; 3 uses
  %i.il = add i64 %i.ii, %i.ig                    ; 3 uses
  %i.im = call noundef i64 @llvm.fshl.i64(i64 %i.ig, i64 %i.ig, i64 13)
  %i.in = xor i64 %i.il, %i.im                    ; 3 uses
  %i.io = call noundef i64 @llvm.fshl.i64(i64 %i.il, i64 %i.il, i64 32)
  %i.ip = add i64 %i.ik, %i.if                    ; 2 uses
  %i.iq = call noundef i64 @llvm.fshl.i64(i64 %i.ik, i64 %i.ik, i64 16)
  %i.ir = xor i64 %i.ip, %i.iq                    ; 3 uses
  %i.is = add i64 %i.ir, %i.io                    ; 2 uses
  %i.it = call noundef i64 @llvm.fshl.i64(i64 %i.ir, i64 %i.ir, i64 21)
  %i.iu = xor i64 %i.it, %i.is                    ; 2 uses
  %i.iv = add i64 %i.ip, %i.in                    ; 3 uses
  %i.iw = call noundef i64 @llvm.fshl.i64(i64 %i.in, i64 %i.in, i64 17)
  %i.ix = xor i64 %i.iv, %i.iw                    ; 2 uses
  %i.iy = call noundef i64 @llvm.fshl.i64(i64 %i.iv, i64 %i.iv, i64 32) ; 2 uses
  %i.iz = xor i64 %i.is, %.sroa.07.0.copyload.i.i.i.i.i.i ; 2 uses
  %i.ja = add nuw i64 %.sroa.0.118.i.i.i.i.i.i, 8 ; 2 uses
  %i.jb = icmp ult i64 %i.ja, %i.hj
  br i1 %i.jb, label %.lr.ph.i.i.i.i.i.i107, label %._crit_edge.i.i.i.i.i.i

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %.sroa.0.2.i14.i.i.i.i.i.i = phi i64 [ %i.ie, %bb.ba ], [ %.sroa.0.1.i13.i.i.i.i.i.i, %bb.az ]
  %i.jc = shl i64 %i.fq, 56
  %i.jd = add i64 %i.jc, 576460752303423488
  %i.je = or i64 %.sroa.0.2.i14.i.i.i.i.i.i, %i.jd ; 2 uses
  %i.jf = xor i64 %i.je, %.sroa.26.2.i.i          ; 3 uses
  %i.jg = call noundef i64 @llvm.fshl.i64(i64 %i.jf, i64 %i.jf, i64 16)
  %i.jh = add i64 %i.jf, %.sroa.10.2.i.i          ; 2 uses
  %i.ji = xor i64 %i.jg, %i.jh                    ; 3 uses
  %i.jj = add i64 %.sroa.0.2.i.i, %.sroa.18.2.i.i ; 3 uses
  %i.jk = call noundef i64 @llvm.fshl.i64(i64 %i.jj, i64 %i.jj, i64 32)
  %i.jl = add i64 %i.ji, %i.jk                    ; 2 uses
  %i.jm = xor i64 %i.jl, %i.je
  %i.jn = call noundef i64 @llvm.fshl.i64(i64 %.sroa.18.2.i.i, i64 %.sroa.18.2.i.i, i64 13)
  %i.jo = xor i64 %i.jj, %i.jn                    ; 3 uses
  %i.jp = add i64 %i.jh, %i.jo                    ; 3 uses
  %i.jq = call noundef i64 @llvm.fshl.i64(i64 %i.jo, i64 %i.jo, i64 17)
  %i.jr = xor i64 %i.jp, %i.jq                    ; 3 uses
  %i.js = add i64 %i.jm, %i.jr                    ; 3 uses
  %i.jt = call noundef i64 @llvm.fshl.i64(i64 %i.jr, i64 %i.jr, i64 13)
  %i.ju = xor i64 %i.js, %i.jt                    ; 3 uses
  %i.jv = call noundef i64 @llvm.fshl.i64(i64 %i.ji, i64 %i.ji, i64 21)
  %i.jw = xor i64 %i.jv, %i.jl                    ; 3 uses
  %i.jx = call noundef i64 @llvm.fshl.i64(i64 %i.jp, i64 %i.jp, i64 32)
  %i.jy = xor i64 %i.jx, 238
  %i.jz = add i64 %i.jw, %i.jy                    ; 2 uses
  %i.ka = add i64 %i.ju, %i.jz                    ; 3 uses
  %i.kb = call noundef i64 @llvm.fshl.i64(i64 %i.ju, i64 %i.ju, i64 17)
  %i.kc = xor i64 %i.ka, %i.kb                    ; 3 uses
  %i.kd = call noundef i64 @llvm.fshl.i64(i64 %i.kc, i64 %i.kc, i64 13)
  %i.ke = call noundef i64 @llvm.fshl.i64(i64 %i.jw, i64 %i.jw, i64 16)
  %i.kf = xor i64 %i.ke, %i.jz                    ; 3 uses
  %i.kg = call noundef i64 @llvm.fshl.i64(i64 %i.js, i64 %i.js, i64 32)
  %i.kh = add i64 %i.kf, %i.kg                    ; 2 uses
  %i.ki = add i64 %i.kc, %i.kh                    ; 3 uses
  %i.kj = xor i64 %i.kd, %i.ki                    ; 3 uses
  %i.kk = call noundef i64 @llvm.fshl.i64(i64 %i.kj, i64 %i.kj, i64 17)
  %i.kl = call noundef i64 @llvm.fshl.i64(i64 %i.kf, i64 %i.kf, i64 21)
  %i.km = xor i64 %i.kl, %i.kh                    ; 3 uses
  %i.kn = call noundef i64 @llvm.fshl.i64(i64 %i.ka, i64 %i.ka, i64 32)
  %i.ko = add i64 %i.km, %i.kn                    ; 2 uses
  %i.kp = add i64 %i.kj, %i.ko                    ; 3 uses
  %i.kq = xor i64 %i.kk, %i.kp                    ; 3 uses
  %i.kr = call noundef i64 @llvm.fshl.i64(i64 %i.kq, i64 %i.kq, i64 13)
  %i.ks = call noundef i64 @llvm.fshl.i64(i64 %i.km, i64 %i.km, i64 16)
  %i.kt = xor i64 %i.ks, %i.ko                    ; 3 uses
  %i.ku = call noundef i64 @llvm.fshl.i64(i64 %i.ki, i64 %i.ki, i64 32)
  %i.kv = add i64 %i.kt, %i.ku                    ; 2 uses
  %i.kw = add i64 %i.kq, %i.kv                    ; 3 uses
  %i.kx = xor i64 %i.kr, %i.kw                    ; 3 uses
  %i.ky = call noundef i64 @llvm.fshl.i64(i64 %i.kt, i64 %i.kt, i64 21)
  %i.kz = xor i64 %i.ky, %i.kv                    ; 3 uses
  %i.la = call noundef i64 @llvm.fshl.i64(i64 %i.kp, i64 %i.kp, i64 32)
  %i.lb = add i64 %i.kz, %i.la                    ; 2 uses
  %i.lc = add i64 %i.kx, %i.lb                    ; 3 uses
  %i.ld = call noundef i64 @llvm.fshl.i64(i64 %i.lc, i64 %i.lc, i64 32) ; 2 uses
  %i.le = call noundef i64 @llvm.fshl.i64(i64 %i.kz, i64 %i.kz, i64 16)
  %i.lf = xor i64 %i.le, %i.lb                    ; 3 uses
  %i.lg = call noundef i64 @llvm.fshl.i64(i64 %i.lf, i64 %i.lf, i64 21) ; 2 uses
  %i.lh = xor i64 %i.ld, %i.lg
  %i.li = call noundef i64 @llvm.fshl.i64(i64 %i.kx, i64 %i.kx, i64 17)
  %i.lj = xor i64 %i.li, %i.lc                    ; 2 uses
  %i.lk = xor i64 %i.lh, %i.lj                    ; 2 uses
  %i.ll = lshr i64 %i.lk, 32
  %i.lm = trunc nuw i64 %i.ll to i32
  %i.ln = urem i32 %i.lm, 27
  %i.lo = zext nneg i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr @814, i64 %i.lo ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 4
  %i.lr = load i32, ptr %i.lq, align 4, !alias.scope !34272, !noalias !34275, !noundef !12
  %i.ls = xor i64 %i.lj, 221                      ; 3 uses
  %i.lt = call noundef i64 @llvm.fshl.i64(i64 %i.kw, i64 %i.kw, i64 32)
  %i.lu = add i64 %i.lf, %i.lt                    ; 2 uses
  %i.lv = add i64 %i.ls, %i.lu                    ; 3 uses
  %i.lw = call noundef i64 @llvm.fshl.i64(i64 %i.lv, i64 %i.lv, i64 32)
  %i.lx = xor i64 %i.lg, %i.lu                    ; 3 uses
  %i.ly = call noundef i64 @llvm.fshl.i64(i64 %i.lx, i64 %i.lx, i64 16)
  %i.lz = add i64 %i.lx, %i.ld                    ; 2 uses
  %i.ma = xor i64 %i.ly, %i.lz                    ; 3 uses
  %i.mb = add i64 %i.lw, %i.ma                    ; 2 uses
  %i.mc = call noundef i64 @llvm.fshl.i64(i64 %i.ma, i64 %i.ma, i64 21)
  %i.md = xor i64 %i.mb, %i.mc                    ; 3 uses
  %i.me = call noundef i64 @llvm.fshl.i64(i64 %i.md, i64 %i.md, i64 16)
  %i.mf = call noundef i64 @llvm.fshl.i64(i64 %i.ls, i64 %i.ls, i64 13)
  %i.mg = xor i64 %i.mf, %i.lv                    ; 3 uses
  %i.mh = add i64 %i.mg, %i.lz                    ; 3 uses
  %i.mi = call noundef i64 @llvm.fshl.i64(i64 %i.mh, i64 %i.mh, i64 32)
  %i.mj = add i64 %i.md, %i.mi                    ; 2 uses
  %i.mk = xor i64 %i.me, %i.mj                    ; 3 uses
  %i.ml = call noundef i64 @llvm.fshl.i64(i64 %i.mk, i64 %i.mk, i64 21)
  %i.mm = call noundef i64 @llvm.fshl.i64(i64 %i.mg, i64 %i.mg, i64 17)
  %i.mn = xor i64 %i.mh, %i.mm                    ; 3 uses
  %i.mo = add i64 %i.mn, %i.mb                    ; 3 uses
  %i.mp = call noundef i64 @llvm.fshl.i64(i64 %i.mo, i64 %i.mo, i64 32)
  %i.mq = add i64 %i.mk, %i.mp                    ; 2 uses
  %i.mr = xor i64 %i.ml, %i.mq                    ; 3 uses
  %i.ms = call noundef i64 @llvm.fshl.i64(i64 %i.mr, i64 %i.mr, i64 16)
  %i.mt = call noundef i64 @llvm.fshl.i64(i64 %i.mn, i64 %i.mn, i64 13)
  %i.mu = xor i64 %i.mt, %i.mo                    ; 3 uses
  %i.mv = add i64 %i.mu, %i.mj                    ; 3 uses
  %i.mw = call noundef i64 @llvm.fshl.i64(i64 %i.mv, i64 %i.mv, i64 32)
  %i.mx = add i64 %i.mr, %i.mw                    ; 2 uses
  %i.my = xor i64 %i.ms, %i.mx                    ; 2 uses
  %i.mz = call noundef i64 @llvm.fshl.i64(i64 %i.my, i64 %i.my, i64 21)
  %i.na = call noundef i64 @llvm.fshl.i64(i64 %i.mu, i64 %i.mu, i64 17)
  %i.nb = xor i64 %i.na, %i.mv                    ; 3 uses
  %i.nc = call noundef i64 @llvm.fshl.i64(i64 %i.nb, i64 %i.nb, i64 13)
  %i.nd = add i64 %i.nb, %i.mq
  %i.ne = xor i64 %i.nc, %i.nd                    ; 3 uses
  %i.nf = call noundef i64 @llvm.fshl.i64(i64 %i.ne, i64 %i.ne, i64 17)
  %i.ng = xor i64 %i.mz, %i.nf
  %i.nh = add i64 %i.ne, %i.mx                    ; 2 uses
  %i.ni = lshr i64 %i.nh, 32
  %i.nj = xor i64 %i.ng, %i.ni
  %i.nk = xor i64 %i.nj, %i.nh
  %i.nl = trunc i64 %i.nk to i32
  %i.nm = load i32, ptr %i.lp, align 4, !alias.scope !34272, !noalias !34275, !noundef !12
  %i.nn = trunc i64 %i.lk to i32
  %i.no = mul i32 %i.nm, %i.nn
  %i.np = add i32 %i.no, %i.lr
  %i.nq = add i32 %i.np, %i.nl
  %i.nr = urem i32 %i.nq, 79
  %i.ns = zext nneg i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr @815, i64 %i.ns
  %i.nu = load i64, ptr %i.nt, align 8, !noalias !34277, !noundef !12
  %i.nv = getelementptr inbounds nuw [32 x i8], ptr @880, i64 %i.nu ; 4 uses
  %i.nw = getelementptr i8, ptr %i.nv, i64 8
  %.val6.i = load i64, ptr %i.nw, align 8, !noalias !34277, !noundef !12
  %i.nx = icmp eq i64 %.val6.i, %i.fq
  br i1 %i.nx, label %_RNvXCsbV8h3pAeO5B_10phf_sharedReINtB2_5PhfEqeE6phf_eqCsl8pJiQOn4hA_9coreutils.exit.i, label %_RINvMs2_NtCs5Jw8sa4iA4K_3phf11ordered_mapINtB6_10OrderedMapReTFINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB14_6cloned6ClonedINtNtNtB18_5slice4iter4IterB2F_EEEElFENtNtNtCsgNwXemyrBWj_12clap_builder7builder7command7CommandEE12get_internaleECsl8pJiQOn4hA_9coreutils.exit

_RNvXCsbV8h3pAeO5B_10phf_sharedReINtB2_5PhfEqeE6phf_eqCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.bb
  %.val5.i = load ptr, ptr %i.nv, align 8, !noalias !34277, !nonnull !12, !noundef !12
  %bcmp.i.i.i109 = call i32 @bcmp(ptr nonnull readonly %.val5.i, ptr nonnull readonly %i.fo, i64 %i.fq), !alias.scope !34278, !noalias !34282
  %i.ny = icmp eq i32 %bcmp.i.i.i109, 0
  br i1 %i.ny, label %bb.bc, label %_RINvMs2_NtCs5Jw8sa4iA4K_3phf11ordered_mapINtB6_10OrderedMapReTFINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB14_6cloned6ClonedINtNtNtB18_5slice4iter4IterB2F_EEEElFENtNtNtCsgNwXemyrBWj_12clap_builder7builder7command7CommandEE12get_internaleECsl8pJiQOn4hA_9coreutils.exit

bb.bc:                                            ; preds = %_RNvXCsbV8h3pAeO5B_10phf_sharedReINtB2_5PhfEqeE6phf_eqCsl8pJiQOn4hA_9coreutils.exit.i
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  store ptr %i.nv, ptr %.sroa.4172, align 8, !alias.scope !34246, !noalias !34283
  br label %_RINvMs2_NtCs5Jw8sa4iA4K_3phf11ordered_mapINtB6_10OrderedMapReTFINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB14_6cloned6ClonedINtNtNtB18_5slice4iter4IterB2F_EEEElFENtNtNtCsgNwXemyrBWj_12clap_builder7builder7command7CommandEE12get_internaleECsl8pJiQOn4hA_9coreutils.exit

_RINvMs2_NtCs5Jw8sa4iA4K_3phf11ordered_mapINtB6_10OrderedMapReTFINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB14_6cloned6ClonedINtNtNtB18_5slice4iter4IterB2F_EEEElFENtNtNtCsgNwXemyrBWj_12clap_builder7builder7command7CommandEE12get_internaleECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.bb, %_RNvXCsbV8h3pAeO5B_10phf_sharedReINtB2_5PhfEqeE6phf_eqCsl8pJiQOn4hA_9coreutils.exit.i, %bb.bc
  %.sink29.i.sroa.phi = phi ptr [ %.sroa.4172, %_RNvXCsbV8h3pAeO5B_10phf_sharedReINtB2_5PhfEqeE6phf_eqCsl8pJiQOn4hA_9coreutils.exit.i ], [ %.sroa.9173, %bb.bc ], [ %.sroa.4172, %bb.bb ]
  %.sink.i108 = phi ptr [ null, %_RNvXCsbV8h3pAeO5B_10phf_sharedReINtB2_5PhfEqeE6phf_eqCsl8pJiQOn4hA_9coreutils.exit.i ], [ %i.nz, %bb.bc ], [ null, %bb.bb ]
  store ptr %.sink.i108, ptr %.sink29.i.sroa.phi, align 8, !alias.scope !34246, !noalias !34283
  %.sroa.4172.0..sroa.4172.0..sroa.4172.0..sroa.4172.8. = load ptr, ptr %.sroa.4172, align 8
  %.not64 = icmp eq ptr %.sroa.4172.0..sroa.4172.0..sroa.4172.0..sroa.4172.8., null
  br i1 %.not64, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_RINvMs2_NtCs5Jw8sa4iA4K_3phf11ordered_mapINtB6_10OrderedMapReTFINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB14_6cloned6ClonedINtNtNtB18_5slice4iter4IterB2F_EEEElFENtNtNtCsgNwXemyrBWj_12clap_builder7builder7command7CommandEE12get_internaleECsl8pJiQOn4hA_9coreutils.exit
  %.sroa.9173.0..sroa.9173.0..sroa.9173.0..sroa.9173.16. = load ptr, ptr %.sroa.9173, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4172)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9173)
  %i.oa = load ptr, ptr %.sroa.9173.0..sroa.9173.0..sroa.9173.0..sroa.9173.16., align 8, !nonnull !12, !noundef !12
  call void @_RNvNtNtCsdSs45UTkAAB_9coreutils6common10validation26setup_localization_or_exit(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fo, i64 noundef %i.fq) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ob = call fastcc noundef ptr @_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 24) #51 ; 6 uses
  store i64 %.sroa.9145.0, ptr %i.ob, align 8
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  store ptr %.sroa.6144.0, ptr %.sroa.3.0..sroa_idx9, align 8
  %.sroa.411.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  store i64 %.sroa.9145.0, ptr %.sroa.411.0..sroa_idx12, align 8
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !34284)
  store ptr %i.ob, ptr %i.l, align 8, !alias.scope !34287
  %.sroa.4156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.ob, ptr %.sroa.4156.0..sroa_idx, align 8, !alias.scope !34287
  %.sroa.5157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 1, ptr %.sroa.5157.0..sroa_idx, align 8, !alias.scope !34287
  %.sroa.6158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.oc, ptr %.sroa.6158.0..sroa_idx, align 8, !alias.scope !34287
  %i.od = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %.sroa.0130.0, ptr %i.od, align 8, !alias.scope !34289, !noalias !34284
  %i.oe = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr %i.ad, ptr %i.oe, align 8, !alias.scope !34289, !noalias !34284
  %i.of = call noundef i32 %i.oa(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.l) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @_RNvNtCs2vKOLqTMYjT_3std7process4exit(i32 noundef %i.of) #52
  unreachable

bb.be:                                            ; preds = %_RINvMs2_NtCs5Jw8sa4iA4K_3phf11ordered_mapINtB6_10OrderedMapReTFINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB14_6cloned6ClonedINtNtNtB18_5slice4iter4IterB2F_EEEElFENtNtNtCsgNwXemyrBWj_12clap_builder7builder7command7CommandEE12get_internaleECsl8pJiQOn4hA_9coreutils.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4172)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9173)
  switch i64 %i.fq, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit [
    i64 6, label %bb.bf
    i64 2, label %bb.bh
    i64 0, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.thread
  ]

bb.bf:                                            ; preds = %bb.be
  %i.og = load i32, ptr %i.fo, align 1
  %i.oh = xor i32 %i.og, 1701326125
  %i.oi = getelementptr i8, ptr %i.fo, i64 4
  %i.oj = load i16, ptr %i.oi, align 1
  %i.ok = zext i16 %i.oj to i32
  %i.ol = xor i32 %i.ok, 28780
  %i.om = or i32 %i.oh, %i.ol
  %i.on = icmp ne i32 %i.om, 0
  %i.oo = zext i1 %i.on to i32
  %i.op = icmp eq i32 %i.oo, 0
  br i1 %i.op, label %bb.bg, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit

bb.bg:                                            ; preds = %bb.bh, %bb.bf
  call fastcc void @_RINvCsl8pJiQOn4hA_9coreutils5usageINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBB_6cloned6ClonedINtNtNtBF_5slice4iter4IterB2c_EEEEB2_(ptr nonnull @880, i64 79, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cu, i64 noundef %i.cv) #45
  call void @_RNvNtCs2vKOLqTMYjT_3std7process4exit(i32 noundef 0) #52
  unreachable

bb.bh:                                            ; preds = %bb.be
  %i.oq = load i16, ptr %i.fo, align 1
  %i.or = icmp ne i16 %i.oq, 26669
  %i.os = zext i1 %i.or to i32
  %i.ot = icmp eq i32 %i.os, 0
  br i1 %i.ot, label %bb.bg, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.be, %bb.bh, %bb.bf
  %rhsc = load i8, ptr %i.fo, align 1
  %i.ou = icmp eq i8 %rhsc, 45
  br i1 %i.ou, label %bb.bi, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.thread

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.thread: ; preds = %bb.be, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit
  call void @_RNvNtNtCsdSs45UTkAAB_9coreutils6common10validation9not_found(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6144.0, i64 noundef %.sroa.9145.0) #52
  unreachable

bb.bi:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit
  call void @_RNvNtNtCsdSs45UTkAAB_9coreutils6common10validation19unrecognized_option(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cu, i64 noundef %i.cv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6144.0, i64 noundef %.sroa.9145.0) #52
  unreachable

bb.bj:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.gs, ptr %i.p, align 8
  %i.ov = ptrtoint ptr %i.gs to i64               ; 3 uses
  %i.ow = and i64 %i.ov, 3
  switch i64 %i.ow, label %default.unreachable [
    i64 2, label %bb.bk
    i64 3, label %bb.bl
    i64 0, label %bb.bm
    i64 1, label %bb.bn
  ], !prof !91

bb.bk:                                            ; preds = %bb.bj
  %i.ox = lshr i64 %i.ov, 32
  %i.oy = trunc nuw i64 %i.ox to i32
  %i.oz = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #45
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  %i.pb = load ptr, ptr %i.pa, align 8, !nonnull !12, !noundef !12
  %i.pc = call noundef i8 %i.pb(i32 noundef %i.oy) #45, !inline_history !5493
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit

bb.bl:                                            ; preds = %bb.bj
  %i.pd = lshr i64 %i.ov, 32
  %i.pe = icmp ult ptr %i.gs, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.pd to i8  ; 2 uses
  %i.pf = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.pe)
  call void @llvm.assume(i1 %i.pf)
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit

bb.bm:                                            ; preds = %bb.bj
  %i.pg = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.ph = load i8, ptr %i.pg, align 8, !range !605, !noundef !12
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit

bb.bn:                                            ; preds = %bb.bj
  %i.pi = getelementptr i8, ptr %i.gs, i64 31
  %i.pj = load i8, ptr %i.pi, align 8, !range !605, !noundef !12
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.bk, %bb.bl, %bb.bm, %bb.bn
  %.sroa.0.0.i114 = phi i8 [ %i.pc, %bb.bk ], [ %switch.idx.cast.i.i.i, %bb.bl ], [ %i.ph, %bb.bm ], [ %i.pj, %bb.bn ]
  %.not58 = icmp eq i8 %.sroa.0.0.i114, 11
  br i1 %.not58, label %bb.bp, label %bb.bq

bb.bo:                                            ; preds = %bb.bp, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @_RNvNtCs2vKOLqTMYjT_3std7process4exit(i32 noundef 0) #52
  unreachable

bb.bp:                                            ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit
  call void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.bo

bb.bq:                                            ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error11strip_errno(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.n, ptr %i.m, align 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.448.0..sroa_idx, align 8
  %i.pk = call noundef ptr @_RNvXso_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StderrNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @215, ptr noundef nonnull %i.m) #45
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils(ptr %i.pk) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @_RNvNtCs2vKOLqTMYjT_3std7process4exit(i32 noundef 1) #52
  unreachable

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.ao, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.pl = call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stdout() #45
  store ptr %i.pl, ptr %i.y, align 8
  %i.pm = call noundef nonnull align 8 ptr @_RNvMsa_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stdout4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y) #45
  store ptr %i.pm, ptr %i.z, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.pn = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.br

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit104.thread222: ; preds = %bb.ap, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit104
  %.sroa.8149.0226 = phi ptr [ %i.gf, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit104 ], [ inttoptr (i64 1 to ptr), %bb.ap ]
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils(i64 %.val2.i99, ptr nonnull %.sroa.8149.0226) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.aa, align 8
  %i.pq = call noundef ptr @_RNvXso_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StderrNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @883, ptr noundef nonnull inttoptr (i64 57 to ptr)) #45
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils(ptr %i.pq) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @_RNvNtCs2vKOLqTMYjT_3std7process4exit(i32 noundef 1) #52
  unreachable

bb.br:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit, %bb.ce
  %.sroa.0151.0.idx250 = phi i64 [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit ], [ %.sroa.0151.0.add, %bb.ce ] ; 2 uses
  %.sroa.0151.0.ptr = getelementptr inbounds nuw i8, ptr @880, i64 %.sroa.0151.0.idx250
  %.sroa.0151.0.add = add nuw nsw i64 %.sroa.0151.0.idx250, 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %.sroa.0151.0.ptr, ptr %i.x, align 8, !captures !1848
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %i.x, ptr %i.w, align 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.436.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !34290
  store ptr %i.z, ptr %i.d, align 8, !noalias !34290
  store ptr null, ptr %i.pn, align 8, !noalias !34290
  %i.pr = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @325, ptr noundef nonnull @6, ptr noundef nonnull %i.w) #45
  %i.ps = load ptr, ptr %i.pn, align 8, !noalias !34290, !noundef !12 ; 11 uses
  %.not.i5.i = icmp eq ptr %i.ps, null            ; 2 uses
  br i1 %i.pr, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  br i1 %.not.i5.i, label %bb.bx, label %bb.bz, !prof !48

bb.bt:                                            ; preds = %bb.br
  br i1 %.not.i5.i, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECsl8pJiQOn4hA_9coreutils.exit.i.thread, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !34295
  %i.pt = ptrtoint ptr %i.ps to i64               ; 2 uses
  %i.pu = and i64 %i.pt, 3
  switch i64 %i.pu, label %default.unreachable [
end_hunk_2
