Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.12?download=true
inline.NumInlined: 821
inline.NumDeleted: 442
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RNvXs5_NtNtNtCs1L7Mk9ubPba_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep:.peel.begin
  br i1 %.not1.i, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCsbNLsQi0JuJ4_5tgrep.exit.thread.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueEEECsbNLsQi0JuJ4_5tgrep.exit.i, !llvm.loop !3094

_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCsbNLsQi0JuJ4_5tgrep.exit.thread.i: ; preds = %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCsbNLsQi0JuJ4_5tgrep.exit.i, %bb.c, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueEECsbNLsQi0JuJ4_5tgrep.exit.i, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCsbNLsQi0JuJ4_5tgrep.exit.i.peel, %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueEECsbNLsQi0JuJ4_5tgrep.exit.i.peel
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3132)
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !3133, !noalias !3134, !noundef !9
  %.not.i3.i = icmp eq ptr %i.aa, null
  br i1 %.not.i3.i, label %_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtB1g_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueEEIB1c_B2a_EENtNtNtB9_6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.thread4, label %bb.d

bb.d:                                             ; preds = %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCsbNLsQi0JuJ4_5tgrep.exit.thread.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3136)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !3137, !noalias !3138, !nonnull !9, !noundef !9
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !3137, !noalias !3138, !nonnull !9, !noundef !9 ; 4 uses
  %i.af = icmp eq ptr %i.ae, %i.ac
  br i1 %i.af, label %_RNvYNvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCsbNLsQi0JuJ4_5tgrep.exit.thread.i9.i, label %_RNvYNvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCsbNLsQi0JuJ4_5tgrep.exit.i4.i

_RNvYNvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCsbNLsQi0JuJ4_5tgrep.exit.i4.i: ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store ptr %i.ag, ptr %i.ad, align 8, !alias.scope !3137, !noalias !3138
  %.sroa.031.0.copyload.i = load ptr, ptr %i.ae, align 8, !noalias !3139 ; 2 uses
  %.not6.i6.i = icmp eq ptr %.sroa.031.0.copyload.i, null
  br i1 %.not6.i6.i, label %_RNvYNvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCsbNLsQi0JuJ4_5tgrep.exit.thread.i9.i, label %_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtB1g_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueEEIB1c_B2a_EENtNtNtB9_6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.thread

_RNvYNvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCsbNLsQi0JuJ4_5tgrep.exit.thread.i9.i: ; preds = %_RNvYNvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCsbNLsQi0JuJ4_5tgrep.exit.i4.i, %bb.d
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtB1g_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueEEIB1c_B2a_EENtNtNtB9_6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.thread7 unwind label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueEECsbNLsQi0JuJ4_5tgrep.exit.i7.i, !noalias !3134

_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtB1g_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueEEIB1c_B2a_EENtNtNtB9_6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.thread7: ; preds = %_RNvYNvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCsbNLsQi0JuJ4_5tgrep.exit.thread.i9.i
  store ptr null, ptr %i.z, align 8, !alias.scope !3133, !noalias !3134
  br label %_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtB1g_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueEEIB1c_B2a_EENtNtNtB9_6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.thread4

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueEECsbNLsQi0JuJ4_5tgrep.exit.i7.i: ; preds = %_RNvYNvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCsbNLsQi0JuJ4_5tgrep.exit.thread.i9.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.z, align 8, !alias.scope !3133, !noalias !3134
  br label %common.resume.i

