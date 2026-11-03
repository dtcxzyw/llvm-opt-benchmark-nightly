Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/similar-4f76453a31460882.similar.9a539335e76d219a-cgu.0?download=true
inline.NumInlined: 3444
inline.NumDeleted: 939
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RINvMs3_NtCsdftwklc2oBO_7similar4textNtB6_14TextDiffConfig4diffeEB8_:bb.a

bb.ci:                                            ; preds = %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6finishB9_.exit.i.i.i.i.i
  %.val21.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i30.i.i.i.i.i, align 8, !noalias !1031, !nonnull !5, !noundef !5
  %i.wa = shl nuw i64 %.val20.i.i.i.i.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21.i.i.i.i.i, i64 noundef %i.wa, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !924
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit38.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit38.i.i.i.i.i: ; preds = %bb.ci, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6finishB9_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1031
  %.val.i.i.i.i.i = load i64, ptr %i.ap, align 8, !noalias !1031 ; 2 uses
  %i.wb = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.wb, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB14_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB21_B21_INtNtB4_7compact7CompactB21_B21_IB2B_NtNtB4_7capture7CaptureEEEEEB6_.exit.i.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit38.i.i.i.i.i
  %.val19.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i11.i.i.i.i, align 8, !noalias !1031, !nonnull !5, !noundef !5
  %i.wc = shl nuw i64 %.val.i.i.i.i.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19.i.i.i.i.i, i64 noundef %i.wc, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !924
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB14_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB21_B21_INtNtB4_7compact7CompactB21_B21_IB2B_NtNtB4_7capture7CaptureEEEEEB6_.exit.i.i.i.i

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB14_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB21_B21_INtNtB4_7compact7CompactB21_B21_IB2B_NtNtB4_7capture7CaptureEEEEEB6_.exit.i.i.i.i: ; preds = %bb.cj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit38.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1031
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers13diff_deadlineINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBZ_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1W_B1W_INtNtB4_7compact7CompactB1W_B1W_IB2v_NtNtB4_7capture7CaptureEEEEEB6_.exit.i.i.i

bb.ck:                                            ; preds = %bb.by, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers13diff_deadlineINtNtB6_4text12TextDiffSideeEBZ_INtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.sink.split.i.i.i.i.i.i, %bb.bv, %.noexc40.i.i.i, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_.exit.i.i.i.i.i, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB15_EB6_.exit.thread.i.i.i.i.i, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i, %.invoke.i.i.i, %bb.o
  %i.wd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.ck, %bb.cb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit34.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.wd, %bb.ck ], [ %lpad.loopexit.split-lp417, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn.i.i.i.i.i, %bb.cb ], [ %.pn.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit34.i.i.i.i.i ] ; 2 uses
  %.val18.i.i.i = load i64, ptr %i.au, align 8, !noalias !925 ; 2 uses
  %i.we = icmp eq i64 %.val18.i.i.i, 0
  br i1 %i.we, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEEEEB1f_.exit45.i.i.i, label %bb.cl

bb.cl:                                            ; preds = %.body.i.i.i
  %.val19.i.i.i = load ptr, ptr %i.cf, align 8, !noalias !925, !nonnull !5, !noundef !5
  %i.wf = shl nuw i64 %.val18.i.i.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19.i.i.i, i64 noundef %i.wf, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !924
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEEEEB1f_.exit45.i.i.i

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers13diff_deadlineINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBZ_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1W_B1W_INtNtB4_7compact7CompactB1W_B1W_IB2v_NtNtB4_7capture7CaptureEEEEEB6_.exit.i.i.i: ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB14_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB21_B21_INtNtB4_7compact7CompactB21_B21_IB2B_NtNtB4_7capture7CaptureEEEEEB6_.exit.i.i.i.i, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers13diff_deadlineINtNtB6_4text12TextDiffSideeEBZ_INtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.sink.split.i.i.i.i.i.i, %.noexc42.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !925
  %.val16.i.i.i = load i64, ptr %i.au, align 8, !noalias !925 ; 2 uses
  %i.wg = icmp eq i64 %.val16.i.i.i, 0
  br i1 %i.wg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEEEEB1f_.exit46.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers13diff_deadlineINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBZ_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1W_B1W_INtNtB4_7compact7CompactB1W_B1W_IB2v_NtNtB4_7capture7CaptureEEEEEB6_.exit.i.i.i
  %.val17.i.i.i = load ptr, ptr %i.cf, align 8, !noalias !925, !nonnull !5, !noundef !5
  %i.wh = shl nuw i64 %.val16.i.i.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i.i.i, i64 noundef %i.wh, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !924
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEEEEB1f_.exit46.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEEEEB1f_.exit46.i.i.i: ; preds = %bb.cm, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers13diff_deadlineINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBZ_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1W_B1W_INtNtB4_7compact7CompactB1W_B1W_IB2v_NtNtB4_7capture7CaptureEEEEEB6_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !925
  %.val.i.i.i = load i64, ptr %i.av, align 8, !noalias !925 ; 2 uses
  %i.wi = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.wi, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEEEEB1f_.exit47.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEEEEB1f_.exit46.i.i.i
  %.val15.i.i.i = load ptr, ptr %i.cb, align 8, !noalias !925, !nonnull !5, !noundef !5
  %i.wj = shl nuw i64 %.val.i.i.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val15.i.i.i, i64 noundef %i.wj, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !924
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEEEEB1f_.exit47.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEEEEB1f_.exit47.i.i.i: ; preds = %bb.cn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEEEEB1f_.exit46.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !925
  br label %_RINvNtCsdftwklc2oBO_7similar10algorithms13diff_deadlineINtNtB4_4text12TextDiffSideeEBR_INtNtB2_7compact7CompactBR_BR_INtNtB2_7replace7ReplaceNtNtB2_7capture7CaptureEEEB4_.exit.i

