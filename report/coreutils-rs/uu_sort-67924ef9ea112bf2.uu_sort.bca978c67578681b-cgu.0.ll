Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_sort-67924ef9ea112bf2.uu_sort.bca978c67578681b-cgu.0?download=true
inline.NumInlined: 5661
inline.NumDeleted: 2556
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 129
begin_hunk_0_@_RINvNtNtCsgcf5BHVXlUt_7uu_sort8ext_sort8threaded8ext_sortINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB12_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB6_4openRB28_EEEB6_:bb.a
  br label %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.i.i.i.i.i.i

_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.i.i.i.i.i.i: ; preds = %bb.rl, %bb.rk, %bb.rj
  %.sroa.25.4.i.i277 = phi ptr [ %.sroa.25.3.i.i269, %bb.rk ], [ %i.bjn, %bb.rl ], [ %.sroa.25.3.i.i269, %bb.rj ] ; 2 uses
  %.sroa.15.5.i.i278 = phi ptr [ %.sroa.15.4.i.i271, %bb.rk ], [ %.sroa.15.4.i.i271, %bb.rl ], [ null, %bb.rj ] ; 4 uses
  %i.bjo = phi ptr [ %i.bjl, %bb.rk ], [ %i.bjn, %bb.rl ], [ %i.bjl, %bb.rj ]
  %.sroa.5.0.i.i.i.i.i.i279 = phi ptr [ undef, %bb.rk ], [ %i.bt, %bb.rl ], [ %.sroa.5.0.i32.i.i.i.i.i274, %bb.rj ] ; 7 uses
  %.sroa.01.0.i.i.i.i.i.i280 = phi ptr [ null, %bb.rk ], [ %i.bjl, %bb.rl ], [ %.sroa.01.0.i29.i.i.i.i.i275, %bb.rj ] ; 7 uses
  %.not19.i.i.i.i.i.i281 = icmp eq ptr %.sroa.06.0.i36.i.i.i.i.i273, null
  br i1 %.not19.i.i.i.i.i.i281, label %bb.rm, label %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs0_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.i.i.i.i.i.i

bb.rm:                                            ; preds = %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.i.i.i.i.i.i
  %i.bjp = icmp eq ptr %i.bjk, %i.aqz
  br i1 %i.bjp, label %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs0_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.thread.i.i.i.i.i.i, label %bb.rn

bb.rn:                                            ; preds = %bb.rm
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.bjk, i64 24 ; 2 uses
  br label %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs0_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.i.i.i.i.i.i

_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs0_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.i.i.i.i.i.i: ; preds = %bb.rn, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.i.i.i.i.i.i
  %.sroa.43.5.i.i282 = phi ptr [ %i.bjq, %bb.rn ], [ %.sroa.43.4.i.i266, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.i.i.i.i.i.i ] ; 3 uses
  %.sroa.33.5.i.i283 = phi ptr [ %.sroa.33.4.i.i268, %bb.rn ], [ null, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.bjr = phi ptr [ %i.bjq, %bb.rn ], [ %i.bjk, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.i.i.i.i.i.i ] ; 3 uses
  %.sroa.610.0.i.i.i.i.i.i284 = phi ptr [ %i.bs, %bb.rn ], [ %.sroa.610.0.i39.i.i.i.i.i272, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.i.i.i.i.i.i ] ; 6 uses
  %.sroa.06.0.i.i.i.i.i.i285 = phi ptr [ %i.bjk, %bb.rn ], [ %.sroa.06.0.i36.i.i.i.i.i273, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.i.i.i.i.i.i ] ; 5 uses
  %.not20.i.i.i.i.i.i286 = icmp eq ptr %.sroa.01.0.i.i.i.i.i.i280, null
  br i1 %.not20.i.i.i.i.i.i286, label %_RNvXs5_NtCseEyoWS67Tvd_9itertools10merge_joinINtB5_7MergeByINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB14_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB2c_8ext_sort8threaded13reader_writerQIBW_IB1K_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2c_4openRB3y_EENtNtB2c_5merge26WriteableCompressedTmpFileEs_0EIBW_B1J_NCB2G_s0_0ENCB2G_s1_0ENtNtNtB12_6traits8iterator8Iterator4nextB2c_.exit.thread.i.i.i.i.i, label %bb.ro

_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs0_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.thread.i.i.i.i.i.i: ; preds = %bb.rm
  %.not2045.i.i.i.i.i.i304 = icmp eq ptr %.sroa.01.0.i.i.i.i.i.i280, null
  br i1 %.not2045.i.i.i.i.i.i304, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtCseEyoWS67Tvd_9itertools8adaptors8coalesce10CoalesceByINtNtB13_10merge_join7MergeByIBN_INtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB2U_8ext_sort8threaded13reader_writerQIBN_IB2t_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2U_4openRB4g_EENtNtB2U_5merge26WriteableCompressedTmpFileEs_0EIBN_B2s_NCB3o_s0_0ENCB3o_s1_0EINtBZ_22DedupPred2CoalescePredNCB3o_s2_0ENtBZ_7NoCountENCB3o_s3_0ENtNtNtB9_6traits8iterator8Iterator4nextB2U_.exit.i.i, label %bb.rp

bb.ro:                                            ; preds = %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs0_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i.i.i.i.i279), "nonnull"(ptr %.sroa.610.0.i.i.i.i.i.i284) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !7168)
  call void @llvm.experimental.noalias.scope.decl(metadata !7169)
  %i.bjs = load ptr, ptr %.sroa.5.0.i.i.i.i.i.i279, align 8, !alias.scope !7168, !noalias !7170, !nonnull !11, !noundef !11
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bjs, i64 48
  %i.bju = load ptr, ptr %.sroa.610.0.i.i.i.i.i.i284, align 8, !alias.scope !7169, !noalias !7170, !nonnull !11, !noundef !11
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bju, i64 48
  %i.bjw = call fastcc noundef i8 @_RNvCsgcf5BHVXlUt_7uu_sort10compare_by(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.01.0.i.i.i.i.i.i280, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.06.0.i.i.i.i.i.i285, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.fe, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.bjt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.bjv) #34, !noalias !7171
  %.not.i29.i.i.i.i.i.i287 = icmp eq i8 %i.bjw, 1
  br i1 %.not.i29.i.i.i.i.i.i287, label %_RNvXs1_NtCseEyoWS67Tvd_9itertools10merge_joinNCINvNtNtCsgcf5BHVXlUt_7uu_sort8ext_sort8threaded13reader_writerQINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1T_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvBQ_4openRB2Z_EENtNtBQ_5merge26WriteableCompressedTmpFileEs1_0INtB5_14OrderingOrBoolTRNtBQ_4LineRNtNtBQ_6chunks5ChunkEB56_E5mergeBQ_.exit.i.i.i.i.i.i, label %_RNvXs5_NtCseEyoWS67Tvd_9itertools10merge_joinINtB5_7MergeByINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB14_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB2c_8ext_sort8threaded13reader_writerQIBW_IB1K_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2c_4openRB3y_EENtNtB2c_5merge26WriteableCompressedTmpFileEs_0EIBW_B1J_NCB2G_s0_0ENCB2G_s1_0ENtNtNtB12_6traits8iterator8Iterator4nextB2c_.exit.thread.i.i.i.i.i

bb.rp:                                            ; preds = %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs0_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.thread.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i.i.i.i.i279) ]
  br label %_RNvXs5_NtCseEyoWS67Tvd_9itertools10merge_joinINtB5_7MergeByINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB14_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB2c_8ext_sort8threaded13reader_writerQIBW_IB1K_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2c_4openRB3y_EENtNtB2c_5merge26WriteableCompressedTmpFileEs_0EIBW_B1J_NCB2G_s0_0ENCB2G_s1_0ENtNtNtB12_6traits8iterator8Iterator4nextB2c_.exit.thread.i.i.i.i.i

_RNvXs1_NtCseEyoWS67Tvd_9itertools10merge_joinNCINvNtNtCsgcf5BHVXlUt_7uu_sort8ext_sort8threaded13reader_writerQINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1T_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvBQ_4openRB2Z_EENtNtBQ_5merge26WriteableCompressedTmpFileEs1_0INtB5_14OrderingOrBoolTRNtBQ_4LineRNtNtBQ_6chunks5ChunkEB56_E5mergeBQ_.exit.i.i.i.i.i.i: ; preds = %bb.ro
  br label %_RNvXs5_NtCseEyoWS67Tvd_9itertools10merge_joinINtB5_7MergeByINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB14_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB2c_8ext_sort8threaded13reader_writerQIBW_IB1K_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2c_4openRB3y_EENtNtB2c_5merge26WriteableCompressedTmpFileEs_0EIBW_B1J_NCB2G_s0_0ENCB2G_s1_0ENtNtNtB12_6traits8iterator8Iterator4nextB2c_.exit.thread.i.i.i.i.i

