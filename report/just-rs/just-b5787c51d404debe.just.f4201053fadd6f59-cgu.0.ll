Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27266
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 594
loop-unroll.NumUnrolled: 719
begin_hunk_0_@_RINvMs3_NtCsdftwklc2oBO_7similar4textNtB6_14TextDiffConfig4diffeECskXtk6F4WjxZ_4just:bb.a
  br i1 %i.uu, label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6finishCskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers13diff_deadlineINtNtB6_4text12TextDiffSideeEBZ_INtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit.sink.split.i.i.i.i.i.i.i

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers13diff_deadlineINtNtB6_4text12TextDiffSideeEBZ_INtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit.sink.split.i.i.i.i.i.i.i: ; preds = %.noexc27.i.i.i.i.i, %.noexc.i.i.i.i.i
  invoke fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtB6_4text12TextDiffSideeEB14_INtNtB4_7compact7CompactB14_B14_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(160) %i.ul, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.um, i64 noundef %i.un, i64 noundef %i.uo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.up, i64 noundef %i.uq, i64 noundef %i.ur, i64 %i.us, i32 noundef %i.ut)
          to label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6finishCskXtk6F4WjxZ_4just.exit.i.i.i.i.i unwind label %bb.cd, !noalias !3558

_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6finishCskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers13diff_deadlineINtNtB6_4text12TextDiffSideeEBZ_INtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit.sink.split.i.i.i.i.i.i.i, %.noexc27.i.i.i.i.i
  %.val20.i.i.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !3670, !noalias !3668 ; 2 uses
  %i.uv = icmp eq i64 %.val20.i.i.i.i.i, 0
  br i1 %i.uv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit29.i.i.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6finishCskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.val21.i.i.i.i.i = load ptr, ptr %i.uw, align 8, !noalias !3668, !nonnull !28, !noundef !28
  %i.ux = shl nuw i64 %.val20.i.i.i.i.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21.i.i.i.i.i, i64 noundef %i.ux, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !3675
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit29.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit29.i.i.i.i.i: ; preds = %bb.ch, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6finishCskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !3668
  %.val.i.i.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !3670, !noalias !3668 ; 2 uses
  %i.uy = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.uy, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB14_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB21_B21_INtNtB4_7compact7CompactB21_B21_IB2B_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit29.i.i.i.i.i
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.val19.i.i.i.i.i = load ptr, ptr %i.uz, align 8, !noalias !3668, !nonnull !28, !noundef !28
  %i.va = shl nuw i64 %.val.i.i.i.i.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19.i.i.i.i.i, i64 noundef %i.va, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !3676
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB14_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB21_B21_INtNtB4_7compact7CompactB21_B21_IB2B_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB14_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB21_B21_INtNtB4_7compact7CompactB21_B21_IB2B_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i: ; preds = %bb.ci, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit29.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !3668
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers13diff_deadlineINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBZ_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1W_B1W_INtNtB4_7compact7CompactB1W_B1W_IB2v_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.i.i.i

bb.cj:                                            ; preds = %bb.bz, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers13diff_deadlineINtNtB6_4text12TextDiffSideeEBZ_INtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit.sink.split.i.i.i.i.i.i, %bb.by, %.noexc40.i.i.i, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB15_ECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i, %.invoke.i.i.i, %bb.m
  %i.vb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.cj, %bb.ca, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit26.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.vb, %bb.cj ], [ %lpad.loopexit.split-lp417, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn.i.i.i.i.i, %bb.ca ], [ %.pn.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit26.i.i.i.i.i ] ; 2 uses
  %.val26.i.i.i = load i64, ptr %i.au, align 8, !noalias !3559 ; 2 uses
  %i.vc = icmp eq i64 %.val26.i.i.i, 0
  br i1 %i.vc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEEEECskXtk6F4WjxZ_4just.exit45.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %.body.i.i.i
  %.val27.i.i.i = load ptr, ptr %i.bz, align 8, !noalias !3559, !nonnull !28, !noundef !28
  %i.vd = shl nuw i64 %.val26.i.i.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27.i.i.i, i64 noundef %i.vd, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !3558
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEEEECskXtk6F4WjxZ_4just.exit45.i.i.i

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers13diff_deadlineINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBZ_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1W_B1W_INtNtB4_7compact7CompactB1W_B1W_IB2v_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB14_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB21_B21_INtNtB4_7compact7CompactB21_B21_IB2B_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers13diff_deadlineINtNtB6_4text12TextDiffSideeEBZ_INtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit.sink.split.i.i.i.i.i.i, %.noexc42.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !3559
  %.val24.i.i.i = load i64, ptr %i.au, align 8, !noalias !3559 ; 2 uses
  %i.ve = icmp eq i64 %.val24.i.i.i, 0
  br i1 %i.ve, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEEEECskXtk6F4WjxZ_4just.exit46.i.i.i, label %bb.cl

bb.cl:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers13diff_deadlineINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBZ_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1W_B1W_INtNtB4_7compact7CompactB1W_B1W_IB2v_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.i.i.i
  %.val25.i.i.i = load ptr, ptr %i.bz, align 8, !noalias !3559, !nonnull !28, !noundef !28
  %i.vf = shl nuw i64 %.val24.i.i.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25.i.i.i, i64 noundef %i.vf, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !3558
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEEEECskXtk6F4WjxZ_4just.exit46.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEEEECskXtk6F4WjxZ_4just.exit46.i.i.i: ; preds = %bb.cl, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers13diff_deadlineINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBZ_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1W_B1W_INtNtB4_7compact7CompactB1W_B1W_IB2v_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !3559
  %.val22.i.i.i = load i64, ptr %i.av, align 8, !noalias !3559 ; 2 uses
  %i.vg = icmp eq i64 %.val22.i.i.i, 0
  br i1 %i.vg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEEEECskXtk6F4WjxZ_4just.exit47.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEEEECskXtk6F4WjxZ_4just.exit46.i.i.i
  %.val23.i.i.i = load ptr, ptr %i.bv, align 8, !noalias !3559, !nonnull !28, !noundef !28
  %i.vh = shl nuw i64 %.val22.i.i.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val23.i.i.i, i64 noundef %i.vh, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !3558
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEEEECskXtk6F4WjxZ_4just.exit47.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEEEECskXtk6F4WjxZ_4just.exit47.i.i.i: ; preds = %bb.cm, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEEEECskXtk6F4WjxZ_4just.exit46.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !3559
  br label %_RINvNtCsdftwklc2oBO_7similar10algorithms13diff_deadlineINtNtB4_4text12TextDiffSideeEBR_INtNtB2_7compact7CompactBR_BR_INtNtB2_7replace7ReplaceNtNtB2_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit.i

bb.cn:                                            ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3679)
  %i.vi = invoke fastcc noundef zeroext i1 @_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB6_4text12TextDiffSideeEB1j_INtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i64 noundef 0, i64 noundef range(i64 0, 576460752303423488) %.val24, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3, i64 noundef 0, i64 noundef range(i64 0, 576460752303423488) %.val14.pre, i64 %.sroa.01.0, i32 noundef range(i32 -1, 1000000000) %.sroa.4.0)
          to label %.noexc20.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3558

.noexc20.i:                                       ; preds = %bb.cn
  br i1 %i.vi, label %_RINvNtCsdftwklc2oBO_7similar10algorithms13diff_deadlineINtNtB4_4text12TextDiffSideeEBR_INtNtB2_7compact7CompactBR_BR_INtNtB2_7replace7ReplaceNtNtB2_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit.i, label %bb.co

bb.co:                                            ; preds = %.noexc20.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3680)
  call void @llvm.experimental.noalias.scope.decl(metadata !3681)
  call void @llvm.experimental.noalias.scope.decl(metadata !3682)
  %.not.i.i.i.i = icmp eq i64 %.val14.pre, 0
  br i1 %.not.i.i.i.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %.not91.i.i.i.i = icmp eq i64 %.val24, 0
  br i1 %.not91.i.i.i.i, label %bb.fn, label %bb.cs

bb.cq:                                            ; preds = %bb.co
  %i.vj = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !3683, !noalias !3554, !noundef !28 ; 3 uses
  %i.vk = load i64, ptr %i.bm, align 8, !range !43, !alias.scope !3683, !noalias !3554, !noundef !28
  %i.vl = icmp eq i64 %i.vj, %i.vk
  br i1 %i.vl, label %bb.cr, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit.i.i.i.i

bb.cr:                                            ; preds = %bb.cq
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm) #73
          to label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3558

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit.i.i.i.i: ; preds = %bb.cr, %bb.cq
  %i.vm = load ptr, ptr %.sroa.411.0..sroa_idx.i, align 8, !alias.scope !3683, !noalias !3554, !nonnull !28, !noundef !28
  %i.vn = getelementptr inbounds nuw [40 x i8], ptr %i.vm, i64 %i.vj ; 4 uses
  store i64 1, ptr %i.vn, align 8, !noalias !3684
  %.sroa.4188.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.vn, i64 8
  store i64 0, ptr %.sroa.4188.0..sroa_idx.i.i.i.i, align 8, !noalias !3684
  %.sroa.5189.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.vn, i64 16
  store i64 %.val24, ptr %.sroa.5189.0..sroa_idx.i.i.i.i, align 8, !noalias !3684
  %.sroa.6190.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.vn, i64 24
  store i64 0, ptr %.sroa.6190.0..sroa_idx.i.i.i.i, align 8, !noalias !3684
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit164.i.i.i.invoke.i

bb.cs:                                            ; preds = %bb.cp
  %i.vo = invoke fastcc noundef i64 @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtB6_4text12TextDiffSideeEB13_ECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i64 noundef 0, i64 noundef range(i64 0, 576460752303423488) %.val24, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3, i64 noundef 0, i64 noundef range(i64 0, 576460752303423488) %.val14.pre)
          to label %.noexc23.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3558 ; 24 uses

.noexc23.i:                                       ; preds = %bb.cs
  %i.vp = invoke fastcc noundef i64 @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtB6_4text12TextDiffSideeEB13_ECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i64 noundef %i.vo, i64 noundef range(i64 0, 576460752303423488) %.val24, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3, i64 noundef %i.vo, i64 noundef range(i64 0, 576460752303423488) %.val14.pre)
          to label %.noexc24.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3558 ; 5 uses

.noexc24.i:                                       ; preds = %.noexc23.i
  %i.vq = icmp eq i64 %i.vo, %.val24
  %i.vr = icmp eq i64 %.val24, %.val14.pre
  %or.cond99.i.i.i.i = and i1 %i.vr, %i.vq
  br i1 %or.cond99.i.i.i.i, label %bb.fl, label %bb.ct

bb.ct:                                            ; preds = %.noexc24.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !3685
  %i.vs = sub i64 %.val24, %i.vp                  ; 2 uses
  %i.vt = sub i64 %.val14.pre, %i.vp              ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3686)
  call void @llvm.experimental.noalias.scope.decl(metadata !3687)
  call void @llvm.experimental.noalias.scope.decl(metadata !3688)
  %.sroa.013.0.i.i.i.i.i = call i64 @llvm.usub.sat.i64(i64 %i.vs, i64 %i.vo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !3689
  store ptr null, ptr %i.am, align 8, !noalias !3689
  %i.vu = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  store i64 0, ptr %i.vu, align 8, !noalias !3689
  %.not113.not.i.i.i.i.i = icmp ugt i64 %i.vt, %i.vo
  br i1 %.not113.not.i.i.i.i.i, label %.lr.ph115.i.i.i.i.i, label %select.unfold._crit_edge.i.i.i.i.i

.lr.ph115.i.i.i.i.i:                              ; preds = %bb.ct
  %spec.select.i.i.i.i.i = sub nuw i64 %i.vt, %i.vo ; 2 uses
  %.not34111.not.i.i.i.i.i = icmp ugt i64 %i.vs, %i.vo
  %i.vv = load i64, ptr %3, align 8, !range !41, !alias.scope !3690
  %i.vw = trunc nuw i64 %i.vv to i1               ; 2 uses
  %i.vx = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !3690
  %i.vy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.vz = load ptr, ptr %i.vy, align 8, !alias.scope !3690, !nonnull !28 ; 2 uses
  %i.wa = load i64, ptr %2, align 8, !range !41, !alias.scope !3691
  %i.wb = trunc nuw i64 %i.wa to i1
  %i.wc = load i64, ptr %i.be, align 8, !alias.scope !3691
  %i.wd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.we = load ptr, ptr %i.wd, align 8, !alias.scope !3691, !nonnull !28 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  br i1 %.not34111.not.i.i.i.i.i, label %.lr.ph115.split.i.i.i.i.i, label %.lr.ph115.split.us.i.i.i.i.i

.lr.ph115.split.us.i.i.i.i.i:                     ; preds = %.lr.ph115.i.i.i.i.i, %.preheader.us.i.i.i.i.i
  %.sroa.018.1114.us.i.i.i.i.i = phi i64 [ %i.wg, %.preheader.us.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %.lr.ph115.i.i.i.i.i ]
  %i.wg = add i64 %.sroa.018.1114.us.i.i.i.i.i, -1 ; 2 uses
  %i.wh = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %.sroa.01.0, i32 noundef range(i32 -1, 1000000000) %.sroa.4.0)
          to label %bb.cu unwind label %.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3692

bb.cu:                                            ; preds = %.lr.ph115.split.us.i.i.i.i.i
  br i1 %i.wh, label %.split.us.thread.i.i.i.i.i, label %.preheader.us.i.i.i.i.i

.split.us.thread.i.i.i.i.i:                       ; preds = %bb.cu
  store i64 0, ptr %i.an, align 8, !alias.scope !3686, !noalias !3685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !3693
  br label %bb.cx

.preheader.us.i.i.i.i.i:                          ; preds = %bb.cu
  %.not.us.i.i.i.i.i = icmp eq i64 %i.wg, 0
  br i1 %.not.us.i.i.i.i.i, label %select.unfold._crit_edge.i.i.i.i.i, label %.lr.ph115.split.us.i.i.i.i.i

.select.unfold.loopexit_crit_edge.i.i.i.i.i:      ; preds = %bb.dp
  %.not.i.i.i.i.i = icmp eq i64 %i.wj, 0
  br i1 %.not.i.i.i.i.i, label %select.unfold._crit_edge.i.i.i.i.i, label %.lr.ph115.split.i.i.i.i.i

select.unfold._crit_edge.i.i.i.i.i:               ; preds = %.preheader.us.i.i.i.i.i, %.select.unfold.loopexit_crit_edge.i.i.i.i.i, %bb.ct
  %i.wi = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wi, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false), !noalias !3694
  store i64 1, ptr %i.an, align 8, !alias.scope !3686, !noalias !3685
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms3lcs10make_tableINtNtB6_4text12TextDiffSideeEBU_ECskXtk6F4WjxZ_4just.exit.i.i.i.i

.lr.ph115.split.i.i.i.i.i:                        ; preds = %.lr.ph115.i.i.i.i.i, %.select.unfold.loopexit_crit_edge.i.i.i.i.i
  %.sroa.018.1114.i.i.i.i.i = phi i64 [ %i.wj, %.select.unfold.loopexit_crit_edge.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %.lr.ph115.i.i.i.i.i ] ; 5 uses
  %i.wj = add i64 %.sroa.018.1114.i.i.i.i.i, -1   ; 6 uses
  %i.wk = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %.sroa.01.0, i32 noundef range(i32 -1, 1000000000) %.sroa.4.0)
          to label %4 unwind label %.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3692

.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph115.split.i.i.i.i.i, %bb.do, %.lr.ph115.split.us.i.i.i.i.i, %.invoke.i.split.i.i.i.i
  %lpad.loopexit.split-lp462 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapTjjEmEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.am) #71
          to label %.body.i unwind label %bb.dq, !noalias !3692