bb.co:                                            ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !1039)
  call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  %i.wk = invoke fastcc noundef zeroext i1 @_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB6_4text12TextDiffSideeEB1j_INtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i64 noundef 0, i64 noundef range(i64 0, 576460752303423488) %.val24, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3, i64 noundef 0, i64 noundef range(i64 0, 576460752303423488) %.val14.pre, i64 %.sroa.01.0, i32 noundef range(i32 -1, 1000000000) %.sroa.4.0)
          to label %.noexc20.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !924

.noexc20.i:                                       ; preds = %bb.co
  br i1 %i.wk, label %_RINvNtCsdftwklc2oBO_7similar10algorithms13diff_deadlineINtNtB4_4text12TextDiffSideeEBR_INtNtB2_7compact7CompactBR_BR_INtNtB2_7replace7ReplaceNtNtB2_7capture7CaptureEEEB4_.exit.i, label %bb.cp

bb.cp:                                            ; preds = %.noexc20.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  %.not.i.i.i.i = icmp eq i64 %.val14.pre, 0
  br i1 %.not.i.i.i.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %.not91.i.i.i.i = icmp eq i64 %.val24, 0
  br i1 %.not91.i.i.i.i, label %bb.fn, label %bb.ct

bb.cr:                                            ; preds = %bb.cp
  call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  %i.wl = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !1046, !noalias !920, !noundef !5 ; 3 uses
  %i.wm = load i64, ptr %i.bs, align 8, !range !6, !alias.scope !1046, !noalias !920, !noundef !5
  %i.wn = icmp eq i64 %i.wl, %i.wm
  br i1 %i.wn, label %bb.cs, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit.i.i.i.i

bb.cs:                                            ; preds = %bb.cr
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs) #34
          to label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !924

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit.i.i.i.i: ; preds = %bb.cs, %bb.cr
  %i.wo = load ptr, ptr %.sroa.411.0..sroa_idx.i, align 8, !alias.scope !1046, !noalias !920, !nonnull !5, !noundef !5
  %i.wp = getelementptr inbounds nuw [40 x i8], ptr %i.wo, i64 %i.wl ; 4 uses
  store i64 1, ptr %i.wp, align 8, !noalias !1047
  %.sroa.4187.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.wp, i64 8
  store i64 0, ptr %.sroa.4187.0..sroa_idx.i.i.i.i, align 8, !noalias !1047
  %.sroa.5188.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.wp, i64 16
  store i64 %.val24, ptr %.sroa.5188.0..sroa_idx.i.i.i.i, align 8, !noalias !1047
  %.sroa.6189.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.wp, i64 24
  store i64 0, ptr %.sroa.6189.0..sroa_idx.i.i.i.i, align 8, !noalias !1047
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit163.i.i.i.invoke.i

bb.ct:                                            ; preds = %bb.cq
  %i.wq = invoke fastcc noundef i64 @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtB6_4text12TextDiffSideeEB13_EB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i64 noundef 0, i64 noundef range(i64 0, 576460752303423488) %.val24, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3, i64 noundef 0, i64 noundef range(i64 0, 576460752303423488) %.val14.pre)
          to label %.noexc23.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !924 ; 24 uses

.noexc23.i:                                       ; preds = %bb.ct
  %i.wr = invoke fastcc noundef i64 @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtB6_4text12TextDiffSideeEB13_EB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i64 noundef %i.wq, i64 noundef range(i64 0, 576460752303423488) %.val24, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3, i64 noundef %i.wq, i64 noundef range(i64 0, 576460752303423488) %.val14.pre)
          to label %.noexc24.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !924 ; 5 uses

.noexc24.i:                                       ; preds = %.noexc23.i
  %i.ws = icmp eq i64 %i.wq, %.val24
  %i.wt = icmp eq i64 %.val24, %.val14.pre
  %or.cond99.i.i.i.i = and i1 %i.wt, %i.ws
  br i1 %or.cond99.i.i.i.i, label %bb.fl, label %bb.cu