_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtB1g_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueEEIB1c_B2a_EENtNtNtB9_6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.thread: ; preds = %_RNvYNvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCsbNLsQi0JuJ4_5tgrep.exit.i.i, %_RNvYNvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCsbNLsQi0JuJ4_5tgrep.exit.i4.i, %_RNvYNvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCsbNLsQi0JuJ4_5tgrep.exit.i.i.peel
  %.sink = phi ptr [ %i.ae, %_RNvYNvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCsbNLsQi0JuJ4_5tgrep.exit.i4.i ], [ %i.j, %_RNvYNvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCsbNLsQi0JuJ4_5tgrep.exit.i.i.peel ], [ %.sroa.8.sroa.0.0.copyload.i.peel, %_RNvYNvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCsbNLsQi0JuJ4_5tgrep.exit.i.i ]
  %.sroa.0.13 = phi ptr [ %.sroa.031.0.copyload.i, %_RNvYNvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCsbNLsQi0JuJ4_5tgrep.exit.i4.i ], [ %.sroa.027.0.copyload.i.peel, %_RNvYNvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCsbNLsQi0JuJ4_5tgrep.exit.i.i.peel ], [ %.sroa.027.0.copyload.i, %_RNvYNvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCsbNLsQi0JuJ4_5tgrep.exit.i.i ]
  %.sroa.633.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.633.0..sroa_idx.i, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.13, ptr %i.a, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, i64 24, i1 false)
  %i.ai = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  call void %i.ai(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !9
  %i.al = add i64 %i.ak, -1
  store i64 %i.al, ptr %i.aj, align 8
  br label %bb.e

_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtB1g_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueEEIB1c_B2a_EENtNtNtB9_6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.thread4: ; preds = %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCsbNLsQi0JuJ4_5tgrep.exit.thread.i, %_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtB1g_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueEEIB1c_B2a_EENtNtNtB9_6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.thread7
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  store i64 -1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtB1g_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueEEIB1c_B2a_EENtNtNtB9_6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.thread4, %_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtB1g_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueEEIB1c_B2a_EENtNtNtB9_6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.thread
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtCsjFxWRWgRcyr_5rayon4iter3mapINtB5_9MapFolderIBD_INtNtB7_10while_some15WhileSomeFolderINtNtB7_6extend13ListVecFolderNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB3d_ppEE13from_par_iter2okB21_NtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCNvB23_13handle_searchs2_0EINtNtB7_8plumbing6FolderRTB4O_INtNtB4S_4sync3ArcNtB23_11DecodedFileEEE8completeB25_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3150)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3151
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 24, i1 false), !noalias !3152
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3154)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3155
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false), !noalias !3155
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !3154, !noalias !3156, !noundef !9 ; 2 uses
  %i.e = icmp ult i64 %i.d, 144115188075855872
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = invoke noundef nonnull align 8 ptr @_RNvMs6_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEE13push_back_mutB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1)
          to label %bb.g unwind label %bb.f, !noalias !3152 ; 0 uses

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !3157, !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3155
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEB1c_.exit.i.i.i unwind label %bb.d, !noalias !3156

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume.i.i.i unwind label %bb.e, !noalias !3156

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !3156
  unreachable

common.resume.i.i.i:                              ; preds = %bb.f, %bb.d
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.j, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEB1c_.exit.i.i.i: ; preds = %bb.c
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !3156
  br label %_RNvXs6_NtNtCsjFxWRWgRcyr_5rayon4iter3mapINtB5_9MapFolderINtNtB7_10while_some15WhileSomeFolderINtNtB7_6extend13ListVecFolderNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB39_ppEE13from_par_iter2okB1X_NtNtCsgCecv3eZDcN_5alloc6string6StringE0EINtNtB7_8plumbing6FolderIB39_B1X_B4K_EE8completeB21_.exit

bb.f:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume.i.i.i unwind label %bb.h, !noalias !3155

bb.g:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3155
  br label %_RNvXs6_NtNtCsjFxWRWgRcyr_5rayon4iter3mapINtB5_9MapFolderINtNtB7_10while_some15WhileSomeFolderINtNtB7_6extend13ListVecFolderNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB39_ppEE13from_par_iter2okB1X_NtNtCsgCecv3eZDcN_5alloc6string6StringE0EINtNtB7_8plumbing6FolderIB39_B1X_B4K_EE8completeB21_.exit

bb.h:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !3155
  unreachable

_RNvXs6_NtNtCsjFxWRWgRcyr_5rayon4iter3mapINtB5_9MapFolderINtNtB7_10while_some15WhileSomeFolderINtNtB7_6extend13ListVecFolderNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB39_ppEE13from_par_iter2okB1X_NtNtCsgCecv3eZDcN_5alloc6string6StringE0EINtNtB7_8plumbing6FolderIB39_B1X_B4K_EE8completeB21_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEB1c_.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3151
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs6_NtNtCsjFxWRWgRcyr_5rayon4iter3mapINtB5_9MapFolderIBD_INtNtB7_10while_some15WhileSomeFolderINtNtNtB7_7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB3p_ppEE13from_par_iter2okB2d_NtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCNvB2f_13handle_searchs2_0EINtNtB7_8plumbing6FolderRTB50_INtNtB54_4sync3ArcNtB2f_11DecodedFileEEE8completeB2h_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !3165
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEE6reduceB20_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !9 ; 2 uses
  %i.d = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %i.c
  %i.e = load ptr, ptr %2, align 8, !noundef !9   ; 3 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEB1J_.exit12, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val7 = load i64, ptr %i.g, align 8, !alias.scope !21, !noundef !9 ; 4 uses
  %i.h = icmp eq i64 %.val7, 0
  br i1 %i.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEB1J_.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.i = icmp eq i64 %i.k, %.val7
  br i1 %i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEB1J_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i.i18 = phi i64 [ %i.k, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %.sroa.0.0.i.i.i18
  %i.k = add nuw nsw i64 %.sroa.0.0.i.i.i18, 1    ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEBF_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.j)
          to label %bb.c unwind label %bb.e, !noalias !3168