4:                                                ; preds = %.lr.ph115.split.i.i.i.i.i
  br i1 %i.wk, label %.split.us.i.i.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %4
  %5 = add i64 %i.wj, %i.vo                       ; 3 uses
  %6 = icmp ult i64 %5, %i.vx
  br i1 %6, label %.preheader.i.i.i.i.i, label %.invoke.i.split.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.cv
  %7 = getelementptr inbounds nuw [24 x i8], ptr %i.vz, i64 %5 ; 2 uses
  %i.wl = getelementptr i8, ptr %7, i64 16
  %8 = getelementptr i8, ptr %7, i64 8
  %9 = getelementptr inbounds nuw [16 x i8], ptr %i.vz, i64 %5 ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.117.i.i.i.i.i = select i1 %i.vw, ptr %8, ptr %9
  %.116.i.i.i.i.i = select i1 %i.vw, ptr %i.wl, ptr %i.wm
  br label %.preheader.i.split.i.i.i.i

.split.us.i.i.i.i.i:                              ; preds = %4
  %.sroa.06.0.copyload.i.i.pre.i.i.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !3695, !noalias !3689 ; 3 uses
  store i64 0, ptr %i.an, align 8, !alias.scope !3686, !noalias !3685
  call void @llvm.experimental.noalias.scope.decl(metadata !3696)
  call void @llvm.experimental.noalias.scope.decl(metadata !3697)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !3698
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.06.0.copyload.i.i.pre.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %.split.us.i.i.i.i.i
  %.sroa.58.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.vu, align 8, !alias.scope !3695, !noalias !3689
  %.sroa.47.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.wf, align 8, !alias.scope !3695, !noalias !3689 ; 2 uses
  %.sroa.414.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3698
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %.sroa.06.0.copyload.i.i.pre.i.i.i.i.i, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3698
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i64 %.sroa.47.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3698
  %.sroa.616.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3698
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store ptr %.sroa.06.0.copyload.i.i.pre.i.i.i.i.i, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3698
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  store i64 %.sroa.47.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3698
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %.split.us.i.i.i.i.i, %.split.us.thread.i.i.i.i.i
  %.sink31.i.i.i.i.i.i.i = phi i64 [ 1, %bb.cw ], [ 0, %.split.us.i.i.i.i.i ], [ 0, %.split.us.thread.i.i.i.i.i ] ; 2 uses
  %.sroa.58.0.copyload.sink.i.i.i.i.i.i.i = phi i64 [ %.sroa.58.0.copyload.i.i.i.i.i.i.i, %bb.cw ], [ 0, %.split.us.i.i.i.i.i ], [ 0, %.split.us.thread.i.i.i.i.i ]
  store i64 %.sink31.i.i.i.i.i.i.i, ptr %i.al, align 8, !noalias !3698
  %i.wn = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store i64 %.sink31.i.i.i.i.i.i.i, ptr %i.wn, align 8, !noalias !3698
  %i.wo = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  store i64 %.sroa.58.0.copyload.sink.i.i.i.i.i.i.i, ptr %i.wo, align 8, !noalias !3698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !3699
  invoke fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterTjjEmE10dying_nextCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.al)
          to label %.noexc25.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3558

.noexc25.i:                                       ; preds = %bb.cx
  %i.wp = load ptr, ptr %i.ak, align 8, !noalias !3699, !noundef !28
  %.not5.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.wp, null
  br i1 %.not5.i.i.i.i.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapTjjEmEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i4.i.i

.lr.ph.i.i.i.i.i.i.i4.i.i:                        ; preds = %.noexc25.i, %.noexc26.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !3699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !3699
  invoke fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterTjjEmE10dying_nextCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.al)
          to label %.noexc26.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3558

.noexc26.i:                                       ; preds = %.lr.ph.i.i.i.i.i.i.i4.i.i
  %i.wq = load ptr, ptr %i.ak, align 8, !noalias !3699, !noundef !28
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.wq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapTjjEmEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i4.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapTjjEmEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %.noexc26.i, %.noexc25.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !3699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !3698
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms3lcs10make_tableINtNtB6_4text12TextDiffSideeEBU_ECskXtk6F4WjxZ_4just.exit.i.i.i.i

.preheader.i.split.i.i.i.i:                       ; preds = %bb.dp, %.preheader.i.i.i.i.i
  %.sroa.026.0112.i.i.i.i.i = phi i64 [ %.sroa.013.0.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.wr, %bb.dp ] ; 3 uses
  %i.wr = add i64 %.sroa.026.0112.i.i.i.i.i, -1   ; 5 uses
  %.sroa.0.1.i.i.i.i.i5.i.i = load ptr, ptr %.117.i.i.i.i.i, align 8, !noalias !3700, !nonnull !28, !noundef !28
  %.sroa.5.1.i.i.i.i.i6.i.i = load i64, ptr %.116.i.i.i.i.i, align 8, !noalias !3700, !noundef !28 ; 2 uses
  %i.ws = add i64 %i.wr, %i.vo                    ; 3 uses
  %i.wt = icmp ult i64 %i.ws, %i.wc               ; 2 uses
  br i1 %i.wb, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %.preheader.i.split.i.i.i.i
  br i1 %i.wt, label %bb.db, label %.invoke.i.split.i.i.i.i

bb.cz:                                            ; preds = %.preheader.i.split.i.i.i.i
  br i1 %i.wt, label %bb.da, label %.invoke.i.split.i.i.i.i

bb.da:                                            ; preds = %bb.cz
  %i.wu = getelementptr inbounds nuw [16 x i8], ptr %i.we, i64 %i.ws ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 8
  br label %bb.dc

bb.db:                                            ; preds = %bb.cy
  %i.ww = getelementptr inbounds nuw [24 x i8], ptr %i.we, i64 %i.ws ; 2 uses
  %i.wx = getelementptr i8, ptr %i.ww, i64 8
  %i.wy = getelementptr i8, ptr %i.ww, i64 16
  br label %bb.dc

.invoke.i.split.i.i.i.i:                          ; preds = %bb.cv, %bb.cz, %bb.cy
  %.split.i.i.i.i = phi ptr [ @205, %bb.cz ], [ @205, %bb.cy ], [ @204, %bb.cv ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1648, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.split.i.i.i.i) #74
          to label %.cont.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3692

.cont.i.i.i.i.i:                                  ; preds = %.invoke.i.split.i.i.i.i
  unreachable

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.sroa.5.1.i.in.i52.i.i.i.i.i = phi ptr [ %i.wy, %bb.db ], [ %i.wv, %bb.da ]
  %.sroa.0.1.i.in.i53.i.i.i.i.i = phi ptr [ %i.wx, %bb.db ], [ %i.wu, %bb.da ]
  %.sroa.5.1.i.i55.i.i.i.i.i = load i64, ptr %.sroa.5.1.i.in.i52.i.i.i.i.i, align 8, !noalias !3701, !noundef !28
  %i.wz = icmp eq i64 %.sroa.5.1.i.i.i.i.i6.i.i, %.sroa.5.1.i.i55.i.i.i.i.i
  br i1 %i.wz, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i8.i.i, label %._RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread_crit_edge.i.i.i.i.i

._RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread_crit_edge.i.i.i.i.i: ; preds = %bb.dc
  %.val48.pre.i.i.i.i.i = load ptr, ptr %i.am, align 8, !noalias !3689
  %.val49.pre.i.i.i.i.i = load i64, ptr %i.wf, align 8, !noalias !3689
  br label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i.i.i7.i.i

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i8.i.i: ; preds = %bb.dc
  %.sroa.0.1.i.i54.i.i.i.i.i = load ptr, ptr %.sroa.0.1.i.in.i53.i.i.i.i.i, align 8, !noalias !3701, !nonnull !28, !noundef !28
  %bcmp.i.i.i.i9.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i.i.i.i5.i.i, ptr nonnull readonly %.sroa.0.1.i.i54.i.i.i.i.i, i64 %.sroa.5.1.i.i.i.i.i6.i.i), !alias.scope !3702, !noalias !3692
  %i.xa = icmp eq i32 %bcmp.i.i.i.i9.i.i, 0
  %.val48.pre137.i.i.i.i.i = load ptr, ptr %i.am, align 8, !noalias !3689 ; 3 uses
  %.val49.pre139.i.i.i.i.i = load i64, ptr %i.wf, align 8, !noalias !3689 ; 2 uses
  br i1 %i.xa, label %bb.dg, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i.i.i7.i.i

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i.i.i7.i.i: ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i8.i.i, %._RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread_crit_edge.i.i.i.i.i
  %.val49.i.i.i.i.i = phi i64 [ %.val49.pre.i.i.i.i.i, %._RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread_crit_edge.i.i.i.i.i ], [ %.val49.pre139.i.i.i.i.i, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i8.i.i ] ; 2 uses
  %.val48.i.i.i.i.i = phi ptr [ %.val48.pre.i.i.i.i.i, %._RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread_crit_edge.i.i.i.i.i ], [ %.val48.pre137.i.i.i.i.i, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i8.i.i ] ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.val48.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i.i.i7.i.i, %bb.df
  %.sroa.3.0.i.i.i.i.i.i.i = phi i64 [ %i.xs, %bb.df ], [ %.val49.i.i.i.i.i, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i.i.i7.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %i.xr, %bb.df ], [ %.val48.i.i.i.i.i, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i.i.i7.i.i ] ; 5 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 230
  %i.xc = load i16, ptr %i.xb, align 2, !noalias !3703, !noundef !28 ; 2 uses
  %i.xd = zext i16 %i.xc to i64                   ; 3 uses
  %.idx = shl nuw nsw i64 %i.xd, 4
  %i.xe = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 %.idx
  %i.xf = icmp eq i16 %i.xc, 0
  br i1 %i.xf, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i._crit_edge, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i

bb.dd:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i
  %i.xg = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i.i.i.i.i205, i64 16 ; 2 uses
  %i.xh = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i.i.i.i204, 1
  %i.xi = icmp eq ptr %i.xg, %i.xe
  br i1 %i.xi, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i._crit_edge, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i, %bb.dd
  %.sroa.0.03.i.i.i.i.i.i.i.i205 = phi ptr [ %i.xg, %bb.dd ], [ %.sroa.0.0.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %.sroa.8.0.i.i.i.i.i.i.i.i204 = phi i64 [ %i.xh, %bb.dd ], [ 0, %.preheader.i.i.i.i.i.i ] ; 4 uses
  %.val7.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.03.i.i.i.i.i.i.i.i205, align 8, !noalias !3703, !noundef !28 ; 2 uses
  %i.xj = getelementptr i8, ptr %.sroa.0.03.i.i.i.i.i.i.i.i205, i64 8
  %.val8.i.i.i.i.i.i.i.i = load i64, ptr %i.xj, align 8, !noalias !3703
  %i.xk = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.sroa.018.1114.i.i.i.i.i, i64 %.val7.i.i.i.i.i.i.i.i)
  %i.xl = icmp eq i64 %.sroa.018.1114.i.i.i.i.i, %.val7.i.i.i.i.i.i.i.i
  %i.xm = call range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.wr, i64 %.val8.i.i.i.i.i.i.i.i)
  %.sroa.0.0.i9.i.i.i.i.i.i.i.i = select i1 %i.xl, i8 %i.xm, i8 %i.xk
  switch i8 %.sroa.0.0.i9.i.i.i.i.i.i.i.i, label %bb.de [
    i8 -1, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i._crit_edge
    i8 0, label %_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutTjjEmNtB1i_14LeafOrInternalE11search_treeB1A_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i
    i8 1, label %bb.dd
  ]

bb.de:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i
  unreachable

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i._crit_edge: ; preds = %bb.dd, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i.i.i.i.i = phi i64 [ %i.xd, %.preheader.i.i.i.i.i.i ], [ %i.xd, %bb.dd ], [ %.sroa.8.0.i.i.i.i.i.i.i.i204, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.xn = icmp eq i64 %.sroa.3.0.i.i.i.i.i.i.i, 0
  br i1 %i.xn, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %bb.df

bb.df:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i._crit_edge
  %i.xo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 232
  %i.xp = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i.i, 12
  call void @llvm.assume(i1 %i.xp)
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr %i.xo, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i.i
  %i.xr = load ptr, ptr %i.xq, align 8, !noalias !3703, !nonnull !28, !noundef !28
  %i.xs = add i64 %.sroa.3.0.i.i.i.i.i.i.i, -1
  br label %.preheader.i.i.i.i.i.i

_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutTjjEmNtB1i_14LeafOrInternalE11search_treeB1A_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i
  %i.xt = icmp samesign ult i64 %.sroa.8.0.i.i.i.i.i.i.i.i204, 11
  call void @llvm.assume(i1 %i.xt)
  %i.xu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 184
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.xu, i64 %.sroa.8.0.i.i.i.i.i.i.i.i204
  br label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i

bb.dg:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i8.i.i
  %.not.i59.i.i.i.i.i = icmp eq ptr %.val48.pre137.i.i.i.i.i, null
  br i1 %.not.i59.i.i.i.i.i, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECskXtk6F4WjxZ_4just.exit72.i.i.i.i.i, label %.preheader.i60.i.i.i.i.i

.preheader.i60.i.i.i.i.i:                         ; preds = %bb.dg, %bb.dj
  %.sroa.3.0.i.i61.i.i.i.i.i = phi i64 [ %i.yn, %bb.dj ], [ %.val49.pre139.i.i.i.i.i, %bb.dg ] ; 2 uses
  %.sroa.0.0.i.i62.i.i.i.i.i = phi ptr [ %i.ym, %bb.dj ], [ %.val48.pre137.i.i.i.i.i, %bb.dg ] ; 5 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i62.i.i.i.i.i, i64 230
  %i.xx = load i16, ptr %i.xw, align 2, !noalias !3704, !noundef !28 ; 2 uses
  %i.xy = zext i16 %i.xx to i64                   ; 3 uses
  %.idx256 = shl nuw nsw i64 %i.xy, 4
  %i.xz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i62.i.i.i.i.i, i64 %.idx256
  %i.ya = icmp eq i16 %i.xx, 0
  br i1 %i.ya, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i65.i.i.i.i.i._crit_edge, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i65.i.i.i.i.i

bb.dh:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i65.i.i.i.i.i
  %i.yb = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i64.i.i.i.i.i214, i64 16 ; 2 uses
  %i.yc = add nuw nsw i64 %.sroa.8.0.i.i.i63.i.i.i.i.i213, 1
  %i.yd = icmp eq ptr %i.yb, %i.xz
  br i1 %i.yd, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i65.i.i.i.i.i._crit_edge, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i65.i.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i65.i.i.i.i.i: ; preds = %.preheader.i60.i.i.i.i.i, %bb.dh
  %.sroa.0.03.i.i.i64.i.i.i.i.i214 = phi ptr [ %i.yb, %bb.dh ], [ %.sroa.0.0.i.i62.i.i.i.i.i, %.preheader.i60.i.i.i.i.i ] ; 3 uses
  %.sroa.8.0.i.i.i63.i.i.i.i.i213 = phi i64 [ %i.yc, %bb.dh ], [ 0, %.preheader.i60.i.i.i.i.i ] ; 4 uses
  %.val7.i.i.i66.i.i.i.i.i = load i64, ptr %.sroa.0.03.i.i.i64.i.i.i.i.i214, align 8, !noalias !3704, !noundef !28 ; 2 uses
  %i.ye = getelementptr i8, ptr %.sroa.0.03.i.i.i64.i.i.i.i.i214, i64 8
  %.val8.i.i.i67.i.i.i.i.i = load i64, ptr %i.ye, align 8, !noalias !3704
  %i.yf = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.sroa.018.1114.i.i.i.i.i, i64 %.val7.i.i.i66.i.i.i.i.i)
  %i.yg = icmp eq i64 %.sroa.018.1114.i.i.i.i.i, %.val7.i.i.i66.i.i.i.i.i
  %i.yh = call range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.sroa.026.0112.i.i.i.i.i, i64 %.val8.i.i.i67.i.i.i.i.i)
  %.sroa.0.0.i9.i.i.i68.i.i.i.i.i = select i1 %i.yg, i8 %i.yh, i8 %i.yf
  switch i8 %.sroa.0.0.i9.i.i.i68.i.i.i.i.i, label %bb.di [
    i8 -1, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i65.i.i.i.i.i._crit_edge
    i8 0, label %_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutTjjEmNtB1i_14LeafOrInternalE11search_treeB1A_ECskXtk6F4WjxZ_4just.exit.i69.i.i.i.i.i
    i8 1, label %bb.dh
  ]