bb.cu:                                            ; preds = %.noexc24.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !1048
  %i.wu = sub i64 %.val24, %i.wr                  ; 2 uses
  %i.wv = sub i64 %.val14.pre, %i.wr              ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  %.sroa.013.0.i.i.i.i.i = call i64 @llvm.usub.sat.i64(i64 %i.wu, i64 %i.wq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !1052
  store ptr null, ptr %i.am, align 8, !noalias !1052
  %i.ww = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  store i64 0, ptr %i.ww, align 8, !noalias !1052
  %spec.select.i.i.i.i.i = call i64 @llvm.usub.sat.i64(i64 %i.wv, i64 %i.wq) ; 2 uses
  %.not115.not.i.i.i.i.i = icmp ugt i64 %i.wv, %i.wq
  br i1 %.not115.not.i.i.i.i.i, label %.lr.ph117.i.i.i.i.i, label %select.unfold._crit_edge.i.i.i.i.i

.lr.ph117.i.i.i.i.i:                              ; preds = %bb.cu
  %.not.i.i.i.i4.i.i = icmp eq i32 %.sroa.4.0, -1 ; 2 uses
  %.not34113.not.i.i.i.i.i = icmp ugt i64 %i.wu, %i.wq
  %i.wx = load i64, ptr %3, align 8, !range !7, !alias.scope !1053
  %i.wy = trunc nuw i64 %i.wx to i1               ; 2 uses
  %i.wz = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !1053
  %i.xa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.xb = load ptr, ptr %i.xa, align 8, !alias.scope !1053, !nonnull !5 ; 2 uses
  %i.xc = load i64, ptr %2, align 8, !range !7, !alias.scope !1054
  %i.xd = trunc nuw i64 %i.xc to i1
  %i.xe = load i64, ptr %i.bk, align 8, !alias.scope !1054
  %i.xf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.xg = load ptr, ptr %i.xf, align 8, !alias.scope !1054, !nonnull !5 ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  br i1 %.not34113.not.i.i.i.i.i, label %.lr.ph117.split.i.i.i.i.i, label %.lr.ph117.split.us.i.i.i.i.i

.lr.ph117.split.us.i.i.i.i.i:                     ; preds = %.lr.ph117.i.i.i.i.i
  br i1 %.not.i.i.i.i4.i.i, label %select.unfold._crit_edge.i.i.i.i.i, label %.lr.ph117.split.us.split.i.i.i.i.i

.lr.ph117.split.us.split.i.i.i.i.i:               ; preds = %.lr.ph117.split.us.i.i.i.i.i, %.critedge.preheader.us.i.i.i.i.i
  %.sroa.018.1116.us.i.i.i.i.i = phi i64 [ %i.xi, %.critedge.preheader.us.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %.lr.ph117.split.us.i.i.i.i.i ]
  %i.xi = add i64 %.sroa.018.1116.us.i.i.i.i.i, -1 ; 2 uses
  %i.xj = invoke { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now()
          to label %.noexc.us.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1055 ; 2 uses

.noexc.us.i.i.i.i.i:                              ; preds = %.lr.ph117.split.us.split.i.i.i.i.i
  %i.xk = extractvalue { i64, i32 } %i.xj, 0      ; 2 uses
  %i.xl = icmp eq i64 %i.xk, %.sroa.01.0
  br i1 %i.xl, label %.split.us.i.i.i.i.i, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.us.i.i.i.i.i

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.us.i.i.i.i.i: ; preds = %.noexc.us.i.i.i.i.i
  %i.xm = icmp sgt i64 %i.xk, %.sroa.01.0
  br i1 %i.xm, label %.split119.us.thread.i.i.i.i.i, label %.critedge.preheader.us.i.i.i.i.i

.split.us.i.i.i.i.i:                              ; preds = %.noexc.us.i.i.i.i.i
  %i.xn = extractvalue { i64, i32 } %i.xj, 1      ; 2 uses
  %i.xo = icmp ult i32 %i.xn, 1000000000
  call void @llvm.assume(i1 %i.xo)
  %i.xp = icmp samesign ugt i32 %i.xn, %.sroa.4.0
  br i1 %i.xp, label %.split119.us.thread.i.i.i.i.i, label %.critedge.preheader.us.i.i.i.i.i

.critedge.preheader.us.i.i.i.i.i:                 ; preds = %.split.us.i.i.i.i.i, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.us.i.i.i.i.i
  %.not.us.i.i.i.i.i = icmp eq i64 %i.xi, 0
  br i1 %.not.us.i.i.i.i.i, label %select.unfold._crit_edge.i.i.i.i.i, label %.lr.ph117.split.us.split.i.i.i.i.i

.critedge.select.unfold.loopexit_crit_edge.i.i.i.i.i: ; preds = %.critedge.i.i.i11.i.i
  %.not.i.i.i.i.i = icmp eq i64 %i.xr, 0
  br i1 %.not.i.i.i.i.i, label %select.unfold._crit_edge.i.i.i.i.i, label %.lr.ph117.split.i.i.i.i.i

select.unfold._crit_edge.i.i.i.i.i:               ; preds = %.critedge.preheader.us.i.i.i.i.i, %.critedge.select.unfold.loopexit_crit_edge.i.i.i.i.i, %.lr.ph117.split.us.i.i.i.i.i, %bb.cu
  %i.xq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xq, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false), !noalias !1056
  store i64 1, ptr %i.an, align 8, !alias.scope !1049, !noalias !1048
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms3lcs10make_tableINtNtB6_4text12TextDiffSideeEBU_EB6_.exit.i.i.i.i

.lr.ph117.split.i.i.i.i.i:                        ; preds = %.lr.ph117.i.i.i.i.i, %.critedge.select.unfold.loopexit_crit_edge.i.i.i.i.i
  %.sroa.018.1116.i.i.i.i.i = phi i64 [ %i.xr, %.critedge.select.unfold.loopexit_crit_edge.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %.lr.ph117.i.i.i.i.i ] ; 5 uses
  %i.xr = add i64 %.sroa.018.1116.i.i.i.i.i, -1   ; 6 uses
  br i1 %.not.i.i.i.i4.i.i, label %.critedge.preheader.i.i.i.i.i, label %bb.cv

.critedge.preheader.i.i.i.i.i:                    ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i.i.i7.i.i, %.split.i.i.i14.i.i, %.lr.ph117.split.i.i.i.i.i
  %4 = add i64 %i.xr, %i.wq                       ; 3 uses
  %5 = icmp ult i64 %4, %i.wz
  br i1 %5, label %.critedge.preheader.i.i.i.i.i.a, label %.invoke.i.split.i.i.i.i

.critedge.preheader.i.i.i.i.i.a:                  ; preds = %.critedge.preheader.i.i.i.i.i
  %6 = getelementptr inbounds nuw [24 x i8], ptr %i.xb, i64 %4 ; 2 uses
  %i.xs = getelementptr i8, ptr %6, i64 16
  %7 = getelementptr i8, ptr %6, i64 8
  %8 = getelementptr inbounds nuw [16 x i8], ptr %i.xb, i64 %4 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.121.i.i.i.i.i = select i1 %i.wy, ptr %7, ptr %8
  %.120.i.i.i.i.i = select i1 %i.wy, ptr %i.xs, ptr %i.xt
  br label %.critedge.preheader.i.split.i.i.i.i

bb.cv:                                            ; preds = %.lr.ph117.split.i.i.i.i.i
  %i.xu = invoke { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now()
          to label %.noexc.i.i.i6.i.i unwind label %.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1055 ; 2 uses

.noexc.i.i.i6.i.i:                                ; preds = %bb.cv
  %i.xv = extractvalue { i64, i32 } %i.xu, 0      ; 2 uses
  %i.xw = icmp eq i64 %i.xv, %.sroa.01.0
  br i1 %i.xw, label %.split.i.i.i14.i.i, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i.i.i7.i.i

.split.i.i.i14.i.i:                               ; preds = %.noexc.i.i.i6.i.i
  %i.xx = extractvalue { i64, i32 } %i.xu, 1      ; 2 uses
  %i.xy = icmp ult i32 %i.xx, 1000000000
  call void @llvm.assume(i1 %i.xy)
  %i.xz = icmp samesign ugt i32 %i.xx, %.sroa.4.0
  br i1 %i.xz, label %.split119.us.i.i.i.i.i, label %.critedge.preheader.i.i.i.i.i

.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cv, %bb.do, %.lr.ph117.split.us.split.i.i.i.i.i, %.invoke.i.split.i.i.i.i
  %lpad.loopexit.split-lp462 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapTjjEmEECsdftwklc2oBO_7similar(ptr noalias nofree noundef align 8 dereferenceable(24) %i.am) #35
          to label %.body.i unwind label %bb.dp, !noalias !1055

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i.i.i7.i.i: ; preds = %.noexc.i.i.i6.i.i
  %i.ya = icmp sgt i64 %i.xv, %.sroa.01.0
  br i1 %i.ya, label %.split119.us.i.i.i.i.i, label %.critedge.preheader.i.i.i.i.i

.split119.us.thread.i.i.i.i.i:                    ; preds = %.split.us.i.i.i.i.i, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.us.i.i.i.i.i
  store i64 0, ptr %i.an, align 8, !alias.scope !1049, !noalias !1048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !1057
  br label %bb.cx

.split119.us.i.i.i.i.i:                           ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i.i.i7.i.i, %.split.i.i.i14.i.i
  %.sroa.06.0.copyload.i.i.pre.i.i.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !1058, !noalias !1052 ; 3 uses
  store i64 0, ptr %i.an, align 8, !alias.scope !1049, !noalias !1048
  call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  call void @llvm.experimental.noalias.scope.decl(metadata !1060)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !1061
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.06.0.copyload.i.i.pre.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %.split119.us.i.i.i.i.i
  %.sroa.58.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ww, align 8, !alias.scope !1058, !noalias !1052
  %.sroa.47.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.xh, align 8, !alias.scope !1058, !noalias !1052 ; 2 uses
  %.sroa.414.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1061
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %.sroa.06.0.copyload.i.i.pre.i.i.i.i.i, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1061
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i64 %.sroa.47.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1061
  %.sroa.616.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1061
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store ptr %.sroa.06.0.copyload.i.i.pre.i.i.i.i.i, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1061
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  store i64 %.sroa.47.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1061
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %.split119.us.i.i.i.i.i, %.split119.us.thread.i.i.i.i.i
  %.sink31.i.i.i.i.i.i.i = phi i64 [ 1, %bb.cw ], [ 0, %.split119.us.i.i.i.i.i ], [ 0, %.split119.us.thread.i.i.i.i.i ] ; 2 uses
  %.sroa.58.0.copyload.sink.i.i.i.i.i.i.i = phi i64 [ %.sroa.58.0.copyload.i.i.i.i.i.i.i, %bb.cw ], [ 0, %.split119.us.i.i.i.i.i ], [ 0, %.split119.us.thread.i.i.i.i.i ]
  store i64 %.sink31.i.i.i.i.i.i.i, ptr %i.al, align 8, !noalias !1061
  %i.yb = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store i64 %.sink31.i.i.i.i.i.i.i, ptr %i.yb, align 8, !noalias !1061
  %i.yc = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  store i64 %.sroa.58.0.copyload.sink.i.i.i.i.i.i.i, ptr %i.yc, align 8, !noalias !1061
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !1062
  invoke fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterTjjEmE10dying_nextCsdftwklc2oBO_7similar(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.al)
          to label %.noexc25.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !924

.noexc25.i:                                       ; preds = %bb.cx
  %i.yd = load ptr, ptr %i.ak, align 8, !noalias !1062, !noundef !5
  %.not5.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.yd, null
  br i1 %.not5.i.i.i.i.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapTjjEmEECsdftwklc2oBO_7similar.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i5.i.i

.lr.ph.i.i.i.i.i.i.i5.i.i:                        ; preds = %.noexc25.i, %.noexc26.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1062
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !1062
  invoke fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterTjjEmE10dying_nextCsdftwklc2oBO_7similar(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.al)
          to label %.noexc26.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !924

.noexc26.i:                                       ; preds = %.lr.ph.i.i.i.i.i.i.i5.i.i
  %i.ye = load ptr, ptr %i.ak, align 8, !noalias !1062, !noundef !5
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ye, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapTjjEmEECsdftwklc2oBO_7similar.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i5.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapTjjEmEECsdftwklc2oBO_7similar.exit.i.i.i.i.i: ; preds = %.noexc26.i, %.noexc25.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1061
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms3lcs10make_tableINtNtB6_4text12TextDiffSideeEBU_EB6_.exit.i.i.i.i

.critedge.preheader.i.split.i.i.i.i:              ; preds = %.critedge.i.i.i11.i.i, %.critedge.preheader.i.i.i.i.i.a
  %.sroa.026.0114.i.i.i.i.i = phi i64 [ %.sroa.013.0.i.i.i.i.i, %.critedge.preheader.i.i.i.i.i.a ], [ %i.yf, %.critedge.i.i.i11.i.i ] ; 3 uses
  %i.yf = add i64 %.sroa.026.0114.i.i.i.i.i, -1   ; 5 uses
  %.sroa.0.1.i.i.i.i.i8.i.i = load ptr, ptr %.121.i.i.i.i.i, align 8, !noalias !1063, !nonnull !5, !noundef !5
  %.sroa.5.1.i.i.i.i.i9.i.i = load i64, ptr %.120.i.i.i.i.i, align 8, !noalias !1063, !noundef !5 ; 2 uses
  %i.yg = add i64 %i.yf, %i.wq                    ; 3 uses
  %i.yh = icmp ult i64 %i.yg, %i.xe               ; 2 uses
  br i1 %i.xd, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %.critedge.preheader.i.split.i.i.i.i
  br i1 %i.yh, label %bb.db, label %.invoke.i.split.i.i.i.i

bb.cz:                                            ; preds = %.critedge.preheader.i.split.i.i.i.i
  br i1 %i.yh, label %bb.da, label %.invoke.i.split.i.i.i.i

bb.da:                                            ; preds = %bb.cz
  %i.yi = getelementptr inbounds nuw [16 x i8], ptr %i.xg, i64 %i.yg ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 8
  br label %bb.dc

bb.db:                                            ; preds = %bb.cy
  %i.yk = getelementptr inbounds nuw [24 x i8], ptr %i.xg, i64 %i.yg ; 2 uses
  %i.yl = getelementptr i8, ptr %i.yk, i64 8
  %i.ym = getelementptr i8, ptr %i.yk, i64 16
  br label %bb.dc

.invoke.i.split.i.i.i.i:                          ; preds = %.critedge.preheader.i.i.i.i.i, %bb.cz, %bb.cy
  %.split.i.i.i.i = phi ptr [ @12, %bb.cz ], [ @12, %bb.cy ], [ @11, %.critedge.preheader.i.i.i.i.i ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @201, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.split.i.i.i.i) #37
          to label %.cont.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1055

.cont.i.i.i.i.i:                                  ; preds = %.invoke.i.split.i.i.i.i
  unreachable

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.sroa.5.1.i.in.i53.i.i.i.i.i = phi ptr [ %i.ym, %bb.db ], [ %i.yj, %bb.da ]
  %.sroa.0.1.i.in.i54.i.i.i.i.i = phi ptr [ %i.yl, %bb.db ], [ %i.yi, %bb.da ]
  %.sroa.5.1.i.i56.i.i.i.i.i = load i64, ptr %.sroa.5.1.i.in.i53.i.i.i.i.i, align 8, !noalias !1064, !noundef !5
  %i.yn = icmp eq i64 %.sroa.5.1.i.i.i.i.i9.i.i, %.sroa.5.1.i.i56.i.i.i.i.i
  br i1 %i.yn, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i12.i.i, label %._RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread_crit_edge.i.i.i.i.i

._RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread_crit_edge.i.i.i.i.i: ; preds = %bb.dc
  %.val48.pre.i.i.i.i.i = load ptr, ptr %i.am, align 8, !noalias !1052
  %.val49.pre.i.i.i.i.i = load i64, ptr %i.xh, align 8, !noalias !1052
  br label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i.i.i10.i.i

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i12.i.i: ; preds = %bb.dc
  %.sroa.0.1.i.i55.i.i.i.i.i = load ptr, ptr %.sroa.0.1.i.in.i54.i.i.i.i.i, align 8, !noalias !1064, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i13.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i.i.i.i8.i.i, ptr nonnull readonly %.sroa.0.1.i.i55.i.i.i.i.i, i64 %.sroa.5.1.i.i.i.i.i9.i.i), !alias.scope !1065, !noalias !1055
  %i.yo = icmp eq i32 %bcmp.i.i.i.i13.i.i, 0
  %.val48.pre142.i.i.i.i.i = load ptr, ptr %i.am, align 8, !noalias !1052 ; 3 uses
  %.val49.pre144.i.i.i.i.i = load i64, ptr %i.xh, align 8, !noalias !1052 ; 2 uses
  br i1 %i.yo, label %bb.dg, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i.i.i10.i.i

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i.i.i10.i.i: ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i12.i.i, %._RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread_crit_edge.i.i.i.i.i
  %.val49.i.i.i.i.i = phi i64 [ %.val49.pre.i.i.i.i.i, %._RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread_crit_edge.i.i.i.i.i ], [ %.val49.pre144.i.i.i.i.i, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i12.i.i ] ; 2 uses
  %.val48.i.i.i.i.i = phi ptr [ %.val48.pre.i.i.i.i.i, %._RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread_crit_edge.i.i.i.i.i ], [ %.val48.pre142.i.i.i.i.i, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i12.i.i ] ; 3 uses
  %.not.i59.i.i.i.i.i = icmp eq ptr %.val48.i.i.i.i.i, null
  br i1 %.not.i59.i.i.i.i.i, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECsdftwklc2oBO_7similar.exit.thread.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i.i.i10.i.i, %bb.df
  %.sroa.3.0.i.i.i.i.i.i.i = phi i64 [ %i.zg, %bb.df ], [ %.val49.i.i.i.i.i, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i.i.i10.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %i.zf, %bb.df ], [ %.val48.i.i.i.i.i, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i.i.i10.i.i ] ; 5 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 230
  %i.yq = load i16, ptr %i.yp, align 2, !noalias !1066, !noundef !5 ; 2 uses
  %i.yr = zext i16 %i.yq to i64                   ; 3 uses
  %.idx = shl nuw nsw i64 %i.yr, 4
  %i.ys = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 %.idx
  %i.yt = icmp eq i16 %i.yq, 0
  br i1 %i.yt, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i._crit_edge, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i

bb.dd:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i
  %i.yu = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i.i.i.i.i205, i64 16 ; 2 uses
  %i.yv = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i.i.i.i204, 1
  %i.yw = icmp eq ptr %i.yu, %i.ys
  br i1 %i.yw, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i._crit_edge, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i, %bb.dd
  %.sroa.0.03.i.i.i.i.i.i.i.i205 = phi ptr [ %i.yu, %bb.dd ], [ %.sroa.0.0.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %.sroa.8.0.i.i.i.i.i.i.i.i204 = phi i64 [ %i.yv, %bb.dd ], [ 0, %.preheader.i.i.i.i.i.i ] ; 4 uses
  %.val7.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.03.i.i.i.i.i.i.i.i205, align 8, !noalias !1066, !noundef !5 ; 2 uses
  %i.yx = getelementptr i8, ptr %.sroa.0.03.i.i.i.i.i.i.i.i205, i64 8
  %.val8.i.i.i.i.i.i.i.i = load i64, ptr %i.yx, align 8, !noalias !1066
  %i.yy = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.sroa.018.1116.i.i.i.i.i, i64 %.val7.i.i.i.i.i.i.i.i)
  %i.yz = icmp eq i64 %.sroa.018.1116.i.i.i.i.i, %.val7.i.i.i.i.i.i.i.i
  %i.za = call range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.yf, i64 %.val8.i.i.i.i.i.i.i.i)
  %.sroa.0.0.i9.i.i.i.i.i.i.i.i = select i1 %i.yz, i8 %i.za, i8 %i.yy
  switch i8 %.sroa.0.0.i9.i.i.i.i.i.i.i.i, label %bb.de [
    i8 -1, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i._crit_edge
    i8 0, label %_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutTjjEmNtB1i_14LeafOrInternalE11search_treeB1A_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i
    i8 1, label %bb.dd
  ]