_RNvXs5_NtCseEyoWS67Tvd_9itertools10merge_joinINtB5_7MergeByINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB14_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB2c_8ext_sort8threaded13reader_writerQIBW_IB1K_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2c_4openRB3y_EENtNtB2c_5merge26WriteableCompressedTmpFileEs_0EIBW_B1J_NCB2G_s0_0ENCB2G_s1_0ENtNtNtB12_6traits8iterator8Iterator4nextB2c_.exit.thread.i.i.i.i.i: ; preds = %_RNvXs1_NtCseEyoWS67Tvd_9itertools10merge_joinNCINvNtNtCsgcf5BHVXlUt_7uu_sort8ext_sort8threaded13reader_writerQINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1T_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvBQ_4openRB2Z_EENtNtBQ_5merge26WriteableCompressedTmpFileEs1_0INtB5_14OrderingOrBoolTRNtBQ_4LineRNtNtBQ_6chunks5ChunkEB56_E5mergeBQ_.exit.i.i.i.i.i.i, %bb.rp, %bb.ro, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs0_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.i.i.i.i.i.i
  %.sroa.43.6.i.i288 = phi ptr [ %.sroa.43.4.i.i266, %bb.rp ], [ %.sroa.43.5.i.i282, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs0_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.i.i.i.i.i.i ], [ %.sroa.43.5.i.i282, %_RNvXs1_NtCseEyoWS67Tvd_9itertools10merge_joinNCINvNtNtCsgcf5BHVXlUt_7uu_sort8ext_sort8threaded13reader_writerQINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1T_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvBQ_4openRB2Z_EENtNtBQ_5merge26WriteableCompressedTmpFileEs1_0INtB5_14OrderingOrBoolTRNtBQ_4LineRNtNtBQ_6chunks5ChunkEB56_E5mergeBQ_.exit.i.i.i.i.i.i ], [ %.sroa.43.5.i.i282, %bb.ro ] ; 2 uses
  %.sroa.39.4.i.i289 = phi ptr [ %.sroa.39.3.i.i267, %bb.rp ], [ %.sroa.39.3.i.i267, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs0_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.i.i.i.i.i.i ], [ %.sroa.39.3.i.i267, %_RNvXs1_NtCseEyoWS67Tvd_9itertools10merge_joinNCINvNtNtCsgcf5BHVXlUt_7uu_sort8ext_sort8threaded13reader_writerQINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1T_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvBQ_4openRB2Z_EENtNtBQ_5merge26WriteableCompressedTmpFileEs1_0INtB5_14OrderingOrBoolTRNtBQ_4LineRNtNtBQ_6chunks5ChunkEB56_E5mergeBQ_.exit.i.i.i.i.i.i ], [ %.sroa.610.0.i.i.i.i.i.i284, %bb.ro ] ; 2 uses
  %.sroa.33.6.i.i290 = phi ptr [ %.sroa.33.4.i.i268, %bb.rp ], [ %.sroa.33.5.i.i283, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs0_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.i.i.i.i.i.i ], [ %.sroa.33.5.i.i283, %_RNvXs1_NtCseEyoWS67Tvd_9itertools10merge_joinNCINvNtNtCsgcf5BHVXlUt_7uu_sort8ext_sort8threaded13reader_writerQINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1T_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvBQ_4openRB2Z_EENtNtBQ_5merge26WriteableCompressedTmpFileEs1_0INtB5_14OrderingOrBoolTRNtBQ_4LineRNtNtBQ_6chunks5ChunkEB56_E5mergeBQ_.exit.i.i.i.i.i.i ], [ %.sroa.06.0.i.i.i.i.i.i285, %bb.ro ] ; 2 uses
  %.sroa.21.4.i.i291 = phi ptr [ %.sroa.21.3.i.i270, %bb.rp ], [ %.sroa.21.3.i.i270, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs0_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.i.i.i.i.i.i ], [ %.sroa.5.0.i.i.i.i.i.i279, %_RNvXs1_NtCseEyoWS67Tvd_9itertools10merge_joinNCINvNtNtCsgcf5BHVXlUt_7uu_sort8ext_sort8threaded13reader_writerQINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1T_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvBQ_4openRB2Z_EENtNtBQ_5merge26WriteableCompressedTmpFileEs1_0INtB5_14OrderingOrBoolTRNtBQ_4LineRNtNtBQ_6chunks5ChunkEB56_E5mergeBQ_.exit.i.i.i.i.i.i ], [ %.sroa.21.3.i.i270, %bb.ro ] ; 2 uses
  %.sroa.15.6.i.i292 = phi ptr [ %.sroa.15.5.i.i278, %bb.rp ], [ %.sroa.15.5.i.i278, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs0_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.i.i.i.i.i.i ], [ %.sroa.01.0.i.i.i.i.i.i280, %_RNvXs1_NtCseEyoWS67Tvd_9itertools10merge_joinNCINvNtNtCsgcf5BHVXlUt_7uu_sort8ext_sort8threaded13reader_writerQINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1T_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvBQ_4openRB2Z_EENtNtBQ_5merge26WriteableCompressedTmpFileEs1_0INtB5_14OrderingOrBoolTRNtBQ_4LineRNtNtBQ_6chunks5ChunkEB56_E5mergeBQ_.exit.i.i.i.i.i.i ], [ %.sroa.15.5.i.i278, %bb.ro ] ; 2 uses
  %i.bjx = phi ptr [ %i.bjk, %bb.rp ], [ %i.bjr, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs0_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.i.i.i.i.i.i ], [ %i.bjr, %_RNvXs1_NtCseEyoWS67Tvd_9itertools10merge_joinNCINvNtNtCsgcf5BHVXlUt_7uu_sort8ext_sort8threaded13reader_writerQINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1T_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvBQ_4openRB2Z_EENtNtBQ_5merge26WriteableCompressedTmpFileEs1_0INtB5_14OrderingOrBoolTRNtBQ_4LineRNtNtBQ_6chunks5ChunkEB56_E5mergeBQ_.exit.i.i.i.i.i.i ], [ %i.bjr, %bb.ro ]
  %.sroa.610.0.i38.i.i.i.i.i293 = phi ptr [ %.sroa.610.0.i39.i.i.i.i.i272, %bb.rp ], [ %.sroa.610.0.i39.i.i.i.i.i272, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs0_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.i.i.i.i.i.i ], [ %.sroa.610.0.i39.i.i.i.i.i272, %_RNvXs1_NtCseEyoWS67Tvd_9itertools10merge_joinNCINvNtNtCsgcf5BHVXlUt_7uu_sort8ext_sort8threaded13reader_writerQINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1T_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvBQ_4openRB2Z_EENtNtBQ_5merge26WriteableCompressedTmpFileEs1_0INtB5_14OrderingOrBoolTRNtBQ_4LineRNtNtBQ_6chunks5ChunkEB56_E5mergeBQ_.exit.i.i.i.i.i.i ], [ %.sroa.610.0.i.i.i.i.i.i284, %bb.ro ]
  %.sroa.06.0.i34.i.i.i.i.i294 = phi ptr [ null, %bb.rp ], [ null, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs0_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.i.i.i.i.i.i ], [ null, %_RNvXs1_NtCseEyoWS67Tvd_9itertools10merge_joinNCINvNtNtCsgcf5BHVXlUt_7uu_sort8ext_sort8threaded13reader_writerQINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1T_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvBQ_4openRB2Z_EENtNtBQ_5merge26WriteableCompressedTmpFileEs1_0INtB5_14OrderingOrBoolTRNtBQ_4LineRNtNtBQ_6chunks5ChunkEB56_E5mergeBQ_.exit.i.i.i.i.i.i ], [ %.sroa.06.0.i.i.i.i.i.i285, %bb.ro ]
  %.sroa.5.0.i31.i.i.i.i.i295 = phi ptr [ %.sroa.5.0.i32.i.i.i.i.i274, %bb.rp ], [ %.sroa.5.0.i32.i.i.i.i.i274, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs0_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.i.i.i.i.i.i ], [ %.sroa.5.0.i.i.i.i.i.i279, %_RNvXs1_NtCseEyoWS67Tvd_9itertools10merge_joinNCINvNtNtCsgcf5BHVXlUt_7uu_sort8ext_sort8threaded13reader_writerQINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1T_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvBQ_4openRB2Z_EENtNtBQ_5merge26WriteableCompressedTmpFileEs1_0INtB5_14OrderingOrBoolTRNtBQ_4LineRNtNtBQ_6chunks5ChunkEB56_E5mergeBQ_.exit.i.i.i.i.i.i ], [ %.sroa.5.0.i32.i.i.i.i.i274, %bb.ro ]
  %.sroa.01.0.i27.i.i.i.i.i296 = phi ptr [ null, %bb.rp ], [ null, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs0_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.i.i.i.i.i.i ], [ %.sroa.01.0.i.i.i.i.i.i280, %_RNvXs1_NtCseEyoWS67Tvd_9itertools10merge_joinNCINvNtNtCsgcf5BHVXlUt_7uu_sort8ext_sort8threaded13reader_writerQINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1T_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvBQ_4openRB2Z_EENtNtBQ_5merge26WriteableCompressedTmpFileEs1_0INtB5_14OrderingOrBoolTRNtBQ_4LineRNtNtBQ_6chunks5ChunkEB56_E5mergeBQ_.exit.i.i.i.i.i.i ], [ null, %bb.ro ]
  %.sroa.0.0.i19.i.i.i.i.i297 = phi ptr [ %.sroa.01.0.i.i.i.i.i.i280, %bb.rp ], [ %.sroa.06.0.i.i.i.i.i.i285, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs0_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.i.i.i.i.i.i ], [ %.sroa.06.0.i.i.i.i.i.i285, %_RNvXs1_NtCseEyoWS67Tvd_9itertools10merge_joinNCINvNtNtCsgcf5BHVXlUt_7uu_sort8ext_sort8threaded13reader_writerQINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1T_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvBQ_4openRB2Z_EENtNtBQ_5merge26WriteableCompressedTmpFileEs1_0INtB5_14OrderingOrBoolTRNtBQ_4LineRNtNtBQ_6chunks5ChunkEB56_E5mergeBQ_.exit.i.i.i.i.i.i ], [ %.sroa.01.0.i.i.i.i.i.i280, %bb.ro ] ; 2 uses
  %.sroa.6.0.i18.i.i.i.i.i298 = phi ptr [ %.sroa.5.0.i.i.i.i.i.i279, %bb.rp ], [ %.sroa.610.0.i.i.i.i.i.i284, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs0_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.i.i.i.i.i.i ], [ %.sroa.610.0.i.i.i.i.i.i284, %_RNvXs1_NtCseEyoWS67Tvd_9itertools10merge_joinNCINvNtNtCsgcf5BHVXlUt_7uu_sort8ext_sort8threaded13reader_writerQINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1T_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvBQ_4openRB2Z_EENtNtBQ_5merge26WriteableCompressedTmpFileEs1_0INtB5_14OrderingOrBoolTRNtBQ_4LineRNtNtBQ_6chunks5ChunkEB56_E5mergeBQ_.exit.i.i.i.i.i.i ], [ %.sroa.5.0.i.i.i.i.i.i279, %bb.ro ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.i18.i.i.i.i.i298) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !7172)
  call void @llvm.experimental.noalias.scope.decl(metadata !7173)
  %i.bjy = load ptr, ptr %.sroa.6.0.i18.i.i.i.i.i298, align 8, !alias.scope !7174, !noalias !7175, !nonnull !11, !noundef !11
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.bjy, i64 48
  %i.bka = call fastcc noundef i8 @_RNvCsgcf5BHVXlUt_7uu_sort10compare_by(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.02.0.i.i.i.i265, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.0.i19.i.i.i.i.i297, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.fe, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.bjj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.bjz) #34, !noalias !7176
  %i.bkb = icmp eq i8 %i.bka, 0
  br i1 %i.bkb, label %bb.rj, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtCseEyoWS67Tvd_9itertools8adaptors8coalesce10CoalesceByINtNtB13_10merge_join7MergeByIBN_INtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB2U_8ext_sort8threaded13reader_writerQIBN_IB2t_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2U_4openRB4g_EENtNtB2U_5merge26WriteableCompressedTmpFileEs_0EIBN_B2s_NCB3o_s0_0ENCB3o_s1_0EINtBZ_22DedupPred2CoalescePredNCB3o_s2_0ENtBZ_7NoCountENCB3o_s3_0ENtNtNtB9_6traits8iterator8Iterator4nextB2U_.exit.i.i

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtCseEyoWS67Tvd_9itertools8adaptors8coalesce10CoalesceByINtNtB13_10merge_join7MergeByIBN_INtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB2U_8ext_sort8threaded13reader_writerQIBN_IB2t_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2U_4openRB4g_EENtNtB2U_5merge26WriteableCompressedTmpFileEs_0EIBN_B2s_NCB3o_s0_0ENCB3o_s1_0EINtBZ_22DedupPred2CoalescePredNCB3o_s2_0ENtBZ_7NoCountENCB3o_s3_0ENtNtNtB9_6traits8iterator8Iterator4nextB2U_.exit.i.i: ; preds = %_RNvXs5_NtCseEyoWS67Tvd_9itertools10merge_joinINtB5_7MergeByINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB14_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB2c_8ext_sort8threaded13reader_writerQIBW_IB1K_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2c_4openRB3y_EENtNtB2c_5merge26WriteableCompressedTmpFileEs_0EIBW_B1J_NCB2G_s0_0ENCB2G_s1_0ENtNtNtB12_6traits8iterator8Iterator4nextB2c_.exit.thread.i.i.i.i.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs0_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.thread.i.i.i.i.i.i
  %.sroa.43.7.i.i299 = phi ptr [ %.sroa.43.6.i.i288, %_RNvXs5_NtCseEyoWS67Tvd_9itertools10merge_joinINtB5_7MergeByINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB14_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB2c_8ext_sort8threaded13reader_writerQIBW_IB1K_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2c_4openRB3y_EENtNtB2c_5merge26WriteableCompressedTmpFileEs_0EIBW_B1J_NCB2G_s0_0ENCB2G_s1_0ENtNtNtB12_6traits8iterator8Iterator4nextB2c_.exit.thread.i.i.i.i.i ], [ %.sroa.43.4.i.i266, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs0_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.thread.i.i.i.i.i.i ]
  %.sroa.39.5.i.i300 = phi ptr [ %.sroa.39.4.i.i289, %_RNvXs5_NtCseEyoWS67Tvd_9itertools10merge_joinINtB5_7MergeByINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB14_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB2c_8ext_sort8threaded13reader_writerQIBW_IB1K_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2c_4openRB3y_EENtNtB2c_5merge26WriteableCompressedTmpFileEs_0EIBW_B1J_NCB2G_s0_0ENCB2G_s1_0ENtNtNtB12_6traits8iterator8Iterator4nextB2c_.exit.thread.i.i.i.i.i ], [ %.sroa.39.3.i.i267, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs0_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.thread.i.i.i.i.i.i ]
  %.sroa.33.7.i.i301 = phi ptr [ %.sroa.33.6.i.i290, %_RNvXs5_NtCseEyoWS67Tvd_9itertools10merge_joinINtB5_7MergeByINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB14_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB2c_8ext_sort8threaded13reader_writerQIBW_IB1K_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2c_4openRB3y_EENtNtB2c_5merge26WriteableCompressedTmpFileEs_0EIBW_B1J_NCB2G_s0_0ENCB2G_s1_0ENtNtNtB12_6traits8iterator8Iterator4nextB2c_.exit.thread.i.i.i.i.i ], [ %.sroa.33.4.i.i268, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs0_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.thread.i.i.i.i.i.i ]
  %.sroa.21.5.i.i302 = phi ptr [ %.sroa.21.4.i.i291, %_RNvXs5_NtCseEyoWS67Tvd_9itertools10merge_joinINtB5_7MergeByINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB14_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB2c_8ext_sort8threaded13reader_writerQIBW_IB1K_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2c_4openRB3y_EENtNtB2c_5merge26WriteableCompressedTmpFileEs_0EIBW_B1J_NCB2G_s0_0ENCB2G_s1_0ENtNtNtB12_6traits8iterator8Iterator4nextB2c_.exit.thread.i.i.i.i.i ], [ %.sroa.21.3.i.i270, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs0_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.thread.i.i.i.i.i.i ]
  %.sroa.15.7.i.i303 = phi ptr [ %.sroa.15.6.i.i292, %_RNvXs5_NtCseEyoWS67Tvd_9itertools10merge_joinINtB5_7MergeByINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB14_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB2c_8ext_sort8threaded13reader_writerQIBW_IB1K_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2c_4openRB3y_EENtNtB2c_5merge26WriteableCompressedTmpFileEs_0EIBW_B1J_NCB2G_s0_0ENCB2G_s1_0ENtNtNtB12_6traits8iterator8Iterator4nextB2c_.exit.thread.i.i.i.i.i ], [ %.sroa.15.5.i.i278, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs0_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.thread.i.i.i.i.i.i ]
  %.sroa.1143.1.i155.i = phi ptr [ %.sroa.6.0.i18.i.i.i.i.i298, %_RNvXs5_NtCseEyoWS67Tvd_9itertools10merge_joinINtB5_7MergeByINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB14_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB2c_8ext_sort8threaded13reader_writerQIBW_IB1K_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2c_4openRB3y_EENtNtB2c_5merge26WriteableCompressedTmpFileEs_0EIBW_B1J_NCB2G_s0_0ENCB2G_s1_0ENtNtNtB12_6traits8iterator8Iterator4nextB2c_.exit.thread.i.i.i.i.i ], [ %.sroa.1143.0.i151.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs0_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.thread.i.i.i.i.i.i ]
  %.sroa.7.2.i156.i = phi ptr [ %.sroa.0.0.i19.i.i.i.i.i297, %_RNvXs5_NtCseEyoWS67Tvd_9itertools10merge_joinINtB5_7MergeByINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB14_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB2c_8ext_sort8threaded13reader_writerQIBW_IB1K_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2c_4openRB3y_EENtNtB2c_5merge26WriteableCompressedTmpFileEs_0EIBW_B1J_NCB2G_s0_0ENCB2G_s1_0ENtNtNtB12_6traits8iterator8Iterator4nextB2c_.exit.thread.i.i.i.i.i ], [ null, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs0_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.thread.i.i.i.i.i.i ]
  %.val.i157.i = load ptr, ptr %.sroa.02.0.i.i.i.i265, align 8, !noalias !7159
  %i.bkc = getelementptr i8, ptr %.sroa.02.0.i.i.i.i265, i64 8
  %.val29.i158.i = load i64, ptr %i.bkc, align 8, !noalias !7159
  %i.bkd = call fastcc noundef ptr @_RINvMs7_Csgcf5BHVXlUt_7uu_sortNtB6_4Line5writeINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtBR_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEEB6_(ptr %.val.i157.i, i64 %.val29.i158.i, ptr noalias nofree noundef align 8 dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.fe) #34, !noalias !7177
  %i.bke = call fastcc ptr @_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtNtBL_4iter8adapters3map3MapINtNtNtCseEyoWS67Tvd_9itertools8adaptors8coalesce10CoalesceByINtNtB4t_10merge_join7MergeByIB3P_INtNtNtBL_5slice4iter4IterNtB3e_4LineENCINvNtNtB3e_8ext_sort8threaded13reader_writerQIB3P_IB5U_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB3e_4openRB7q_EENtNtB3e_5merge26WriteableCompressedTmpFileEs_0EIB3P_B5T_NCB6x_s0_0ENCB6x_s1_0EINtB4p_22DedupPred2CoalescePredNCB6x_s2_0ENtB4p_7NoCountENCB6x_s3_0EE0EB3e_(ptr noundef %i.bkd, ptr nonnull %i.biy, i64 %.sroa.45.0.i137.i) #34 ; 2 uses
  %.not28.i159.i = icmp eq ptr %i.bke, null
  br i1 %.not28.i159.i, label %bb.ra, label %.loopexit.i160.i

bb.rq:                                            ; preds = %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB1G_8ext_sort8threaded13reader_writerQIBZ_IB1f_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB1G_4openRB32_EENtNtB1G_5merge26WriteableCompressedTmpFileEs0_0EEINtB5_8FuseImplBY_E4nextB1G_.exit.thread.i.i.i.i.i, %bb.rb
  %i.bkf = call fastcc noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterINtNtBa_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EE9flush_bufCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a) #34, !noalias !7159 ; 2 uses
  %.not.i34.i166.i = icmp eq ptr %i.bkf, null
  br i1 %.not.i34.i166.i, label %bb.rr, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterINtNtBb_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEB1q_5flushCsgcf5BHVXlUt_7uu_sort.exit.i167.i

bb.rr:                                            ; preds = %bb.rq
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val.i.i170.i = load ptr, ptr %i.bkg, align 8, !alias.scope !7178, !noalias !7160, !nonnull !11, !noundef !11
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.val4.i.i171.i = load ptr, ptr %i.bkh, align 8, !alias.scope !7178, !noalias !7160, !nonnull !11, !align !13, !noundef !11
  %i.bki = getelementptr inbounds nuw i8, ptr %.val4.i.i171.i, i64 48
  %i.bkj = load ptr, ptr %i.bki, align 8, !invariant.load !11, !noalias !7159, !nonnull !11
  %i.bkk = call noundef ptr %i.bkj(ptr noundef nonnull %.val.i.i170.i) #38, !noalias !7159, !inline_history !6548
  br label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterINtNtBb_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEB1q_5flushCsgcf5BHVXlUt_7uu_sort.exit.i167.i

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterINtNtBb_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEB1q_5flushCsgcf5BHVXlUt_7uu_sort.exit.i167.i: ; preds = %bb.rr, %bb.rq
  %.sroa.0.0.i35.i168.i = phi ptr [ %i.bkk, %bb.rr ], [ %i.bkf, %bb.rq ]
  %i.bkl = call fastcc ptr @_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtNtBL_4iter8adapters3map3MapINtNtNtCseEyoWS67Tvd_9itertools8adaptors8coalesce10CoalesceByINtNtB4t_10merge_join7MergeByIB3P_INtNtNtBL_5slice4iter4IterNtB3e_4LineENCINvNtNtB3e_8ext_sort8threaded13reader_writerQIB3P_IB5U_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB3e_4openRB7q_EENtNtB3e_5merge26WriteableCompressedTmpFileEs_0EIB3P_B5T_NCB6x_s0_0ENCB6x_s1_0EINtB4p_22DedupPred2CoalescePredNCB6x_s2_0ENtB4p_7NoCountENCB6x_s3_0EE0EB3e_(ptr noundef %.sroa.0.0.i35.i168.i, ptr nonnull %i.biy, i64 %.sroa.45.0.i137.i) #34 ; 2 uses
  %.not27.i169.i = icmp eq ptr %i.bkl, null
  br i1 %.not27.i169.i, label %bb.rs, label %.loopexit.i160.i

bb.rs:                                            ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterINtNtBb_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEB1q_5flushCsgcf5BHVXlUt_7uu_sort.exit.i167.i
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtBK_5boxed3BoxDNtNtNtB4_2io5write5WriteEL_EEECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(48) %i.a) #34, !noalias !7159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7160
  br i1 %i.biv, label %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtCseEyoWS67Tvd_9itertools10merge_join7MergeByIBD_INtNtNtBL_5slice4iter4IterNtB2_4LineENCINvNtNtB2_8ext_sort8threaded13reader_writerQIBD_IB2i_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB3L_EENtNtB2_5merge26WriteableCompressedTmpFileEs_0EIBD_B2h_NCB2U_s0_0ENCB2U_s1_0ENCB2U_s4_0EEB2_.exit.thread.i, label %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtCseEyoWS67Tvd_9itertools8adaptors8coalesce10CoalesceByINtNtB1x_10merge_join7MergeByIBD_INtNtNtBL_5slice4iter4IterNtB2_4LineENCINvNtNtB2_8ext_sort8threaded13reader_writerQIBD_IB2X_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB4q_EENtNtB2_5merge26WriteableCompressedTmpFileEs_0EIBD_B2W_NCB3z_s0_0ENCB3z_s1_0EINtB1t_22DedupPred2CoalescePredNCB3z_s2_0ENtB1t_7NoCountENCB3z_s3_0EEB2_.exit.thread.i

_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtCseEyoWS67Tvd_9itertools8adaptors8coalesce10CoalesceByINtNtB1x_10merge_join7MergeByIBD_INtNtNtBL_5slice4iter4IterNtB2_4LineENCINvNtNtB2_8ext_sort8threaded13reader_writerQIBD_IB2X_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB4q_EENtNtB2_5merge26WriteableCompressedTmpFileEs_0EIBD_B2W_NCB3z_s0_0ENCB3z_s1_0EINtB1t_22DedupPred2CoalescePredNCB3z_s2_0ENtB1t_7NoCountENCB3z_s3_0EEB2_.exit.thread.i: ; preds = %bb.rs
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.biy, i64 noundef %.sroa.45.0.i137.i, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !7159
  br label %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtCseEyoWS67Tvd_9itertools10merge_join7MergeByIBD_INtNtNtBL_5slice4iter4IterNtB2_4LineENCINvNtNtB2_8ext_sort8threaded13reader_writerQIBD_IB2i_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB3L_EENtNtB2_5merge26WriteableCompressedTmpFileEs_0EIBD_B2h_NCB2U_s0_0ENCB2U_s1_0ENCB2U_s4_0EEB2_.exit.thread.i