bb.di:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i65.i.i.i.i.i
  unreachable

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i65.i.i.i.i.i._crit_edge: ; preds = %bb.dh, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i65.i.i.i.i.i, %.preheader.i60.i.i.i.i.i
  %.sroa.4.0.i.ph.i.i71.i.i.i.i.i = phi i64 [ %i.xy, %.preheader.i60.i.i.i.i.i ], [ %i.xy, %bb.dh ], [ %.sroa.8.0.i.i.i63.i.i.i.i.i213, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i65.i.i.i.i.i ] ; 2 uses
  %i.yi = icmp eq i64 %.sroa.3.0.i.i61.i.i.i.i.i, 0
  br i1 %i.yi, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECskXtk6F4WjxZ_4just.exit72.i.i.i.i.i, label %bb.dj

bb.dj:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i65.i.i.i.i.i._crit_edge
  %i.yj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i62.i.i.i.i.i, i64 232
  %i.yk = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i71.i.i.i.i.i, 12
  call void @llvm.assume(i1 %i.yk)
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %i.yj, i64 %.sroa.4.0.i.ph.i.i71.i.i.i.i.i
  %i.ym = load ptr, ptr %i.yl, align 8, !noalias !3704, !nonnull !28, !noundef !28
  %i.yn = add i64 %.sroa.3.0.i.i61.i.i.i.i.i, -1
  br label %.preheader.i60.i.i.i.i.i

_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutTjjEmNtB1i_14LeafOrInternalE11search_treeB1A_ECskXtk6F4WjxZ_4just.exit.i69.i.i.i.i.i: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i65.i.i.i.i.i
  %i.yo = icmp samesign ult i64 %.sroa.8.0.i.i.i63.i.i.i.i.i213, 11
  call void @llvm.assume(i1 %i.yo)
  %i.yp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i62.i.i.i.i.i, i64 184
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.yp, i64 %.sroa.8.0.i.i.i63.i.i.i.i.i213
  br label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECskXtk6F4WjxZ_4just.exit72.i.i.i.i.i

_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i._crit_edge, %_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutTjjEmNtB1i_14LeafOrInternalE11search_treeB1A_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i
  %.sroa.0.0.i58.i.i.i.i.i = phi ptr [ %i.xv, %_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutTjjEmNtB1i_14LeafOrInternalE11search_treeB1A_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ], [ null, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i._crit_edge ] ; 2 uses
  %.not35.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i58.i.i.i.i.i, null
  %..i.i.i.i.i = select i1 %.not35.i.i.i.i.i, ptr @206, ptr %.sroa.0.0.i58.i.i.i.i.i ; 2 uses
  br label %.preheader.i74.i.i.i.i.i

.preheader.i74.i.i.i.i.i:                         ; preds = %bb.dm, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  %.sroa.3.0.i.i75.i.i.i.i.i = phi i64 [ %i.zi, %bb.dm ], [ %.val49.i.i.i.i.i, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i76.i.i.i.i.i = phi ptr [ %i.zh, %bb.dm ], [ %.val48.i.i.i.i.i, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i ] ; 5 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i76.i.i.i.i.i, i64 230
  %i.ys = load i16, ptr %i.yr, align 2, !noalias !3705, !noundef !28 ; 2 uses
  %i.yt = zext i16 %i.ys to i64                   ; 3 uses
  %.idx255 = shl nuw nsw i64 %i.yt, 4
  %i.yu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i76.i.i.i.i.i, i64 %.idx255
  %i.yv = icmp eq i16 %i.ys, 0
  br i1 %i.yv, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i79.i.i.i.i.i._crit_edge, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i79.i.i.i.i.i

bb.dk:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i79.i.i.i.i.i
  %i.yw = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i78.i.i.i.i.i209, i64 16 ; 2 uses
  %i.yx = add nuw nsw i64 %.sroa.8.0.i.i.i77.i.i.i.i.i208, 1
  %i.yy = icmp eq ptr %i.yw, %i.yu
  br i1 %i.yy, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i79.i.i.i.i.i._crit_edge, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i79.i.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i79.i.i.i.i.i: ; preds = %.preheader.i74.i.i.i.i.i, %bb.dk
  %.sroa.0.03.i.i.i78.i.i.i.i.i209 = phi ptr [ %i.yw, %bb.dk ], [ %.sroa.0.0.i.i76.i.i.i.i.i, %.preheader.i74.i.i.i.i.i ] ; 3 uses
  %.sroa.8.0.i.i.i77.i.i.i.i.i208 = phi i64 [ %i.yx, %bb.dk ], [ 0, %.preheader.i74.i.i.i.i.i ] ; 4 uses
  %.val7.i.i.i80.i.i.i.i.i = load i64, ptr %.sroa.0.03.i.i.i78.i.i.i.i.i209, align 8, !noalias !3705, !noundef !28 ; 2 uses
  %i.yz = getelementptr i8, ptr %.sroa.0.03.i.i.i78.i.i.i.i.i209, i64 8
  %.val8.i.i.i81.i.i.i.i.i = load i64, ptr %i.yz, align 8, !noalias !3705
  %i.za = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.wj, i64 %.val7.i.i.i80.i.i.i.i.i)
  %i.zb = icmp eq i64 %i.wj, %.val7.i.i.i80.i.i.i.i.i
  %i.zc = call range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.sroa.026.0112.i.i.i.i.i, i64 %.val8.i.i.i81.i.i.i.i.i)
  %.sroa.0.0.i9.i.i.i82.i.i.i.i.i = select i1 %i.zb, i8 %i.zc, i8 %i.za
  switch i8 %.sroa.0.0.i9.i.i.i82.i.i.i.i.i, label %bb.dl [
    i8 -1, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i79.i.i.i.i.i._crit_edge
    i8 0, label %_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutTjjEmNtB1i_14LeafOrInternalE11search_treeB1A_ECskXtk6F4WjxZ_4just.exit.i83.i.i.i.i.i
    i8 1, label %bb.dk
  ]

bb.dl:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i79.i.i.i.i.i
  unreachable

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i79.i.i.i.i.i._crit_edge: ; preds = %bb.dk, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i79.i.i.i.i.i, %.preheader.i74.i.i.i.i.i
  %.sroa.4.0.i.ph.i.i85.i.i.i.i.i = phi i64 [ %i.yt, %.preheader.i74.i.i.i.i.i ], [ %i.yt, %bb.dk ], [ %.sroa.8.0.i.i.i77.i.i.i.i.i208, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i79.i.i.i.i.i ] ; 2 uses
  %i.zd = icmp eq i64 %.sroa.3.0.i.i75.i.i.i.i.i, 0
  br i1 %i.zd, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i, label %bb.dm

bb.dm:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i79.i.i.i.i.i._crit_edge
  %i.ze = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i76.i.i.i.i.i, i64 232
  %i.zf = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i85.i.i.i.i.i, 12
end_hunk_0
begin_hunk_1_@_RNvXsu_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParserhENtB5_16TypedValueParser9parse_refCskXtk6F4WjxZ_4just:bb.a

_RNCNCNvXsu_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB9_20RangedI64ValueParserhENtB9_16TypedValueParser9parse_refs2_0s_0CskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.db
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ip, i8 46, i64 3, i1 false), !noalias !103876
  br label %bb.dd

bb.dd:                                            ; preds = %_RNCNCNvXsu_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB9_20RangedI64ValueParserhENtB9_16TypedValueParser9parse_refs2_0s_0CskXtk6F4WjxZ_4just.exit.i, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCskXtk6F4WjxZ_4just.exit.i75
  %.sroa.6.030.i = phi i64 [ 3, %_RNCNCNvXsu_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB9_20RangedI64ValueParserhENtB9_16TypedValueParser9parse_refs2_0s_0CskXtk6F4WjxZ_4just.exit.i ], [ %.sroa.526.0.copyload.i, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCskXtk6F4WjxZ_4just.exit.i75 ]
  %.sroa.5.0.i76 = phi ptr [ %i.ip, %_RNCNCNvXsu_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB9_20RangedI64ValueParserhENtB9_16TypedValueParser9parse_refs2_0s_0CskXtk6F4WjxZ_4just.exit.i ], [ %.sroa.425.0.copyload.i, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCskXtk6F4WjxZ_4just.exit.i75 ] ; 2 uses
  %.sroa.0.0.i77 = phi i64 [ 3, %_RNCNCNvXsu_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB9_20RangedI64ValueParserhENtB9_16TypedValueParser9parse_refs2_0s_0CskXtk6F4WjxZ_4just.exit.i ], [ %.sroa.024.0.copyload.i, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCskXtk6F4WjxZ_4just.exit.i75 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !103877
  store i64 %.sroa.0.0.i77, ptr %i.f, align 8, !noalias !103877
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.5.0.i76, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !103877
  %.sroa.6.0..sroa_idx18.i78 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.6.030.i, ptr %.sroa.6.0..sroa_idx18.i78, align 8, !noalias !103877
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !103877
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !103877
  invoke void @_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5)
          to label %bb.df unwind label %bb.de, !noalias !103877

bb.de:                                            ; preds = %bb.dk, %bb.dd
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.df:                                            ; preds = %bb.dd
  %i.is = load i64, ptr %i.d, align 8, !range !37, !noalias !103877, !noundef !28
  %.not8.i = icmp eq i64 %i.is, -1
  br i1 %.not8.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !103877
  br label %bb.dm

bb.dh:                                            ; preds = %bb.df
  %i.it = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !noalias !103877, !nonnull !28, !noundef !28
  %i.iv = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.iw = load i64, ptr %i.iv, align 8, !noalias !103877, !noundef !28 ; 7 uses
  %.not.i.i83 = icmp slt i64 %i.iw, 0
  br i1 %.not.i.i83, label %bb.dk, label %bb.di, !prof !42

bb.di:                                            ; preds = %bb.dh
  %i.ix = icmp eq i64 %i.iw, 0
  br i1 %i.ix, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread40.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !103878
  %i.iy = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.iw, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !103878 ; 3 uses
  %i.iz = icmp eq ptr %i.iy, null
  br i1 %i.iz, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj, %bb.dh
  %.sroa.428.0.ph.i = phi i64 [ 1, %bb.dj ], [ 0, %bb.dh ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.428.0.ph.i, i64 %i.iw) #70
          to label %bb.do unwind label %bb.de, !noalias !103877

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread40.i: ; preds = %bb.dl, %bb.di
  %i.ja = phi ptr [ %i.iy, %bb.dl ], [ inttoptr (i64 1 to ptr), %bb.di ]
  store i64 %i.iw, ptr %i.e, align 8, !noalias !103877
  %.sroa.4.0..sroa_idx.i84 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.ja, ptr %.sroa.4.0..sroa_idx.i84, align 8, !noalias !103877
  %.sroa.6.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.iw, ptr %.sroa.6.0..sroa_idx.i85, align 8, !noalias !103877
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iy, ptr nonnull align 1 %i.iu, i64 %i.iw, i1 false), !noalias !103877
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread40.i

bb.dm:                                            ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread40.i, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !103877
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !103877
  %i.jb = call noundef dereferenceable_or_null(1) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !103877 ; 3 uses
  %i.jc = icmp eq ptr %i.jb, null
  br i1 %i.jc, label %bb.dn, label %_RNCNvXsu_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB7_20RangedI64ValueParserhENtB7_16TypedValueParser9parse_refs2_0CskXtk6F4WjxZ_4just.exit, !prof !26

bb.dn:                                            ; preds = %bb.dm
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #70
          to label %.noexc.i82 unwind label %bb.dp, !noalias !103877

.noexc.i82:                                       ; preds = %bb.dn
  unreachable

bb.do:                                            ; preds = %bb.dk
  unreachable

bb.dp:                                            ; preds = %bb.dn
  %i.jd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !103879)
  call void @llvm.experimental.noalias.scope.decl(metadata !103880)
  %.val.i.i.i80 = load i64, ptr %i.e, align 8, !alias.scope !103881, !noalias !103877 ; 2 uses
  %i.je = icmp eq i64 %.val.i.i.i80, 0
  br i1 %i.je, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.jf = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i.i.i81 = load ptr, ptr %i.jf, align 8, !alias.scope !103881, !noalias !103877, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i81, i64 noundef %.val.i.i.i80, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !103882
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp, %bb.de
  %.pn.ph.i79 = phi { ptr, i32 } [ %i.ir, %bb.de ], [ %i.jd, %bb.dp ], [ %i.jd, %bb.dq ] ; 2 uses
  %i.jg = icmp eq i64 %.sroa.0.0.i77, 0
  br i1 %i.jg, label %common.resume, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.i76, i64 noundef %.sroa.0.0.i77, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !103883
  br label %common.resume

_RNCNvXsu_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB7_20RangedI64ValueParserhENtB7_16TypedValueParser9parse_refs2_0CskXtk6F4WjxZ_4just.exit: ; preds = %bb.dm
  store i8 %.sroa.4.0.i, ptr %i.jb, align 1, !noalias !103877
  %i.jh = call fastcc noundef nonnull align 8 ptr @_RNvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB2_5Error16value_validationCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull %i.jb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @778), !noalias !103877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !103877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !103877
  br label %bb.cr

bb.dt:                                            ; preds = %_RINvYTINtNtNtCsj6eKBz9Db1c_4core3ops5range5BoundxEB4_EINtB7_11RangeBoundsxE8containsxECskXtk6F4WjxZ_4just.exit.thread126
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.dx, ptr %i.ji, align 1
  store i8 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.cr, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i64, ptr %1, align 8, !range !41, !noundef !28
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !28 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !28, !noundef !28 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load i64, ptr %i.j, align 8, !noundef !28 ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !28, !noundef !28 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.o = load i64, ptr %i.n, align 8, !noundef !28 ; 16 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 9 uses
  %i.q = add nsw i64 %i.o, -1                     ; 5 uses
  br i1 %i.g, label %bb.n, label %bb.f

.preheader:                                       ; preds = %bb.a, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 dereferenceable(104) %1) #75
  %i.r = load i64, ptr %i.a, align 8, !range !27, !noundef !28
  switch i64 %i.r, label %default.unreachable51 [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %.loopexit
  ]

default.unreachable51:                            ; preds = %.preheader
  unreachable

bb.c:                                             ; preds = %.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load <2 x i64>, ptr %i.s, align 8
  store <2 x i64> %i.u, ptr %i.t, align 8
  br label %.loopexit

bb.d:                                             ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.preheader

.loopexit:                                        ; preds = %.preheader, %bb.c
  %storemerge = phi i64 [ 1, %bb.c ], [ 0, %.preheader ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsx_NtNtCsj6eKBz9Db1c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskXtk6F4WjxZ_4just.exit, %_RINvMsx_NtNtCsj6eKBz9Db1c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskXtk6F4WjxZ_4just.exit7, %.loopexit
  ret void

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103900)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103901)
  %.promoted.i = load i64, ptr %i.p, align 8, !alias.scope !103899 ; 2 uses
  %i.v = add i64 %.promoted.i, %i.q               ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.k
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !103899, !noundef !28
  %i.z = load i64, ptr %i.d, align 8, !alias.scope !103899
  %.fr60.i = freeze i64 %i.z                      ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !103899 ; 2 uses
  %i.ac = sub i64 %i.o, %i.ab
  %invariant.op = sub i64 1, %.fr60.i
  br label %.lr.ph.split.i