bb.de:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i
  unreachable

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i._crit_edge: ; preds = %bb.dd, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i.i.i.i.i = phi i64 [ %i.yr, %.preheader.i.i.i.i.i.i ], [ %i.yr, %bb.dd ], [ %.sroa.8.0.i.i.i.i.i.i.i.i204, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.zb = icmp eq i64 %.sroa.3.0.i.i.i.i.i.i.i, 0
  br i1 %i.zb, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i, label %bb.df

bb.df:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i._crit_edge
  %i.zc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 232
  %i.zd = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i.i, 12
  call void @llvm.assume(i1 %i.zd)
  %i.ze = getelementptr inbounds nuw [8 x i8], ptr %i.zc, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i.i
  %i.zf = load ptr, ptr %i.ze, align 8, !noalias !1066, !nonnull !5, !noundef !5
  %i.zg = add i64 %.sroa.3.0.i.i.i.i.i.i.i, -1
  br label %.preheader.i.i.i.i.i.i

_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutTjjEmNtB1i_14LeafOrInternalE11search_treeB1A_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i
  %i.zh = icmp samesign ult i64 %.sroa.8.0.i.i.i.i.i.i.i.i204, 11
  call void @llvm.assume(i1 %i.zh)
  %i.zi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 184
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %.sroa.8.0.i.i.i.i.i.i.i.i204
  br label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i

bb.dg:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i12.i.i
  %.not.i61.i.i.i.i.i = icmp eq ptr %.val48.pre142.i.i.i.i.i, null
  br i1 %.not.i61.i.i.i.i.i, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECsdftwklc2oBO_7similar.exit74.i.i.i.i.i, label %.preheader.i62.i.i.i.i.i

.preheader.i62.i.i.i.i.i:                         ; preds = %bb.dg, %bb.dj
  %.sroa.3.0.i.i63.i.i.i.i.i = phi i64 [ %i.aab, %bb.dj ], [ %.val49.pre144.i.i.i.i.i, %bb.dg ] ; 2 uses
  %.sroa.0.0.i.i64.i.i.i.i.i = phi ptr [ %i.aaa, %bb.dj ], [ %.val48.pre142.i.i.i.i.i, %bb.dg ] ; 5 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i64.i.i.i.i.i, i64 230
  %i.zl = load i16, ptr %i.zk, align 2, !noalias !1067, !noundef !5 ; 2 uses
  %i.zm = zext i16 %i.zl to i64                   ; 3 uses
  %.idx256 = shl nuw nsw i64 %i.zm, 4
  %i.zn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i64.i.i.i.i.i, i64 %.idx256
  %i.zo = icmp eq i16 %i.zl, 0
  br i1 %i.zo, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i67.i.i.i.i.i._crit_edge, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i67.i.i.i.i.i

bb.dh:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i67.i.i.i.i.i
  %i.zp = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i66.i.i.i.i.i214, i64 16 ; 2 uses
  %i.zq = add nuw nsw i64 %.sroa.8.0.i.i.i65.i.i.i.i.i213, 1
  %i.zr = icmp eq ptr %i.zp, %i.zn
  br i1 %i.zr, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i67.i.i.i.i.i._crit_edge, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i67.i.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i67.i.i.i.i.i: ; preds = %.preheader.i62.i.i.i.i.i, %bb.dh
  %.sroa.0.03.i.i.i66.i.i.i.i.i214 = phi ptr [ %i.zp, %bb.dh ], [ %.sroa.0.0.i.i64.i.i.i.i.i, %.preheader.i62.i.i.i.i.i ] ; 3 uses
  %.sroa.8.0.i.i.i65.i.i.i.i.i213 = phi i64 [ %i.zq, %bb.dh ], [ 0, %.preheader.i62.i.i.i.i.i ] ; 4 uses
  %.val7.i.i.i68.i.i.i.i.i = load i64, ptr %.sroa.0.03.i.i.i66.i.i.i.i.i214, align 8, !noalias !1067, !noundef !5 ; 2 uses
  %i.zs = getelementptr i8, ptr %.sroa.0.03.i.i.i66.i.i.i.i.i214, i64 8
  %.val8.i.i.i69.i.i.i.i.i = load i64, ptr %i.zs, align 8, !noalias !1067
  %i.zt = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.sroa.018.1116.i.i.i.i.i, i64 %.val7.i.i.i68.i.i.i.i.i)
  %i.zu = icmp eq i64 %.sroa.018.1116.i.i.i.i.i, %.val7.i.i.i68.i.i.i.i.i
  %i.zv = call range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.sroa.026.0114.i.i.i.i.i, i64 %.val8.i.i.i69.i.i.i.i.i)
  %.sroa.0.0.i9.i.i.i70.i.i.i.i.i = select i1 %i.zu, i8 %i.zv, i8 %i.zt
  switch i8 %.sroa.0.0.i9.i.i.i70.i.i.i.i.i, label %bb.di [
    i8 -1, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i67.i.i.i.i.i._crit_edge
    i8 0, label %_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutTjjEmNtB1i_14LeafOrInternalE11search_treeB1A_ECsdftwklc2oBO_7similar.exit.i71.i.i.i.i.i
    i8 1, label %bb.dh
  ]