.loopexit.i160.i:                                 ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtCseEyoWS67Tvd_9itertools8adaptors8coalesce10CoalesceByINtNtB13_10merge_join7MergeByIBN_INtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB2U_8ext_sort8threaded13reader_writerQIBN_IB2t_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2U_4openRB4g_EENtNtB2U_5merge26WriteableCompressedTmpFileEs_0EIBN_B2s_NCB3o_s0_0ENCB3o_s1_0EINtBZ_22DedupPred2CoalescePredNCB3o_s2_0ENtBZ_7NoCountENCB3o_s3_0ENtNtNtB9_6traits8iterator8Iterator4nextB2U_.exit.i.i, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterINtNtBb_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEB1q_5flushCsgcf5BHVXlUt_7uu_sort.exit.i167.i
  %.sroa.0.1.i161.i = phi ptr [ %i.bkl, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterINtNtBb_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEB1q_5flushCsgcf5BHVXlUt_7uu_sort.exit.i167.i ], [ %i.bke, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtCseEyoWS67Tvd_9itertools8adaptors8coalesce10CoalesceByINtNtB13_10merge_join7MergeByIBN_INtNtNtBb_5slice4iter4IterNtCsgcf5BHVXlUt_7uu_sort4LineENCINvNtNtB2U_8ext_sort8threaded13reader_writerQIBN_IB2t_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2U_4openRB4g_EENtNtB2U_5merge26WriteableCompressedTmpFileEs_0EIBN_B2s_NCB3o_s0_0ENCB3o_s1_0EINtBZ_22DedupPred2CoalescePredNCB3o_s2_0ENtBZ_7NoCountENCB3o_s3_0ENtNtNtB9_6traits8iterator8Iterator4nextB2U_.exit.i.i ] ; 2 uses
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtBK_5boxed3BoxDNtNtNtB4_2io5write5WriteEL_EEECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(48) %i.a) #34, !noalias !7159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7160
  br i1 %i.biv, label %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtCseEyoWS67Tvd_9itertools10merge_join7MergeByIBD_INtNtNtBL_5slice4iter4IterNtB2_4LineENCINvNtNtB2_8ext_sort8threaded13reader_writerQIBD_IB2i_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB3L_EENtNtB2_5merge26WriteableCompressedTmpFileEs_0EIBD_B2h_NCB2U_s0_0ENCB2U_s1_0ENCB2U_s4_0EEB2_.exit.thread63.i, label %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtCseEyoWS67Tvd_9itertools8adaptors8coalesce10CoalesceByINtNtB1x_10merge_join7MergeByIBD_INtNtNtBL_5slice4iter4IterNtB2_4LineENCINvNtNtB2_8ext_sort8threaded13reader_writerQIBD_IB2X_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB4q_EENtNtB2_5merge26WriteableCompressedTmpFileEs_0EIBD_B2W_NCB3z_s0_0ENCB3z_s1_0EINtB1t_22DedupPred2CoalescePredNCB3z_s2_0ENtB1t_7NoCountENCB3z_s3_0EEB2_.exit.i

_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtCseEyoWS67Tvd_9itertools8adaptors8coalesce10CoalesceByINtNtB1x_10merge_join7MergeByIBD_INtNtNtBL_5slice4iter4IterNtB2_4LineENCINvNtNtB2_8ext_sort8threaded13reader_writerQIBD_IB2X_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB4q_EENtNtB2_5merge26WriteableCompressedTmpFileEs_0EIBD_B2W_NCB3z_s0_0ENCB3z_s1_0EINtB1t_22DedupPred2CoalescePredNCB3z_s2_0ENtB1t_7NoCountENCB3z_s3_0EEB2_.exit.i: ; preds = %.loopexit.i160.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.biy, i64 noundef %.sroa.45.0.i137.i, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !7159
  br label %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtCseEyoWS67Tvd_9itertools10merge_join7MergeByIBD_INtNtNtBL_5slice4iter4IterNtB2_4LineENCINvNtNtB2_8ext_sort8threaded13reader_writerQIBD_IB2i_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB3L_EENtNtB2_5merge26WriteableCompressedTmpFileEs_0EIBD_B2h_NCB2U_s0_0ENCB2U_s1_0ENCB2U_s4_0EEB2_.exit.thread63.i

_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtCseEyoWS67Tvd_9itertools10merge_join7MergeByIBD_INtNtNtBL_5slice4iter4IterNtB2_4LineENCINvNtNtB2_8ext_sort8threaded13reader_writerQIBD_IB2i_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB3L_EENtNtB2_5merge26WriteableCompressedTmpFileEs_0EIBD_B2h_NCB2U_s0_0ENCB2U_s1_0ENCB2U_s4_0EEB2_.exit.thread.i: ; preds = %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtCseEyoWS67Tvd_9itertools8adaptors8coalesce10CoalesceByINtNtB1x_10merge_join7MergeByIBD_INtNtNtBL_5slice4iter4IterNtB2_4LineENCINvNtNtB2_8ext_sort8threaded13reader_writerQIBD_IB2X_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB4q_EENtNtB2_5merge26WriteableCompressedTmpFileEs_0EIBD_B2W_NCB3z_s0_0ENCB3z_s1_0EINtB1t_22DedupPred2CoalescePredNCB3z_s2_0ENtB1t_7NoCountENCB3z_s3_0EEB2_.exit.thread.i, %bb.rs, %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtCseEyoWS67Tvd_9itertools10merge_join7MergeByIBD_INtNtNtBL_5slice4iter4IterNtB2_4LineENCINvNtNtB2_8ext_sort8threaded13reader_writerQIBD_IB2i_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB3L_EENtNtB2_5merge26WriteableCompressedTmpFileEs_0EIBD_B2h_NCB2U_s0_0ENCB2U_s1_0ENCB2U_s4_0EEB2_.exit.thread357.i, %bb.qu
  call void @_RNvXs2_NtCsgcf5BHVXlUt_7uu_sort6chunksNtB5_5ChunkNtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.bs) #34, !noalias !6958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !6881
  call void @_RNvXs2_NtCsgcf5BHVXlUt_7uu_sort6chunksNtB5_5ChunkNtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.bt) #34, !noalias !6958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !6881
  br label %_RINvNtNtCsgcf5BHVXlUt_7uu_sort8ext_sort8threaded13reader_writerQINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB6_4openRB2f_EENtNtB6_5merge21WriteablePlainTmpFileEB6_.exit

_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtCseEyoWS67Tvd_9itertools10merge_join7MergeByIBD_INtNtNtBL_5slice4iter4IterNtB2_4LineENCINvNtNtB2_8ext_sort8threaded13reader_writerQIBD_IB2i_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB3L_EENtNtB2_5merge26WriteableCompressedTmpFileEs_0EIBD_B2h_NCB2U_s0_0ENCB2U_s1_0ENCB2U_s4_0EEB2_.exit.thread63.i: ; preds = %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtCseEyoWS67Tvd_9itertools8adaptors8coalesce10CoalesceByINtNtB1x_10merge_join7MergeByIBD_INtNtNtBL_5slice4iter4IterNtB2_4LineENCINvNtNtB2_8ext_sort8threaded13reader_writerQIBD_IB2X_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB4q_EENtNtB2_5merge26WriteableCompressedTmpFileEs_0EIBD_B2W_NCB3z_s0_0ENCB3z_s1_0EINtB1t_22DedupPred2CoalescePredNCB3z_s2_0ENtB1t_7NoCountENCB3z_s3_0EEB2_.exit.i, %.loopexit.i160.i, %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtCseEyoWS67Tvd_9itertools10merge_join7MergeByIBD_INtNtNtBL_5slice4iter4IterNtB2_4LineENCINvNtNtB2_8ext_sort8threaded13reader_writerQIBD_IB2i_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB3L_EENtNtB2_5merge26WriteableCompressedTmpFileEs_0EIBD_B2h_NCB2U_s0_0ENCB2U_s1_0ENCB2U_s4_0EEB2_.exit.i, %.loopexit.i123.i
  %.sroa.0.2.i232 = phi ptr [ %.sroa.0.1.i124.i, %.loopexit.i123.i ], [ %.sroa.0.1.i124.i, %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtCseEyoWS67Tvd_9itertools10merge_join7MergeByIBD_INtNtNtBL_5slice4iter4IterNtB2_4LineENCINvNtNtB2_8ext_sort8threaded13reader_writerQIBD_IB2i_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB3L_EENtNtB2_5merge26WriteableCompressedTmpFileEs_0EIBD_B2h_NCB2U_s0_0ENCB2U_s1_0ENCB2U_s4_0EEB2_.exit.i ], [ %.sroa.0.1.i161.i, %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtCseEyoWS67Tvd_9itertools8adaptors8coalesce10CoalesceByINtNtB1x_10merge_join7MergeByIBD_INtNtNtBL_5slice4iter4IterNtB2_4LineENCINvNtNtB2_8ext_sort8threaded13reader_writerQIBD_IB2X_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB4q_EENtNtB2_5merge26WriteableCompressedTmpFileEs_0EIBD_B2W_NCB3z_s0_0ENCB3z_s1_0EINtB1t_22DedupPred2CoalescePredNCB3z_s2_0ENtB1t_7NoCountENCB3z_s3_0EEB2_.exit.i ], [ %.sroa.0.1.i161.i, %.loopexit.i160.i ]
  call void @_RNvXs2_NtCsgcf5BHVXlUt_7uu_sort6chunksNtB5_5ChunkNtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.bs) #34, !noalias !6958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !6881
  call void @_RNvXs2_NtCsgcf5BHVXlUt_7uu_sort6chunksNtB5_5ChunkNtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.bt) #34, !noalias !6958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !6881
  br label %_RINvNtNtCsgcf5BHVXlUt_7uu_sort8ext_sort8threaded13reader_writerQINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB6_4openRB2f_EENtNtB6_5merge21WriteablePlainTmpFileEB6_.exit