bb.d:                                             ; preds = %.lr.ph20
  %i.l = add i64 %.sroa.0.1.i.i.i19, 1            ; 2 uses
  %i.m = icmp eq i64 %i.l, %.val7
  br i1 %i.m, label %.body, label %.lr.ph20

bb.e:                                             ; preds = %.lr.ph
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq i64 %i.k, %.val7
  br i1 %i.o, label %.body, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i.i19 = phi i64 [ %i.l, %bb.d ], [ %i.k, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %.sroa.0.1.i.i.i19
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEBF_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.p) #28
          to label %bb.d unwind label %bb.f, !noalias !3168

bb.f:                                             ; preds = %.lr.ph20
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !3168
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEB1J_.exit12: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noundef !9
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !9
  %i.v = add i64 %i.u, %i.s
  store i64 %i.v, ptr %i.t, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.413.0.copyload = load i64, ptr %.sroa.413.0..sroa_idx, align 8
  %i.w = add i64 %.sroa.413.0.copyload, %i.c
  store i64 %i.w, ptr %i.b, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEB1J_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEB1J_.exit: ; preds = %bb.c, %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEB1J_.exit12
  ret void

.body:                                            ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB21_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB3x_11FileVersionEEE6reduceCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !9 ; 2 uses
  %i.d = getelementptr inbounds nuw [144 x i8], ptr %i.a, i64 %i.c
  %i.e = load ptr, ptr %2, align 8, !noundef !9   ; 3 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB1K_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB30_11FileVersionEEECsbNLsQi0JuJ4_5tgrep.exit12, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val7 = load i64, ptr %i.g, align 8, !alias.scope !22, !noundef !9 ; 4 uses
  %i.h = icmp eq i64 %.val7, 0
  br i1 %i.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB1K_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB30_11FileVersionEEECsbNLsQi0JuJ4_5tgrep.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.i = icmp eq i64 %i.k, %.val7
  br i1 %i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB1K_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB30_11FileVersionEEECsbNLsQi0JuJ4_5tgrep.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i.i18 = phi i64 [ %i.k, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [144 x i8], ptr %i.e, i64 %.sroa.0.0.i.i.i18
  %i.k = add nuw nsw i64 %.sroa.0.0.i.i.i18, 1    ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtBG_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB1V_11FileVersionEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(144) %i.j)
          to label %bb.c unwind label %bb.e, !noalias !3171

bb.d:                                             ; preds = %.lr.ph20
  %i.l = add i64 %.sroa.0.1.i.i.i19, 1            ; 2 uses
  %i.m = icmp eq i64 %i.l, %.val7
  br i1 %i.m, label %.body, label %.lr.ph20

bb.e:                                             ; preds = %.lr.ph
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq i64 %i.k, %.val7
  br i1 %i.o, label %.body, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i.i19 = phi i64 [ %i.l, %bb.d ], [ %i.k, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw [144 x i8], ptr %i.e, i64 %.sroa.0.1.i.i.i19
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtBG_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB1V_11FileVersionEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(144) %i.p) #28
          to label %bb.d unwind label %bb.f, !noalias !3171

bb.f:                                             ; preds = %.lr.ph20
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !3171
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB1K_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB30_11FileVersionEEECsbNLsQi0JuJ4_5tgrep.exit12: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noundef !9
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !9
  %i.v = add i64 %i.u, %i.s
  store i64 %i.v, ptr %i.t, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.413.0.copyload = load i64, ptr %.sroa.413.0..sroa_idx, align 8
  %i.w = add i64 %.sroa.413.0.copyload, %i.c
  store i64 %i.w, ptr %i.b, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB1K_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB30_11FileVersionEEECsbNLsQi0JuJ4_5tgrep.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB1K_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB30_11FileVersionEEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.c, %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB1K_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB30_11FileVersionEEECsbNLsQi0JuJ4_5tgrep.exit12
  ret void