bb.di:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i67.i.i.i.i.i
  unreachable

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i67.i.i.i.i.i._crit_edge: ; preds = %bb.dh, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i67.i.i.i.i.i, %.preheader.i62.i.i.i.i.i
  %.sroa.4.0.i.ph.i.i73.i.i.i.i.i = phi i64 [ %i.zm, %.preheader.i62.i.i.i.i.i ], [ %i.zm, %bb.dh ], [ %.sroa.8.0.i.i.i65.i.i.i.i.i213, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i67.i.i.i.i.i ] ; 2 uses
  %i.zw = icmp eq i64 %.sroa.3.0.i.i63.i.i.i.i.i, 0
  br i1 %i.zw, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECsdftwklc2oBO_7similar.exit74.i.i.i.i.i, label %bb.dj

bb.dj:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i67.i.i.i.i.i._crit_edge
  %i.zx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i64.i.i.i.i.i, i64 232
  %i.zy = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i73.i.i.i.i.i, 12
  call void @llvm.assume(i1 %i.zy)
  %i.zz = getelementptr inbounds nuw [8 x i8], ptr %i.zx, i64 %.sroa.4.0.i.ph.i.i73.i.i.i.i.i
  %i.aaa = load ptr, ptr %i.zz, align 8, !noalias !1067, !nonnull !5, !noundef !5
  %i.aab = add i64 %.sroa.3.0.i.i63.i.i.i.i.i, -1
  br label %.preheader.i62.i.i.i.i.i