._crit_edge.i:                                    ; preds = %bb.i, %bb.f
  store i64 %i.k, ptr %i.p, align 8, !alias.scope !103899
  br label %_RINvMsx_NtNtCsj6eKBz9Db1c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskXtk6F4WjxZ_4just.exit

.lr.ph.split.i:                                   ; preds = %bb.i, %.lr.ph.i
  %i.ad = phi i64 [ %.sink70.i, %bb.i ], [ %i.f, %.lr.ph.i ] ; 3 uses
  %i.ae = phi i64 [ %i.ao, %bb.i ], [ %i.v, %.lr.ph.i ]
  %i.af = phi i64 [ %.sink71.i, %bb.i ], [ %.promoted.i, %.lr.ph.i ] ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ae
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !103900, !noundef !28
  %i.ai = and i8 %i.ah, 63
  %i.aj = zext nneg i8 %i.ai to i64
  %i.ak = shl nuw i64 1, %i.aj
  %i.al = and i64 %i.ak, %i.y
  %.not.i = icmp eq i64 %i.al, 0
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.split.i
  %i.am = add i64 %i.af, %i.o
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.split.i
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.ad, i64 %.fr60.i) ; 2 uses
  %i.an = icmp ult i64 %..i.i, %i.o
  br i1 %i.an, label %.lr.ph, label %.preheader36.i.preheader

bb.i:                                             ; preds = %bb.m, %bb.l, %bb.g
  %.sink71.i = phi i64 [ %i.bm, %bb.m ], [ %i.bl, %bb.l ], [ %i.am, %bb.g ] ; 3 uses
  %.sink70.i = phi i64 [ 0, %bb.m ], [ %i.ac, %bb.l ], [ 0, %bb.g ] ; 2 uses
  store i64 %.sink71.i, ptr %i.p, align 8, !alias.scope !103899
  store i64 %.sink70.i, ptr %i.e, align 8, !alias.scope !103899
  %i.ao = add i64 %.sink71.i, %i.q                ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.k
  br i1 %i.ap, label %.lr.ph.split.i, label %._crit_edge.i

bb.j:                                             ; preds = %.lr.ph
  %i.aq = add nuw nsw i64 %.sroa.04.0.i76, 1      ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.o
  br i1 %i.ar, label %.lr.ph, label %.preheader36.i.preheader

.preheader36.i.preheader:                         ; preds = %bb.j, %bb.h
  %i.as = icmp ult i64 %i.ad, %.fr60.i
  br i1 %i.as, label %.lr.ph78, label %.split.us.i

.lr.ph:                                           ; preds = %bb.h, %bb.j
  %.sroa.04.0.i76 = phi i64 [ %i.aq, %bb.j ], [ %..i.i, %bb.h ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.04.0.i76
  %i.au = load i8, ptr %i.at, align 1, !alias.scope !103901, !noundef !28
  %i.av = add i64 %.sroa.04.0.i76, %i.af          ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.k
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.av
  %i.ay = load i8, ptr %i.ax, align 1, !alias.scope !103900, !noundef !28
  %.not21.i = icmp eq i8 %i.au, %i.ay
  br i1 %.not21.i, label %bb.j, label %bb.m

.preheader36.i:                                   ; preds = %bb.k
  %i.az = icmp ult i64 %i.ad, %i.bd
  br i1 %i.az, label %.lr.ph78, label %.split.us.i

.split.us.i:                                      ; preds = %.preheader36.i.preheader, %.preheader36.i
  %i.ba = add i64 %i.af, %i.o                     ; 2 uses
  store i64 %i.ba, ptr %i.p, align 8, !alias.scope !103899
  store i64 0, ptr %i.e, align 8, !alias.scope !103899
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.af, ptr %i.bb, align 8, !alias.scope !103902
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ba, ptr %i.bc, align 8, !alias.scope !103902
  br label %_RINvMsx_NtNtCsj6eKBz9Db1c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskXtk6F4WjxZ_4just.exit

.lr.ph78:                                         ; preds = %.preheader36.i.preheader, %.preheader36.i
  %.sroa.2.0.i77 = phi i64 [ %i.bd, %.preheader36.i ], [ %.fr60.i, %.preheader36.i.preheader ]
  %i.bd = add i64 %.sroa.2.0.i77, -1              ; 6 uses
  %i.be = icmp ult i64 %i.bd, %i.o
  br i1 %i.be, label %bb.k, label %.split32.us.i

bb.k:                                             ; preds = %.lr.ph78
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bd
  %i.bg = load i8, ptr %i.bf, align 1, !alias.scope !103901, !noundef !28
  %i.bh = add i64 %i.bd, %i.af                    ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.k
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh
  %i.bk = load i8, ptr %i.bj, align 1, !alias.scope !103900, !noundef !28
  %.not20.i = icmp eq i8 %i.bg, %i.bk
  br i1 %.not20.i, label %.preheader36.i, label %bb.l

.split32.us.i:                                    ; preds = %.lr.ph78
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bd, i64 noundef range(i64 0, -9223372036854775808) %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #74, !noalias !103903
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.bl = add i64 %i.af, %i.ab
  br label %bb.i

bb.m:                                             ; preds = %.lr.ph
  %.reass.reass = add i64 %i.af, %invariant.op
  %i.bm = add i64 %.reass.reass, %.sroa.04.0.i76
  br label %bb.i

_RINvMsx_NtNtCsj6eKBz9Db1c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskXtk6F4WjxZ_4just.exit: ; preds = %._crit_edge.i, %.split.us.i
  %storemerge.i = phi i64 [ 0, %._crit_edge.i ], [ 1, %.split.us.i ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !103898
  br label %bb.e

bb.n:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103905)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103907)
  %.promoted.i1 = load i64, ptr %i.p, align 8, !alias.scope !103905 ; 3 uses
  %i.bn = add i64 %.promoted.i1, %i.q             ; 3 uses
  %i.bo = icmp ult i64 %i.bn, %i.k
  br i1 %i.bo, label %.lr.ph.i4, label %._crit_edge.i2

.lr.ph.i4:                                        ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !103905, !noundef !28 ; 2 uses
  %i.br = load i64, ptr %i.d, align 8, !alias.scope !103905
  %.fr26 = freeze i64 %i.br                       ; 10 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !103905
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.fr26, i64 range(i64 0, -9223372036854775808) %i.o) ; 2 uses
  %i.bu = add i64 %.fr26, -1                      ; 2 uses
  %.first_iter.i = icmp ult i64 %i.bu, %i.o
  %i.bv = sub i64 1, %.fr26                       ; 2 uses
  br i1 %.first_iter.i, label %.lr.ph.split.us.i.us.preheader, label %.lr.ph.split.us.i.preheader

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i4
  %exitcond.not.i80.not = icmp ult i64 %.fr26, %i.o
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i.us.preheader:                   ; preds = %.lr.ph.i4
  %exitcond.not.i.us85.not = icmp ult i64 %.fr26, %i.o
  %.not34.i.us.us88 = icmp eq i64 %.fr26, 0
  br label %.lr.ph.split.us.i.us

.lr.ph.split.us.i.us:                             ; preds = %.lr.ph.split.us.i.us.preheader, %bb.q
  %i.bw = phi i64 [ %i.cw, %bb.q ], [ %i.bn, %.lr.ph.split.us.i.us.preheader ]
  %i.bx = phi i64 [ %.sink.i.us, %bb.q ], [ %.promoted.i1, %.lr.ph.split.us.i.us.preheader ] ; 7 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bw
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !103906, !noundef !28
  %i.ca = and i8 %i.bz, 63
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = and i64 %i.cc, %i.bq
  %.not.us.i.us = icmp eq i64 %i.cd, 0
  br i1 %.not.us.i.us, label %bb.p, label %.preheader35.i.us.preheader

.preheader35.i.us.preheader:                      ; preds = %.lr.ph.split.us.i.us
  br i1 %exitcond.not.i.us85.not, label %.lr.ph87, label %.preheader.i.us.us.preheader

.preheader35.i.us:                                ; preds = %.lr.ph87
  %i.ce = add i64 %.sroa.04.0.us.i.us86, 1        ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.ce, %umax.i
  br i1 %exitcond.not.i.us, label %.preheader.i.us.us.preheader, label %.lr.ph87

.preheader.i.us.us.preheader:                     ; preds = %.preheader35.i.us, %.preheader35.i.us.preheader
  br i1 %.not34.i.us.us88, label %.split.us.i6, label %.lr.ph90

.lr.ph87:                                         ; preds = %.preheader35.i.us.preheader, %.preheader35.i.us
  %.sroa.04.0.us.i.us86 = phi i64 [ %i.ce, %.preheader35.i.us ], [ %.fr26, %.preheader35.i.us.preheader ] ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.04.0.us.i.us86
  %i.cg = load i8, ptr %i.cf, align 1, !alias.scope !103907, !noundef !28
  %i.ch = add i64 %.sroa.04.0.us.i.us86, %i.bx    ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.k
  tail call void @llvm.assume(i1 %i.ci)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ch
  %i.ck = load i8, ptr %i.cj, align 1, !alias.scope !103906, !noundef !28
  %.not21.us.i.us = icmp eq i8 %i.cg, %i.ck
  br i1 %.not21.us.i.us, label %.preheader35.i.us, label %bb.o

bb.o:                                             ; preds = %.lr.ph87
  %i.cl = add i64 %i.bv, %i.bx
  %i.cm = add i64 %i.cl, %.sroa.04.0.us.i.us86
  br label %bb.q

.preheader.i.us.us:                               ; preds = %.lr.ph90
  %.not34.i.us.us = icmp eq i64 %i.cn, 0
  br i1 %.not34.i.us.us, label %.split.us.i6, label %.lr.ph90

.lr.ph90:                                         ; preds = %.preheader.i.us.us.preheader, %.preheader.i.us.us
  %.sroa.2.0.us.i.us.us89 = phi i64 [ %i.cn, %.preheader.i.us.us ], [ %.fr26, %.preheader.i.us.us.preheader ]
  %i.cn = add i64 %.sroa.2.0.us.i.us.us89, -1     ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !alias.scope !103907, !noundef !28
  %i.cq = add i64 %i.cn, %i.bx                    ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.k
  tail call void @llvm.assume(i1 %i.cr)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.cq
  %i.ct = load i8, ptr %i.cs, align 1, !alias.scope !103906, !noundef !28
  %.not20.us.i.us.us = icmp eq i8 %i.cp, %i.ct
  br i1 %.not20.us.i.us.us, label %.preheader.i.us.us, label %.split.us.us

.split.us.us:                                     ; preds = %.lr.ph90
  %i.cu = add i64 %i.bx, %i.bt
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph.split.us.i.us
  %i.cv = add i64 %i.bx, %i.o
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.split.us.us, %bb.o
  %.sink.i.us = phi i64 [ %i.cv, %bb.p ], [ %i.cm, %bb.o ], [ %i.cu, %.split.us.us ] ; 3 uses
  store i64 %.sink.i.us, ptr %i.p, align 8, !alias.scope !103905
  %i.cw = add i64 %.sink.i.us, %i.q               ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.k
  br i1 %i.cx, label %.lr.ph.split.us.i.us, label %._crit_edge.i2

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %bb.t
  %i.cy = phi i64 [ %i.dq, %bb.t ], [ %i.bn, %.lr.ph.split.us.i.preheader ]
  %i.cz = phi i64 [ %.sink.i, %bb.t ], [ %.promoted.i1, %.lr.ph.split.us.i.preheader ] ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.cy
  %i.db = load i8, ptr %i.da, align 1, !alias.scope !103906, !noundef !28
  %i.dc = and i8 %i.db, 63
  %i.dd = zext nneg i8 %i.dc to i64
  %i.de = shl nuw i64 1, %i.dd
  %i.df = and i64 %i.de, %i.bq
  %.not.us.i = icmp eq i64 %i.df, 0
  br i1 %.not.us.i, label %bb.s, label %.preheader35.i.preheader

.preheader35.i.preheader:                         ; preds = %.lr.ph.split.us.i
  br i1 %exitcond.not.i80.not, label %.lr.ph82, label %.preheader.split.i

.preheader35.i:                                   ; preds = %.lr.ph82
  %i.dg = add i64 %.sroa.04.0.us.i81, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dg, %umax.i
  br i1 %exitcond.not.i, label %.preheader.split.i, label %.lr.ph82

.preheader.split.i:                               ; preds = %.preheader35.i.preheader, %.preheader35.i
  %.not34.i = icmp eq i64 %.fr26, 0
  br i1 %.not34.i, label %.split.us.i6, label %.split32.us.i6

.lr.ph82:                                         ; preds = %.preheader35.i.preheader, %.preheader35.i
  %.sroa.04.0.us.i81 = phi i64 [ %i.dg, %.preheader35.i ], [ %.fr26, %.preheader35.i.preheader ] ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.04.0.us.i81
  %i.di = load i8, ptr %i.dh, align 1, !alias.scope !103907, !noundef !28
  %i.dj = add i64 %.sroa.04.0.us.i81, %i.cz       ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %i.k
  tail call void @llvm.assume(i1 %i.dk)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.dj
  %i.dm = load i8, ptr %i.dl, align 1, !alias.scope !103906, !noundef !28
  %.not21.us.i = icmp eq i8 %i.di, %i.dm
  br i1 %.not21.us.i, label %.preheader35.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph82
  %i.dn = add i64 %i.bv, %i.cz
  %i.do = add i64 %i.dn, %.sroa.04.0.us.i81
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph.split.us.i
  %i.dp = add i64 %i.cz, %i.o
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sink.i = phi i64 [ %i.dp, %bb.s ], [ %i.do, %bb.r ] ; 3 uses
  store i64 %.sink.i, ptr %i.p, align 8, !alias.scope !103905
  %i.dq = add i64 %.sink.i, %i.q                  ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.k
  br i1 %i.dr, label %.lr.ph.split.us.i, label %._crit_edge.i2

._crit_edge.i2:                                   ; preds = %bb.t, %bb.q, %bb.n
  store i64 %i.k, ptr %i.p, align 8, !alias.scope !103905
  br label %_RINvMsx_NtNtCsj6eKBz9Db1c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskXtk6F4WjxZ_4just.exit7

.split.us.i6:                                     ; preds = %.preheader.i.us.us.preheader, %.preheader.i.us.us, %.preheader.split.i
  %.us-phi = phi i64 [ %i.cz, %.preheader.split.i ], [ %i.bx, %.preheader.i.us.us ], [ %i.bx, %.preheader.i.us.us.preheader ] ; 2 uses
  %i.ds = add i64 %.us-phi, %i.o                  ; 2 uses
  store i64 %i.ds, ptr %i.p, align 8, !alias.scope !103905
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi, ptr %i.dt, align 8, !alias.scope !103908
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ds, ptr %i.du, align 8, !alias.scope !103908
  br label %_RINvMsx_NtNtCsj6eKBz9Db1c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskXtk6F4WjxZ_4just.exit7

.split32.us.i6:                                   ; preds = %.preheader.split.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bu, i64 noundef range(i64 0, -9223372036854775808) %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #74, !noalias !103909
  unreachable