_RINvNtNtCsgcf5BHVXlUt_7uu_sort8ext_sort8threaded13reader_writerQINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB6_4openRB2f_EENtNtB6_5merge21WriteablePlainTmpFileEB6_.exit: ; preds = %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtCseEyoWS67Tvd_9itertools10merge_join7MergeByIBD_INtNtNtBL_5slice4iter4IterNtB2_4LineENCINvNtNtB2_8ext_sort8threaded13reader_writerQIBD_IB2i_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB3L_EENtNtB2_5merge26WriteableCompressedTmpFileEs_0EIBD_B2h_NCB2U_s0_0ENCB2U_s1_0ENCB2U_s4_0EEB2_.exit.thread63.i, %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtCseEyoWS67Tvd_9itertools10merge_join7MergeByIBD_INtNtNtBL_5slice4iter4IterNtB2_4LineENCINvNtNtB2_8ext_sort8threaded13reader_writerQIBD_IB2i_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB3L_EENtNtB2_5merge26WriteableCompressedTmpFileEs_0EIBD_B2h_NCB2U_s0_0ENCB2U_s1_0ENCB2U_s4_0EEB2_.exit.thread.i, %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtCseEyoWS67Tvd_9itertools8adaptors8coalesce10CoalesceByINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtB2_4LineEINtBF_22DedupPred2CoalescePredNCINvNtNtB2_8ext_sort8threaded13reader_writerQINtNtNtNtB1I_4iter8adapters3map3MapIB1C_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB4k_EENtNtB2_5merge26WriteableCompressedTmpFileE0ENtBF_7NoCountEEB2_.exit.thread57.i, %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtCseEyoWS67Tvd_9itertools8adaptors8coalesce10CoalesceByINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtB2_4LineEINtBF_22DedupPred2CoalescePredNCINvNtNtB2_8ext_sort8threaded13reader_writerQINtNtNtNtB1I_4iter8adapters3map3MapIB1C_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB4k_EENtNtB2_5merge26WriteableCompressedTmpFileE0ENtBF_7NoCountEEB2_.exit.thread.i, %_RINvNtCsgcf5BHVXlUt_7uu_sort5merge21merge_with_file_limitNtB2_23CompressedTmpMergeInputINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtB2_23ClosedCompressedTmpFileENvYB2Z_NtB2_13ClosedTmpFile6reopenENtB2_26WriteableCompressedTmpFileEB4_.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtBI_2fs4FileEECsgcf5BHVXlUt_7uu_sort.exit.i.i65.i333, %bb.ky, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtBI_2fs4FileEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i336, %bb.kt, %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtCseEyoWS67Tvd_9itertools10merge_join7MergeByIBD_INtNtNtBL_5slice4iter4IterNtB2_4LineENCINvNtNtB2_8ext_sort8threaded13reader_writerQIBD_IB2i_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB3L_EENtNtB2_5merge21WriteablePlainTmpFileEs_0EIBD_B2h_NCB2U_s0_0ENCB2U_s1_0ENCB2U_s4_0EEB2_.exit.thread67.i, %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtCseEyoWS67Tvd_9itertools10merge_join7MergeByIBD_INtNtNtBL_5slice4iter4IterNtB2_4LineENCINvNtNtB2_8ext_sort8threaded13reader_writerQIBD_IB2i_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB3L_EENtNtB2_5merge21WriteablePlainTmpFileEs_0EIBD_B2h_NCB2U_s0_0ENCB2U_s1_0ENCB2U_s4_0EEB2_.exit.thread.i, %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtCseEyoWS67Tvd_9itertools8adaptors8coalesce10CoalesceByINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtB2_4LineEINtBF_22DedupPred2CoalescePredNCINvNtNtB2_8ext_sort8threaded13reader_writerQINtNtNtNtB1I_4iter8adapters3map3MapIB1C_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB4k_EENtNtB2_5merge21WriteablePlainTmpFileE0ENtBF_7NoCountEEB2_.exit.thread61.i, %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtCseEyoWS67Tvd_9itertools8adaptors8coalesce10CoalesceByINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtB2_4LineEINtBF_22DedupPred2CoalescePredNCINvNtNtB2_8ext_sort8threaded13reader_writerQINtNtNtNtB1I_4iter8adapters3map3MapIB1C_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB4k_EENtNtB2_5merge21WriteablePlainTmpFileE0ENtBF_7NoCountEEB2_.exit.thread.i, %_RINvNtCsgcf5BHVXlUt_7uu_sort5merge21merge_with_file_limitNtB2_18PlainTmpMergeInputINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtB2_18ClosedPlainTmpFileENvYB2U_NtB2_13ClosedTmpFile6reopenENtB2_21WriteablePlainTmpFileEB4_.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtBI_2fs4FileEECsgcf5BHVXlUt_7uu_sort.exit.i.i65.i, %bb.cm, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtBI_2fs4FileEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i, %bb.ch
  %.sroa.0.0.i148.pn = phi ptr [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtBI_2fs4FileEECsgcf5BHVXlUt_7uu_sort.exit.i.i65.i ], [ null, %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtCseEyoWS67Tvd_9itertools8adaptors8coalesce10CoalesceByINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtB2_4LineEINtBF_22DedupPred2CoalescePredNCINvNtNtB2_8ext_sort8threaded13reader_writerQINtNtNtNtB1I_4iter8adapters3map3MapIB1C_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB4k_EENtNtB2_5merge21WriteablePlainTmpFileE0ENtBF_7NoCountEEB2_.exit.thread.i ], [ %.sroa.10.4.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtBI_2fs4FileEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i ], [ %.sroa.0.1.i, %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtCseEyoWS67Tvd_9itertools8adaptors8coalesce10CoalesceByINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtB2_4LineEINtBF_22DedupPred2CoalescePredNCINvNtNtB2_8ext_sort8threaded13reader_writerQINtNtNtNtB1I_4iter8adapters3map3MapIB1C_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB4k_EENtNtB2_5merge21WriteablePlainTmpFileE0ENtBF_7NoCountEEB2_.exit.thread61.i ], [ %i.agk, %_RINvNtCsgcf5BHVXlUt_7uu_sort5merge21merge_with_file_limitNtB2_18PlainTmpMergeInputINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtB2_18ClosedPlainTmpFileENvYB2U_NtB2_13ClosedTmpFile6reopenENtB2_21WriteablePlainTmpFileEB4_.exit.i ], [ %.sroa.0.2.i, %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtCseEyoWS67Tvd_9itertools10merge_join7MergeByIBD_INtNtNtBL_5slice4iter4IterNtB2_4LineENCINvNtNtB2_8ext_sort8threaded13reader_writerQIBD_IB2i_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB3L_EENtNtB2_5merge21WriteablePlainTmpFileEs_0EIBD_B2h_NCB2U_s0_0ENCB2U_s1_0ENCB2U_s4_0EEB2_.exit.thread67.i ], [ null, %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtCseEyoWS67Tvd_9itertools10merge_join7MergeByIBD_INtNtNtBL_5slice4iter4IterNtB2_4LineENCINvNtNtB2_8ext_sort8threaded13reader_writerQIBD_IB2i_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB3L_EENtNtB2_5merge21WriteablePlainTmpFileEs_0EIBD_B2h_NCB2U_s0_0ENCB2U_s1_0ENCB2U_s4_0EEB2_.exit.thread.i ], [ %.sroa.10.4.i, %bb.ch ], [ null, %bb.cm ], [ null, %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtCseEyoWS67Tvd_9itertools8adaptors8coalesce10CoalesceByINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtB2_4LineEINtBF_22DedupPred2CoalescePredNCINvNtNtB2_8ext_sort8threaded13reader_writerQINtNtNtNtB1I_4iter8adapters3map3MapIB1C_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB4k_EENtNtB2_5merge26WriteableCompressedTmpFileE0ENtBF_7NoCountEEB2_.exit.thread.i ], [ %.sroa.11.5.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtBI_2fs4FileEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i336 ], [ %.sroa.0.1.i309, %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtCseEyoWS67Tvd_9itertools8adaptors8coalesce10CoalesceByINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtB2_4LineEINtBF_22DedupPred2CoalescePredNCINvNtNtB2_8ext_sort8threaded13reader_writerQINtNtNtNtB1I_4iter8adapters3map3MapIB1C_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB4k_EENtNtB2_5merge26WriteableCompressedTmpFileE0ENtBF_7NoCountEEB2_.exit.thread57.i ], [ %i.bgn, %_RINvNtCsgcf5BHVXlUt_7uu_sort5merge21merge_with_file_limitNtB2_23CompressedTmpMergeInputINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtB2_23ClosedCompressedTmpFileENvYB2Z_NtB2_13ClosedTmpFile6reopenENtB2_26WriteableCompressedTmpFileEB4_.exit.i ], [ %.sroa.0.2.i232, %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtCseEyoWS67Tvd_9itertools10merge_join7MergeByIBD_INtNtNtBL_5slice4iter4IterNtB2_4LineENCINvNtNtB2_8ext_sort8threaded13reader_writerQIBD_IB2i_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB3L_EENtNtB2_5merge26WriteableCompressedTmpFileEs_0EIBD_B2h_NCB2U_s0_0ENCB2U_s1_0ENCB2U_s4_0EEB2_.exit.thread63.i ], [ null, %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtCseEyoWS67Tvd_9itertools10merge_join7MergeByIBD_INtNtNtBL_5slice4iter4IterNtB2_4LineENCINvNtNtB2_8ext_sort8threaded13reader_writerQIBD_IB2i_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB3L_EENtNtB2_5merge26WriteableCompressedTmpFileEs_0EIBD_B2h_NCB2U_s0_0ENCB2U_s1_0ENCB2U_s4_0EEB2_.exit.thread.i ], [ %.sroa.11.5.i, %bb.kt ], [ null, %bb.ky ], [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtBI_2fs4FileEECsgcf5BHVXlUt_7uu_sort.exit.i.i65.i333 ]
  %.sroa.10.0.i147.pn = phi ptr [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtBI_2fs4FileEECsgcf5BHVXlUt_7uu_sort.exit.i.i65.i ], [ undef, %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtCseEyoWS67Tvd_9itertools8adaptors8coalesce10CoalesceByINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtB2_4LineEINtBF_22DedupPred2CoalescePredNCINvNtNtB2_8ext_sort8threaded13reader_writerQINtNtNtNtB1I_4iter8adapters3map3MapIB1C_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB4k_EENtNtB2_5merge21WriteablePlainTmpFileE0ENtBF_7NoCountEEB2_.exit.thread.i ], [ %i.qe, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtBI_2fs4FileEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i ], [ %.sroa.10.1.i, %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtCseEyoWS67Tvd_9itertools8adaptors8coalesce10CoalesceByINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtB2_4LineEINtBF_22DedupPred2CoalescePredNCINvNtNtB2_8ext_sort8threaded13reader_writerQINtNtNtNtB1I_4iter8adapters3map3MapIB1C_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB4k_EENtNtB2_5merge21WriteablePlainTmpFileE0ENtBF_7NoCountEEB2_.exit.thread61.i ], [ %spec.select.i, %_RINvNtCsgcf5BHVXlUt_7uu_sort5merge21merge_with_file_limitNtB2_18PlainTmpMergeInputINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtB2_18ClosedPlainTmpFileENvYB2U_NtB2_13ClosedTmpFile6reopenENtB2_21WriteablePlainTmpFileEB4_.exit.i ], [ @151, %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtCseEyoWS67Tvd_9itertools10merge_join7MergeByIBD_INtNtNtBL_5slice4iter4IterNtB2_4LineENCINvNtNtB2_8ext_sort8threaded13reader_writerQIBD_IB2i_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB3L_EENtNtB2_5merge21WriteablePlainTmpFileEs_0EIBD_B2h_NCB2U_s0_0ENCB2U_s1_0ENCB2U_s4_0EEB2_.exit.thread67.i ], [ undef, %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtCseEyoWS67Tvd_9itertools10merge_join7MergeByIBD_INtNtNtBL_5slice4iter4IterNtB2_4LineENCINvNtNtB2_8ext_sort8threaded13reader_writerQIBD_IB2i_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB3L_EENtNtB2_5merge21WriteablePlainTmpFileEs_0EIBD_B2h_NCB2U_s0_0ENCB2U_s1_0ENCB2U_s4_0EEB2_.exit.thread.i ], [ %i.qe, %bb.ch ], [ undef, %bb.cm ], [ undef, %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtCseEyoWS67Tvd_9itertools8adaptors8coalesce10CoalesceByINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtB2_4LineEINtBF_22DedupPred2CoalescePredNCINvNtNtB2_8ext_sort8threaded13reader_writerQINtNtNtNtB1I_4iter8adapters3map3MapIB1C_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB4k_EENtNtB2_5merge26WriteableCompressedTmpFileE0ENtBF_7NoCountEEB2_.exit.thread.i ], [ %i.apr, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtBI_2fs4FileEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i336 ], [ %.sroa.10.1.i308, %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtCseEyoWS67Tvd_9itertools8adaptors8coalesce10CoalesceByINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtB2_4LineEINtBF_22DedupPred2CoalescePredNCINvNtNtB2_8ext_sort8threaded13reader_writerQINtNtNtNtB1I_4iter8adapters3map3MapIB1C_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB4k_EENtNtB2_5merge26WriteableCompressedTmpFileE0ENtBF_7NoCountEEB2_.exit.thread57.i ], [ %spec.select.i146, %_RINvNtCsgcf5BHVXlUt_7uu_sort5merge21merge_with_file_limitNtB2_23CompressedTmpMergeInputINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtB2_23ClosedCompressedTmpFileENvYB2Z_NtB2_13ClosedTmpFile6reopenENtB2_26WriteableCompressedTmpFileEB4_.exit.i ], [ @151, %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtCseEyoWS67Tvd_9itertools10merge_join7MergeByIBD_INtNtNtBL_5slice4iter4IterNtB2_4LineENCINvNtNtB2_8ext_sort8threaded13reader_writerQIBD_IB2i_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB3L_EENtNtB2_5merge26WriteableCompressedTmpFileEs_0EIBD_B2h_NCB2U_s0_0ENCB2U_s1_0ENCB2U_s4_0EEB2_.exit.thread63.i ], [ undef, %_RINvCsgcf5BHVXlUt_7uu_sort12print_sortedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtCseEyoWS67Tvd_9itertools10merge_join7MergeByIBD_INtNtNtBL_5slice4iter4IterNtB2_4LineENCINvNtNtB2_8ext_sort8threaded13reader_writerQIBD_IB2i_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB2_4openRB3L_EENtNtB2_5merge26WriteableCompressedTmpFileEs_0EIBD_B2h_NCB2U_s0_0ENCB2U_s1_0ENCB2U_s4_0EEB2_.exit.thread.i ], [ %i.apr, %bb.kt ], [ undef, %bb.ky ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtBI_2fs4FileEECsgcf5BHVXlUt_7uu_sort.exit.i.i65.i333 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !7179)
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %.val.i374 = load i64, ptr %i.bkm, align 8, !range !10, !alias.scope !7179, !noundef !11 ; 2 uses
  %i.bkn = icmp sgt i64 %.val.i374, 0
  br i1 %i.bkn, label %bb.rt, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgcf5BHVXlUt_7uu_sort.exit.i

bb.rt:                                            ; preds = %_RINvNtNtCsgcf5BHVXlUt_7uu_sort8ext_sort8threaded13reader_writerQINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB6_4openRB2f_EENtNtB6_5merge21WriteablePlainTmpFileEB6_.exit
  %i.bko = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %.val1.i378 = load ptr, ptr %i.bko, align 8, !alias.scope !7179, !nonnull !11, !noundef !11
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i378, i64 noundef %.val.i374, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !7180
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgcf5BHVXlUt_7uu_sort.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgcf5BHVXlUt_7uu_sort.exit.i: ; preds = %bb.rt, %_RINvNtNtCsgcf5BHVXlUt_7uu_sort8ext_sort8threaded13reader_writerQINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB6_4openRB2f_EENtNtB6_5merge21WriteablePlainTmpFileEB6_.exit
  %.val2.i375 = load i64, ptr %i.fe, align 8, !range !22, !alias.scope !7179, !noundef !11 ; 2 uses
  %i.bkp = icmp eq i64 %.val2.i375, 0
  br i1 %i.bkp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgcf5BHVXlUt_7uu_sort13FieldSelectorEEB1a_.exit.i, label %bb.ru

bb.ru:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgcf5BHVXlUt_7uu_sort.exit.i
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %.val3.i376 = load ptr, ptr %i.bkq, align 8, !alias.scope !7179, !nonnull !11, !noundef !11
  %i.bkr = mul nuw i64 %.val2.i375, 56
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i376, i64 noundef %i.bkr, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !7179
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgcf5BHVXlUt_7uu_sort13FieldSelectorEEB1a_.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgcf5BHVXlUt_7uu_sort13FieldSelectorEEB1a_.exit.i: ; preds = %bb.ru, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgcf5BHVXlUt_7uu_sort.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !7181)
  %i.bks = load i64, ptr %i.is, align 8, !range !10, !alias.scope !7182, !noundef !11 ; 3 uses
  %i.bkt = icmp eq i64 %i.bks, -1
  br i1 %i.bkt, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgcf5BHVXlUt_7uu_sort14GlobalSettingsEBD_.exit, label %bb.rv

bb.rv:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgcf5BHVXlUt_7uu_sort13FieldSelectorEEB1a_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !7183)
  call void @llvm.experimental.noalias.scope.decl(metadata !7184)
  %i.bku = icmp eq i64 %i.bks, 0
  br i1 %i.bku, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgcf5BHVXlUt_7uu_sort14GlobalSettingsEBD_.exit, label %bb.rw

bb.rw:                                            ; preds = %bb.rv
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.fe, i64 56
  %.val1.i.i.i.i377 = load ptr, ptr %i.bkv, align 8, !alias.scope !7185, !nonnull !11, !noundef !11
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i377, i64 noundef %i.bks, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !7185
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgcf5BHVXlUt_7uu_sort14GlobalSettingsEBD_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgcf5BHVXlUt_7uu_sort14GlobalSettingsEBD_.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgcf5BHVXlUt_7uu_sort13FieldSelectorEEB1a_.exit.i, %bb.rv, %bb.rw
  %.pn391 = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i148.pn, 0
  %.pn = insertvalue { ptr, ptr } %.pn391, ptr %.sroa.10.0.i147.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fe)
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB1n_(i64 %i.fk, ptr %i.fm) #34
  ret { ptr, ptr } %.pn
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtCsjXcachvKq5y_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(256) %1) unnamed_addr #6 {
.preheader.preheader:
  %.sroa.0.0.copyload.i121 = load <4 x i32>, ptr %0, align 4, !noalias !7198
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i18122 = load <4 x i32>, ptr %i.a, align 4, !noalias !7199
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i19123 = load <4 x i32>, ptr %i.b, align 4, !noalias !7200
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i20 = load <2 x i64>, ptr %i.c, align 4, !noalias !7201
  %i.d = shufflevector <2 x i64> %.sroa.0.0.copyload.i20, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.e = add <4 x i64> %i.d, <i64 0, i64 0, i64 1, i64 0> ; 2 uses
  %i.f = add <4 x i64> %i.d, <i64 2, i64 0, i64 3, i64 0> ; 2 uses
  %.cast = shufflevector <4 x i32> %.sroa.0.0.copyload.i19123, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %2 = shufflevector <4 x i32> %.sroa.0.0.copyload.i18122, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %3 = shufflevector <4 x i32> %.sroa.0.0.copyload.i121, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.preheader.preheader
  %.sroa.46.0.i = phi <4 x i64> [ %i.f, %.preheader.preheader ], [ %11, %bb.a ]
  %.sroa.19.0.i = phi <4 x i64> [ %i.e, %.preheader.preheader ], [ %9, %bb.a ]
  %.sroa.023.062.i = phi i64 [ 0, %.preheader.preheader ], [ %i.m, %bb.a ]
  %i.g = phi <8 x i32> [ %3, %.preheader.preheader ], [ %i.ce, %bb.a ]
  %i.h = phi <8 x i32> [ %2, %.preheader.preheader ], [ %i.by, %bb.a ] ; 2 uses
  %i.i = phi <8 x i32> [ %3, %.preheader.preheader ], [ %i.cg, %bb.a ]
  %i.j = phi <8 x i32> [ %2, %.preheader.preheader ], [ %i.cc, %bb.a ] ; 2 uses
  %i.k = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cd, %bb.a ]
  %i.l = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cf, %bb.a ]
  %i.m = add nuw nsw i64 %.sroa.023.062.i, 1      ; 2 uses
  %i.n = add <8 x i32> %i.h, %i.g                 ; 2 uses
  %i.o = bitcast <8 x i32> %i.n to <4 x i64>
  %i.p = xor <4 x i64> %.sroa.19.0.i, %i.o
  %i.q = bitcast <4 x i64> %i.p to <32 x i8>
  %i.r = shufflevector <32 x i8> %i.q, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.s = add <8 x i32> %i.j, %i.i                 ; 2 uses
  %i.t = bitcast <8 x i32> %i.s to <4 x i64>
  %i.u = xor <4 x i64> %.sroa.46.0.i, %i.t
  %i.v = bitcast <4 x i64> %i.u to <32 x i8>
  %i.w = shufflevector <32 x i8> %i.v, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.x = bitcast <32 x i8> %i.r to <8 x i32>
  %i.y = add <8 x i32> %i.k, %i.x                 ; 2 uses
  %i.z = xor <8 x i32> %i.y, %i.h                 ; 2 uses
  %i.aa = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.z, <8 x i32> %i.z, <8 x i32> splat (i32 12)) ; 2 uses
  %i.ab = bitcast <32 x i8> %i.w to <8 x i32>
  %i.ac = add <8 x i32> %i.l, %i.ab               ; 2 uses
  %i.ad = xor <8 x i32> %i.ac, %i.j               ; 2 uses
  %i.ae = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ad, <8 x i32> %i.ad, <8 x i32> splat (i32 12)) ; 2 uses
  %i.af = add <8 x i32> %i.aa, %i.n               ; 2 uses
  %i.ag = bitcast <8 x i32> %i.af to <32 x i8>
  %i.ah = xor <32 x i8> %i.r, %i.ag
  %i.ai = shufflevector <32 x i8> %i.ah, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.aj = add <8 x i32> %i.ae, %i.s               ; 2 uses
  %i.ak = bitcast <8 x i32> %i.aj to <32 x i8>
  %i.al = xor <32 x i8> %i.w, %i.ak
  %i.am = shufflevector <32 x i8> %i.al, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.an = bitcast <32 x i8> %i.ai to <8 x i32>    ; 2 uses
  %i.ao = add <8 x i32> %i.y, %i.an               ; 2 uses
  %i.ap = xor <8 x i32> %i.ao, %i.aa              ; 2 uses
  %i.aq = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ap, <8 x i32> %i.ap, <8 x i32> splat (i32 7)) ; 2 uses
  %i.ar = bitcast <32 x i8> %i.am to <8 x i32>    ; 2 uses
  %i.as = add <8 x i32> %i.ac, %i.ar              ; 2 uses
  %i.at = xor <8 x i32> %i.as, %i.ae              ; 2 uses
  %i.au = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.at, <8 x i32> %i.at, <8 x i32> splat (i32 7)) ; 2 uses
  %i.av = shufflevector <8 x i32> %i.ao, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %4 = shufflevector <8 x i32> %i.an, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.aw = shufflevector <8 x i32> %i.af, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.ax = shufflevector <8 x i32> %i.as, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %5 = shufflevector <8 x i32> %i.ar, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.ay = shufflevector <8 x i32> %i.aj, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.az = add <8 x i32> %i.aq, %i.aw              ; 2 uses
  %6 = xor <8 x i32> %i.az, %4
  %i.ba = bitcast <8 x i32> %6 to <32 x i8>
  %i.bb = shufflevector <32 x i8> %i.ba, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.bc = add <8 x i32> %i.au, %i.ay              ; 2 uses
  %7 = xor <8 x i32> %i.bc, %5
  %i.bd = bitcast <8 x i32> %7 to <32 x i8>
  %i.be = shufflevector <32 x i8> %i.bd, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.bf = bitcast <32 x i8> %i.bb to <8 x i32>
  %i.bg = add <8 x i32> %i.av, %i.bf              ; 2 uses
  %i.bh = xor <8 x i32> %i.bg, %i.aq              ; 2 uses
  %i.bi = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bh, <8 x i32> %i.bh, <8 x i32> splat (i32 12)) ; 2 uses
  %i.bj = bitcast <32 x i8> %i.be to <8 x i32>
  %i.bk = add <8 x i32> %i.ax, %i.bj              ; 2 uses
  %i.bl = xor <8 x i32> %i.bk, %i.au              ; 2 uses
  %i.bm = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bl, <8 x i32> %i.bl, <8 x i32> splat (i32 12)) ; 2 uses
  %i.bn = add <8 x i32> %i.bi, %i.az              ; 2 uses
  %i.bo = bitcast <8 x i32> %i.bn to <32 x i8>
  %i.bp = xor <32 x i8> %i.bb, %i.bo
  %i.bq = shufflevector <32 x i8> %i.bp, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.br = add <8 x i32> %i.bm, %i.bc              ; 2 uses
  %i.bs = bitcast <8 x i32> %i.br to <32 x i8>
  %i.bt = xor <32 x i8> %i.be, %i.bs
  %i.bu = shufflevector <32 x i8> %i.bt, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.bv = bitcast <32 x i8> %i.bq to <8 x i32>    ; 2 uses
  %i.bw = add <8 x i32> %i.bg, %i.bv              ; 2 uses
  %i.bx = xor <8 x i32> %i.bw, %i.bi              ; 2 uses
  %i.by = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bx, <8 x i32> %i.bx, <8 x i32> splat (i32 7)) ; 2 uses
  %i.bz = bitcast <32 x i8> %i.bu to <8 x i32>    ; 2 uses
  %i.ca = add <8 x i32> %i.bk, %i.bz              ; 2 uses
  %i.cb = xor <8 x i32> %i.ca, %i.bm              ; 2 uses
  %i.cc = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.cb, <8 x i32> %i.cb, <8 x i32> splat (i32 7)) ; 2 uses
  %i.cd = shufflevector <8 x i32> %i.bw, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6> ; 2 uses
  %8 = shufflevector <8 x i32> %i.bv, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %9 = bitcast <8 x i32> %8 to <4 x i64>
  %i.ce = shufflevector <8 x i32> %i.bn, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.cf = shufflevector <8 x i32> %i.ca, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6> ; 2 uses
  %10 = shufflevector <8 x i32> %i.bz, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %11 = bitcast <8 x i32> %10 to <4 x i64>
  %i.cg = shufflevector <8 x i32> %i.br, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.m, 6
  br i1 %exitcond.not.i, label %_RNvMNtNtCsjXcachvKq5y_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCsgcf5BHVXlUt_7uu_sort.exit, label %bb.a