.body:                                            ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs7_NtCsjFxWRWgRcyr_5rayon5sliceINtB5_12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtB7_4iter8plumbing8Producer8split_atCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %.not.i = icmp ugt i64 %3, %2
  br i1 %.not.i, label %bb.b, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5Xr050g3D4S_3std4path7PathBuf8split_atCsbNLsQi0JuJ4_5tgrep.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #27, !noalias !3175
  unreachable

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5Xr050g3D4S_3std4path7PathBuf8split_atCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %3
  %i.b = sub nuw nsw i64 %2, %3
  store ptr %1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.e, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs7_NtCsjFxWRWgRcyr_5rayon5sliceINtB5_12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBW_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEENtNtNtB7_4iter8plumbing8Producer8split_atB1P_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %.not.i = icmp ugt i64 %3, %2
  br i1 %.not.i, label %bb.b, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBz_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEE8split_atB1s_.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #27, !noalias !3179
  unreachable

_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBz_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEE8split_atB1s_.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %3
  %i.b = sub nuw nsw i64 %2, %3
  store ptr %1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.e, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs_NvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgENCNvXso_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserINtB35_15EnumValueParserB2i_ENtB35_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2k_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgENCNvXso_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1B_ENtB2o_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4q_10advance_byBV_NtB5K_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB57_EEB1D_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3189)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !3190, !nonnull !9, !noundef !9 ; 2 uses
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !3190 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = icmp eq ptr %.promoted.i.i, %i.d
  br i1 %i.f, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgENCNvXso_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1B_ENtB2o_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4q_10advance_byBV_NtB5K_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB57_EEB1D_.exit, label %.lr.ph