_RINvMsx_NtNtCsj6eKBz9Db1c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskXtk6F4WjxZ_4just.exit7: ; preds = %._crit_edge.i2, %.split.us.i6
  %storemerge.i3 = phi i64 [ 0, %._crit_edge.i2 ], [ 1, %.split.us.i6 ]
  store i64 %storemerge.i3, ptr %0, align 8, !alias.scope !103904
  br label %bb.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !41, !noundef !28
  %i.b = trunc nuw i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !28 ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = load i64, ptr %i.e, align 8, !noundef !28 ; 14 uses
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %bb.s, label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.j = load i8, ptr %i.i, align 2, !range !40, !noundef !28
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !range !40, !noundef !28 ; 2 uses
  %i.n = trunc nuw i8 %i.m to i1                  ; 2 uses
  %i.o = xor i8 %i.m, 1
  store i8 %i.o, ptr %i.l, align 8
  %i.p = load i64, ptr %i.h, align 8, !noundef !28 ; 14 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !28, !noundef !28 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.t = load i64, ptr %i.s, align 8, !noundef !28 ; 8 uses
  %i.u = icmp eq i64 %i.p, 0
  br i1 %i.u, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp ult i64 %i.p, %i.t
  br i1 %.not.i, label %bb.f, label %.split.i

.split.i:                                         ; preds = %bb.e
  %i.v = icmp eq i64 %i.p, %i.t
  br i1 %i.v, label %bb.g, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !103919, !noundef !28
  %i.y = icmp sgt i8 %i.x, -65
  br i1 %i.y, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f, %.split.i, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p ; 4 uses
  %i.aa = icmp samesign eq i64 %i.p, %i.t
  br i1 %i.aa, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load i8, ptr %i.z, align 1, !noalias !103920, !noundef !28 ; 5 uses
  %i.ac = icmp sgt i8 %i.ab, -1
  br i1 %i.ac, label %bb.i, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i: ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ae = and i8 %i.ab, 31
  %i.af = zext nneg i8 %i.ae to i32               ; 3 uses
  %i.ag = add nuw nsw i64 %i.p, 1
  %i.ah = icmp samesign ne i64 %i.ag, %i.t
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = load i8, ptr %i.ad, align 1, !noalias !103920, !noundef !28
  %i.aj = shl nuw nsw i32 %i.af, 6
  %i.ak = and i8 %i.ai, 63
  %i.al = zext nneg i8 %i.ak to i32               ; 2 uses
  %i.am = or disjoint i32 %i.aj, %i.al
  %i.an = icmp samesign ugt i8 %i.ab, -33
  br i1 %i.an, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ao = zext nneg i8 %i.ab to i32
  br label %bb.k

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.aq = add nuw nsw i64 %i.p, 2
  %i.ar = icmp samesign ne i64 %i.aq, %i.t
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = load i8, ptr %i.ap, align 1, !noalias !103920, !noundef !28
  %i.at = shl nuw nsw i32 %i.al, 6
  %i.au = and i8 %i.as, 63
  %i.av = zext nneg i8 %i.au to i32
  %i.aw = or disjoint i32 %i.at, %i.av            ; 2 uses
  %i.ax = shl nuw nsw i32 %i.af, 12
  %i.ay = or disjoint i32 %i.aw, %i.ax
  %i.az = icmp samesign ugt i8 %i.ab, -17
  br i1 %i.az, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i, label %bb.k

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.z, i64 3
  %i.bb = add nuw nsw i64 %i.p, 3
  %i.bc = icmp samesign ne i64 %i.bb, %i.t
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = load i8, ptr %i.ba, align 1, !noalias !103920, !noundef !28
  %i.be = shl nuw nsw i32 %i.af, 18
  %i.bf = and i32 %i.be, 1835008
  %i.bg = shl nuw nsw i32 %i.aw, 6
  %i.bh = and i8 %i.bd, 63
  %i.bi = zext nneg i8 %i.bh to i32
  %i.bj = or disjoint i32 %i.bg, %i.bi
  %i.bk = or disjoint i32 %i.bj, %i.bf
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %.split.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.t, i64 noundef %i.p, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2881) #74
  unreachable

bb.k:                                             ; preds = %bb.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i
  %.sroa.4.0.i.ph = phi i32 [ %i.ay, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i ], [ %i.bk, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i ], [ %i.am, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i ], [ %i.ao, %bb.i ] ; 4 uses
  %i.bl = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.bl)
  br i1 %i.n, label %bb.n, label %bb.o

bb.l:                                             ; preds = %bb.g
  br i1 %i.n, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.i, align 2
  br label %bb.s

bb.n:                                             ; preds = %bb.k, %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %i.bn, align 8
  br label %bb.s

bb.o:                                             ; preds = %bb.k
  %i.bo = icmp samesign ult i32 %.sroa.4.0.i.ph, 128
  br i1 %i.bo, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = icmp samesign ult i32 %.sroa.4.0.i.ph, 2048
  br i1 %i.bp, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = icmp samesign ult i32 %.sroa.4.0.i.ph, 65536
  %. = select i1 %i.bq, i64 3, i64 4
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o
  %.sroa.01.0 = phi i64 [ 2, %bb.p ], [ %., %bb.q ], [ 1, %bb.o ]
  %i.br = add i64 %.sroa.01.0, %i.p               ; 2 uses
  store i64 %i.br, ptr %i.h, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.br, ptr %i.bt, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.c, %bb.b, %_RINvMsx_NtNtCsj6eKBz9Db1c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECskXtk6F4WjxZ_4just.exit, %bb.m, %bb.n, %bb.r, %.split13
  %.sink = phi i64 [ 0, %_RINvMsx_NtNtCsj6eKBz9Db1c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECskXtk6F4WjxZ_4just.exit ], [ 2, %bb.m ], [ 0, %bb.n ], [ 1, %bb.r ], [ 1, %.split13 ], [ 2, %bb.b ], [ 2, %bb.c ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.t:                                             ; preds = %bb.b
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !28 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, -1                   ; 2 uses
  %i.by = load ptr, ptr %i.bu, align 8, !nonnull !28, !noundef !28 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !28, !noundef !28 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !28 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103924)
  %i.cd = add nsw i64 %i.cc, -1                   ; 3 uses
  %i.ce = add i64 %i.d, %i.cd                     ; 3 uses
  %i.cf = icmp ult i64 %i.ce, %i.f
  br i1 %i.cf, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.t
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !103922 ; 2 uses
  %i.cj = load i64, ptr %i.cg, align 8, !alias.scope !103922
  %.fr83 = freeze i64 %i.cj                       ; 10 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !103922 ; 2 uses
  %i.cm = sub i64 %i.cc, %i.cl
  %i.cn = add i64 %i.d, 1
  %invariant.op.i = sub i64 %i.cn, %.fr83         ; 2 uses
  %i.co = add i64 %i.cl, %i.d                     ; 2 uses
  %i.cp = add i64 %i.d, %i.cc                     ; 4 uses
  br i1 %i.bx, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %.fr83, i64 range(i64 0, -9223372036854775808) %i.cc)
  %i.cq = add i64 %.fr83, -1                      ; 2 uses
  %.first_iter = icmp ult i64 %i.cq, %i.cc
  %exitcond.not.i.us115.not = icmp ult i64 %.fr83, %i.cc
  %.not118 = icmp eq i64 %.fr83, 0                ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %.loopexit100, %.lr.ph.i.split.us
  %i.cr = phi i64 [ %i.ce, %.lr.ph.i.split.us ], [ %i.dm, %.loopexit100 ]
  %i.cs = phi i64 [ %i.d, %.lr.ph.i.split.us ], [ %.sink98, %.loopexit100 ] ; 2 uses
  %.not.i18.us = icmp eq i64 %i.d, %i.cs
  br i1 %.not.i18.us, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.ct = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cr
  %i.cu = load i8, ptr %i.ct, align 1, !alias.scope !103923, !noundef !28
  %i.cv = and i8 %i.cu, 63
  %i.cw = zext nneg i8 %i.cv to i64
  %i.cx = shl nuw i64 1, %i.cw
  %i.cy = and i64 %i.cx, %i.ci
  %.not20.i.us = icmp eq i64 %i.cy, 0
  br i1 %.not20.i.us, label %.loopexit100, label %.preheader43.preheader

.preheader43.preheader:                           ; preds = %bb.v
  br i1 %exitcond.not.i.us115.not, label %bb.w, label %.preheader

.preheader43:                                     ; preds = %bb.w
  %i.cz = add nuw i64 %.sroa.04.0.i.us112, 1      ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.cz, %umax.i.us
  br i1 %exitcond.not.i.us, label %.preheader, label %bb.w

.preheader:                                       ; preds = %.preheader43, %.preheader43.preheader
  br i1 %.first_iter, label %.preheader.split.us.preheader, label %.lr.ph120

.preheader.split.us.preheader:                    ; preds = %.preheader
  br i1 %.not118, label %.split38.us, label %.lr.ph117

.preheader.preheader:                             ; preds = %.lr.ph117
  %.not.us = icmp eq i64 %2, 0
  br i1 %.not.us, label %.split38.us, label %.lr.ph117

.lr.ph117:                                        ; preds = %.preheader.split.us.preheader, %.preheader.preheader
  %.sroa.04.0.i.us116 = phi i64 [ %2, %.preheader.preheader ], [ %.fr83, %.preheader.split.us.preheader ]
  %2 = add i64 %.sroa.04.0.i.us116, -1            ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ca, i64 %2
  %i.db = load i8, ptr %i.da, align 1, !alias.scope !103924, !noundef !28
  %i.dc = add i64 %2, %i.d                        ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %i.f
  tail call void @llvm.assume(i1 %i.dd)
  %i.de = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.dc
  %i.df = load i8, ptr %i.de, align 1, !alias.scope !103923, !noundef !28
  %.not22.i.us.a = icmp eq i8 %i.db, %i.df
  br i1 %.not22.i.us.a, label %.preheader.preheader, label %.loopexit100

.lr.ph120:                                        ; preds = %.preheader
  br i1 %.not118, label %.split38.us, label %.split40.us

bb.w:                                             ; preds = %.preheader43.preheader, %.preheader43
  %.sroa.04.0.i.us112 = phi i64 [ %i.cz, %.preheader43 ], [ %.fr83, %.preheader43.preheader ] ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.04.0.i.us112
  %i.dh = load i8, ptr %i.dg, align 1, !alias.scope !103924, !noundef !28
  %i.di = add i64 %.sroa.04.0.i.us112, %i.d       ; 2 uses
  %i.dj = icmp ult i64 %i.di, %i.f
  tail call void @llvm.assume(i1 %i.dj)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.di
  %i.dl = load i8, ptr %i.dk, align 1, !alias.scope !103923, !noundef !28
  %.not21.i.us = icmp eq i8 %i.dh, %i.dl
  br i1 %.not21.i.us, label %.preheader43, label %3

3:                                                ; preds = %bb.w
  %.reass.i.us = add i64 %invariant.op.i, %.sroa.04.0.i.us112
  br label %.loopexit100

.loopexit100:                                     ; preds = %.lr.ph117, %bb.v, %3
  %.sink98 = phi i64 [ %i.cp, %bb.v ], [ %.reass.i.us, %3 ], [ %i.co, %.lr.ph117 ] ; 3 uses
  store i64 %.sink98, ptr %i.c, align 8, !alias.scope !103922
  %i.dm = add i64 %.sink98, %i.cd                 ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.f
  br i1 %i.dn, label %bb.u, label %.loopexit

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %.sink.split.i
  %i.do = phi i64 [ %.sink55.i, %.sink.split.i ], [ %i.bw, %.lr.ph.i ] ; 3 uses
  %i.dp = phi i64 [ %i.dx, %.sink.split.i ], [ %i.ce, %.lr.ph.i ]
  %i.dq = phi i64 [ %.sink99, %.sink.split.i ], [ %i.d, %.lr.ph.i ] ; 2 uses
  %.not.i18 = icmp eq i64 %i.d, %i.dq
  br i1 %.not.i18, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %.lr.ph.i.split
  %i.dr = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.dp
  %i.ds = load i8, ptr %i.dr, align 1, !alias.scope !103923, !noundef !28
  %i.dt = and i8 %i.ds, 63
  %i.du = zext nneg i8 %i.dt to i64
  %i.dv = shl nuw i64 1, %i.du
  %i.dw = and i64 %i.dv, %i.ci
  %.not20.i = icmp eq i64 %i.dw, 0
  br i1 %.not20.i, label %.sink.split.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %..i.i = tail call i64 @llvm.umax.i64(i64 %i.do, i64 %.fr83) ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -9223372036854775808) %i.cc)
  %exitcond.not.i110.not = icmp ult i64 %..i.i, %i.cc
  br i1 %exitcond.not.i110.not, label %.lr.ph112, label %.preheader44.preheader

.sink.split.i:                                    ; preds = %bb.ab, %bb.x, %bb.ac
  %.sink99 = phi i64 [ %i.cp, %bb.x ], [ %.reass.i, %bb.ac ], [ %i.co, %bb.ab ] ; 3 uses
  %.sink55.i = phi i64 [ 0, %bb.x ], [ 0, %bb.ac ], [ %i.cm, %bb.ab ] ; 2 uses
  store i64 %.sink99, ptr %i.c, align 8, !alias.scope !103922
  store i64 %.sink55.i, ptr %i.bv, align 8, !alias.scope !103922
  %i.dx = add i64 %.sink99, %i.cd                 ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.f
  br i1 %i.dy, label %.lr.ph.i.split, label %.loopexit

bb.z:                                             ; preds = %.lr.ph112
  %i.dz = add nuw i64 %.sroa.04.0.i111, 1         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dz, %umax.i
  br i1 %exitcond.not.i, label %.preheader44.preheader, label %.lr.ph112

.preheader44.preheader:                           ; preds = %bb.z, %bb.y
  %i.ea = icmp ult i64 %i.do, %.fr83
  br i1 %i.ea, label %.lr.ph114, label %.split38.us

.lr.ph112:                                        ; preds = %bb.y, %bb.z
  %.sroa.04.0.i111 = phi i64 [ %i.dz, %bb.z ], [ %..i.i, %bb.y ] ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.04.0.i111
  %i.ec = load i8, ptr %i.eb, align 1, !alias.scope !103924, !noundef !28
  %i.ed = add i64 %.sroa.04.0.i111, %i.d          ; 2 uses
  %i.ee = icmp ult i64 %i.ed, %i.f
  tail call void @llvm.assume(i1 %i.ee)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ed
  %i.eg = load i8, ptr %i.ef, align 1, !alias.scope !103923, !noundef !28
  %.not22.i = icmp eq i8 %i.ec, %i.eg
  br i1 %.not22.i, label %bb.z, label %bb.ac

.preheader44:                                     ; preds = %bb.ab
  %i.eh = icmp ult i64 %i.do, %i.ei
  br i1 %i.eh, label %.lr.ph114, label %.split38.us

.split38.us:                                      ; preds = %.preheader44.preheader, %.preheader44, %.preheader.split.us.preheader, %.preheader.preheader, %.lr.ph120
  store i64 %i.cp, ptr %i.c, align 8, !alias.scope !103922
  br i1 %i.bx, label %_RINvMsx_NtNtCsj6eKBz9Db1c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECskXtk6F4WjxZ_4just.exit, label %bb.aa

.lr.ph114:                                        ; preds = %.preheader44.preheader, %.preheader44
  %.sroa.2.0.i113 = phi i64 [ %i.ei, %.preheader44 ], [ %.fr83, %.preheader44.preheader ]
  %i.ei = add i64 %.sroa.2.0.i113, -1             ; 6 uses
  %i.ej = icmp ult i64 %i.ei, %i.cc
  br i1 %i.ej, label %bb.ab, label %.split40.us

bb.aa:                                            ; preds = %.split38.us
  store i64 0, ptr %i.bv, align 8, !alias.scope !103922
  br label %_RINvMsx_NtNtCsj6eKBz9Db1c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECskXtk6F4WjxZ_4just.exit

bb.ab:                                            ; preds = %.lr.ph114
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ei
  %i.el = load i8, ptr %i.ek, align 1, !alias.scope !103924, !noundef !28
  %i.em = add i64 %i.ei, %i.d                     ; 2 uses
  %i.en = icmp ult i64 %i.em, %i.f
  tail call void @llvm.assume(i1 %i.en)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.em
  %i.ep = load i8, ptr %i.eo, align 1, !alias.scope !103923, !noundef !28
  %.not21.i = icmp eq i8 %i.el, %i.ep
  br i1 %.not21.i, label %.preheader44, label %.sink.split.i