_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutTjjEmNtB1i_14LeafOrInternalE11search_treeB1A_ECsdftwklc2oBO_7similar.exit.i71.i.i.i.i.i: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i67.i.i.i.i.i
  %i.aac = icmp samesign ult i64 %.sroa.8.0.i.i.i65.i.i.i.i.i213, 11
  call void @llvm.assume(i1 %i.aac)
  %i.aad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i64.i.i.i.i.i, i64 184
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.aad, i64 %.sroa.8.0.i.i.i65.i.i.i.i.i213
  br label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECsdftwklc2oBO_7similar.exit74.i.i.i.i.i

_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i._crit_edge, %_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutTjjEmNtB1i_14LeafOrInternalE11search_treeB1A_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i
  %.sroa.0.0.i60.i.i.i.i.i = phi ptr [ %i.zj, %_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutTjjEmNtB1i_14LeafOrInternalE11search_treeB1A_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i ], [ null, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i._crit_edge ] ; 2 uses
  %.not35.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i60.i.i.i.i.i, null
  %..i.i.i.i.i = select i1 %.not35.i.i.i.i.i, ptr @13, ptr %.sroa.0.0.i60.i.i.i.i.i ; 2 uses
  br label %.preheader.i76.i.i.i.i.i

.preheader.i76.i.i.i.i.i:                         ; preds = %bb.dm, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i
  %.sroa.3.0.i.i77.i.i.i.i.i = phi i64 [ %i.aaw, %bb.dm ], [ %.val49.i.i.i.i.i, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i78.i.i.i.i.i = phi ptr [ %i.aav, %bb.dm ], [ %.val48.i.i.i.i.i, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i ] ; 5 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i78.i.i.i.i.i, i64 230
  %i.aag = load i16, ptr %i.aaf, align 2, !noalias !1068, !noundef !5 ; 2 uses
  %i.aah = zext i16 %i.aag to i64                 ; 3 uses
  %.idx255 = shl nuw nsw i64 %i.aah, 4
  %i.aai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i78.i.i.i.i.i, i64 %.idx255
  %i.aaj = icmp eq i16 %i.aag, 0
  br i1 %i.aaj, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i81.i.i.i.i.i._crit_edge, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i81.i.i.i.i.i

bb.dk:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i81.i.i.i.i.i
  %i.aak = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i80.i.i.i.i.i209, i64 16 ; 2 uses
  %i.aal = add nuw nsw i64 %.sroa.8.0.i.i.i79.i.i.i.i.i208, 1
  %i.aam = icmp eq ptr %i.aak, %i.aai
  br i1 %i.aam, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i81.i.i.i.i.i._crit_edge, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i81.i.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i81.i.i.i.i.i: ; preds = %.preheader.i76.i.i.i.i.i, %bb.dk
  %.sroa.0.03.i.i.i80.i.i.i.i.i209 = phi ptr [ %i.aak, %bb.dk ], [ %.sroa.0.0.i.i78.i.i.i.i.i, %.preheader.i76.i.i.i.i.i ] ; 3 uses
  %.sroa.8.0.i.i.i79.i.i.i.i.i208 = phi i64 [ %i.aal, %bb.dk ], [ 0, %.preheader.i76.i.i.i.i.i ] ; 4 uses
  %.val7.i.i.i82.i.i.i.i.i = load i64, ptr %.sroa.0.03.i.i.i80.i.i.i.i.i209, align 8, !noalias !1068, !noundef !5 ; 2 uses
  %i.aan = getelementptr i8, ptr %.sroa.0.03.i.i.i80.i.i.i.i.i209, i64 8
  %.val8.i.i.i83.i.i.i.i.i = load i64, ptr %i.aan, align 8, !noalias !1068
  %i.aao = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.xr, i64 %.val7.i.i.i82.i.i.i.i.i)
  %i.aap = icmp eq i64 %i.xr, %.val7.i.i.i82.i.i.i.i.i
  %i.aaq = call range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.sroa.026.0114.i.i.i.i.i, i64 %.val8.i.i.i83.i.i.i.i.i)
  %.sroa.0.0.i9.i.i.i84.i.i.i.i.i = select i1 %i.aap, i8 %i.aaq, i8 %i.aao
  switch i8 %.sroa.0.0.i9.i.i.i84.i.i.i.i.i, label %bb.dl [
    i8 -1, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i81.i.i.i.i.i._crit_edge
    i8 0, label %_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutTjjEmNtB1i_14LeafOrInternalE11search_treeB1A_ECsdftwklc2oBO_7similar.exit.i85.i.i.i.i.i
    i8 1, label %bb.dk
  ]

bb.dl:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i81.i.i.i.i.i
  unreachable

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i81.i.i.i.i.i._crit_edge: ; preds = %bb.dk, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i81.i.i.i.i.i, %.preheader.i76.i.i.i.i.i
  %.sroa.4.0.i.ph.i.i87.i.i.i.i.i = phi i64 [ %i.aah, %.preheader.i76.i.i.i.i.i ], [ %i.aah, %bb.dk ], [ %.sroa.8.0.i.i.i79.i.i.i.i.i208, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i81.i.i.i.i.i ] ; 2 uses
  %i.aar = icmp eq i64 %.sroa.3.0.i.i77.i.i.i.i.i, 0
  br i1 %i.aar, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECsdftwklc2oBO_7similar.exit.thread.i.i.i.i.i, label %bb.dm

bb.dm:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i81.i.i.i.i.i._crit_edge
  %i.aas = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i78.i.i.i.i.i, i64 232
  %i.aat = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i87.i.i.i.i.i, 12
end_hunk_0