_RNvMNtNtCsjXcachvKq5y_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCsgcf5BHVXlUt_7uu_sort.exit: ; preds = %bb.a
  %i.ch = bitcast <4 x i64> %i.f to <8 x i32>
  %i.ci = add <8 x i32> %10, %i.ch                ; 2 uses
  %i.cj = add <8 x i32> %i.cf, %.cast             ; 2 uses
  %i.ck = add <8 x i32> %i.cc, %2                 ; 2 uses
  %i.cl = add <8 x i32> %i.cg, %3                 ; 2 uses
  %i.cm = bitcast <4 x i64> %i.e to <8 x i32>
  %i.cn = add <8 x i32> %8, %i.cm                 ; 2 uses
  %i.co = add <8 x i32> %i.cd, %.cast             ; 2 uses
  %i.cp = add <8 x i32> %i.by, %2                 ; 2 uses
  %i.cq = add <8 x i32> %i.ce, %3                 ; 2 uses
  %.sroa.2.32.vec.extract = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.2.48.vec.extract = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.5.64.vec.extract = shufflevector <8 x i32> %i.cp, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.5.80.vec.extract = shufflevector <8 x i32> %i.cp, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.8.96.vec.extract = shufflevector <8 x i32> %i.co, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.8.112.vec.extract = shufflevector <8 x i32> %i.co, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.11.128.vec.extract = shufflevector <8 x i32> %i.cn, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.11.144.vec.extract = shufflevector <8 x i32> %i.cn, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.2.32.vec.extract, ptr %1, align 4, !noalias !7202
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <4 x i32> %.sroa.2.48.vec.extract, ptr %i.cr, align 4, !noalias !7203
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %.sroa.5.64.vec.extract, ptr %i.cs, align 4, !noalias !7202
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x i32> %.sroa.5.80.vec.extract, ptr %i.ct, align 4, !noalias !7203
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x i32> %.sroa.8.96.vec.extract, ptr %i.cu, align 4, !noalias !7202
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <4 x i32> %.sroa.8.112.vec.extract, ptr %i.cv, align 4, !noalias !7203
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x i32> %.sroa.11.128.vec.extract, ptr %i.cw, align 4, !noalias !7202
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <4 x i32> %.sroa.11.144.vec.extract, ptr %i.cx, align 4, !noalias !7203
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.14.160.vec.extract = shufflevector <8 x i32> %i.cl, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.14.176.vec.extract = shufflevector <8 x i32> %i.cl, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.17.192.vec.extract = shufflevector <8 x i32> %i.ck, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.17.208.vec.extract = shufflevector <8 x i32> %i.ck, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.20.224.vec.extract = shufflevector <8 x i32> %i.cj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.20.240.vec.extract = shufflevector <8 x i32> %i.cj, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.23.256.vec.extract = shufflevector <8 x i32> %i.ci, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.23.272.vec.extract = shufflevector <8 x i32> %i.ci, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.14.160.vec.extract, ptr %i.cy, align 4, !noalias !7202
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <4 x i32> %.sroa.14.176.vec.extract, ptr %i.cz, align 4, !noalias !7203
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <4 x i32> %.sroa.17.192.vec.extract, ptr %i.da, align 4, !noalias !7202
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <4 x i32> %.sroa.17.208.vec.extract, ptr %i.db, align 4, !noalias !7203
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <4 x i32> %.sroa.20.224.vec.extract, ptr %i.dc, align 4, !noalias !7202
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <4 x i32> %.sroa.20.240.vec.extract, ptr %i.dd, align 4, !noalias !7203
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <4 x i32> %.sroa.23.256.vec.extract, ptr %i.de, align 4, !noalias !7202
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <4 x i32> %.sroa.23.272.vec.extract, ptr %i.df, align 4, !noalias !7203
  %i.dg = add <4 x i64> %i.d, <i64 4, i64 poison, i64 poison, i64 poison>
  %12 = bitcast <4 x i64> %i.dg to <8 x i32>
  %13 = shufflevector <8 x i32> %12, <8 x i32> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i32> %13, ptr %i.c, align 4
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort10merge_sortNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBN_INtB4_16ParallelSliceMutBN_E11par_sort_byNCNvBP_7sort_by0E0EBP_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8
  %.not91 = icmp eq i64 %1, 0
  br i1 %.not91, label %.loopexit, label %.lr.ph90

.lr.ph90:                                         ; preds = %bb.a
  %.val29 = load ptr, ptr %3, align 8             ; 9 uses
  %i.d = getelementptr i8, ptr %.val29, i64 8     ; 5 uses
  br label %bb.c

.loopexit:                                        ; preds = %_RNvNvNtNtCsks7Y7MMeG6s_5rayon5slice4sort10merge_sort8collapse.exit, %bb.a, %bb.g
  %.sroa.0.0 = phi i8 [ %., %bb.g ], [ 2, %bb.a ], [ 2, %_RNvNvNtNtCsks7Y7MMeG6s_5rayon5slice4sort10merge_sort8collapse.exit ]
  %.val = load i64, ptr %i.a, align 8, !range !22, !noundef !11 ; 2 uses
  %i.e = icmp eq i64 %.val, 0
  br i1 %i.e, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsks7Y7MMeG6s_5rayon5slice4sort10TimSortRunEECsgcf5BHVXlUt_7uu_sort.exit, label %bb.b

bb.b:                                             ; preds = %.loopexit
  %.val28 = load ptr, ptr %i.b, align 8, !nonnull !11, !noundef !11
  %i.f = shl nuw i64 %.val, 4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val28, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 8) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsks7Y7MMeG6s_5rayon5slice4sort10TimSortRunEECsgcf5BHVXlUt_7uu_sort.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsks7Y7MMeG6s_5rayon5slice4sort10TimSortRunEECsgcf5BHVXlUt_7uu_sort.exit: ; preds = %.loopexit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i8 %.sroa.0.0

bb.c:                                             ; preds = %.lr.ph90, %_RNvNvNtNtCsks7Y7MMeG6s_5rayon5slice4sort10merge_sort8collapse.exit
  %i.g = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph90 ], [ %i.ah, %_RNvNvNtNtCsks7Y7MMeG6s_5rayon5slice4sort10merge_sort8collapse.exit ]
  %i.h = phi i64 [ 0, %.lr.ph90 ], [ %storemerge.lcssa, %_RNvNvNtNtCsks7Y7MMeG6s_5rayon5slice4sort10merge_sort8collapse.exit ] ; 3 uses
  %.sroa.02.089 = phi i64 [ 0, %.lr.ph90 ], [ %.sroa.0.0.i31, %_RNvNvNtNtCsks7Y7MMeG6s_5rayon5slice4sort10merge_sort8collapse.exit ] ; 8 uses
  %i.i = sub nuw nsw i64 %1, %.sroa.02.089        ; 7 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.02.089 ; 7 uses
  %i.k = icmp samesign ult i64 %i.i, 2
  br i1 %i.k, label %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort11find_streakNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBO_INtB4_16ParallelSliceMutBO_E11par_sort_byNCNvBQ_7sort_by0E0EBQ_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val29) ]
  %.val.i.i = load ptr, ptr %.val29, align 8, !noalias !7245, !nonnull !11, !align !13, !noundef !11
  %.val1.i.i = load ptr, ptr %i.d, align 8, !noalias !7245, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.m = tail call fastcc noundef range(i8 -1, 2) i8 @_RNvCsgcf5BHVXlUt_7uu_sort10compare_by(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.val.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i.i) #34
  %i.n = icmp eq i8 %i.m, -1
  %.not11.i = icmp eq i64 %i.i, 2                 ; 2 uses
  br i1 %i.n, label %.preheader.i, label %.preheader1.i

.preheader1.i:                                    ; preds = %bb.d
  br i1 %.not11.i, label %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort11find_streakNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBO_INtB4_16ParallelSliceMutBO_E11par_sort_byNCNvBQ_7sort_by0E0EBQ_.exit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.d
  br i1 %.not11.i, label %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort11find_streakNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBO_INtB4_16ParallelSliceMutBO_E11par_sort_byNCNvBQ_7sort_by0E0EBQ_.exit, label %.lr.ph7.i

.lr.ph.i:                                         ; preds = %.preheader1.i, %bb.e
  %.sroa.01.03.i = phi i64 [ %i.s, %bb.e ], [ 2, %.preheader1.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.01.03.i ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %.val.i13.i = load ptr, ptr %.val29, align 8, !noalias !7246, !nonnull !11, !align !13, !noundef !11
  %.val1.i14.i = load ptr, ptr %i.d, align 8, !noalias !7246, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.q = tail call fastcc noundef range(i8 -1, 2) i8 @_RNvCsgcf5BHVXlUt_7uu_sort10compare_by(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.val.i13.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i14.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i14.i) #34
  %i.r = icmp eq i8 %i.q, -1
  br i1 %i.r, label %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort11find_streakNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBO_INtB4_16ParallelSliceMutBO_E11par_sort_byNCNvBQ_7sort_by0E0EBQ_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.s = add nuw nsw i64 %.sroa.01.03.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %i.i
  br i1 %exitcond.not.i, label %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort11find_streakNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBO_INtB4_16ParallelSliceMutBO_E11par_sort_byNCNvBQ_7sort_by0E0EBQ_.exit, label %.lr.ph.i

.lr.ph7.i:                                        ; preds = %.preheader.i, %bb.f
  %.sroa.01.16.i = phi i64 [ %i.x, %bb.f ], [ 2, %.preheader.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.01.16.i ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %.val.i15.i = load ptr, ptr %.val29, align 8, !noalias !7247, !nonnull !11, !align !13, !noundef !11
  %.val1.i16.i = load ptr, ptr %i.d, align 8, !noalias !7247, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.v = tail call fastcc noundef range(i8 -1, 2) i8 @_RNvCsgcf5BHVXlUt_7uu_sort10compare_by(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.val.i15.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i16.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i16.i) #34
  %i.w = icmp eq i8 %i.v, -1
  br i1 %i.w, label %bb.f, label %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort11find_streakNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBO_INtB4_16ParallelSliceMutBO_E11par_sort_byNCNvBQ_7sort_by0E0EBQ_.exit

bb.f:                                             ; preds = %.lr.ph7.i
  %i.x = add nuw nsw i64 %.sroa.01.16.i, 1        ; 2 uses
  %exitcond14.not.i = icmp eq i64 %i.x, %i.i
  br i1 %exitcond14.not.i, label %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort11find_streakNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBO_INtB4_16ParallelSliceMutBO_E11par_sort_byNCNvBQ_7sort_by0E0EBQ_.exit, label %.lr.ph7.i

_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort11find_streakNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBO_INtB4_16ParallelSliceMutBO_E11par_sort_byNCNvBQ_7sort_by0E0EBQ_.exit: ; preds = %.lr.ph.i, %bb.e, %.lr.ph7.i, %bb.f, %bb.c, %.preheader1.i, %.preheader.i
  %.sroa.4.0.i = phi i1 [ false, %bb.c ], [ true, %.preheader.i ], [ true, %.lr.ph7.i ], [ false, %.preheader1.i ], [ true, %bb.f ], [ false, %bb.e ], [ false, %.lr.ph.i ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.i, %bb.c ], [ 2, %.preheader.i ], [ %.sroa.01.16.i, %.lr.ph7.i ], [ 2, %.preheader1.i ], [ %i.i, %bb.f ], [ %.sroa.01.03.i, %.lr.ph.i ], [ %i.i, %bb.e ] ; 6 uses
  %i.y = add nuw i64 %.sroa.0.0.i, %.sroa.02.089  ; 6 uses
  %i.z = icmp eq i64 %.sroa.02.089, 0
  %i.aa = icmp eq i64 %i.y, %1
  %or.cond = and i1 %i.z, %i.aa
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort11find_streakNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBO_INtB4_16ParallelSliceMutBO_E11par_sort_byNCNvBQ_7sort_by0E0EBQ_.exit
  %. = zext i1 %.sroa.4.0.i to i8
  br label %.loopexit

bb.h:                                             ; preds = %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort11find_streakNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBO_INtB4_16ParallelSliceMutBO_E11par_sort_byNCNvBQ_7sort_by0E0EBQ_.exit
  br i1 %.sroa.4.0.i, label %bb.m, label %_RINvNvMNtCs6JMX4GRUq9U_4core5sliceSp7reverse7revswapNtCsgcf5BHVXlUt_7uu_sort4LineEBQ_.exit

_RINvNvMNtCs6JMX4GRUq9U_4core5sliceSp7reverse7revswapNtCsgcf5BHVXlUt_7uu_sort4LineEBQ_.exit: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCsgcf5BHVXlUt_7uu_sort4Line12split_at_mutBw_.exit11.i, %bb.o, %bb.h
  %.not92 = icmp ugt i64 %i.y, %1
  br i1 %.not92, label %bb.i, label %bb.j, !prof !29

bb.i:                                             ; preds = %_RINvNvMNtCs6JMX4GRUq9U_4core5sliceSp7reverse7revswapNtCsgcf5BHVXlUt_7uu_sort4LineEBQ_.exit
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @137) #40, !noalias !7248
  unreachable

bb.j:                                             ; preds = %_RINvNvMNtCs6JMX4GRUq9U_4core5sliceSp7reverse7revswapNtCsgcf5BHVXlUt_7uu_sort4LineEBQ_.exit
  %i.ab = icmp samesign ult i64 %.sroa.0.0.i, 10
  %i.ac = icmp samesign ult i64 %i.y, %1
  %or.cond3.i = and i1 %i.ab, %i.ac
  br i1 %or.cond3.i, label %bb.k, label %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort20provide_sorted_batchNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBX_INtB4_16ParallelSliceMutBX_E11par_sort_byNCNvBZ_7sort_by0E0EBZ_.exit

bb.k:                                             ; preds = %bb.j
  %i.ad = add nuw nsw i64 %.sroa.02.089, 10
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 1, 384307168202282326) %1, i64 %i.ad) ; 2 uses
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 1)
  %i.ae = sub nsw i64 %..i.i, %.sroa.02.089       ; 2 uses
  tail call void @_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort25insertion_sort_shift_leftNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSB12_INtB4_16ParallelSliceMutB12_E11par_sort_byNCNvB14_7sort_by0E0EB14_(ptr noalias nofree noundef nonnull align 8 %i.j, i64 noundef %i.ae, i64 noundef %..i14.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3) #39
  br label %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort20provide_sorted_batchNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBX_INtB4_16ParallelSliceMutBX_E11par_sort_byNCNvBZ_7sort_by0E0EBZ_.exit