.split40.us:                                      ; preds = %.lr.ph114, %.lr.ph120
  %.us-phi41 = phi i64 [ %i.cq, %.lr.ph120 ], [ %i.ei, %.lr.ph114 ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.us-phi41, i64 noundef range(i64 0, -9223372036854775808) %i.cc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #74, !noalias !103925
  unreachable

bb.ac:                                            ; preds = %.lr.ph112
  %.reass.i = add i64 %invariant.op.i, %.sroa.04.0.i111
  br label %.sink.split.i

_RINvMsx_NtNtCsj6eKBz9Db1c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECskXtk6F4WjxZ_4just.exit: ; preds = %.split38.us, %bb.aa
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.eq, align 8, !alias.scope !103921
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cp, ptr %i.er, align 8, !alias.scope !103921
  br label %bb.s

.loopexit:                                        ; preds = %.lr.ph.i.split, %.sink.split.i, %bb.u, %.loopexit100, %bb.t
  %i.es = phi i64 [ %i.cs, %bb.u ], [ %i.f, %bb.t ], [ %i.f, %.loopexit100 ], [ %i.dq, %.lr.ph.i.split ], [ %i.f, %.sink.split.i ] ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ev = icmp eq i64 %i.es, 0
  br i1 %i.ev, label %.split13, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit, %bb.ae
  %.sroa.02.042 = phi i64 [ %i.fa, %bb.ae ], [ %i.es, %.loopexit ] ; 5 uses
  %.not16 = icmp ult i64 %.sroa.02.042, %i.f
  br i1 %.not16, label %bb.ad, label %.split28

.split13:                                         ; preds = %bb.ae, %.loopexit, %.split
  %.sroa.02.030 = phi i64 [ %.sroa.02.042.lcssa, %.split ], [ 0, %.loopexit ], [ 0, %bb.ae ]
  %phi.call = phi i64 [ %..i, %.split ], [ 0, %.loopexit ], [ %i.es, %bb.ae ]
  store i64 %phi.call, ptr %i.c, align 8
  store i64 %i.d, ptr %i.et, align 8
  store i64 %.sroa.02.030, ptr %i.eu, align 8
  br label %bb.s

.split28:                                         ; preds = %.lr.ph
  %i.ew = icmp eq i64 %.sroa.02.042, %i.f
  br i1 %i.ew, label %.split, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph
  %i.ex = getelementptr inbounds nuw i8, ptr %i.by, i64 %.sroa.02.042
  %i.ey = load i8, ptr %i.ex, align 1, !noundef !28
  %i.ez = icmp sgt i8 %i.ey, -65
  br i1 %i.ez, label %.split, label %bb.ae

.split:                                           ; preds = %.split28, %bb.ad
  %.sroa.02.042.lcssa = phi i64 [ %i.f, %.split28 ], [ %.sroa.02.042, %bb.ad ] ; 2 uses
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.es, i64 %.sroa.02.042.lcssa)
  br label %.split13

bb.ae:                                            ; preds = %.split28, %bb.ad
  %i.fa = add i64 %.sroa.02.042, 1                ; 2 uses
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %.split13, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal noundef ptr @_RNvYINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_fmtCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !103932
  store ptr %0, ptr %i.b, align 8, !noalias !103932
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr null, ptr %i.c, align 8, !noalias !103932
  %i.d = invoke noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @363, ptr noundef nonnull %1, ptr noundef nonnull %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #71
          to label %bb.l unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8, !noalias !103932, !noundef !28 ; 5 uses
  %.not.i5 = icmp eq ptr %i.f, null               ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i5, label %bb.i, label %_RINvNtNtCsj6eKBz9Db1c_4core2io5write17default_write_fmtINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit, !prof !44

bb.e:                                             ; preds = %bb.c
  br i1 %.not.i5, label %_RINvNtNtCsj6eKBz9Db1c_4core2io5write17default_write_fmtINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !103933
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit.i.i
    i64 3, label %bb.g
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit.i.i
    i64 1, label %bb.h
  ], !prof !69

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.i = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  call void @llvm.assume(i1 %i.i)
  call void @llvm.assume(i1 %i.k)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.l = getelementptr i8, ptr %i.f, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !103934, !noalias !103933
  store i8 3, ptr %i.a, align 8, !alias.scope !103934, !noalias !103933
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m), !noalias !103935
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !103933
  br label %_RINvNtNtCsj6eKBz9Db1c_4core2io5write17default_write_fmtINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit

bb.i:                                             ; preds = %bb.d
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @364, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @366) #70
          to label %bb.j unwind label %bb.b

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #72
  unreachable

bb.l:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e

_RINvNtNtCsj6eKBz9Db1c_4core2io5write17default_write_fmtINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit: ; preds = %bb.d, %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit.i.i
  %.sroa.0.0.i6 = phi ptr [ %i.f, %bb.d ], [ null, %bb.e ], [ null, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !103932
  ret ptr %.sroa.0.0.i6
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal { ptr, i64 } @_RNvYINtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterReKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator3nthCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #46 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !103944, !noundef !28 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !alias.scope !103944, !noundef !28 ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c
  %.not.i.i = icmp ugt i64 %1, %i.d
  %i.e = add i64 %i.c, %1                         ; 5 uses
  %.sroa.0.0.i.i = select i1 %.not.i.i, i64 %i.b, i64 %i.e ; 3 uses
  store i64 %.sroa.0.0.i.i, ptr %0, align 8, !alias.scope !103944
  %.not = icmp ne i64 %i.e, %.sroa.0.0.i.i
  %.not.i.i2 = icmp eq i64 %i.b, %.sroa.0.0.i.i
  %or.cond = or i1 %.not, %.not.i.i2
  br i1 %or.cond, label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core5array4iterINtB5_8IntoIterReKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nuw nsw i64 %i.e, 1
  store i64 %i.f, ptr %0, align 8, !alias.scope !103945
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = icmp ult i64 %i.e, 2
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.e ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !103945, !nonnull !28, !noundef !28
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !103945, !noundef !28
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core5array4iterINtB5_8IntoIterReKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit

_RNvXs3_NtNtCsj6eKBz9Db1c_4core5array4iterINtB5_8IntoIterReKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit: ; preds = %bb.b, %bb.a
  %.sroa.3.0 = phi i64 [ undef, %bb.a ], [ %i.l, %bb.b ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.j, %bb.b ]
  %i.m = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.n = insertvalue { ptr, i64 } %i.m, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.n
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef i64 @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1u_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #47 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB3d_15EnumValueParserB2i_ENtB3d_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !103956, !nonnull !28, !noundef !28 ; 2 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !103956 ; 4 uses
  %.promoted.i.i.i3 = ptrtoaddr ptr %.promoted.i.i.i to i64
  %i.d = sub i64 %i.c, %.promoted.i.i.i3
  %i.e = add i64 %1, -1
  %i.f = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.e)
  %i.g = add i64 %i.f, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.g, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %i.h = and i64 %i.g, 3                          ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  %i.j = select i1 %i.i, i64 4, i64 %i.h