bb.c:                                             ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgNtNtNtCs1L7Mk9ubPba_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB34_ENCNvXso_NtB1X_12value_parserINtB49_15EnumValueParserB1f_ENtB49_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB41_ENtB5J_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i
  %i.g = icmp eq ptr %i.i, %i.d
  br i1 %i.g, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgENCNvXso_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1B_ENtB2o_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4q_10advance_byBV_NtB5K_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB57_EEB1D_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.01.0.i.i7 = phi i64 [ %.sroa.0.0.i8.i.i, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %i.h = phi ptr [ %i.i, %bb.c ], [ %.promoted.i.i, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !alias.scope !3190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3191
  call void @_RNvXsc_CsbNLsQi0JuJ4_5tgrepNtB5_16IndexStrategyArgNtNtCs1L7Mk9ubPba_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.h), !noalias !3192
  %i.j = load i64, ptr %i.b, align 8, !range !11, !noalias !3191, !noundef !9
  %.not.i.i.i = icmp eq i64 %i.j, -1
  br i1 %.not.i.i.i, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgNtNtNtCs1L7Mk9ubPba_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB34_ENCNvXso_NtB1X_12value_parserINtB49_15EnumValueParserB1f_ENtB49_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB41_ENtB5J_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !3191
  store i64 %.sroa.01.0.i.i7, ptr %i.a, align 8, !noalias !3191
  %i.k = add i64 %.sroa.01.0.i.i7, -1
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1L7Mk9ubPba_12clap_builder7builder14possible_value13PossibleValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e), !noalias !3192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3191
  br label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgNtNtNtCs1L7Mk9ubPba_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB34_ENCNvXso_NtB1X_12value_parserINtB49_15EnumValueParserB1f_ENtB49_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB41_ENtB5J_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgNtNtNtCs1L7Mk9ubPba_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB34_ENCNvXso_NtB1X_12value_parserINtB49_15EnumValueParserB1f_ENtB49_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB41_ENtB5J_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i: ; preds = %bb.d, %.lr.ph
  %.sroa.0.0.i8.i.i = phi i64 [ %i.k, %bb.d ], [ %.sroa.01.0.i.i7, %.lr.ph ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3191
  %i.l = icmp eq i64 %.sroa.0.0.i8.i.i, 0
  br i1 %i.l, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgENCNvXso_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1B_ENtB2o_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4q_10advance_byBV_NtB5K_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB57_EEB1D_.exit, label %bb.c

_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgENCNvXso_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1B_ENtB2o_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4q_10advance_byBV_NtB5K_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB57_EEB1D_.exit: ; preds = %bb.c, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgNtNtNtCs1L7Mk9ubPba_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB34_ENCNvXso_NtB1X_12value_parserINtB49_15EnumValueParserB1f_ENtB49_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB41_ENtB5J_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i, %bb.b, %bb.a
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ %1, %bb.b ], [ 0, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgNtNtNtCs1L7Mk9ubPba_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB34_ENCNvXso_NtB1X_12value_parserINtB49_15EnumValueParserB1f_ENtB49_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB41_ENtB5J_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i ], [ %.sroa.0.0.i8.i.i, %bb.c ]
  ret i64 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs_NvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCsbNLsQi0JuJ4_5tgrep5serve9WatchModeENCNvXso_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserINtB35_15EnumValueParserB2i_ENtB35_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 10 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCsbNLsQi0JuJ4_5tgrep5serve9WatchModeENCNvXso_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1B_ENtB2o_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4q_10advance_byBV_NtB5K_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB57_EEB1F_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3200)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !3201, !nonnull !9, !noundef !9
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !3201
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.86.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.97.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.108.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.e = phi ptr [ %.promoted.i.i, %bb.b ], [ %i.g, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i = phi i64 [ %1, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCsbNLsQi0JuJ4_5tgrep5serve9WatchModeENCNvXso_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1B_ENtB2o_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4q_10advance_byBV_NtB5K_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB57_EEB1F_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !3201
  %.val.i.i = load i8, ptr %i.e, align 1, !range !16, !noalias !3202, !noundef !9
  %i.h = trunc nuw i8 %.val.i.i to i1
  %spec.select.i.i.i.i.i = select i1 %i.h, ptr @33, ptr @32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3202
  store i64 %.sroa.01.0.i.i, ptr %i.a, align 8, !noalias !3202
  store i64 0, ptr %i.d, align 8, !noalias !3202
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !3202
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !noalias !3202
  store i64 -1, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8, !noalias !3202
  store ptr %spec.select.i.i.i.i.i, ptr %.sroa.86.0..sroa_idx.i.i.i, align 8, !noalias !3202
  store i64 4, ptr %.sroa.97.0..sroa_idx.i.i.i, align 8, !noalias !3202
  store i8 0, ptr %.sroa.108.0..sroa_idx.i.i.i, align 8, !noalias !3202
  %i.i = add i64 %.sroa.01.0.i.i, -1              ; 2 uses
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1L7Mk9ubPba_12clap_builder7builder14possible_value13PossibleValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d), !noalias !3202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3202
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCsbNLsQi0JuJ4_5tgrep5serve9WatchModeENCNvXso_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1B_ENtB2o_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4q_10advance_byBV_NtB5K_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB57_EEB1F_.exit, label %bb.c

_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCsbNLsQi0JuJ4_5tgrep5serve9WatchModeENCNvXso_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1B_ENtB2o_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4q_10advance_byBV_NtB5K_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB57_EEB1F_.exit: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ 0, %bb.d ], [ %.sroa.01.0.i.i, %bb.c ]
  ret i64 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtNtCsjFxWRWgRcyr_5rayon4iter6extendNtB5_11ListReducerINtNtB7_8plumbing7ReducerINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1t_3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEE6reduceB2K_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !9 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !noundef !9   ; 3 uses
  store ptr null, ptr %2, align 8
  %.not3 = icmp eq ptr %i.c, null
  br i1 %.not3, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3211)
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %1, align 8, !alias.scope !3210, !noalias !3211
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3212)
  %i.f = load <2 x i64>, ptr %2, align 8, !alias.scope !3213, !noalias !9
  store i64 %.sroa.0.0.copyload.i.i.i.i.i, ptr %2, align 8, !alias.scope !3211, !noalias !3210
  store <2 x i64> %i.f, ptr %1, align 8, !alias.scope !3214, !noalias !9
  store i64 %i.d, ptr %i.e, align 8, !alias.scope !3215, !noalias !3212
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3217)
  %.sroa.0.0.copyload.i.i.i.2.i.i = load i64, ptr %i.g, align 8, !alias.scope !3216, !noalias !3217
  %.sroa.02.0.copyload.i.i.i.2.i.i = load i64, ptr %i.h, align 8, !alias.scope !3217, !noalias !3216
  store i64 %.sroa.02.0.copyload.i.i.i.2.i.i, ptr %i.g, align 8, !alias.scope !3216, !noalias !3217
  store i64 %.sroa.0.0.copyload.i.i.i.2.i.i, ptr %i.h, align 8, !alias.scope !3217, !noalias !3216
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.e, %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.c, ptr %i.i, align 8
end_hunk_0