_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort20provide_sorted_batchNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBX_INtB4_16ParallelSliceMutBX_E11par_sort_byNCNvBZ_7sort_by0E0EBZ_.exit: ; preds = %bb.j, %bb.k
  %.pre-phi = phi i64 [ %i.ae, %bb.k ], [ %.sroa.0.0.i, %bb.j ]
  %.sroa.0.0.i31 = phi i64 [ %..i.i, %bb.k ], [ %i.y, %bb.j ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7249)
  %i.af = load i64, ptr %i.a, align 8, !range !22, !alias.scope !7249, !noundef !11
  %i.ag = icmp eq i64 %i.h, %i.af
  br i1 %i.ag, label %bb.l, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsks7Y7MMeG6s_5rayon5slice4sort10TimSortRunE8push_mutCsgcf5BHVXlUt_7uu_sort.exit

bb.l:                                             ; preds = %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort20provide_sorted_batchNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBX_INtB4_16ParallelSliceMutBX_E11par_sort_byNCNvBZ_7sort_by0E0EBZ_.exit
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsks7Y7MMeG6s_5rayon5slice4sort10TimSortRunE8grow_oneCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #39
  %.pre = load ptr, ptr %i.b, align 8, !alias.scope !7249
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsks7Y7MMeG6s_5rayon5slice4sort10TimSortRunE8push_mutCsgcf5BHVXlUt_7uu_sort.exit

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsks7Y7MMeG6s_5rayon5slice4sort10TimSortRunE8push_mutCsgcf5BHVXlUt_7uu_sort.exit: ; preds = %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort20provide_sorted_batchNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBX_INtB4_16ParallelSliceMutBX_E11par_sort_byNCNvBZ_7sort_by0E0EBZ_.exit, %bb.l
  %i.ah = phi ptr [ %i.g, %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort20provide_sorted_batchNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBX_INtB4_16ParallelSliceMutBX_E11par_sort_byNCNvBZ_7sort_by0E0EBZ_.exit ], [ %.pre, %bb.l ] ; 6 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.h ; 2 uses
  store i64 %.pre-phi, ptr %i.ai, align 8, !noalias !7249
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %.sroa.02.089, ptr %i.aj, align 8, !noalias !7249
  %i.ak = add i64 %i.h, 1                         ; 3 uses
  %i.al = icmp samesign ugt i64 %i.ak, 1
  br i1 %i.al, label %.lr.ph, label %_RNvNvNtNtCsks7Y7MMeG6s_5rayon5slice4sort10merge_sort8collapse.exit

bb.m:                                             ; preds = %bb.h
  %.not = icmp ugt i64 %i.y, %1
  br i1 %.not, label %bb.n, label %bb.o, !prof !29

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.02.089, i64 noundef %i.y, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #40
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.am = lshr i64 %.sroa.0.0.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7251)
  %.not.i = icmp eq i64 %i.am, 0
  br i1 %.not.i, label %_RINvNvMNtCs6JMX4GRUq9U_4core5sliceSp7reverse7revswapNtCsgcf5BHVXlUt_7uu_sort4LineEBQ_.exit, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCsgcf5BHVXlUt_7uu_sort4Line12split_at_mutBw_.exit11.preheader.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCsgcf5BHVXlUt_7uu_sort4Line12split_at_mutBw_.exit11.preheader.i: ; preds = %bb.o
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.0.0.i
  br label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCsgcf5BHVXlUt_7uu_sort4Line12split_at_mutBw_.exit11.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCsgcf5BHVXlUt_7uu_sort4Line12split_at_mutBw_.exit11.i: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCsgcf5BHVXlUt_7uu_sort4Line12split_at_mutBw_.exit11.i, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCsgcf5BHVXlUt_7uu_sort4Line12split_at_mutBw_.exit11.preheader.i
  %.sroa.0.016.i = phi i64 [ %i.av, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCsgcf5BHVXlUt_7uu_sort4Line12split_at_mutBw_.exit11.i ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCsgcf5BHVXlUt_7uu_sort4Line12split_at_mutBw_.exit11.preheader.i ] ; 3 uses
  %i.ao = xor i64 %.sroa.0.016.i, -1
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.0.016.i ; 3 uses
  %i.aq = getelementptr [24 x i8], ptr %i.an, i64 %i.ao ; 3 uses
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !7250
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !7251
  store <2 x i64> %i.as, ptr %i.ap, align 8, !alias.scope !7250
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !alias.scope !7251
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7253)
  %.sroa.0.0.copyload.i.i.i.2.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !7254
  %.sroa.02.0.copyload.i.i.i.2.i.i.i = load i64, ptr %i.au, align 8, !alias.scope !7255
  store i64 %.sroa.02.0.copyload.i.i.i.2.i.i.i, ptr %i.at, align 8, !alias.scope !7254
  store i64 %.sroa.0.0.copyload.i.i.i.2.i.i.i, ptr %i.au, align 8, !alias.scope !7255
  %i.av = add nuw nsw i64 %.sroa.0.016.i, 1       ; 2 uses
  %exitcond.not.i32 = icmp eq i64 %i.av, %i.am
  br i1 %exitcond.not.i32, label %_RINvNvMNtCs6JMX4GRUq9U_4core5sliceSp7reverse7revswapNtCsgcf5BHVXlUt_7uu_sort4LineEBQ_.exit, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCsgcf5BHVXlUt_7uu_sort4Line12split_at_mutBw_.exit11.i

.lr.ph:                                           ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsks7Y7MMeG6s_5rayon5slice4sort10TimSortRunE8push_mutCsgcf5BHVXlUt_7uu_sort.exit, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsks7Y7MMeG6s_5rayon5slice4sort10TimSortRunE6removeCsgcf5BHVXlUt_7uu_sort.exit
  %storemerge82 = phi i64 [ %i.ds, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsks7Y7MMeG6s_5rayon5slice4sort10TimSortRunE6removeCsgcf5BHVXlUt_7uu_sort.exit ], [ %i.ak, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsks7Y7MMeG6s_5rayon5slice4sort10TimSortRunE8push_mutCsgcf5BHVXlUt_7uu_sort.exit ] ; 15 uses
  %i.aw = getelementptr [16 x i8], ptr %i.ah, i64 %storemerge82 ; 5 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 -16
  %i.ay = getelementptr i8, ptr %i.aw, i64 -8
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !7256, !noundef !11
  %i.ba = load i64, ptr %i.ax, align 8, !alias.scope !7256, !noundef !11 ; 4 uses
end_hunk_0
begin_hunk_1_@_RNvCsgcf5BHVXlUt_7uu_sort15get_leading_gen:bb.a
  %.val63 = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !nonnull !11, !noundef !11
  %i.dn = shl nuw i64 %.val, 4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val63, i64 noundef %i.dn, i64 noundef range(i64 1, -9223372036854775807) 8) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCseEyoWS67Tvd_9itertools8peek_nth7PeekNthINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtB4_5slice4iter4IterhEEEECsgcf5BHVXlUt_7uu_sort.exit76

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCseEyoWS67Tvd_9itertools8peek_nth7PeekNthINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtB4_5slice4iter4IterhEEEECsgcf5BHVXlUt_7uu_sort.exit76: ; preds = %.thread, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ak

bb.ac:                                            ; preds = %bb.z, %bb.aa
  %i.do = call fastcc noundef align 8 ptr @_RNvMNtCseEyoWS67Tvd_9itertools8peek_nthINtB2_7PeekNthINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtNtBY_5slice4iter4IterhEEE8peek_nthCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a, i64 noundef 0) #34 ; 2 uses
  %.not57 = icmp eq ptr %i.do, null
  br i1 %.not57, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !nonnull !11, !noundef !11
  %i.dr = load i8, ptr %i.dq, align 1, !noundef !11 ; 2 uses
  switch i8 %i.dr, label %bb.af [
    i8 43, label %bb.ae
    i8 45, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  %i.ds = call fastcc noundef align 8 ptr @_RNvMNtCseEyoWS67Tvd_9itertools8peek_nthINtB2_7PeekNthINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtNtBY_5slice4iter4IterhEEE8peek_nthCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a, i64 noundef 1) #34 ; 2 uses
  %.not58 = icmp eq ptr %i.ds, null
  br i1 %.not58, label %.thread, label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.dt = add i8 %i.dr, -48
  %or.cond8 = icmp ult i8 %i.dt, 10
  br i1 %or.cond8, label %_RNvXs_NtCseEyoWS67Tvd_9itertools8peek_nthINtB4_7PeekNthINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtNtB10_5slice4iter4IterhEEENtNtNtBY_6traits8iterator8Iterator4nextCsgcf5BHVXlUt_7uu_sort.exit86.backedge, label %.thread

bb.ag:                                            ; preds = %bb.ae
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !nonnull !11, !noundef !11
  %i.dw = load i8, ptr %i.dv, align 1, !noundef !11
  %i.dx = add i8 %i.dw, -48
  %or.cond62 = icmp ult i8 %i.dx, 10
  br i1 %or.cond62, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  %i.dy = load i64, ptr %i.ch, align 8, !alias.scope !9423, !noundef !11 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %bb.ai, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeTjRhEE9pop_frontCsgcf5BHVXlUt_7uu_sort.exit.i77

_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeTjRhEE9pop_frontCsgcf5BHVXlUt_7uu_sort.exit.i77: ; preds = %bb.ah
  %i.ea = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !9423, !noundef !11
  %i.eb = add i64 %i.ea, 1                        ; 2 uses
  %i.ec = load i64, ptr %i.a, align 8, !range !22, !alias.scope !9423, !noundef !11 ; 3 uses
  %.not.i.i78 = icmp ult i64 %i.eb, %i.ec
  %i.ed = select i1 %.not.i.i78, i64 0, i64 %i.ec
  %.sroa.01.0.i.i79 = sub nuw i64 %i.eb, %i.ed
  store i64 %.sroa.01.0.i.i79, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !9423
  %i.ee = add i64 %i.dy, -1                       ; 2 uses
  store i64 %i.ee, ptr %i.ch, align 8, !alias.scope !9423
  %i.ef = icmp ult i64 %i.ee, %i.ec
  tail call void @llvm.assume(i1 %i.ef)
  br label %_RNvXs_NtCseEyoWS67Tvd_9itertools8peek_nthINtB4_7PeekNthINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtNtB10_5slice4iter4IterhEEENtNtNtBY_6traits8iterator8Iterator4nextCsgcf5BHVXlUt_7uu_sort.exit86.backedge

bb.ai:                                            ; preds = %bb.ah
  %i.eg = load ptr, ptr %i.av, align 8, !alias.scope !9424, !noalias !9425, !noundef !11 ; 3 uses
  %.not.i.i.i.i84 = icmp eq ptr %i.eg, null
  %i.eh = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !9424, !noalias !9425, !nonnull !11
  %i.ei = icmp eq ptr %i.eg, %i.eh
  %or.cond.i.i.i.i85 = select i1 %.not.i.i.i.i84, i1 true, i1 %i.ei
  br i1 %or.cond.i.i.i.i85, label %_RNvXs_NtCseEyoWS67Tvd_9itertools8peek_nthINtB4_7PeekNthINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtNtB10_5slice4iter4IterhEEENtNtNtBY_6traits8iterator8Iterator4nextCsgcf5BHVXlUt_7uu_sort.exit86.backedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  store ptr %i.ej, ptr %i.av, align 8, !alias.scope !9426, !noalias !9425
  %i.ek = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9427, !noalias !9425, !noundef !11
  %i.el = add i64 %i.ek, 1
  store i64 %i.el, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9427, !noalias !9425
  br label %_RNvXs_NtCseEyoWS67Tvd_9itertools8peek_nthINtB4_7PeekNthINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtNtB10_5slice4iter4IterhEEENtNtNtBY_6traits8iterator8Iterator4nextCsgcf5BHVXlUt_7uu_sort.exit86.backedge

bb.ak:                                            ; preds = %_RNvMNtNtCs6JMX4GRUq9U_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCseEyoWS67Tvd_9itertools8peek_nth7PeekNthINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtB4_5slice4iter4IterhEEEECsgcf5BHVXlUt_7uu_sort.exit76, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCseEyoWS67Tvd_9itertools8peek_nth7PeekNthINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtB4_5slice4iter4IterhEEEECsgcf5BHVXlUt_7uu_sort.exit
  %i.em = phi i64 [ %i.at, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCseEyoWS67Tvd_9itertools8peek_nth7PeekNthINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtB4_5slice4iter4IterhEEEECsgcf5BHVXlUt_7uu_sort.exit76 ], [ %i.at, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCseEyoWS67Tvd_9itertools8peek_nth7PeekNthINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtB4_5slice4iter4IterhEEEECsgcf5BHVXlUt_7uu_sort.exit ], [ %i.b, %_RNvMNtNtCs6JMX4GRUq9U_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread ]
  %.sroa.4.0 = phi i64 [ %i.dl, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCseEyoWS67Tvd_9itertools8peek_nth7PeekNthINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtB4_5slice4iter4IterhEEEECsgcf5BHVXlUt_7uu_sort.exit76 ], [ %1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCseEyoWS67Tvd_9itertools8peek_nth7PeekNthINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtB4_5slice4iter4IterhEEEECsgcf5BHVXlUt_7uu_sort.exit ], [ %i.bo, %_RNvMNtNtCs6JMX4GRUq9U_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread ]
  %i.en = insertvalue { i64, i64 } poison, i64 %i.em, 0
  %i.eo = insertvalue { i64, i64 } %i.en, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.eo