end_hunk_1
begin_hunk_2_@llvm.vector.reduce.add.v2i64
!103708 = distinct !{!103708, i1 true, !"_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just"}
!103709 = distinct !{!103709, !103708, !"_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just: argument 0"}
!103710 = distinct !{!103710, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just"}
!103711 = distinct !{!103711, !103710, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just: argument 0"}
!103712 = distinct !{!103712, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just"}
!103713 = distinct !{!103713, !103712, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just: argument 0"}
!103714 = distinct !{!103714, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just"}
!103715 = distinct !{!103715, !103714, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just: argument 0"}
!103716 = distinct !{!103716, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just"}
!103717 = distinct !{!103717, !103716, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just: argument 0"}
!103718 = distinct !{!103718, i1 true, !"_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just"}
!103719 = distinct !{!103719, !103718, !"_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just: argument 0"}
!103720 = distinct !{!103720, i1 true, !"_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just"}
!103721 = distinct !{!103721, !103720, !"_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just: argument 0"}
!103722 = distinct !{!103722, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just"}
!103723 = distinct !{!103723, !103722, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just: argument 0"}
!103724 = distinct !{!103724, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just"}
!103725 = distinct !{!103725, !103724, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just: argument 0"}
!103726 = distinct !{!103726, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just"}
!103727 = distinct !{!103727, !103726, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just: argument 0"}
!103728 = distinct !{!103728, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just"}
!103729 = distinct !{!103729, !103728, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just: argument 0"}
!103730 = distinct !{!103730, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just"}
!103731 = distinct !{!103731, !103730, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just: argument 0"}
!103732 = distinct !{!103732, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just"}
!103733 = distinct !{!103733, !103732, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just: argument 0"}
!103734 = distinct !{!103734, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just"}
!103735 = distinct !{!103735, !103734, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just: argument 0"}
!103736 = distinct !{!103736, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just"}
!103737 = distinct !{!103737, !103736, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just: argument 0"}
!103738 = distinct !{!103738, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtB18_6marker4SendNtB1F_4SyncEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCskXtk6F4WjxZ_4just"}
!103739 = distinct !{!103739, !103738, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtB18_6marker4SendNtB1F_4SyncEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCskXtk6F4WjxZ_4just: argument 0"}
!103740 = distinct !{!103740, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1R_4SyncEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECskXtk6F4WjxZ_4just"}
!103741 = distinct !{!103741, !103740, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1R_4SyncEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECskXtk6F4WjxZ_4just: argument 0"}
!103742 = distinct !{!103742, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just"}
!103743 = distinct !{!103743, !103742, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just: argument 0"}
!103744 = distinct !{!103744, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just"}
!103745 = distinct !{!103745, !103744, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just: argument 0"}
!103746 = distinct !{!103746, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just"}
!103747 = distinct !{!103747, !103746, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just: argument 0"}
!103748 = distinct !{!103748, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just"}
!103749 = distinct !{!103749, !103748, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just: argument 0"}
!103750 = distinct !{!103750, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just"}
!103751 = distinct !{!103751, !103750, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just: argument 0"}
!103752 = distinct !{!103752, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just"}
!103753 = distinct !{!103753, !103752, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just: argument 0"}
!103754 = distinct !{!103754, i1 true, !"_RNCNvXsu_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB7_20RangedI64ValueParserhENtB7_16TypedValueParser9parse_refs2_0CskXtk6F4WjxZ_4just"}
!103755 = distinct !{!103755, !103754, !"_RNCNvXsu_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB7_20RangedI64ValueParserhENtB7_16TypedValueParser9parse_refs2_0CskXtk6F4WjxZ_4just: argument 0"}
!103756 = distinct !{!103756, i1 true, !"_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCskXtk6F4WjxZ_4just"}
!103757 = distinct !{!103757, !103756, !"_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCskXtk6F4WjxZ_4just: argument 1"}
!103758 = distinct !{!103758, !103756, !"_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCskXtk6F4WjxZ_4just: argument 0"}
!103759 = distinct !{!103759, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just"}
!103760 = distinct !{!103760, !103759, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just: argument 0"}
!103761 = distinct !{!103761, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just"}
!103762 = distinct !{!103762, !103761, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just: argument 0"}
!103763 = distinct !{!103763, i1 true, !"_RNCNCNvXsu_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB9_20RangedI64ValueParserhENtB9_16TypedValueParser9parse_refs2_0s_0CskXtk6F4WjxZ_4just"}
!103764 = distinct !{!103764, !103763, !"_RNCNCNvXsu_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB9_20RangedI64ValueParserhENtB9_16TypedValueParser9parse_refs2_0s_0CskXtk6F4WjxZ_4just: argument 0"}
!103765 = distinct !{!103765, i1 true, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just"}
!103766 = distinct !{!103766, !103765, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just: argument 0"}
!103767 = distinct !{!103767, i1 true, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just"}
!103768 = distinct !{!103768, !103767, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just: argument 0"}
!103769 = distinct !{!103769, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just"}
!103770 = distinct !{!103770, !103769, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just: argument 0"}
!103771 = distinct !{!103771, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just"}
!103772 = distinct !{!103772, !103771, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just: argument 0"}
!103773 = distinct !{!103773, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just"}
!103774 = distinct !{!103774, !103773, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just: argument 0"}
!103775 = distinct !{!103775, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just"}
!103776 = distinct !{!103776, !103775, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just: argument 0"}
!103777 = !{!103623}
!103778 = !{!103625}
!103779 = !{!103630, !103629, !103627}
!103780 = !{!103630, !103627}
!103781 = !{!103632}
!103782 = !{!103634}
!103783 = !{!103634, !103632}
!103784 = !{!103634, !103632, !103630, !103627}
!103785 = !{!103629, !103627}
!103786 = !{!103638, !103636, !103627}
!103787 = !{!103636, !103627}
!103788 = !{!103627}
!103789 = !{!103640, !103627}
!103790 = !{!103642}
!103791 = !{!103644}
!103792 = !{!103644, !103642}
!103793 = !{!103644, !103642, !103627}
!103794 = !{!103648, !103646, !103627}
!103795 = !{!103652, !103650}
!103796 = !{!103654, !103650}
!103797 = !{!103656, !103650}
!103798 = !{!103658, !103650}
!103799 = !{!103660, !103650}
!103800 = !{!103662, !103650}
!103801 = !{!103668, !103667, !103665, !103664}
!103802 = !{!103668, !103665}
!103803 = !{!103670}
!103804 = !{!103672}
!103805 = !{!103672, !103670}
!103806 = !{!103672, !103670, !103668, !103665}
!103807 = !{!103667, !103664}
!103808 = !{!103676, !103674}
!103809 = !{!103674}
!103810 = !{!103678}
!103811 = !{!103680}
!103812 = !{!103681, !103680}
!103813 = !{!103683}
!103814 = !{!103685, !103683}
!103815 = !{!103687}
!103816 = !{!103689}
!103817 = !{!103689, !103687}
!103818 = !{!103689, !103687, !103681, !103680}
!103819 = !{!103683, !103681, !103680}
!103820 = !{!103691}
!103821 = !{!103693, !103691}
!103822 = !{!103691, !103681, !103680}
!103823 = !{!103695}
!103824 = !{!103697, !103695}
!103825 = !{!103695, !103681, !103680}
!103826 = !{!103699}
!103827 = !{!103701}
!103828 = !{!103701, !103699}
!103829 = !{!103701, !103699, !103681, !103680}
!103830 = !{!103703}
!103831 = !{!103705}
!103832 = !{!103705, !103703}
!103833 = !{!103705, !103703, !103681, !103680}
!103834 = !{!103707}
!103835 = !{!103709, !103707}
!103836 = !{!103707, !103681, !103680}
!103837 = !{!103711}
!103838 = !{!103713}
!103839 = !{!103713, !103711}
!103840 = !{!103713, !103711, !103681, !103680}
!103841 = !{!103715}
!103842 = !{!103717}
!103843 = !{!103717, !103715}
!103844 = !{!103717, !103715, !103681, !103680}
!103845 = !{!103719}
!103846 = !{!103721, !103719}
!103847 = !{!103719, !103681, !103680}
!103848 = !{!103723}
!103849 = !{!103725}
!103850 = !{!103725, !103723}
!103851 = !{!103725, !103723, !103681, !103680}
!103852 = !{!103727}
!103853 = !{!103729}
!103854 = !{!103729, !103727}
!103855 = !{!103729, !103727, !103681, !103680}
!103856 = !{!103731}
!103857 = !{!103733}
!103858 = !{!103733, !103731}
!103859 = !{!103735}
!103860 = !{!103737}
!103861 = !{!103737, !103735}
!103862 = !{!103739}
!103863 = !{!103745, !103743, !103741}
!103864 = !{!103747}
!103865 = !{!103749}
!103866 = !{!103749, !103747}
!103867 = !{!103753, !103751}
!103868 = !{!103758, !103757, !103755}
!103869 = !{!103758, !103755}
!103870 = !{!103760}
!103871 = !{!103762}
!103872 = !{!103762, !103760}
!103873 = !{!103762, !103760, !103758, !103755}
!103874 = !{!103757, !103755}
!103875 = !{!103766, !103764, !103755}
!103876 = !{!103764, !103755}
!103877 = !{!103755}
!103878 = !{!103768, !103755}
!103879 = !{!103770}
!103880 = !{!103772}
!103881 = !{!103772, !103770}
!103882 = !{!103772, !103770, !103755}
!103883 = !{!103776, !103774, !103755}
!103884 = distinct !{!103884, i1 true, !"_RINvMsx_NtNtCsj6eKBz9Db1c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskXtk6F4WjxZ_4just"}
!103885 = distinct !{!103885, !103884, !"_RINvMsx_NtNtCsj6eKBz9Db1c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskXtk6F4WjxZ_4just: argument 0"}
!103886 = distinct !{!103886, !103884, !"_RINvMsx_NtNtCsj6eKBz9Db1c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskXtk6F4WjxZ_4just: argument 1"}
!103887 = distinct !{!103887, !103884, !"_RINvMsx_NtNtCsj6eKBz9Db1c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskXtk6F4WjxZ_4just: argument 2"}
!103888 = distinct !{!103888, !103884, !"_RINvMsx_NtNtCsj6eKBz9Db1c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskXtk6F4WjxZ_4just: argument 3"}
!103889 = distinct !{!103889, i1 true, !"_RNvXsy_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!103890 = distinct !{!103890, !103889, !"_RNvXsy_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!103891 = distinct !{!103891, i1 true, !"_RINvMsx_NtNtCsj6eKBz9Db1c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskXtk6F4WjxZ_4just"}
!103892 = distinct !{!103892, !103891, !"_RINvMsx_NtNtCsj6eKBz9Db1c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskXtk6F4WjxZ_4just: argument 0"}
!103893 = distinct !{!103893, !103891, !"_RINvMsx_NtNtCsj6eKBz9Db1c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskXtk6F4WjxZ_4just: argument 1"}
!103894 = distinct !{!103894, !103891, !"_RINvMsx_NtNtCsj6eKBz9Db1c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskXtk6F4WjxZ_4just: argument 2"}
!103895 = distinct !{!103895, !103891, !"_RINvMsx_NtNtCsj6eKBz9Db1c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskXtk6F4WjxZ_4just: argument 3"}
!103896 = distinct !{!103896, i1 true, !"_RNvXsy_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!103897 = distinct !{!103897, !103896, !"_RNvXsy_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!103898 = !{!103885}
!103899 = !{!103886}
!103900 = !{!103887}
!103901 = !{!103888}
!103902 = !{!103890, !103885}
!103903 = !{!103885, !103886, !103887, !103888}
!103904 = !{!103892}
!103905 = !{!103893}
!103906 = !{!103894}
!103907 = !{!103895}
!103908 = !{!103897, !103892}
!103909 = !{!103892, !103893, !103894, !103895}
!103910 = distinct !{!103910, i1 true, !"_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!103911 = distinct !{!103911, !103910, !"_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!103912 = distinct !{!103912, i1 true, !"_RINvNtNtCsj6eKBz9Db1c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECskXtk6F4WjxZ_4just"}
!103913 = distinct !{!103913, !103912, !"_RINvNtNtCsj6eKBz9Db1c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECskXtk6F4WjxZ_4just: argument 0"}
!103914 = distinct !{!103914, i1 true, !"_RINvMsx_NtNtCsj6eKBz9Db1c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECskXtk6F4WjxZ_4just"}
!103915 = distinct !{!103915, !103914, !"_RINvMsx_NtNtCsj6eKBz9Db1c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECskXtk6F4WjxZ_4just: argument 0"}
!103916 = distinct !{!103916, !103914, !"_RINvMsx_NtNtCsj6eKBz9Db1c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECskXtk6F4WjxZ_4just: argument 1"}
!103917 = distinct !{!103917, !103914, !"_RINvMsx_NtNtCsj6eKBz9Db1c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECskXtk6F4WjxZ_4just: argument 2"}
!103918 = distinct !{!103918, !103914, !"_RINvMsx_NtNtCsj6eKBz9Db1c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECskXtk6F4WjxZ_4just: argument 3"}
!103919 = !{!103911}
!103920 = !{!103913}
!103921 = !{!103915}
!103922 = !{!103916}
!103923 = !{!103917}
!103924 = !{!103918}
!103925 = !{!103915, !103916, !103917, !103918}
!103926 = distinct !{!103926, i1 true, !"_RINvNtNtCsj6eKBz9Db1c_4core2io5write17default_write_fmtINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just"}
!103927 = distinct !{!103927, !103926, !"_RINvNtNtCsj6eKBz9Db1c_4core2io5write17default_write_fmtINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just: argument 0"}
!103928 = distinct !{!103928, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just"}
!103929 = distinct !{!103929, !103928, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just: argument 0"}
!103930 = distinct !{!103930, i1 true, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECskXtk6F4WjxZ_4just"}
!103931 = distinct !{!103931, !103930, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECskXtk6F4WjxZ_4just: argument 0"}
!103932 = !{!103927}
!103933 = !{!103929, !103927}
!103934 = !{!103931}
!103935 = !{!103929}
!103936 = distinct !{!103936, i1 true, !"_RNvXs3_NtNtCsj6eKBz9Db1c_4core5array4iterINtB5_8IntoIterReKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator10advance_byCskXtk6F4WjxZ_4just"}
!103937 = distinct !{!103937, !103936, !"_RNvXs3_NtNtCsj6eKBz9Db1c_4core5array4iterINtB5_8IntoIterReKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator10advance_byCskXtk6F4WjxZ_4just: argument 0"}
!103938 = distinct !{!103938, i1 true, !"_RNvMs8_NtNtNtCsj6eKBz9Db1c_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitReEE10advance_byCskXtk6F4WjxZ_4just"}
!103939 = distinct !{!103939, !103938, !"_RNvMs8_NtNtNtCsj6eKBz9Db1c_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitReEE10advance_byCskXtk6F4WjxZ_4just: argument 0"}
!103940 = distinct !{!103940, i1 true, !"_RNvXs3_NtNtCsj6eKBz9Db1c_4core5array4iterINtB5_8IntoIterReKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just"}
!103941 = distinct !{!103941, !103940, !"_RNvXs3_NtNtCsj6eKBz9Db1c_4core5array4iterINtB5_8IntoIterReKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just: argument 0"}
!103942 = distinct !{!103942, i1 true, !"_RNvMs8_NtNtNtCsj6eKBz9Db1c_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitReEE4nextCskXtk6F4WjxZ_4just"}
!103943 = distinct !{!103943, !103942, !"_RNvMs8_NtNtNtCsj6eKBz9Db1c_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitReEE4nextCskXtk6F4WjxZ_4just: argument 0"}
!103944 = !{!103939, !103937}
!103945 = !{!103943, !103941}
!103946 = distinct !{!103946, i1 true, !"_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB3d_15EnumValueParserB2i_ENtB3d_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_"}
!103947 = distinct !{!103947, !103946, !"_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB3d_15EnumValueParserB2i_ENtB3d_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_: argument 0"}
!103948 = distinct !{!103948, i1 true, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2w_15EnumValueParserB1B_ENtB2w_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4y_10advance_byBV_NtB5S_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB5f_EEB1F_"}
!103949 = distinct !{!103949, !103948, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2w_15EnumValueParserB1B_ENtB2w_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4y_10advance_byBV_NtB5S_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB5f_EEB1F_: argument 0"}
!103950 = distinct !{!103950, i1 true, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtB1C_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueB2k_INtNtBa_6option6OptionB2k_ENCNvXso_NtB3R_12value_parserINtB5B_15EnumValueParserBJ_ENtB5B_16TypedValueParser15possible_values0NCNvXs_NvB1w_10advance_byINtB2V_9FilterMapB3_B5t_ENtB7a_13SpecAdvanceBy15spec_advance_by0E0B52_EBN_"}
!103951 = distinct !{!103951, !103950, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtB1C_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueB2k_INtNtBa_6option6OptionB2k_ENCNvXso_NtB3R_12value_parserINtB5B_15EnumValueParserBJ_ENtB5B_16TypedValueParser15possible_values0NCNvXs_NvB1w_10advance_byINtB2V_9FilterMapB3_B5t_ENtB7a_13SpecAdvanceBy15spec_advance_by0E0B52_EBN_: argument 0"}
!103952 = distinct !{!103952, i1 true, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_"}
!103953 = distinct !{!103953, !103952, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_: argument 0"}
!103954 = distinct !{!103954, !61, !62}
!103955 = distinct !{!103955, !62, !61}
!103956 = !{!103953, !103951, !103949, !103947}
!103957 = distinct !{!103957, !61, !62}
!103958 = distinct !{!103958, i1 true, !"_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1u_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_"}
!103959 = distinct !{!103959, !103958, !"_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1u_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_: argument 0"}
!103960 = distinct !{!103960, i1 true, !"_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB3d_15EnumValueParserB2i_ENtB3d_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_"}
!103961 = distinct !{!103961, !103960, !"_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB3d_15EnumValueParserB2i_ENtB3d_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_: argument 0"}
!103962 = distinct !{!103962, i1 true, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2w_15EnumValueParserB1B_ENtB2w_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4y_10advance_byBV_NtB5S_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB5f_EEB1F_"}
!103963 = distinct !{!103963, !103962, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2w_15EnumValueParserB1B_ENtB2w_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4y_10advance_byBV_NtB5S_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB5f_EEB1F_: argument 0"}
!103964 = distinct !{!103964, i1 true, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtB1C_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueB2k_INtNtBa_6option6OptionB2k_ENCNvXso_NtB3R_12value_parserINtB5B_15EnumValueParserBJ_ENtB5B_16TypedValueParser15possible_values0NCNvXs_NvB1w_10advance_byINtB2V_9FilterMapB3_B5t_ENtB7a_13SpecAdvanceBy15spec_advance_by0E0B52_EBN_"}
!103965 = distinct !{!103965, !103964, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtB1C_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueB2k_INtNtBa_6option6OptionB2k_ENCNvXso_NtB3R_12value_parserINtB5B_15EnumValueParserBJ_ENtB5B_16TypedValueParser15possible_values0NCNvXs_NvB1w_10advance_byINtB2V_9FilterMapB3_B5t_ENtB7a_13SpecAdvanceBy15spec_advance_by0E0B52_EBN_: argument 0"}
!103966 = distinct !{!103966, i1 true, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_"}
!103967 = distinct !{!103967, !103966, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_: argument 0"}
!103968 = distinct !{!103968, !62, !61}
!103969 = distinct !{!103969, i1 true, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2v_15EnumValueParserB1A_ENtB2v_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_"}
!103970 = distinct !{!103970, !103969, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2v_15EnumValueParserB1A_ENtB2v_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_: argument 0"}
!103971 = distinct !{!103971, !103969, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2v_15EnumValueParserB1A_ENtB2v_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_: argument 1"}
!103972 = distinct !{!103972, i1 true, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2v_12value_parserINtB3L_15EnumValueParserBQ_ENtB3L_16TypedValueParser15possible_values0EBU_"}
!103973 = distinct !{!103973, !103972, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2v_12value_parserINtB3L_15EnumValueParserBQ_ENtB3L_16TypedValueParser15possible_values0EBU_: argument 0"}
!103974 = distinct !{!103974, !103972, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2v_12value_parserINtB3L_15EnumValueParserBQ_ENtB3L_16TypedValueParser15possible_values0EBU_: argument 1"}
!103975 = distinct !{!103975, i1 true, !"_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtBW_15EnumValueParserNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENtBW_16TypedValueParser15possible_values0INtB7_5FnMutTRB2b_EE8call_mutB2f_"}
!103976 = distinct !{!103976, !103975, !"_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtBW_15EnumValueParserNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENtBW_16TypedValueParser15possible_values0INtB7_5FnMutTRB2b_EE8call_mutB2f_: argument 0"}
!103977 = distinct !{!103977, i1 true, !"_RNCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENtB7_16TypedValueParser15possible_values0B1q_"}
!103978 = distinct !{!103978, !103977, !"_RNCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENtB7_16TypedValueParser15possible_values0B1q_: argument 0"}
!103979 = distinct !{!103979, i1 true, !"_RNvXs3_NtCskXtk6F4WjxZ_4just11alias_styleNtB5_10AliasStyleNtNtCs2FJGJNE9lTN_12clap_builder6derive9ValueEnum17to_possible_value"}
!103980 = distinct !{!103980, !103979, !"_RNvXs3_NtCskXtk6F4WjxZ_4just11alias_styleNtB5_10AliasStyleNtNtCs2FJGJNE9lTN_12clap_builder6derive9ValueEnum17to_possible_value: argument 0"}
!103981 = !{!103967, !103965, !103963, !103961, !103959}
!103982 = !{!103970}
!103983 = !{!103971}
!103984 = !{!103973}
!103985 = !{!103974}
!103986 = !{!103974, !103971}
!103987 = !{!103973, !103974, !103970, !103971}
!103988 = !{!103980, !103978, !103976, !103973, !103970}
!103989 = !{!103973, !103970}
!103990 = distinct !{!103990, i1 true, !"_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB3d_15EnumValueParserB2i_ENtB3d_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_"}
!103991 = distinct !{!103991, !103990, !"_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB3d_15EnumValueParserB2i_ENtB3d_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_: argument 0"}
!103992 = distinct !{!103992, i1 true, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2w_15EnumValueParserB1B_ENtB2w_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4y_10advance_byBV_NtB5S_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB5f_EEB1F_"}
!103993 = distinct !{!103993, !103992, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2w_15EnumValueParserB1B_ENtB2w_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4y_10advance_byBV_NtB5S_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB5f_EEB1F_: argument 0"}
!103994 = distinct !{!103994, i1 true, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtB1C_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueB2k_INtNtBa_6option6OptionB2k_ENCNvXso_NtB3R_12value_parserINtB5B_15EnumValueParserBJ_ENtB5B_16TypedValueParser15possible_values0NCNvXs_NvB1w_10advance_byINtB2V_9FilterMapB3_B5t_ENtB7a_13SpecAdvanceBy15spec_advance_by0E0B52_EBN_"}
!103995 = distinct !{!103995, !103994, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtB1C_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueB2k_INtNtBa_6option6OptionB2k_ENCNvXso_NtB3R_12value_parserINtB5B_15EnumValueParserBJ_ENtB5B_16TypedValueParser15possible_values0NCNvXs_NvB1w_10advance_byINtB2V_9FilterMapB3_B5t_ENtB7a_13SpecAdvanceBy15spec_advance_by0E0B52_EBN_: argument 0"}
!103996 = distinct !{!103996, i1 true, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_"}
!103997 = distinct !{!103997, !103996, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_: argument 0"}
!103998 = distinct !{!103998, !61, !62}
!103999 = distinct !{!103999, !62, !61}
!104000 = !{!103997, !103995, !103993, !103991}
!104001 = distinct !{!104001, !61, !62}
!104002 = distinct !{!104002, i1 true, !"_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1u_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_"}
!104003 = distinct !{!104003, !104002, !"_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1u_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_: argument 0"}
!104004 = distinct !{!104004, i1 true, !"_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB3d_15EnumValueParserB2i_ENtB3d_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_"}
!104005 = distinct !{!104005, !104004, !"_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB3d_15EnumValueParserB2i_ENtB3d_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_: argument 0"}
!104006 = distinct !{!104006, i1 true, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2w_15EnumValueParserB1B_ENtB2w_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4y_10advance_byBV_NtB5S_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB5f_EEB1F_"}
!104007 = distinct !{!104007, !104006, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2w_15EnumValueParserB1B_ENtB2w_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4y_10advance_byBV_NtB5S_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB5f_EEB1F_: argument 0"}
!104008 = distinct !{!104008, i1 true, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtB1C_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueB2k_INtNtBa_6option6OptionB2k_ENCNvXso_NtB3R_12value_parserINtB5B_15EnumValueParserBJ_ENtB5B_16TypedValueParser15possible_values0NCNvXs_NvB1w_10advance_byINtB2V_9FilterMapB3_B5t_ENtB7a_13SpecAdvanceBy15spec_advance_by0E0B52_EBN_"}
!104009 = distinct !{!104009, !104008, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtB1C_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueB2k_INtNtBa_6option6OptionB2k_ENCNvXso_NtB3R_12value_parserINtB5B_15EnumValueParserBJ_ENtB5B_16TypedValueParser15possible_values0NCNvXs_NvB1w_10advance_byINtB2V_9FilterMapB3_B5t_ENtB7a_13SpecAdvanceBy15spec_advance_by0E0B52_EBN_: argument 0"}
!104010 = distinct !{!104010, i1 true, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_"}
!104011 = distinct !{!104011, !104010, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_: argument 0"}
!104012 = distinct !{!104012, !62, !61}
!104013 = distinct !{!104013, i1 true, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2v_15EnumValueParserB1A_ENtB2v_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_"}
!104014 = distinct !{!104014, !104013, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2v_15EnumValueParserB1A_ENtB2v_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_: argument 0"}
!104015 = distinct !{!104015, !104013, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2v_15EnumValueParserB1A_ENtB2v_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_: argument 1"}
!104016 = distinct !{!104016, i1 true, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2v_12value_parserINtB3L_15EnumValueParserBQ_ENtB3L_16TypedValueParser15possible_values0EBU_"}
!104017 = distinct !{!104017, !104016, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2v_12value_parserINtB3L_15EnumValueParserBQ_ENtB3L_16TypedValueParser15possible_values0EBU_: argument 0"}
!104018 = distinct !{!104018, !104016, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2v_12value_parserINtB3L_15EnumValueParserBQ_ENtB3L_16TypedValueParser15possible_values0EBU_: argument 1"}
!104019 = distinct !{!104019, i1 true, !"_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtBW_15EnumValueParserNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENtBW_16TypedValueParser15possible_values0INtB7_5FnMutTRB2b_EE8call_mutB2f_"}
!104020 = distinct !{!104020, !104019, !"_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtBW_15EnumValueParserNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENtBW_16TypedValueParser15possible_values0INtB7_5FnMutTRB2b_EE8call_mutB2f_: argument 0"}
!104021 = distinct !{!104021, i1 true, !"_RNCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENtB7_16TypedValueParser15possible_values0B1q_"}
!104022 = distinct !{!104022, !104021, !"_RNCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENtB7_16TypedValueParser15possible_values0B1q_: argument 0"}
!104023 = distinct !{!104023, i1 true, !"_RNvXs5_NtCskXtk6F4WjxZ_4just11dump_formatNtB5_10DumpFormatNtNtCs2FJGJNE9lTN_12clap_builder6derive9ValueEnum17to_possible_value"}
!104024 = distinct !{!104024, !104023, !"_RNvXs5_NtCskXtk6F4WjxZ_4just11dump_formatNtB5_10DumpFormatNtNtCs2FJGJNE9lTN_12clap_builder6derive9ValueEnum17to_possible_value: argument 0"}
!104025 = !{!104011, !104009, !104007, !104005, !104003}
!104026 = !{!104014}
!104027 = !{!104015}
!104028 = !{!104017}
!104029 = !{!104018}
!104030 = !{!104018, !104015}
!104031 = !{!104017, !104018, !104014, !104015}
!104032 = !{!104024, !104022, !104020, !104017, !104014}
!104033 = distinct !{!104033, i1 true, !"_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB3h_15EnumValueParserB2i_ENtB3h_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_"}
!104034 = distinct !{!104034, !104033, !"_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB3h_15EnumValueParserB2i_ENtB3h_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_: argument 0"}
!104035 = distinct !{!104035, i1 true, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2A_15EnumValueParserB1B_ENtB2A_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4C_10advance_byBV_NtB5W_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB5j_EEB1F_"}
!104036 = distinct !{!104036, !104035, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2A_15EnumValueParserB1B_ENtB2A_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4C_10advance_byBV_NtB5W_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB5j_EEB1F_: argument 0"}
!104037 = distinct !{!104037, i1 true, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtB1G_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueB2o_INtNtBa_6option6OptionB2o_ENCNvXso_NtB3V_12value_parserINtB5F_15EnumValueParserBJ_ENtB5F_16TypedValueParser15possible_values0NCNvXs_NvB1A_10advance_byINtB2Z_9FilterMapB3_B5x_ENtB7e_13SpecAdvanceBy15spec_advance_by0E0B56_EBN_"}
!104038 = distinct !{!104038, !104037, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtB1G_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueB2o_INtNtBa_6option6OptionB2o_ENCNvXso_NtB3V_12value_parserINtB5F_15EnumValueParserBJ_ENtB5F_16TypedValueParser15possible_values0NCNvXs_NvB1A_10advance_byINtB2Z_9FilterMapB3_B5x_ENtB7e_13SpecAdvanceBy15spec_advance_by0E0B56_EBN_: argument 0"}
!104039 = distinct !{!104039, i1 true, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_"}
!104040 = distinct !{!104040, !104039, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_: argument 0"}
!104041 = distinct !{!104041, !61, !62}
!104042 = distinct !{!104042, !62, !61}
!104043 = !{!104040, !104038, !104036, !104034}
!104044 = distinct !{!104044, !61, !62}
!104045 = distinct !{!104045, i1 true, !"_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_"}
!104046 = distinct !{!104046, !104045, !"_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_: argument 0"}
!104047 = distinct !{!104047, i1 true, !"_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB3h_15EnumValueParserB2i_ENtB3h_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_"}
!104048 = distinct !{!104048, !104047, !"_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB3h_15EnumValueParserB2i_ENtB3h_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_: argument 0"}
!104049 = distinct !{!104049, i1 true, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2A_15EnumValueParserB1B_ENtB2A_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4C_10advance_byBV_NtB5W_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB5j_EEB1F_"}
!104050 = distinct !{!104050, !104049, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2A_15EnumValueParserB1B_ENtB2A_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4C_10advance_byBV_NtB5W_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB5j_EEB1F_: argument 0"}
!104051 = distinct !{!104051, i1 true, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtB1G_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueB2o_INtNtBa_6option6OptionB2o_ENCNvXso_NtB3V_12value_parserINtB5F_15EnumValueParserBJ_ENtB5F_16TypedValueParser15possible_values0NCNvXs_NvB1A_10advance_byINtB2Z_9FilterMapB3_B5x_ENtB7e_13SpecAdvanceBy15spec_advance_by0E0B56_EBN_"}
!104052 = distinct !{!104052, !104051, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtB1G_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueB2o_INtNtBa_6option6OptionB2o_ENCNvXso_NtB3V_12value_parserINtB5F_15EnumValueParserBJ_ENtB5F_16TypedValueParser15possible_values0NCNvXs_NvB1A_10advance_byINtB2Z_9FilterMapB3_B5x_ENtB7e_13SpecAdvanceBy15spec_advance_by0E0B56_EBN_: argument 0"}
!104053 = distinct !{!104053, i1 true, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_"}
!104054 = distinct !{!104054, !104053, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_: argument 0"}
!104055 = distinct !{!104055, !62, !61}
!104056 = distinct !{!104056, i1 true, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2z_15EnumValueParserB1A_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_"}
!104057 = distinct !{!104057, !104056, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2z_15EnumValueParserB1A_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_: argument 0"}
!104058 = distinct !{!104058, !104056, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2z_15EnumValueParserB1A_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_: argument 1"}
!104059 = distinct !{!104059, i1 true, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2z_12value_parserINtB3P_15EnumValueParserBQ_ENtB3P_16TypedValueParser15possible_values0EBU_"}
!104060 = distinct !{!104060, !104059, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2z_12value_parserINtB3P_15EnumValueParserBQ_ENtB3P_16TypedValueParser15possible_values0EBU_: argument 0"}
!104061 = distinct !{!104061, !104059, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2z_12value_parserINtB3P_15EnumValueParserBQ_ENtB3P_16TypedValueParser15possible_values0EBU_: argument 1"}
!104062 = distinct !{!104062, i1 true, !"_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtBW_15EnumValueParserNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENtBW_16TypedValueParser15possible_values0INtB7_5FnMutTRB2b_EE8call_mutB2f_"}
!104063 = distinct !{!104063, !104062, !"_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtBW_15EnumValueParserNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENtBW_16TypedValueParser15possible_values0INtB7_5FnMutTRB2b_EE8call_mutB2f_: argument 0"}
!104064 = distinct !{!104064, i1 true, !"_RNCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENtB7_16TypedValueParser15possible_values0B1q_"}
!104065 = distinct !{!104065, !104064, !"_RNCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENtB7_16TypedValueParser15possible_values0B1q_: argument 0"}
!104066 = distinct !{!104066, i1 true, !"_RNvXs3_NtCskXtk6F4WjxZ_4just13command_colorNtB5_12CommandColorNtNtCs2FJGJNE9lTN_12clap_builder6derive9ValueEnum17to_possible_value"}
!104067 = distinct !{!104067, !104066, !"_RNvXs3_NtCskXtk6F4WjxZ_4just13command_colorNtB5_12CommandColorNtNtCs2FJGJNE9lTN_12clap_builder6derive9ValueEnum17to_possible_value: argument 0"}
!104068 = !{!104054, !104052, !104050, !104048, !104046}
!104069 = !{!104057}
!104070 = !{!104058}
!104071 = !{!104060}
!104072 = !{!104061}
!104073 = !{!104061, !104058}
!104074 = !{!104060, !104061, !104057, !104058}
!104075 = !{!104067, !104065, !104063, !104060, !104057}
!104076 = !{!104060, !104057}
!104077 = distinct !{!104077, i1 true, !"_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB3l_15EnumValueParserB2i_ENtB3l_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_"}
!104078 = distinct !{!104078, !104077, !"_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB3l_15EnumValueParserB2i_ENtB3l_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_: argument 0"}
!104079 = distinct !{!104079, i1 true, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2E_15EnumValueParserB1B_ENtB2E_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4G_10advance_byBV_NtB60_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB5n_EEB1F_"}
!104080 = distinct !{!104080, !104079, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2E_15EnumValueParserB1B_ENtB2E_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4G_10advance_byBV_NtB60_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB5n_EEB1F_: argument 0"}
!104081 = distinct !{!104081, i1 true, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtB1K_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueB2s_INtNtBa_6option6OptionB2s_ENCNvXso_NtB3Z_12value_parserINtB5J_15EnumValueParserBJ_ENtB5J_16TypedValueParser15possible_values0NCNvXs_NvB1E_10advance_byINtB33_9FilterMapB3_B5B_ENtB7i_13SpecAdvanceBy15spec_advance_by0E0B5a_EBN_"}
!104082 = distinct !{!104082, !104081, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtB1K_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueB2s_INtNtBa_6option6OptionB2s_ENCNvXso_NtB3Z_12value_parserINtB5J_15EnumValueParserBJ_ENtB5J_16TypedValueParser15possible_values0NCNvXs_NvB1E_10advance_byINtB33_9FilterMapB3_B5B_ENtB7i_13SpecAdvanceBy15spec_advance_by0E0B5a_EBN_: argument 0"}
!104083 = distinct !{!104083, i1 true, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_"}
!104084 = distinct !{!104084, !104083, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_: argument 0"}
!104085 = distinct !{!104085, !61, !62}
!104086 = distinct !{!104086, !62, !61}
!104087 = !{!104084, !104082, !104080, !104078}
!104088 = distinct !{!104088, !61, !62}
!104089 = distinct !{!104089, i1 true, !"_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2x_15EnumValueParserB1u_ENtB2x_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_"}
!104090 = distinct !{!104090, !104089, !"_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2x_15EnumValueParserB1u_ENtB2x_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_: argument 0"}
!104091 = distinct !{!104091, i1 true, !"_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB3l_15EnumValueParserB2i_ENtB3l_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_"}
!104092 = distinct !{!104092, !104091, !"_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB3l_15EnumValueParserB2i_ENtB3l_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_: argument 0"}
!104093 = distinct !{!104093, i1 true, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2E_15EnumValueParserB1B_ENtB2E_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4G_10advance_byBV_NtB60_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB5n_EEB1F_"}
!104094 = distinct !{!104094, !104093, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2E_15EnumValueParserB1B_ENtB2E_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4G_10advance_byBV_NtB60_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB5n_EEB1F_: argument 0"}
!104095 = distinct !{!104095, i1 true, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtB1K_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueB2s_INtNtBa_6option6OptionB2s_ENCNvXso_NtB3Z_12value_parserINtB5J_15EnumValueParserBJ_ENtB5J_16TypedValueParser15possible_values0NCNvXs_NvB1E_10advance_byINtB33_9FilterMapB3_B5B_ENtB7i_13SpecAdvanceBy15spec_advance_by0E0B5a_EBN_"}
!104096 = distinct !{!104096, !104095, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtB1K_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueB2s_INtNtBa_6option6OptionB2s_ENCNvXso_NtB3Z_12value_parserINtB5J_15EnumValueParserBJ_ENtB5J_16TypedValueParser15possible_values0NCNvXs_NvB1E_10advance_byINtB33_9FilterMapB3_B5B_ENtB7i_13SpecAdvanceBy15spec_advance_by0E0B5a_EBN_: argument 0"}
!104097 = distinct !{!104097, i1 true, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_"}
!104098 = distinct !{!104098, !104097, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_: argument 0"}
!104099 = distinct !{!104099, !62, !61}
!104100 = distinct !{!104100, i1 true, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2D_15EnumValueParserB1A_ENtB2D_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_"}
!104101 = distinct !{!104101, !104100, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2D_15EnumValueParserB1A_ENtB2D_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_: argument 0"}
!104102 = distinct !{!104102, !104100, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2D_15EnumValueParserB1A_ENtB2D_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_: argument 1"}
!104103 = distinct !{!104103, i1 true, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2D_12value_parserINtB3T_15EnumValueParserBQ_ENtB3T_16TypedValueParser15possible_values0EBU_"}
!104104 = distinct !{!104104, !104103, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2D_12value_parserINtB3T_15EnumValueParserBQ_ENtB3T_16TypedValueParser15possible_values0EBU_: argument 0"}
!104105 = distinct !{!104105, !104103, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2D_12value_parserINtB3T_15EnumValueParserBQ_ENtB3T_16TypedValueParser15possible_values0EBU_: argument 1"}
!104106 = distinct !{!104106, i1 true, !"_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtBW_15EnumValueParserNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENtBW_16TypedValueParser15possible_values0INtB7_5FnMutTRB2b_EE8call_mutB2f_"}
!104107 = distinct !{!104107, !104106, !"_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtBW_15EnumValueParserNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENtBW_16TypedValueParser15possible_values0INtB7_5FnMutTRB2b_EE8call_mutB2f_: argument 0"}
!104108 = distinct !{!104108, i1 true, !"_RNCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENtB7_16TypedValueParser15possible_values0B1q_"}
!104109 = distinct !{!104109, !104108, !"_RNCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENtB7_16TypedValueParser15possible_values0B1q_: argument 0"}
end_hunk_2