bb.al:                                            ; preds = %bb.x
  %i.ep = call fastcc noundef align 8 ptr @_RNvMNtCseEyoWS67Tvd_9itertools8peek_nthINtB2_7PeekNthINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtNtBY_5slice4iter4IterhEEE8peek_nthCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a, i64 noundef 0) #34 ; 2 uses
  %.not59 = icmp eq ptr %i.ep, null
  br i1 %.not59, label %_RNvXs_NtCseEyoWS67Tvd_9itertools8peek_nthINtB4_7PeekNthINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtNtB10_5slice4iter4IterhEEENtNtNtBY_6traits8iterator8Iterator4nextCsgcf5BHVXlUt_7uu_sort.exit86.backedge, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !nonnull !11, !noundef !11
  %i.es = load i8, ptr %i.er, align 1, !noundef !11
  switch i8 %i.es, label %_RNvXs_NtCseEyoWS67Tvd_9itertools8peek_nthINtB4_7PeekNthINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtNtB10_5slice4iter4IterhEEENtNtNtBY_6traits8iterator8Iterator4nextCsgcf5BHVXlUt_7uu_sort.exit86.backedge [
    i8 120, label %bb.an
    i8 88, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am, %bb.am
  %i.et = load i64, ptr %i.ch, align 8, !alias.scope !9428, !noundef !11 ; 2 uses
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %bb.ao, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeTjRhEE9pop_frontCsgcf5BHVXlUt_7uu_sort.exit.i87

_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeTjRhEE9pop_frontCsgcf5BHVXlUt_7uu_sort.exit.i87: ; preds = %bb.an
  %i.ev = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !9428, !noundef !11
  %i.ew = add i64 %i.ev, 1                        ; 2 uses
  %i.ex = load i64, ptr %i.a, align 8, !range !22, !alias.scope !9428, !noundef !11 ; 3 uses
  %.not.i.i88 = icmp ult i64 %i.ew, %i.ex
  %i.ey = select i1 %.not.i.i88, i64 0, i64 %i.ex
  %.sroa.01.0.i.i89 = sub nuw i64 %i.ew, %i.ey
  store i64 %.sroa.01.0.i.i89, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !9428
  %i.ez = add i64 %i.et, -1                       ; 2 uses
  store i64 %i.ez, ptr %i.ch, align 8, !alias.scope !9428
  %i.fa = icmp ult i64 %i.ez, %i.ex
  tail call void @llvm.assume(i1 %i.fa)
  br label %_RNvXs_NtCseEyoWS67Tvd_9itertools8peek_nthINtB4_7PeekNthINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtNtB10_5slice4iter4IterhEEENtNtNtBY_6traits8iterator8Iterator4nextCsgcf5BHVXlUt_7uu_sort.exit86.backedge

bb.ao:                                            ; preds = %bb.an
  %i.fb = load ptr, ptr %i.av, align 8, !alias.scope !9429, !noalias !9430, !noundef !11 ; 3 uses
  %.not.i.i.i.i94 = icmp eq ptr %i.fb, null
  %i.fc = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !9429, !noalias !9430, !nonnull !11
  %i.fd = icmp eq ptr %i.fb, %i.fc
  %or.cond.i.i.i.i95 = select i1 %.not.i.i.i.i94, i1 true, i1 %i.fd
  br i1 %or.cond.i.i.i.i95, label %_RNvXs_NtCseEyoWS67Tvd_9itertools8peek_nthINtB4_7PeekNthINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtNtB10_5slice4iter4IterhEEENtNtNtBY_6traits8iterator8Iterator4nextCsgcf5BHVXlUt_7uu_sort.exit86.backedge, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  store ptr %i.fe, ptr %i.av, align 8, !alias.scope !9431, !noalias !9430
  %i.ff = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9432, !noalias !9430, !noundef !11
  %i.fg = add i64 %i.ff, 1
  store i64 %i.fg, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9432, !noalias !9430
  br label %_RNvXs_NtCseEyoWS67Tvd_9itertools8peek_nthINtB4_7PeekNthINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtNtB10_5slice4iter4IterhEEENtNtNtBY_6traits8iterator8Iterator4nextCsgcf5BHVXlUt_7uu_sort.exit86.backedge

_RNvXs_NtCseEyoWS67Tvd_9itertools8peek_nthINtB4_7PeekNthINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtNtB10_5slice4iter4IterhEEENtNtNtBY_6traits8iterator8Iterator4nextCsgcf5BHVXlUt_7uu_sort.exit86.backedge: ; preds = %bb.ap, %bb.ao, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeTjRhEE9pop_frontCsgcf5BHVXlUt_7uu_sort.exit.i87, %bb.aj, %bb.ai, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeTjRhEE9pop_frontCsgcf5BHVXlUt_7uu_sort.exit.i77, %bb.al, %bb.am, %bb.af, %bb.w, %bb.x, %bb.v
  %.sroa.028.0.be = phi i1 [ true, %bb.v ], [ %.sroa.028.0, %bb.af ], [ %.sroa.028.0, %bb.aj ], [ %.sroa.028.0, %bb.x ], [ %.sroa.028.0, %bb.w ], [ %.sroa.028.0, %bb.al ], [ %.sroa.028.0, %bb.am ], [ %.sroa.028.0, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeTjRhEE9pop_frontCsgcf5BHVXlUt_7uu_sort.exit.i77 ], [ %.sroa.028.0, %bb.ai ], [ true, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeTjRhEE9pop_frontCsgcf5BHVXlUt_7uu_sort.exit.i87 ], [ true, %bb.ao ], [ true, %bb.ap ]
  %.sroa.027.0.be = phi i1 [ %.sroa.027.0, %bb.v ], [ %.sroa.027.0, %bb.af ], [ %.sroa.027.0, %bb.aj ], [ %.sroa.027.0, %bb.x ], [ true, %bb.w ], [ %.sroa.027.0, %bb.al ], [ %.sroa.027.0, %bb.am ], [ %.sroa.027.0, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeTjRhEE9pop_frontCsgcf5BHVXlUt_7uu_sort.exit.i77 ], [ %.sroa.027.0, %bb.ai ], [ %.sroa.027.0, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeTjRhEE9pop_frontCsgcf5BHVXlUt_7uu_sort.exit.i87 ], [ %.sroa.027.0, %bb.ao ], [ %.sroa.027.0, %bb.ap ]
  %.sroa.025.0.be = phi i1 [ %.sroa.025.0, %bb.v ], [ true, %bb.af ], [ true, %bb.aj ], [ %.sroa.025.0, %bb.x ], [ false, %bb.w ], [ %.sroa.025.0, %bb.al ], [ %.sroa.025.0, %bb.am ], [ true, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeTjRhEE9pop_frontCsgcf5BHVXlUt_7uu_sort.exit.i77 ], [ true, %bb.ai ], [ %.sroa.025.0, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeTjRhEE9pop_frontCsgcf5BHVXlUt_7uu_sort.exit.i87 ], [ %.sroa.025.0, %bb.ao ], [ %.sroa.025.0, %bb.ap ]
  br label %_RNvXs_NtCseEyoWS67Tvd_9itertools8peek_nthINtB4_7PeekNthINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtNtB10_5slice4iter4IterhEEENtNtNtBY_6traits8iterator8Iterator4nextCsgcf5BHVXlUt_7uu_sort.exit86
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCsgcf5BHVXlUt_7uu_sort15get_rand_string(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 1 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 1                ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call noundef nonnull ptr @_RNvNtNtCs7g3JyErIm42_4rand4rngs6thread3rng() #34 ; 22 uses
  store ptr %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 272 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 320 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 324
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %.sroa.12.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %.sroa.13.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %.sroa.15.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %.sroa.16.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %.sroa.17.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %.sroa.18.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %.pre.i.i = load i32, ptr %i.d, align 4, !alias.scope !9457, !noalias !9458
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCINvXs5_NtNtCs7g3JyErIm42_4rand5distr5otherNtB1v_15StandardUniformINtNtB1v_12distribution12DistributionAhj10_E6sampleNtNtNtB1x_4rngs6thread9ThreadRngE0E0Csgcf5BHVXlUt_7uu_sort.exit.i.i, %bb.a
  %i.j = phi i32 [ %.pre.i.i, %bb.a ], [ %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i.i.i, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCINvXs5_NtNtCs7g3JyErIm42_4rand5distr5otherNtB1v_15StandardUniformINtNtB1v_12distribution12DistributionAhj10_E6sampleNtNtNtB1x_4rngs6thread9ThreadRngE0E0Csgcf5BHVXlUt_7uu_sort.exit.i.i ] ; 3 uses
  %.sroa.10.027.i.i = phi i64 [ 0, %bb.a ], [ %i.fl, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCINvXs5_NtNtCs7g3JyErIm42_4rand5distr5otherNtB1v_15StandardUniformINtNtB1v_12distribution12DistributionAhj10_E6sampleNtNtNtB1x_4rngs6thread9ThreadRngE0E0Csgcf5BHVXlUt_7uu_sort.exit.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9457)
  %i.k = icmp ugt i32 %i.j, 63
  br i1 %i.k, label %bb.c, label %_RNvXs_NtCsjXcachvKq5y_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskqYlSTCc3RA_9rand_core5block9Generator8generateCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.f, align 4, !alias.scope !9459, !noalias !9458
  %i.m = icmp ugt i64 %i.l, 1023
  br i1 %i.m, label %bb.d, label %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i.i, !prof !21

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs_NtNtCs7g3JyErIm42_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.e) #39, !noalias !9460
  br label %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i.i

_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9461), !noalias !9462
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9463), !noalias !9462
  %i.n = load atomic i8, ptr @_RNvNtCsjXcachvKq5y_8chacha2010avx2_cpuid7STORAGE monotonic, align 1, !noalias !9464
  %i.o = icmp eq i8 %i.n, 1
  br i1 %i.o, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9465), !noalias !9462
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9466), !noalias !9462
  %.sroa.012.0.copyload24.i.i.i.i.i.i.i.i.i.i = load <4 x i32>, ptr %i.e, align 4, !alias.scope !9467, !noalias !9458 ; 8 uses
  %.sroa.013.0.copyload25.i.i.i.i.i.i.i.i.i.i = load <4 x i32>, ptr %i.h, align 4, !alias.scope !9467, !noalias !9458 ; 8 uses
  %.sroa.014.0.copyload26.i.i.i.i.i.i.i.i.i.i = load <4 x i32>, ptr %i.i, align 4, !alias.scope !9467, !noalias !9458 ; 8 uses
  %.sroa.015.0.copyload.i.i.i.i.i.i.i.i.i.i = load <2 x i64>, ptr %i.f, align 4, !alias.scope !9467, !noalias !9458 ; 5 uses
  %1 = bitcast <2 x i64> %.sroa.015.0.copyload.i.i.i.i.i.i.i.i.i.i to <4 x i32> ; 2 uses
  %i.p = add <2 x i64> %.sroa.015.0.copyload.i.i.i.i.i.i.i.i.i.i, <i64 1, i64 0>
  %i.q = add <2 x i64> %.sroa.015.0.copyload.i.i.i.i.i.i.i.i.i.i, <i64 2, i64 0>
  %i.r = add <2 x i64> %.sroa.015.0.copyload.i.i.i.i.i.i.i.i.i.i, <i64 3, i64 0>
  %2 = bitcast <2 x i64> %i.p to <4 x i32>        ; 2 uses
  %3 = bitcast <2 x i64> %i.q to <4 x i32>        ; 2 uses
  %4 = bitcast <2 x i64> %i.r to <4 x i32>        ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.sroa.042.0110.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %i.ae, %bb.f ]
  %5 = phi <4 x i32> [ %.sroa.012.0.copyload24.i.i.i.i.i.i.i.i.i.i, %bb.e ], [ %i.ee, %bb.f ]
  %6 = phi <4 x i32> [ %.sroa.013.0.copyload25.i.i.i.i.i.i.i.i.i.i, %bb.e ], [ %i.cs, %bb.f ] ; 2 uses
  %7 = phi <4 x i32> [ %1, %bb.e ], [ %15, %bb.f ]
  %8 = phi <4 x i32> [ %.sroa.014.0.copyload26.i.i.i.i.i.i.i.i.i.i, %bb.e ], [ %i.ed, %bb.f ]
  %i.s = phi <4 x i32> [ %.sroa.012.0.copyload24.i.i.i.i.i.i.i.i.i.i, %bb.e ], [ %i.eg, %bb.f ]
  %i.t = phi <4 x i32> [ %.sroa.013.0.copyload25.i.i.i.i.i.i.i.i.i.i, %bb.e ], [ %i.de, %bb.f ] ; 2 uses
  %i.u = phi <4 x i32> [ %2, %bb.e ], [ %16, %bb.f ]
  %i.v = phi <4 x i32> [ %.sroa.014.0.copyload26.i.i.i.i.i.i.i.i.i.i, %bb.e ], [ %i.ef, %bb.f ]
  %i.w = phi <4 x i32> [ %.sroa.012.0.copyload24.i.i.i.i.i.i.i.i.i.i, %bb.e ], [ %i.ei, %bb.f ]
  %i.x = phi <4 x i32> [ %.sroa.013.0.copyload25.i.i.i.i.i.i.i.i.i.i, %bb.e ], [ %i.dq, %bb.f ] ; 2 uses
  %i.y = phi <4 x i32> [ %3, %bb.e ], [ %17, %bb.f ]
  %i.z = phi <4 x i32> [ %.sroa.014.0.copyload26.i.i.i.i.i.i.i.i.i.i, %bb.e ], [ %i.eh, %bb.f ]
  %i.aa = phi <4 x i32> [ %.sroa.012.0.copyload24.i.i.i.i.i.i.i.i.i.i, %bb.e ], [ %i.ek, %bb.f ]
  %i.ab = phi <4 x i32> [ %.sroa.013.0.copyload25.i.i.i.i.i.i.i.i.i.i, %bb.e ], [ %i.ec, %bb.f ] ; 2 uses
  %i.ac = phi <4 x i32> [ %4, %bb.e ], [ %18, %bb.f ]
  %i.ad = phi <4 x i32> [ %.sroa.014.0.copyload26.i.i.i.i.i.i.i.i.i.i, %bb.e ], [ %i.ej, %bb.f ]
  %i.ae = add nuw nsw i64 %.sroa.042.0110.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.af = add <4 x i32> %6, %5                    ; 2 uses
  %i.ag = xor <4 x i32> %7, %i.af                 ; 2 uses
  %i.ah = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ag, <4 x i32> %i.ag, <4 x i32> splat (i32 16)) ; 2 uses
  %i.ai = add <4 x i32> %i.ah, %8                 ; 2 uses
  %i.aj = xor <4 x i32> %i.ai, %6                 ; 2 uses
  %i.ak = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.aj, <4 x i32> %i.aj, <4 x i32> splat (i32 12)) ; 2 uses
  %i.al = add <4 x i32> %i.ak, %i.af              ; 2 uses
  %i.am = xor <4 x i32> %i.al, %i.ah              ; 2 uses
  %i.an = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.am, <4 x i32> %i.am, <4 x i32> splat (i32 8)) ; 2 uses
  %i.ao = add <4 x i32> %i.an, %i.ai              ; 2 uses
  %i.ap = xor <4 x i32> %i.ao, %i.ak              ; 2 uses
  %i.aq = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ap, <4 x i32> %i.ap, <4 x i32> splat (i32 7)) ; 2 uses
  %i.ar = add <4 x i32> %i.t, %i.s                ; 2 uses
  %i.as = xor <4 x i32> %i.u, %i.ar               ; 2 uses
  %i.at = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.as, <4 x i32> %i.as, <4 x i32> splat (i32 16)) ; 2 uses
  %i.au = add <4 x i32> %i.at, %i.v               ; 2 uses
  %i.av = xor <4 x i32> %i.au, %i.t               ; 2 uses
  %i.aw = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.av, <4 x i32> %i.av, <4 x i32> splat (i32 12)) ; 2 uses
  %i.ax = add <4 x i32> %i.aw, %i.ar              ; 2 uses
  %i.ay = xor <4 x i32> %i.ax, %i.at              ; 2 uses
  %i.az = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ay, <4 x i32> %i.ay, <4 x i32> splat (i32 8)) ; 2 uses
  %i.ba = add <4 x i32> %i.az, %i.au              ; 2 uses
  %i.bb = xor <4 x i32> %i.ba, %i.aw              ; 2 uses
  %i.bc = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bb, <4 x i32> %i.bb, <4 x i32> splat (i32 7)) ; 2 uses
  %i.bd = add <4 x i32> %i.x, %i.w                ; 2 uses
  %i.be = xor <4 x i32> %i.y, %i.bd               ; 2 uses
  %i.bf = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.be, <4 x i32> %i.be, <4 x i32> splat (i32 16)) ; 2 uses
  %i.bg = add <4 x i32> %i.bf, %i.z               ; 2 uses
  %i.bh = xor <4 x i32> %i.bg, %i.x               ; 2 uses
  %i.bi = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bh, <4 x i32> %i.bh, <4 x i32> splat (i32 12)) ; 2 uses
  %i.bj = add <4 x i32> %i.bi, %i.bd              ; 2 uses
  %i.bk = xor <4 x i32> %i.bj, %i.bf              ; 2 uses
  %i.bl = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bk, <4 x i32> %i.bk, <4 x i32> splat (i32 8)) ; 2 uses
  %i.bm = add <4 x i32> %i.bl, %i.bg              ; 2 uses
  %i.bn = xor <4 x i32> %i.bm, %i.bi              ; 2 uses
  %i.bo = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bn, <4 x i32> %i.bn, <4 x i32> splat (i32 7)) ; 2 uses
  %i.bp = add <4 x i32> %i.ab, %i.aa              ; 2 uses
  %i.bq = xor <4 x i32> %i.ac, %i.bp              ; 2 uses
  %i.br = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bq, <4 x i32> %i.bq, <4 x i32> splat (i32 16)) ; 2 uses
  %i.bs = add <4 x i32> %i.br, %i.ad              ; 2 uses
  %i.bt = xor <4 x i32> %i.bs, %i.ab              ; 2 uses
  %i.bu = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bt, <4 x i32> %i.bt, <4 x i32> splat (i32 12)) ; 2 uses
  %i.bv = add <4 x i32> %i.bu, %i.bp              ; 2 uses
  %i.bw = xor <4 x i32> %i.bv, %i.br              ; 2 uses
  %i.bx = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bw, <4 x i32> %i.bw, <4 x i32> splat (i32 8)) ; 2 uses
  %i.by = add <4 x i32> %i.bx, %i.bs              ; 2 uses
  %i.bz = xor <4 x i32> %i.by, %i.bu              ; 2 uses
  %i.ca = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bz, <4 x i32> %i.bz, <4 x i32> splat (i32 7)) ; 2 uses
  %i.cb = shufflevector <4 x i32> %i.ao, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %9 = shufflevector <4 x i32> %i.an, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cc = shufflevector <4 x i32> %i.al, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.cd = shufflevector <4 x i32> %i.ba, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %10 = shufflevector <4 x i32> %i.az, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ce = shufflevector <4 x i32> %i.ax, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.cf = shufflevector <4 x i32> %i.bm, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %11 = shufflevector <4 x i32> %i.bl, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cg = shufflevector <4 x i32> %i.bj, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.ch = shufflevector <4 x i32> %i.by, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %12 = shufflevector <4 x i32> %i.bx, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %13 = shufflevector <4 x i32> %i.bv, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %14 = add <4 x i32> %i.aq, %i.cc                ; 2 uses
  %i.ci = xor <4 x i32> %14, %9                   ; 2 uses
  %i.cj = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ci, <4 x i32> %i.ci, <4 x i32> splat (i32 16)) ; 2 uses
  %i.ck = add <4 x i32> %i.cj, %i.cb              ; 2 uses
  %i.cl = xor <4 x i32> %i.ck, %i.aq              ; 2 uses
  %i.cm = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cl, <4 x i32> %i.cl, <4 x i32> splat (i32 12)) ; 2 uses
  %i.cn = add <4 x i32> %i.cm, %14                ; 2 uses
  %i.co = xor <4 x i32> %i.cn, %i.cj              ; 2 uses
  %i.cp = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.co, <4 x i32> %i.co, <4 x i32> splat (i32 8)) ; 2 uses
  %i.cq = add <4 x i32> %i.cp, %i.ck              ; 2 uses
  %i.cr = xor <4 x i32> %i.cq, %i.cm              ; 2 uses
  %i.cs = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cr, <4 x i32> %i.cr, <4 x i32> splat (i32 7)) ; 2 uses
  %i.ct = add <4 x i32> %i.bc, %i.ce              ; 2 uses
  %i.cu = xor <4 x i32> %i.ct, %10                ; 2 uses
  %i.cv = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cu, <4 x i32> %i.cu, <4 x i32> splat (i32 16)) ; 2 uses
  %i.cw = add <4 x i32> %i.cv, %i.cd              ; 2 uses
  %i.cx = xor <4 x i32> %i.cw, %i.bc              ; 2 uses
  %i.cy = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cx, <4 x i32> %i.cx, <4 x i32> splat (i32 12)) ; 2 uses
  %i.cz = add <4 x i32> %i.cy, %i.ct              ; 2 uses
  %i.da = xor <4 x i32> %i.cz, %i.cv              ; 2 uses
  %i.db = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.da, <4 x i32> %i.da, <4 x i32> splat (i32 8)) ; 2 uses
  %i.dc = add <4 x i32> %i.db, %i.cw              ; 2 uses
  %i.dd = xor <4 x i32> %i.dc, %i.cy              ; 2 uses
  %i.de = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dd, <4 x i32> %i.dd, <4 x i32> splat (i32 7)) ; 2 uses
  %i.df = add <4 x i32> %i.bo, %i.cg              ; 2 uses
  %i.dg = xor <4 x i32> %i.df, %11                ; 2 uses
  %i.dh = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dg, <4 x i32> %i.dg, <4 x i32> splat (i32 16)) ; 2 uses
  %i.di = add <4 x i32> %i.dh, %i.cf              ; 2 uses
  %i.dj = xor <4 x i32> %i.di, %i.bo              ; 2 uses
  %i.dk = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dj, <4 x i32> %i.dj, <4 x i32> splat (i32 12)) ; 2 uses
  %i.dl = add <4 x i32> %i.dk, %i.df              ; 2 uses
  %i.dm = xor <4 x i32> %i.dl, %i.dh              ; 2 uses
  %i.dn = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dm, <4 x i32> %i.dm, <4 x i32> splat (i32 8)) ; 2 uses
  %i.do = add <4 x i32> %i.dn, %i.di              ; 2 uses
  %i.dp = xor <4 x i32> %i.do, %i.dk              ; 2 uses
  %i.dq = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dp, <4 x i32> %i.dp, <4 x i32> splat (i32 7)) ; 2 uses
  %i.dr = add <4 x i32> %i.ca, %13                ; 2 uses
  %i.ds = xor <4 x i32> %i.dr, %12                ; 2 uses
  %i.dt = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ds, <4 x i32> %i.ds, <4 x i32> splat (i32 16)) ; 2 uses
  %i.du = add <4 x i32> %i.dt, %i.ch              ; 2 uses
  %i.dv = xor <4 x i32> %i.du, %i.ca              ; 2 uses
  %i.dw = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dv, <4 x i32> %i.dv, <4 x i32> splat (i32 12)) ; 2 uses
  %i.dx = add <4 x i32> %i.dw, %i.dr              ; 2 uses
  %i.dy = xor <4 x i32> %i.dx, %i.dt              ; 2 uses
  %i.dz = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dy, <4 x i32> %i.dy, <4 x i32> splat (i32 8)) ; 2 uses
  %i.ea = add <4 x i32> %i.dz, %i.du              ; 2 uses
  %i.eb = xor <4 x i32> %i.ea, %i.dw              ; 2 uses
  %i.ec = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.eb, <4 x i32> %i.eb, <4 x i32> splat (i32 7)) ; 2 uses
  %i.ed = shufflevector <4 x i32> %i.cq, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %15 = shufflevector <4 x i32> %i.cp, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.ee = shufflevector <4 x i32> %i.cn, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.ef = shufflevector <4 x i32> %i.dc, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %16 = shufflevector <4 x i32> %i.db, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.eg = shufflevector <4 x i32> %i.cz, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.eh = shufflevector <4 x i32> %i.do, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %17 = shufflevector <4 x i32> %i.dn, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.ei = shufflevector <4 x i32> %i.dl, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.ej = shufflevector <4 x i32> %i.ea, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %18 = shufflevector <4 x i32> %i.dz, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.ek = shufflevector <4 x i32> %i.dx, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ae, 6
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtNtCsjXcachvKq5y_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i.i.i, label %bb.f

_RINvNtNtCsjXcachvKq5y_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.el = add <4 x i32> %i.ee, %.sroa.012.0.copyload24.i.i.i.i.i.i.i.i.i.i
  %i.em = add <4 x i32> %i.cs, %.sroa.013.0.copyload25.i.i.i.i.i.i.i.i.i.i
  %i.en = add <4 x i32> %i.ed, %.sroa.014.0.copyload26.i.i.i.i.i.i.i.i.i.i
  %i.eo = add <4 x i32> %15, %1
  %i.ep = add <4 x i32> %i.eg, %.sroa.012.0.copyload24.i.i.i.i.i.i.i.i.i.i
  %i.eq = add <4 x i32> %i.de, %.sroa.013.0.copyload25.i.i.i.i.i.i.i.i.i.i
  %i.er = add <4 x i32> %i.ef, %.sroa.014.0.copyload26.i.i.i.i.i.i.i.i.i.i
  %i.es = add <4 x i32> %16, %2
  %i.et = add <4 x i32> %i.ei, %.sroa.012.0.copyload24.i.i.i.i.i.i.i.i.i.i
  %i.eu = add <4 x i32> %i.dq, %.sroa.013.0.copyload25.i.i.i.i.i.i.i.i.i.i
  %i.ev = add <4 x i32> %i.eh, %.sroa.014.0.copyload26.i.i.i.i.i.i.i.i.i.i
  %i.ew = add <4 x i32> %17, %3
  %i.ex = add <4 x i32> %i.ek, %.sroa.012.0.copyload24.i.i.i.i.i.i.i.i.i.i
  %i.ey = add <4 x i32> %i.ec, %.sroa.013.0.copyload25.i.i.i.i.i.i.i.i.i.i
  %i.ez = add <4 x i32> %i.ej, %.sroa.014.0.copyload26.i.i.i.i.i.i.i.i.i.i
  %i.fa = add <4 x i32> %18, %4
  store <4 x i32> %i.el, ptr %i.d, align 4, !alias.scope !9468, !noalias !9458
  store <4 x i32> %i.em, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !9468, !noalias !9458
  store <4 x i32> %i.en, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !9468, !noalias !9458
  store <4 x i32> %i.eo, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !9468, !noalias !9458
  store <4 x i32> %i.ep, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !9468, !noalias !9458
  store <4 x i32> %i.eq, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !9468, !noalias !9458
  store <4 x i32> %i.er, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !9468, !noalias !9458
  store <4 x i32> %i.es, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !9468, !noalias !9458
  store <4 x i32> %i.et, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !9468, !noalias !9458
  store <4 x i32> %i.eu, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !9468, !noalias !9458
  store <4 x i32> %i.ev, ptr %.sroa.13.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !9468, !noalias !9458
  store <4 x i32> %i.ew, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !9468, !noalias !9458
  store <4 x i32> %i.ex, ptr %.sroa.15.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !9468, !noalias !9458
  store <4 x i32> %i.ey, ptr %.sroa.16.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !9468, !noalias !9458
  store <4 x i32> %i.ez, ptr %.sroa.17.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !9468, !noalias !9458
  store <4 x i32> %i.fa, ptr %.sroa.18.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !9468, !noalias !9458
  %i.fb = add <2 x i64> %.sroa.015.0.copyload.i.i.i.i.i.i.i.i.i.i, <i64 4, i64 0> ; 2 uses
  %i.fc = bitcast <2 x i64> %i.fb to <4 x i32>
  %i.fd = extractelement <4 x i32> %i.fc, i64 0
  store i32 %i.fd, ptr %i.f, align 4, !alias.scope !9467, !noalias !9458
  %i.fe = tail call fastcc noundef i32 @_RINvNtNtNtCs6JMX4GRUq9U_4core9core_arch3x865sse4117__mm_extract_epi32Kl1_ECsgcf5BHVXlUt_7uu_sort(<2 x i64> %i.fb) #38
  store i32 %i.fe, ptr %i.g, align 4, !alias.scope !9467, !noalias !9458
  br label %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCINvXs5_NtNtCs7g3JyErIm42_4rand5distr5otherNtB1v_15StandardUniformINtNtB1v_12distribution12DistributionAhj10_E6sampleNtNtNtB1x_4rngs6thread9ThreadRngE0E0Csgcf5BHVXlUt_7uu_sort.exit.i.i

bb.g:                                             ; preds = %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i.i
  tail call fastcc void @_RINvNtNtCsjXcachvKq5y_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.d) #38, !alias.scope !9469, !noalias !9458
  br label %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCINvXs5_NtNtCs7g3JyErIm42_4rand5distr5otherNtB1v_15StandardUniformINtNtB1v_12distribution12DistributionAhj10_E6sampleNtNtNtB1x_4rngs6thread9ThreadRngE0E0Csgcf5BHVXlUt_7uu_sort.exit.i.i

_RNvXs_NtCsjXcachvKq5y_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskqYlSTCc3RA_9rand_core5block9Generator8generateCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.ff = zext nneg i32 %i.j to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ff
  %i.fh = add nuw nsw i32 %i.j, 1
  br label %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCINvXs5_NtNtCs7g3JyErIm42_4rand5distr5otherNtB1v_15StandardUniformINtNtB1v_12distribution12DistributionAhj10_E6sampleNtNtNtB1x_4rngs6thread9ThreadRngE0E0Csgcf5BHVXlUt_7uu_sort.exit.i.i

_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCINvXs5_NtNtCs7g3JyErIm42_4rand5distr5otherNtB1v_15StandardUniformINtNtB1v_12distribution12DistributionAhj10_E6sampleNtNtNtB1x_4rngs6thread9ThreadRngE0E0Csgcf5BHVXlUt_7uu_sort.exit.i.i: ; preds = %_RNvXs_NtCsjXcachvKq5y_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskqYlSTCc3RA_9rand_core5block9Generator8generateCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i.i, %bb.g, %_RINvNtNtCsjXcachvKq5y_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.fh, %_RNvXs_NtCsjXcachvKq5y_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskqYlSTCc3RA_9rand_core5block9Generator8generateCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i.i ], [ 1, %_RINvNtNtCsjXcachvKq5y_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i.i.i ], [ 1, %bb.g ] ; 2 uses
  %.in.i.i.i.i.i.i.i.i = phi ptr [ %i.fg, %_RNvXs_NtCsjXcachvKq5y_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskqYlSTCc3RA_9rand_core5block9Generator8generateCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i.i ], [ %i.d, %_RINvNtNtCsjXcachvKq5y_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i.i.i ], [ %i.d, %bb.g ]
  %i.fi = load i32, ptr %.in.i.i.i.i.i.i.i.i, align 4, !alias.scope !9457, !noalias !9458, !noundef !11
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i.i.i, ptr %i.d, align 4, !alias.scope !9457, !noalias !9458
  %i.fj = trunc i32 %i.fi to i8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.10.027.i.i
  store i8 %i.fj, ptr %i.fk, align 1
  %i.fl = add nuw nsw i64 %.sroa.10.027.i.i, 1    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fl, 16
  br i1 %exitcond.not.i.i, label %_RINvNtCs6JMX4GRUq9U_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuithEKj10_NCINvMBJ_BG_10wrap_mut_1jNCINvXs5_NtNtCs7g3JyErIm42_4rand5distr5otherNtB24_15StandardUniformINtNtB24_12distribution12DistributionAhB1q_E6sampleNtNtNtB26_4rngs6thread9ThreadRngE0E0ECsgcf5BHVXlUt_7uu_sort.exit, label %bb.b

_RINvNtCs6JMX4GRUq9U_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuithEKj10_NCINvMBJ_BG_10wrap_mut_1jNCINvXs5_NtNtCs7g3JyErIm42_4rand5distr5otherNtB24_15StandardUniformINtNtB24_12distribution12DistributionAhB1q_E6sampleNtNtNtB26_4rngs6thread9ThreadRngE0E0ECsgcf5BHVXlUt_7uu_sort.exit: ; preds = %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuithE10wrap_mut_1jNCINvXs5_NtNtCs7g3JyErIm42_4rand5distr5otherNtB1v_15StandardUniformINtNtB1v_12distribution12DistributionAhj10_E6sampleNtNtNtB1x_4rngs6thread9ThreadRngE0E0Csgcf5BHVXlUt_7uu_sort.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %i.a, i64 16, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9472)
  %i.fm = load ptr, ptr %i.b, align 8, !alias.scope !9473, !nonnull !11, !noundef !11 ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !noalias !9473, !noundef !11
  %i.fo = add i64 %i.fn, -1                       ; 2 uses
  store i64 %i.fo, ptr %i.fm, align 8, !noalias !9473
  %i.fp = icmp eq i64 %i.fo, 0
  br i1 %i.fp, label %bb.h, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngECsgcf5BHVXlUt_7uu_sort.exit

bb.h:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuithEKj10_NCINvMBJ_BG_10wrap_mut_1jNCINvXs5_NtNtCs7g3JyErIm42_4rand5distr5otherNtB24_15StandardUniformINtNtB24_12distribution12DistributionAhB1q_E6sampleNtNtNtB26_4rngs6thread9ThreadRngE0E0ECsgcf5BHVXlUt_7uu_sort.exit
  call void @_RNvMs6_NtCs7tKScEop1B6_5alloc2rcINtB5_2RcINtNtCs6JMX4GRUq9U_4core4cell10UnsafeCellINtNtCskqYlSTCc3RA_9rand_core5block8BlockRngNtNtNtCs7g3JyErIm42_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #39
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngECsgcf5BHVXlUt_7uu_sort.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngECsgcf5BHVXlUt_7uu_sort.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuithEKj10_NCINvMBJ_BG_10wrap_mut_1jNCINvXs5_NtNtCs7g3JyErIm42_4rand5distr5otherNtB24_15StandardUniformINtNtB24_12distribution12DistributionAhB1q_E6sampleNtNtNtB26_4rngs6thread9ThreadRngE0E0ECsgcf5BHVXlUt_7uu_sort.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCsgcf5BHVXlUt_7uu_sort15legacy_key_to_k(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [20 x i8], align 1                ; 4 uses
  %i.b = alloca [20 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 14 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8, !noundef !11
  %i.l = tail call i64 @llvm.uadd.sat.i64(i64 %i.k, i64 1)
  store i64 %i.l, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load i64, ptr %i.m, align 8, !noundef !11 ; 2 uses
  %i.o = tail call i64 @llvm.uadd.sat.i64(i64 %i.n, i64 1)
  store i64 %i.o, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.p = icmp eq i64 %i.n, 0
  br i1 %i.p, label %bb.b, label %.split

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %.split32

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.h, ptr %i.d, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @228, ptr noundef nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.split32

.split32:                                         ; preds = %.split, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.i, ptr %i.c, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.f, ptr %i.q, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.417.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %1, ptr %i.r, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.421.0..sroa_idx, align 8
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @229, ptr noundef nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !9500)
  call void @llvm.experimental.noalias.scope.decl(metadata !9501)
  %.val.i.i = load i64, ptr %i.f, align 8, !range !22, !alias.scope !9502, !noundef !11 ; 2 uses
  %i.s = icmp eq i64 %.val.i.i, 0
  br i1 %i.s, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit, label %bb.c

bb.c:                                             ; preds = %.split32
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i.i = load ptr, ptr %i.t, align 8, !alias.scope !9502, !nonnull !11, !noundef !11
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !9502
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit: ; preds = %.split32, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = load i64, ptr %i.u, align 8, !noundef !11 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0                      ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.y = load i64, ptr %i.x, align 8, !noundef !11 ; 2 uses
  br i1 %i.w, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgcf5BHVXlUt_7uu_sort.exit53, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.f:                                             ; preds = %bb.d
  %..i = call noundef i64 @llvm.umax.i64(i64 %i.y, i64 1)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.z = call i64 @llvm.uadd.sat.i64(i64 %i.y, i64 1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.02.0 = phi i64 [ %..i, %bb.f ], [ %i.z, %bb.g ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 11 uses
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !11 ; 5 uses
  %i.ac = icmp sgt i64 %i.ab, -1
  call void @llvm.assume(i1 %i.ac)
  %i.ad = load i64, ptr %i.g, align 8, !range !22, !noundef !11
  %i.ae = icmp eq i64 %i.ad, %i.ab
  br i1 %i.ae, label %bb.i, label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit, !prof !21

bb.i:                                             ; preds = %bb.h
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.ab, i64 noundef 1, i64 noundef 1, i64 noundef 1) #34
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.h, %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ab
  store i8 44, ptr %i.ah, align 1, !noalias !9503
  %i.ai = add nuw i64 %i.ab, 1                    ; 8 uses
  store i64 %i.ai, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aj = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef %.sroa.02.0, ptr noalias nofree noundef nonnull %i.b, i64 noundef 20) #34 ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0
  %i.al = extractvalue { ptr, i64 } %i.aj, 1      ; 10 uses
  %.not.i = icmp slt i64 %i.al, 0
  br i1 %.not.i, label %bb.l, label %bb.j, !prof !12

bb.j:                                             ; preds = %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgcf5BHVXlUt_7uu_sort.exit.thread, label %bb.k

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgcf5BHVXlUt_7uu_sort.exit.thread: ; preds = %bb.j
end_hunk_1
