Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.03?download=true
inline.NumInlined: 3334
inline.NumDeleted: 1285
begin_hunk_0_@_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachINtNtCshzWfHUSfYae_4core6option6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi11ReprOptionsEDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB47_9AttrFlags15repr_assume_has16repr_assume_has_0E0B1T_EB49_:bb.a
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.55.0.copyload.i) #34
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !407, !inline_history !377 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 11 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1T_9AttrFlags15repr_assume_has1__31repr_assume_has__Configuration_EE13get_or_createNCNvMs_B1L_B1J_14fn_ingredient_0EB1V_(ptr noundef nonnull align 4 @_RNvNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB9_9AttrFlags15repr_assume_has1__26repr_assume_has__FN_CACHE_, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.x)
          to label %.noexc4.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !407 ; 7 uses

.noexc4.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !410
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags15repr_assume_has1__NtB7_16repr_assume_has_14fn_ingredient_.exit.i.i.i.i, label %bb.g, !prof !20

bb.g:                                             ; preds = %.noexc4.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB3e_9AttrFlags15repr_assume_has1__NtB36_31repr_assume_has__Configuration_14fn_ingredient_s_0E0zEB3g_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.55.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %.sroa.6.0.copyload.i)
          to label %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags15repr_assume_has1__NtB7_16repr_assume_has_14fn_ingredient_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !407

_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags15repr_assume_has1__NtB7_16repr_assume_has_14fn_ingredient_.exit.i.i.i.i: ; preds = %bb.g, %.noexc4.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %i.ae = getelementptr i8, ptr %.sroa.7.0.copyload.i, i64 4
  %.val.i.i.i.i = load i32, ptr %i.ae, align 4, !range !21, !noalias !409, !noundef !18 ; 5 uses
  %i.af = getelementptr i8, ptr %.sroa.7.0.copyload.i, i64 8
  %.val1.i.i.i.i = load i32, ptr %i.af, align 4, !noalias !409, !noundef !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !409
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !411, !noundef !18
  %.not.i8.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i8.i.i.i.i.i, label %.noexc7.i.i.i, label %bb.h, !prof !20

.noexc7.i.i.i:                                    ; preds = %bb.h, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags15repr_assume_has1__NtB7_16repr_assume_has_14fn_ingredient_.exit.i.i.i.i
  %i.ai = invoke noundef zeroext i1 @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !407

.noexc6.i.i.i:                                    ; preds = %.noexc7.i.i.i
  br i1 %i.ai, label %bb.i, label %.noexc9.i.i.i, !prof !22

bb.h:                                             ; preds = %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags15repr_assume_has1__NtB7_16repr_assume_has_14fn_ingredient_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @150) #36
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !407

.noexc9.i.i.i:                                    ; preds = %bb.i, %.noexc6.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.ak = invoke noundef zeroext i1 @_RNvMs3_NtCsd9Lm8bEdjjY_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.aj)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !407

.noexc8.i.i.i:                                    ; preds = %.noexc9.i.i.i
  br i1 %i.ak, label %bb.j, label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !22

bb.i:                                             ; preds = %.noexc6.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !407

bb.j:                                             ; preds = %.noexc8.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !407

_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc8.i.i.i
  %i.al = getelementptr i8, ptr %i.z, i64 592     ; 2 uses
  %.val.i.i.i.i.i = load i32, ptr %i.al, align 8, !noalias !411, !noundef !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412), !noalias !413
  %i.am = add i32 %.val.i.i.i.i, -1
  %i.an = lshr i32 %i.am, 10
  %i.ao = zext nneg i32 %i.an to i64              ; 2 uses
  %i.ap = invoke noundef i64 @_RNvMs8_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCsileJQcQObtj_7hir_def(i64 noundef %i.ao)
          to label %.noexc11.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !407

.noexc11.i.i.i:                                   ; preds = %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 328
  %i.ar = invoke noundef align 8 ptr @_RNvMs2_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCsd9Lm8bEdjjY_5salsa5table4PageEKj3a_E3getCsileJQcQObtj_7hir_def(ptr noundef nonnull align 8 %i.aq, i64 noundef %i.ap)
          to label %.noexc12.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !407 ; 3 uses

.noexc12.i.i.i:                                   ; preds = %.noexc11.i.i.i
  %.not.i1.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i1.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.noexc12.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.at = load atomic i8, ptr %i.as acquire, align 8, !noalias !414
  %.not6.i.i.i.i.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not6.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i, label %_RNvMNtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB2_3VecNtNtCsd9Lm8bEdjjY_5salsa5table4PageE3getCsileJQcQObtj_7hir_def.exit.i.i.i.i.i.i

_RNvMNtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB2_3VecNtNtCsd9Lm8bEdjjY_5salsa5table4PageE3getCsileJQcQObtj_7hir_def.exit.i.i.i.i.i.i: ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.av = load i32, ptr %i.au, align 8, !noalias !414, !noundef !18
  %i.aw = zext i32 %i.av to i64                   ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !412, !noalias !415, !noundef !18 ; 2 uses
  %i.az = icmp ugt i64 %i.ay, %i.aw
  br i1 %i.az, label %_RNvMNtCsd9Lm8bEdjjY_5salsa8functionINtB2_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB13_9AttrFlags15repr_assume_has1__31repr_assume_has__Configuration_E21memo_ingredient_indexB15_.exit.i.i.i.i.i, label %bb.l

select.unfold.i.i.i.i.i.i:                        ; preds = %bb.k, %.noexc12.i.i.i
  invoke void @_RNvNvXs_NtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB6_3VecpEINtNtNtCshzWfHUSfYae_4core3ops5index5IndexjE5index13assert_failed(i64 noundef %i.ao) #35
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !407

.noexc13.i.i.i:                                   ; preds = %select.unfold.i.i.i.i.i.i
  unreachable

bb.l:                                             ; preds = %_RNvMNtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB2_3VecNtNtCsd9Lm8bEdjjY_5salsa5table4PageE3getCsileJQcQObtj_7hir_def.exit.i.i.i.i.i.i
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.aw, i64 noundef %i.ay, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @180) #35
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !407

.noexc14.i.i.i:                                   ; preds = %bb.l
  unreachable

_RNvMNtCsd9Lm8bEdjjY_5salsa8functionINtB2_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB13_9AttrFlags15repr_assume_has1__31repr_assume_has__Configuration_E21memo_ingredient_indexB15_.exit.i.i.i.i.i: ; preds = %_RNvMNtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB2_3VecNtNtCsd9Lm8bEdjjY_5salsa5table4PageE3getCsileJQcQObtj_7hir_def.exit.i.i.i.i.i.i
  %i.ba = load ptr, ptr %i.z, align 8, !alias.scope !412, !noalias !415, !nonnull !18, !noundef !18
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.aw
  %i.bc = load i32, ptr %i.bb, align 4, !noalias !414, !noundef !18 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.m

bb.m:                                             ; preds = %.noexc20.i.i.i, %_RNvMNtCsd9Lm8bEdjjY_5salsa8functionINtB2_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB13_9AttrFlags15repr_assume_has1__31repr_assume_has__Configuration_E21memo_ingredient_indexB15_.exit.i.i.i.i.i
  %i.bf = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function4memoINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1a_9AttrFlags15repr_assume_has1__31repr_assume_has__Configuration_E23get_memo_from_table_forB1c_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %.val.i.i.i.i, i32 noundef %.val1.i.i.i.i, i32 noundef %i.bc)
          to label %.noexc15.i.i.i unwind label %.loopexit.i.i.i, !noalias !407 ; 8 uses

.noexc15.i.i.i:                                   ; preds = %bb.m
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags15repr_assume_has1__31repr_assume_has__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc15.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i16, ptr %i.bg, align 8, !range !416, !noalias !409, !noundef !18
  %.not6.i.i.i.i.i.i = icmp eq i16 %i.bh, -2
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags15repr_assume_has1__31repr_assume_has__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = load i32, ptr %i.al, align 8, !noalias !411, !noundef !18
  store i32 %.val.i.i.i.i, ptr %i.d, align 4, !noalias !411
  store i32 %.val1.i.i.i.i, ptr %i.bd, align 4, !noalias !411
  store i32 %i.bi, ptr %i.be, align 4, !noalias !411
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 4 uses
  %i.bk = load atomic i64, ptr %i.bj acquire, align 8, !noalias !417 ; 3 uses
  %i.bl = icmp ne i64 %i.bk, 0
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = load i64, ptr %i.aj, align 8, !range !23, !noalias !418, !noundef !18
  %i.bn = icmp eq i64 %i.bk, %i.bm
  br i1 %i.bn, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !20

_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.o
  %i.bo = invoke noundef i8 @_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.bj, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.bk) #36
          to label %.noexc16.i.i.i unwind label %.loopexit.i.i.i, !noalias !407 ; 2 uses

.noexc16.i.i.i:                                   ; preds = %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.bp = icmp eq i8 %i.bo, 2
  br i1 %i.bp, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags15repr_assume_has1__31repr_assume_has__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.noexc16.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 53
  %i.br = load atomic i8, ptr %i.bq monotonic, align 1, !noalias !409
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.br, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags15repr_assume_has1__31repr_assume_has__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %bb.q

.thread.i.i.i.i.i:                                ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bf, i64 53
  %i.bt = load atomic i8, ptr %i.bs monotonic, align 1, !noalias !409
  %.not7.i21.i.i.i.i.i = icmp eq i8 %i.bt, 0
  br i1 %.not7.i21.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags15repr_assume_has1__31repr_assume_has__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags15repr_assume_has1__31repr_assume_has__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.bu = icmp eq i8 %i.bo, 1
  br i1 %i.bu, label %bb.r, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags15repr_assume_has1__31repr_assume_has__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !419
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !419
  store ptr %i.c, ptr %i.b, align 8, !noalias !419
  %i.bv = load ptr, ptr %i.ag, align 8, !noalias !419, !noundef !18
  %.not.i11.i.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i11.i.i.i.i.i, label %.noexc19.i.i.i, label %bb.s, !prof !20

.noexc19.i.i.i:                                   ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !419
  %i.bw = load i64, ptr %i.aj, align 8, !range !23, !noalias !419, !noundef !18
  invoke void @_RNvMs1_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.bj, i64 noundef %i.bw)
          to label %.noexc17.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !407

.noexc17.i.i.i:                                   ; preds = %.noexc19.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !419
  invoke void @_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.bj, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags15repr_assume_has1__31repr_assume_has__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !407

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @149) #36
          to label %.noexc19.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !407

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags15repr_assume_has1__31repr_assume_has__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.p, %.noexc16.i.i.i, %bb.n, %.noexc15.i.i.i
  %i.bx = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags15repr_assume_has1__31repr_assume_has__Configuration_E10fetch_coldB1d_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %.sroa.55.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %.val.i.i.i.i, i32 noundef %.val1.i.i.i.i, i32 noundef %i.bc)
          to label %.noexc20.i.i.i unwind label %.loopexit.i.i.i, !noalias !407 ; 2 uses

.noexc20.i.i.i:                                   ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags15repr_assume_has1__31repr_assume_has__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.m, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags15repr_assume_has1__31repr_assume_has__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags15repr_assume_has1__31repr_assume_has__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i: ; preds = %.noexc20.i.i.i, %.thread.i.i.i.i.i, %.noexc17.i.i.i, %bb.q
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.bf, %bb.q ], [ %i.bf, %.noexc17.i.i.i ], [ %i.bf, %.thread.i.i.i.i.i ], [ %i.bx, %.noexc20.i.i.i ] ; 6 uses
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 54
  %i.ca = load i8, ptr %i.bz, align 2, !range !24, !noalias !409, !noundef !18
  %i.cb = load i64, ptr %i.by, align 8, !range !23, !noalias !409, !noundef !18
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 53
  %i.cd = load atomic i8, ptr %i.cc monotonic, align 1, !noalias !409
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags15repr_assume_has1__31repr_assume_has__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i
  %i.ce = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !411
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.u, !prof !20

bb.u:                                             ; preds = %bb.t
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCsd9Lm8bEdjjY_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECsileJQcQObtj_7hir_def(ptr noundef nonnull align 8 @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !407

bb.v:                                             ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags15repr_assume_has1__31repr_assume_has__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i
  %i.cg = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.by)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !407

_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u, %bb.t
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.u ], [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.t ], [ %i.cg, %bb.v ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store i64 -1, ptr %i.ch, align 8, !noalias !420
  call void @llvm.experimental.noalias.scope.decl(metadata !421)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !421, !noalias !422, !noundef !18 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !421, !noalias !422, !nonnull !18, !noundef !18
  %i.cm = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !421, !noalias !422, !noundef !18 ; 2 uses
  %.not.i13.i.i.i.i.i = icmp ugt i64 %i.cj, %i.cn
  br i1 %.not.i13.i.i.i.i.i, label %bb.w, label %bb.x, !prof !25

bb.w:                                             ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.cj, i64 noundef %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #35
          to label %.noexc.i.i.i.i.i unwind label %bb.z, !noalias !409

.noexc.i.i.i.i.i:                                 ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not2.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags15repr_assume_has1__31repr_assume_has__Configuration_E5fetchB1d_.exit.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.co = getelementptr [152 x i8], ptr %i.cl, i64 %i.cj
  %i.cp = getelementptr i8, ptr %i.co, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !423
  store i32 %.val.i.i.i.i, ptr %i.a, align 4, !noalias !423
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.val1.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !423
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !423
  invoke void @_RNvMNtCsd9Lm8bEdjjY_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.cp, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.ca, i64 noundef %i.cb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc14.i.i.i.i.i unwind label %bb.z, !noalias !409

.noexc14.i.i.i.i.i:                               ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !423
  %.pre.i.i.i.i.i = load i64, ptr %i.ch, align 8, !noalias !411
  %i.cq = add i64 %.pre.i.i.i.i.i, 1
  br label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags15repr_assume_has1__31repr_assume_has__Configuration_E5fetchB1d_.exit.i.i.i.i

bb.z:                                             ; preds = %bb.y, %bb.w
  %i.cr = landingpad { ptr, i32 }
          cleanup
  %i.cs = load i64, ptr %i.ch, align 8, !noalias !411, !noundef !18
  %i.ct = add i64 %i.cs, 1
  store i64 %i.ct, ptr %i.ch, align 8, !noalias !411
  br label %.body.i.i.i

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags15repr_assume_has1__31repr_assume_has__Configuration_E5fetchB1d_.exit.i.i.i.i: ; preds = %.noexc14.i.i.i.i.i, %bb.x
  %i.cu = phi i64 [ %i.cq, %.noexc14.i.i.i.i.i ], [ 0, %bb.x ]
  store i64 %i.cu, ptr %i.ch, align 8, !noalias !411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !409
  %i.cv = load i16, ptr %3, align 8, !range !424, !noalias !409, !noundef !18 ; 2 uses
  %.not.i3.i.i.i = icmp eq i16 %i.cv, -1
  br i1 %.not.i3.i.i.i, label %_RNCNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB9_9AttrFlags15repr_assume_has16repr_assume_has_0Bb_.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags15repr_assume_has1__31repr_assume_has__Configuration_E5fetchB1d_.exit.i.i.i.i
  %.sroa.0.0.copyload1.i = load i64, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !noalias !425
  %.sroa.5.0..sroa.0.0.i.i.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.5.i, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.5.0..sroa.0.0.i.i.i.i.i.sroa_idx.i, i64 14, i1 false)
  br label %_RNCNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB9_9AttrFlags15repr_assume_has16repr_assume_has_0Bb_.exit.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags15repr_assume_has1__31repr_assume_has__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.m
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.v, %bb.u, %bb.s, %.noexc17.i.i.i, %.noexc19.i.i.i, %bb.l, %select.unfold.i.i.i.i.i.i, %.noexc11.i.i.i, %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, %bb.j, %bb.i, %.noexc9.i.i.i, %bb.h, %.noexc7.i.i.i, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.z
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cr, %bb.z ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvMNtCsd9Lm8bEdjjY_5salsa6attachNtBG_8Attached6attach7DbGuardECsileJQcQObtj_7hir_def(ptr %.sroa.0.0.i.i.i.i) #32
          to label %bb.ae unwind label %bb.ad, !noalias !407

_RNCNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB9_9AttrFlags15repr_assume_has16repr_assume_has_0Bb_.exit.i.i.i: ; preds = %bb.aa, %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags15repr_assume_has1__31repr_assume_has__Configuration_E5fetchB1d_.exit.i.i.i.i
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload1.i, %bb.aa ], [ undef, %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags15repr_assume_has1__31repr_assume_has__Configuration_E5fetchB1d_.exit.i.i.i.i ]
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %_RNCNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB9_9AttrFlags15repr_assume_has16repr_assume_has_0Bb_.exit.i.i.i
  %i.cw = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !407, !noundef !18 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !407 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !407
  %.not3.i.i.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not3.i.i.i.i.i, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cy) ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %i.da = load ptr, ptr %i.cz, align 8, !invariant.load !18, !noalias !407, !nonnull !18
  %i.db = call noundef nonnull align 8 ptr %i.da(ptr noundef nonnull %i.cw) #34, !noalias !407, !inline_history !402
  call void @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.db), !noalias !407
  br label %bb.ag

bb.ad:                                            ; preds = %.body.i.i.i
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !407
  unreachable

bb.ae:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

bb.af:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCscAsMj0W7j8b_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #35
  unreachable

bb.ag:                                            ; preds = %bb.ac, %bb.ab, %_RNCNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB9_9AttrFlags15repr_assume_has16repr_assume_has_0Bb_.exit.i.i.i
  store i64 %.sroa.0.0.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.cv, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.5.i, i64 14, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs39E2wp1vf7X_6intern6symbol6SymbolEDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB41_9AttrFlags11doc_keyword11doc_keyword0E0B1T_EB43_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !18, !noundef !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462)
  %i.h = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) null), !noalias !462, !inline_history !428 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !462, !nonnull !18, !noundef !18
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !462, !nonnull !18, !noundef !18
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !462 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !462 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !462 ; 3 uses
  %i.j = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 64
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !463
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i) #34, !noalias !464, !inline_history !433 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !465, !noundef !18 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !465, !nonnull !18, !noundef !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !465
  store ptr %i.n, ptr %i.g, align 8, !noalias !465
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !465
  store ptr %i.l, ptr %i.f, align 8, !noalias !465
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !465
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !20

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !465
  store ptr %i.m, ptr %i.o, align 8, !noalias !465
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !465
  store ptr %i.g, ptr %i.e, align 8, !noalias !465
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsileJQcQObtj_7hir_def, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !465
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !465
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsileJQcQObtj_7hir_def, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !465
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @146, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #35, !noalias !464
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !465
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !18, !noalias !466, !nonnull !18
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i) #34
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !464, !inline_history !438 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 10 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1T_9AttrFlags11doc_keyword1__26doc_keyword_Configuration_EE13get_or_createNCNvMs_B1L_B1J_14fn_ingredient_0EB1V_(ptr noundef nonnull align 4 @_RNvNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB9_9AttrFlags11doc_keyword1__21doc_keyword_FN_CACHE_, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.x)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !464 ; 6 uses

.noexc5.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 520
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !467
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_keyword1__NtB7_11doc_keyword14fn_ingredient_.exit.i.i.i.i, label %bb.g, !prof !20

bb.g:                                             ; preds = %.noexc5.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 480
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB3e_9AttrFlags11doc_keyword1__NtB36_26doc_keyword_Configuration_14fn_ingredient_s_0E0zEB3g_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %.sroa.6.0.copyload.i)
          to label %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_keyword1__NtB7_11doc_keyword14fn_ingredient_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !464

_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_keyword1__NtB7_11doc_keyword14fn_ingredient_.exit.i.i.i.i: ; preds = %bb.g, %.noexc5.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %.val.i.i.i.i = load i32, ptr %.sroa.7.0.copyload.i, align 4, !range !21, !noalias !466, !noundef !18 ; 4 uses
  %i.ae = getelementptr i8, ptr %.sroa.7.0.copyload.i, i64 4
  %.val1.i.i.i.i = load i32, ptr %i.ae, align 4, !noalias !466, !noundef !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !466
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !468, !noundef !18
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc8.i.i.i, label %bb.h, !prof !20

.noexc8.i.i.i:                                    ; preds = %bb.h, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_keyword1__NtB7_11doc_keyword14fn_ingredient_.exit.i.i.i.i
  %i.ah = invoke noundef zeroext i1 @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !464

.noexc7.i.i.i:                                    ; preds = %.noexc8.i.i.i
  br i1 %i.ah, label %bb.i, label %.noexc10.i.i.i, !prof !22

bb.h:                                             ; preds = %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_keyword1__NtB7_11doc_keyword14fn_ingredient_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @150) #36
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !464

.noexc10.i.i.i:                                   ; preds = %bb.i, %.noexc7.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.aj = invoke noundef zeroext i1 @_RNvMs3_NtCsd9Lm8bEdjjY_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ai)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !464

.noexc9.i.i.i:                                    ; preds = %.noexc10.i.i.i
  br i1 %i.aj, label %bb.j, label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !22

bb.i:                                             ; preds = %.noexc7.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc10.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !464

bb.j:                                             ; preds = %.noexc9.i.i.i
end_hunk_0
begin_hunk_1_@_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachNtCs33K2ylI4knu_10hir_expand10MacroDefIdDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMs7y_CsileJQcQObtj_7hir_defNtB3q_7MacroId10definition11definition_0E0B1T_EB3q_:bb.a
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !18, !noalias !806, !nonnull !18
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i) #34
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !804, !inline_history !778 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 11 uses
  %i.y = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNvMs7y_CsileJQcQObtj_7hir_defNtB1U_7MacroId10definition1__26definition__Configuration_EE13get_or_createNCNvMs_B1L_B1J_14fn_ingredient_0EB1U_(ptr noundef nonnull align 4 @_RNvNvNvMs7y_CsileJQcQObtj_7hir_defNtBa_7MacroId10definition1__21definition__FN_CACHE_, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.x)
          to label %.noexc4.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !804 ; 7 uses

.noexc4.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load atomic i32, ptr %i.z acquire, align 8, !noalias !807
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMs7y_CsileJQcQObtj_7hir_defNtB3k_7MacroId10definition1__NtB3b_26definition__Configuration_14fn_ingredient_s_0E0zEB3k_.exit.i.i.i.i, label %bb.g, !prof !20

bb.g:                                             ; preds = %.noexc4.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNvMs7y_CsileJQcQObtj_7hir_defNtB3f_7MacroId10definition1__NtB36_26definition__Configuration_14fn_ingredient_s_0E0zEB3f_(ptr noundef nonnull align 8 %i.ac, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %.sroa.6.0.copyload.i)
          to label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMs7y_CsileJQcQObtj_7hir_defNtB3k_7MacroId10definition1__NtB3b_26definition__Configuration_14fn_ingredient_s_0E0zEB3k_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !804

_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMs7y_CsileJQcQObtj_7hir_defNtB3k_7MacroId10definition1__NtB3b_26definition__Configuration_14fn_ingredient_s_0E0zEB3k_.exit.i.i.i.i: ; preds = %bb.g, %.noexc4.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %.sroa.0.0.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 4
  %.sroa.0.0.i3.i.i.i = load i32, ptr %.sroa.0.0.in.i.i.i.i, align 4, !range !21, !noalias !806, !noundef !18 ; 5 uses
  %.sroa.6.0.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 8
  %.sroa.6.0.i.i.i.i = load i32, ptr %.sroa.6.0.in.i.i.i.i, align 4, !noalias !806, !noundef !18 ; 4 uses
  %i.ad = extractvalue { ptr, ptr } %i.w, 1       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !806
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !808, !noundef !18
  %.not.i8.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i8.i.i.i.i.i, label %.noexc7.i.i.i, label %bb.h, !prof !20

.noexc7.i.i.i:                                    ; preds = %bb.h, %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMs7y_CsileJQcQObtj_7hir_defNtB3k_7MacroId10definition1__NtB3b_26definition__Configuration_14fn_ingredient_s_0E0zEB3k_.exit.i.i.i.i
  %i.ag = invoke noundef zeroext i1 @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !804

.noexc6.i.i.i:                                    ; preds = %.noexc7.i.i.i
  br i1 %i.ag, label %bb.i, label %.noexc9.i.i.i, !prof !22

bb.h:                                             ; preds = %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMs7y_CsileJQcQObtj_7hir_defNtB3k_7MacroId10definition1__NtB3b_26definition__Configuration_14fn_ingredient_s_0E0zEB3k_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @150) #36
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !804

.noexc9.i.i.i:                                    ; preds = %bb.i, %.noexc6.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.ai = invoke noundef zeroext i1 @_RNvMs3_NtCsd9Lm8bEdjjY_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ah)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !804

.noexc8.i.i.i:                                    ; preds = %.noexc9.i.i.i
  br i1 %i.ai, label %bb.j, label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !22

bb.i:                                             ; preds = %.noexc6.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.ad)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !804

bb.j:                                             ; preds = %.noexc8.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.ad)
          to label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !804

_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc8.i.i.i
  %i.aj = getelementptr i8, ptr %i.y, i64 592     ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.aj, align 8, !noalias !808, !noundef !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !809), !noalias !810
  %i.ak = add i32 %.sroa.0.0.i3.i.i.i, -1
  %i.al = lshr i32 %i.ak, 10
  %i.am = zext nneg i32 %i.al to i64              ; 2 uses
  %i.an = invoke noundef i64 @_RNvMs8_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCsileJQcQObtj_7hir_def(i64 noundef %i.am)
          to label %.noexc11.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !804

.noexc11.i.i.i:                                   ; preds = %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 328
  %i.ap = invoke noundef align 8 ptr @_RNvMs2_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCsd9Lm8bEdjjY_5salsa5table4PageEKj3a_E3getCsileJQcQObtj_7hir_def(ptr noundef nonnull align 8 %i.ao, i64 noundef %i.an)
          to label %.noexc12.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !804 ; 3 uses

.noexc12.i.i.i:                                   ; preds = %.noexc11.i.i.i
  %.not.i1.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i1.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.noexc12.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.ar = load atomic i8, ptr %i.aq acquire, align 8, !noalias !811
  %.not6.i.i.i.i.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not6.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i, label %_RNvMNtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB2_3VecNtNtCsd9Lm8bEdjjY_5salsa5table4PageE3getCsileJQcQObtj_7hir_def.exit.i.i.i.i.i.i

_RNvMNtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB2_3VecNtNtCsd9Lm8bEdjjY_5salsa5table4PageE3getCsileJQcQObtj_7hir_def.exit.i.i.i.i.i.i: ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.at = load i32, ptr %i.as, align 8, !noalias !811, !noundef !18
  %i.au = zext i32 %i.at to i64                   ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !809, !noalias !812, !noundef !18 ; 2 uses
  %i.ax = icmp ugt i64 %i.aw, %i.au
  br i1 %i.ax, label %_RNvMNtCsd9Lm8bEdjjY_5salsa8functionINtB2_14IngredientImplNtNvNvMs7y_CsileJQcQObtj_7hir_defNtB14_7MacroId10definition1__26definition__Configuration_E21memo_ingredient_indexB14_.exit.i.i.i.i.i, label %bb.l

select.unfold.i.i.i.i.i.i:                        ; preds = %bb.k, %.noexc12.i.i.i
  invoke void @_RNvNvXs_NtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB6_3VecpEINtNtNtCshzWfHUSfYae_4core3ops5index5IndexjE5index13assert_failed(i64 noundef %i.am) #35
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !804

.noexc13.i.i.i:                                   ; preds = %select.unfold.i.i.i.i.i.i
  unreachable

bb.l:                                             ; preds = %_RNvMNtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB2_3VecNtNtCsd9Lm8bEdjjY_5salsa5table4PageE3getCsileJQcQObtj_7hir_def.exit.i.i.i.i.i.i
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.au, i64 noundef %i.aw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @180) #35
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !804

.noexc14.i.i.i:                                   ; preds = %bb.l
  unreachable

_RNvMNtCsd9Lm8bEdjjY_5salsa8functionINtB2_14IngredientImplNtNvNvMs7y_CsileJQcQObtj_7hir_defNtB14_7MacroId10definition1__26definition__Configuration_E21memo_ingredient_indexB14_.exit.i.i.i.i.i: ; preds = %_RNvMNtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB2_3VecNtNtCsd9Lm8bEdjjY_5salsa5table4PageE3getCsileJQcQObtj_7hir_def.exit.i.i.i.i.i.i
  %i.ay = load ptr, ptr %i.y, align 8, !alias.scope !809, !noalias !812, !nonnull !18, !noundef !18
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.au
  %i.ba = load i32, ptr %i.az, align 4, !noalias !811, !noundef !18 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.m

bb.m:                                             ; preds = %.noexc20.i.i.i, %_RNvMNtCsd9Lm8bEdjjY_5salsa8functionINtB2_14IngredientImplNtNvNvMs7y_CsileJQcQObtj_7hir_defNtB14_7MacroId10definition1__26definition__Configuration_E21memo_ingredient_indexB14_.exit.i.i.i.i.i
  %i.bd = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function4memoINtB4_14IngredientImplNtNvNvMs7y_CsileJQcQObtj_7hir_defNtB1b_7MacroId10definition1__26definition__Configuration_E23get_memo_from_table_forB1b_(ptr noundef nonnull align 8 %i.y, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %.sroa.0.0.i3.i.i.i, i32 noundef %.sroa.6.0.i.i.i.i, i32 noundef %i.ba)
          to label %.noexc15.i.i.i unwind label %.loopexit.i.i.i, !noalias !804 ; 11 uses

.noexc15.i.i.i:                                   ; preds = %bb.m
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs7y_CsileJQcQObtj_7hir_defNtB1c_7MacroId10definition1__26definition__Configuration_E9fetch_hotB1c_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc15.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load i32, ptr %i.be, align 8, !range !813, !noalias !806, !noundef !18
  %.not6.i.i.i.i.i.i = icmp eq i32 %i.bf, -1
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs7y_CsileJQcQObtj_7hir_defNtB1c_7MacroId10definition1__26definition__Configuration_E9fetch_hotB1c_.exit.thread.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = load i32, ptr %i.aj, align 8, !noalias !808, !noundef !18
  store i32 %.sroa.0.0.i3.i.i.i, ptr %i.d, align 4, !noalias !808
  store i32 %.sroa.6.0.i.i.i.i, ptr %i.bb, align 4, !noalias !808
  store i32 %i.bg, ptr %i.bc, align 4, !noalias !808
  %i.bh = load atomic i64, ptr %i.bd acquire, align 8, !noalias !814 ; 3 uses
  %i.bi = icmp ne i64 %i.bh, 0
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = load i64, ptr %i.ah, align 8, !range !23, !noalias !815, !noundef !18
  %i.bk = icmp eq i64 %i.bh, %i.bj
  br i1 %i.bk, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !20

_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.o
  %i.bl = invoke noundef i8 @_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.bd, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.bh) #36
          to label %.noexc16.i.i.i unwind label %.loopexit.i.i.i, !noalias !804 ; 2 uses

.noexc16.i.i.i:                                   ; preds = %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.bm = icmp eq i8 %i.bl, 2
  br i1 %i.bm, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs7y_CsileJQcQObtj_7hir_defNtB1c_7MacroId10definition1__26definition__Configuration_E9fetch_hotB1c_.exit.thread.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.noexc16.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 29
  %i.bo = load atomic i8, ptr %i.bn monotonic, align 1, !noalias !806
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs7y_CsileJQcQObtj_7hir_defNtB1c_7MacroId10definition1__26definition__Configuration_E9fetch_hotB1c_.exit.thread.i.i.i.i.i, label %bb.q

.thread.i.i.i.i.i:                                ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bd, i64 29
  %i.bq = load atomic i8, ptr %i.bp monotonic, align 1, !noalias !806
  %.not7.i21.i.i.i.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not7.i21.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs7y_CsileJQcQObtj_7hir_defNtB1c_7MacroId10definition1__26definition__Configuration_E9fetch_hotB1c_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs7y_CsileJQcQObtj_7hir_defNtB1c_7MacroId10definition1__26definition__Configuration_E12refresh_memoB1c_.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.br = icmp eq i8 %i.bl, 1
  br i1 %i.br, label %bb.r, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs7y_CsileJQcQObtj_7hir_defNtB1c_7MacroId10definition1__26definition__Configuration_E12refresh_memoB1c_.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !816
  store ptr %i.c, ptr %i.b, align 8, !noalias !816
  %i.bs = load ptr, ptr %i.ae, align 8, !noalias !816, !noundef !18
  %.not.i11.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i11.i.i.i.i.i, label %.noexc19.i.i.i, label %bb.s, !prof !20

.noexc19.i.i.i:                                   ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !816
  %i.bt = load i64, ptr %i.ah, align 8, !range !23, !noalias !816, !noundef !18
  invoke void @_RNvMs1_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.bd, i64 noundef %i.bt)
          to label %.noexc17.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !804

.noexc17.i.i.i:                                   ; preds = %.noexc19.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !816
  invoke void @_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.bd, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs7y_CsileJQcQObtj_7hir_defNtB1c_7MacroId10definition1__26definition__Configuration_E12refresh_memoB1c_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !804

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @149) #36
          to label %.noexc19.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !804

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs7y_CsileJQcQObtj_7hir_defNtB1c_7MacroId10definition1__26definition__Configuration_E9fetch_hotB1c_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.p, %.noexc16.i.i.i, %bb.n, %.noexc15.i.i.i
  %i.bu = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs7y_CsileJQcQObtj_7hir_defNtB1c_7MacroId10definition1__26definition__Configuration_E10fetch_coldB1c_(ptr noundef nonnull align 8 %i.y, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %.sroa.0.0.i3.i.i.i, i32 noundef %.sroa.6.0.i.i.i.i, i32 noundef %i.ba)
          to label %.noexc20.i.i.i unwind label %.loopexit.i.i.i, !noalias !804 ; 2 uses

.noexc20.i.i.i:                                   ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs7y_CsileJQcQObtj_7hir_defNtB1c_7MacroId10definition1__26definition__Configuration_E9fetch_hotB1c_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.m, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs7y_CsileJQcQObtj_7hir_defNtB1c_7MacroId10definition1__26definition__Configuration_E12refresh_memoB1c_.exit.i.i.i.i.i

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs7y_CsileJQcQObtj_7hir_defNtB1c_7MacroId10definition1__26definition__Configuration_E12refresh_memoB1c_.exit.i.i.i.i.i: ; preds = %.noexc20.i.i.i, %.thread.i.i.i.i.i, %.noexc17.i.i.i, %bb.q
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.bd, %bb.q ], [ %i.bd, %.noexc17.i.i.i ], [ %i.bd, %.thread.i.i.i.i.i ], [ %i.bu, %.noexc20.i.i.i ] ; 5 uses
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 30
  %i.bx = load i8, ptr %i.bw, align 2, !range !24, !noalias !806, !noundef !18
  %i.by = load i64, ptr %i.bv, align 8, !range !23, !noalias !806, !noundef !18
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 29
  %i.ca = load atomic i8, ptr %i.bz monotonic, align 1, !noalias !806
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.ca, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs7y_CsileJQcQObtj_7hir_defNtB1c_7MacroId10definition1__26definition__Configuration_E12refresh_memoB1c_.exit.i.i.i.i.i
  %i.cb = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !808
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.u, !prof !20

bb.u:                                             ; preds = %bb.t
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCsd9Lm8bEdjjY_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECsileJQcQObtj_7hir_def(ptr noundef nonnull align 8 @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !804

bb.v:                                             ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs7y_CsileJQcQObtj_7hir_defNtB1c_7MacroId10definition1__26definition__Configuration_E12refresh_memoB1c_.exit.i.i.i.i.i
  %i.cd = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bv)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !804

_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u, %bb.t
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.u ], [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.t ], [ %i.cd, %bb.v ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 5 uses
  store i64 -1, ptr %i.ce, align 8, !noalias !817
  call void @llvm.experimental.noalias.scope.decl(metadata !818)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !818, !noalias !819, !noundef !18 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !818, !noalias !819, !nonnull !18, !noundef !18
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !818, !noalias !819, !noundef !18 ; 2 uses
  %.not.i13.i.i.i.i.i = icmp ugt i64 %i.cg, %i.ck
  br i1 %.not.i13.i.i.i.i.i, label %bb.w, label %bb.x, !prof !25

bb.w:                                             ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.cg, i64 noundef %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #35
          to label %.noexc.i.i.i.i.i unwind label %bb.z, !noalias !806

.noexc.i.i.i.i.i:                                 ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = getelementptr [152 x i8], ptr %i.ci, i64 %i.cg
  %i.cm = getelementptr i8, ptr %i.cl, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !820
  store i32 %.sroa.0.0.i3.i.i.i, ptr %i.a, align 4, !noalias !820
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.6.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !820
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !820
  invoke void @_RNvMNtCsd9Lm8bEdjjY_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.cm, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bx, i64 noundef %i.by, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc14.i.i.i.i.i unwind label %bb.z, !noalias !806

.noexc14.i.i.i.i.i:                               ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !820
  %.pre.i.i.i.i.i = load i64, ptr %i.ce, align 8, !noalias !808
  %i.cn = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.w
  %i.co = landingpad { ptr, i32 }
          cleanup
  %i.cp = load i64, ptr %i.ce, align 8, !noalias !808, !noundef !18
  %i.cq = add i64 %i.cp, 1
  store i64 %i.cq, ptr %i.ce, align 8, !noalias !808
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs7y_CsileJQcQObtj_7hir_defNtB1c_7MacroId10definition1__26definition__Configuration_E9fetch_hotB1c_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.m
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.v, %bb.u, %bb.s, %.noexc17.i.i.i, %.noexc19.i.i.i, %bb.l, %select.unfold.i.i.i.i.i.i, %.noexc11.i.i.i, %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, %bb.j, %bb.i, %.noexc9.i.i.i, %bb.h, %.noexc7.i.i.i, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.z
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.co, %bb.z ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvMNtCsd9Lm8bEdjjY_5salsa6attachNtBG_8Attached6attach7DbGuardECsileJQcQObtj_7hir_def(ptr %.sroa.0.0.i.i.i.i) #32
          to label %bb.ae unwind label %bb.ad, !noalias !804

bb.aa:                                            ; preds = %.noexc14.i.i.i.i.i, %bb.x
  %i.cr = phi i64 [ %i.cn, %.noexc14.i.i.i.i.i ], [ 0, %bb.x ]
  store i64 %i.cr, ptr %i.ce, align 8, !noalias !808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !806
  %.sroa.03.0.copyload = load i32, ptr %3, align 8, !noalias !821 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.4, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.4.0..sroa_idx, i64 32, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE8try_withNCINvBW_6attachNtCs33K2ylI4knu_10hir_expand10MacroDefIdDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMs7y_CsileJQcQObtj_7hir_defNtB3u_7MacroId10definition11definition_0E0B1X_EB3u_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cs = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !804, !noundef !18 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !804 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !804
  %.not3.i.i.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not3.i.i.i.i.i, label %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE8try_withNCINvBW_6attachNtCs33K2ylI4knu_10hir_expand10MacroDefIdDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMs7y_CsileJQcQObtj_7hir_defNtB3u_7MacroId10definition11definition_0E0B1X_EB3u_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cu) ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 56
  %i.cw = load ptr, ptr %i.cv, align 8, !invariant.load !18, !noalias !804, !nonnull !18
  %i.cx = call noundef nonnull align 8 ptr %i.cw(ptr noundef nonnull %i.cs) #34, !noalias !804, !inline_history !799
  call void @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cx), !noalias !804
  br label %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE8try_withNCINvBW_6attachNtCs33K2ylI4knu_10hir_expand10MacroDefIdDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMs7y_CsileJQcQObtj_7hir_defNtB3u_7MacroId10definition11definition_0E0B1X_EB3u_.exit

bb.ad:                                            ; preds = %.body.i.i.i
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !804
  unreachable

bb.ae:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE8try_withNCINvBW_6attachNtCs33K2ylI4knu_10hir_expand10MacroDefIdDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMs7y_CsileJQcQObtj_7hir_defNtB3u_7MacroId10definition11definition_0E0B1X_EB3u_.exit: ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.cz = icmp eq i32 %.sroa.03.0.copyload, -1
  br i1 %i.cz, label %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE8try_withNCINvBW_6attachNtCs33K2ylI4knu_10hir_expand10MacroDefIdDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMs7y_CsileJQcQObtj_7hir_defNtB3u_7MacroId10definition11definition_0E0B1X_EB3u_.exit.thread, label %bb.af, !prof !29

_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE8try_withNCINvBW_6attachNtCs33K2ylI4knu_10hir_expand10MacroDefIdDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMs7y_CsileJQcQObtj_7hir_defNtB3u_7MacroId10definition11definition_0E0B1X_EB3u_.exit.thread: ; preds = %bb.a, %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE8try_withNCINvBW_6attachNtCs33K2ylI4knu_10hir_expand10MacroDefIdDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMs7y_CsileJQcQObtj_7hir_defNtB3u_7MacroId10definition11definition_0E0B1X_EB3u_.exit
  call void @_RNvNtNtCscAsMj0W7j8b_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #35
  unreachable

bb.af:                                            ; preds = %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE8try_withNCINvBW_6attachNtCs33K2ylI4knu_10hir_expand10MacroDefIdDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMs7y_CsileJQcQObtj_7hir_defNtB3u_7MacroId10definition11definition_0E0B1X_EB3u_.exit
  store i32 %.sroa.03.0.copyload, ptr %0, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.4, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachNtNtCsileJQcQObtj_7hir_def10visibility10VisibilityDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMs8_B1V_NtB1X_11AssocItemId16assoc_visibility17assoc_visibility_0E0B1T_EB1X_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.4 = alloca [11 x i8], align 1            ; 2 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !18, !noundef !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !867)
  %i.h = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) null), !noalias !868, !inline_history !825 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE8try_withNCINvBW_6attachNtNtCsileJQcQObtj_7hir_def10visibility10VisibilityDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMs8_B1Z_NtB21_11AssocItemId16assoc_visibility17assoc_visibility_0E0B1X_EB21_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !alias.scope !867, !noalias !869, !nonnull !18, !noundef !18
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !867, !noalias !869, !nonnull !18, !noundef !18
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !867, !noalias !869 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !867, !noalias !869 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !867, !noalias !869 ; 3 uses
  %i.j = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 64
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !870
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i) #34, !noalias !871, !inline_history !832 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !872, !noundef !18 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !872, !nonnull !18, !noundef !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !872
  store ptr %i.n, ptr %i.g, align 8, !noalias !872
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !872
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !872
  store ptr %i.l, ptr %i.f, align 8, !noalias !872
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !872
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !20

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !872
  store ptr %i.m, ptr %i.o, align 8, !noalias !872
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !872
  store ptr %i.g, ptr %i.e, align 8, !noalias !872
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsileJQcQObtj_7hir_def, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !872
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !872
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsileJQcQObtj_7hir_def, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !872
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @146, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #35, !noalias !871
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !872
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !18, !noalias !873, !nonnull !18
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i) #34
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !871, !inline_history !838 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 11 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNvMs8_NtCsileJQcQObtj_7hir_def10visibilityNtB1V_11AssocItemId16assoc_visibility1__32assoc_visibility__Configuration_EE13get_or_createNCNvMs_B1L_B1J_14fn_ingredient_0EB1V_(ptr noundef nonnull align 4 @_RNvNvNvMs8_NtCsileJQcQObtj_7hir_def10visibilityNtBb_11AssocItemId16assoc_visibility1__27assoc_visibility__FN_CACHE_, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.x)
          to label %.noexc3.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !871 ; 7 uses

.noexc3.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !874
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RNvMs2_NvNvMs8_NtCsileJQcQObtj_7hir_def10visibilityNtBf_11AssocItemId16assoc_visibility1__NtB7_17assoc_visibility_14fn_ingredient_.exit.i.i.i.i, label %bb.g, !prof !20

bb.g:                                             ; preds = %.noexc3.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNvMs8_NtCsileJQcQObtj_7hir_def10visibilityNtB3g_11AssocItemId16assoc_visibility1__NtB36_32assoc_visibility__Configuration_14fn_ingredient_s_0E0zEB3g_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %.sroa.6.0.copyload.i)
          to label %_RNvMs2_NvNvMs8_NtCsileJQcQObtj_7hir_def10visibilityNtBf_11AssocItemId16assoc_visibility1__NtB7_17assoc_visibility_14fn_ingredient_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !871

_RNvMs2_NvNvMs8_NtCsileJQcQObtj_7hir_def10visibilityNtBf_11AssocItemId16assoc_visibility1__NtB7_17assoc_visibility_14fn_ingredient_.exit.i.i.i.i: ; preds = %bb.g, %.noexc3.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %i.ae = getelementptr i8, ptr %.sroa.7.0.copyload.i, i64 4
  %.val.i.i.i.i = load i32, ptr %i.ae, align 4, !range !21, !noalias !873, !noundef !18 ; 5 uses
  %i.af = getelementptr i8, ptr %.sroa.7.0.copyload.i, i64 8
  %.val1.i.i.i.i = load i32, ptr %i.af, align 4, !noalias !873, !noundef !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !873
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !875, !noundef !18
  %.not.i8.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i8.i.i.i.i.i, label %.noexc6.i.i.i, label %bb.h, !prof !20

.noexc6.i.i.i:                                    ; preds = %bb.h, %_RNvMs2_NvNvMs8_NtCsileJQcQObtj_7hir_def10visibilityNtBf_11AssocItemId16assoc_visibility1__NtB7_17assoc_visibility_14fn_ingredient_.exit.i.i.i.i
  %i.ai = invoke noundef zeroext i1 @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !871

.noexc5.i.i.i:                                    ; preds = %.noexc6.i.i.i
  br i1 %i.ai, label %bb.i, label %.noexc8.i.i.i, !prof !22

bb.h:                                             ; preds = %_RNvMs2_NvNvMs8_NtCsileJQcQObtj_7hir_def10visibilityNtBf_11AssocItemId16assoc_visibility1__NtB7_17assoc_visibility_14fn_ingredient_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @150) #36
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !871

.noexc8.i.i.i:                                    ; preds = %bb.i, %.noexc5.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.ak = invoke noundef zeroext i1 @_RNvMs3_NtCsd9Lm8bEdjjY_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.aj)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !871

.noexc7.i.i.i:                                    ; preds = %.noexc8.i.i.i
  br i1 %i.ak, label %bb.j, label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !22

bb.i:                                             ; preds = %.noexc5.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !871

bb.j:                                             ; preds = %.noexc7.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !871

_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc7.i.i.i
  %i.al = getelementptr i8, ptr %i.z, i64 592     ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.al, align 8, !noalias !875, !noundef !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !876), !noalias !877
  %i.am = add i32 %.val.i.i.i.i, -1
  %i.an = lshr i32 %i.am, 10
  %i.ao = zext nneg i32 %i.an to i64              ; 2 uses
  %i.ap = invoke noundef i64 @_RNvMs8_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCsileJQcQObtj_7hir_def(i64 noundef %i.ao)
          to label %.noexc10.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !871

.noexc10.i.i.i:                                   ; preds = %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 328
  %i.ar = invoke noundef align 8 ptr @_RNvMs2_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCsd9Lm8bEdjjY_5salsa5table4PageEKj3a_E3getCsileJQcQObtj_7hir_def(ptr noundef nonnull align 8 %i.aq, i64 noundef %i.ap)
          to label %.noexc11.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !871 ; 3 uses

.noexc11.i.i.i:                                   ; preds = %.noexc10.i.i.i
  %.not.i1.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i1.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.noexc11.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.at = load atomic i8, ptr %i.as acquire, align 8, !noalias !878
  %.not6.i.i.i.i.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not6.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i, label %_RNvMNtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB2_3VecNtNtCsd9Lm8bEdjjY_5salsa5table4PageE3getCsileJQcQObtj_7hir_def.exit.i.i.i.i.i.i

_RNvMNtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB2_3VecNtNtCsd9Lm8bEdjjY_5salsa5table4PageE3getCsileJQcQObtj_7hir_def.exit.i.i.i.i.i.i: ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.av = load i32, ptr %i.au, align 8, !noalias !878, !noundef !18
  %i.aw = zext i32 %i.av to i64                   ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !876, !noalias !879, !noundef !18 ; 2 uses
  %i.az = icmp ugt i64 %i.ay, %i.aw
  br i1 %i.az, label %_RNvMNtCsd9Lm8bEdjjY_5salsa8functionINtB2_14IngredientImplNtNvNvMs8_NtCsileJQcQObtj_7hir_def10visibilityNtB15_11AssocItemId16assoc_visibility1__32assoc_visibility__Configuration_E21memo_ingredient_indexB15_.exit.i.i.i.i.i, label %bb.l

select.unfold.i.i.i.i.i.i:                        ; preds = %bb.k, %.noexc11.i.i.i
  invoke void @_RNvNvXs_NtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB6_3VecpEINtNtNtCshzWfHUSfYae_4core3ops5index5IndexjE5index13assert_failed(i64 noundef %i.ao) #35
          to label %.noexc12.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !871

.noexc12.i.i.i:                                   ; preds = %select.unfold.i.i.i.i.i.i
  unreachable

bb.l:                                             ; preds = %_RNvMNtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB2_3VecNtNtCsd9Lm8bEdjjY_5salsa5table4PageE3getCsileJQcQObtj_7hir_def.exit.i.i.i.i.i.i
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.aw, i64 noundef %i.ay, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @180) #35
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !871

.noexc13.i.i.i:                                   ; preds = %bb.l
  unreachable

_RNvMNtCsd9Lm8bEdjjY_5salsa8functionINtB2_14IngredientImplNtNvNvMs8_NtCsileJQcQObtj_7hir_def10visibilityNtB15_11AssocItemId16assoc_visibility1__32assoc_visibility__Configuration_E21memo_ingredient_indexB15_.exit.i.i.i.i.i: ; preds = %_RNvMNtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB2_3VecNtNtCsd9Lm8bEdjjY_5salsa5table4PageE3getCsileJQcQObtj_7hir_def.exit.i.i.i.i.i.i
  %i.ba = load ptr, ptr %i.z, align 8, !alias.scope !876, !noalias !879, !nonnull !18, !noundef !18
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.aw
  %i.bc = load i32, ptr %i.bb, align 4, !noalias !878, !noundef !18 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.m

bb.m:                                             ; preds = %.noexc19.i.i.i, %_RNvMNtCsd9Lm8bEdjjY_5salsa8functionINtB2_14IngredientImplNtNvNvMs8_NtCsileJQcQObtj_7hir_def10visibilityNtB15_11AssocItemId16assoc_visibility1__32assoc_visibility__Configuration_E21memo_ingredient_indexB15_.exit.i.i.i.i.i
  %i.bf = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function4memoINtB4_14IngredientImplNtNvNvMs8_NtCsileJQcQObtj_7hir_def10visibilityNtB1c_11AssocItemId16assoc_visibility1__32assoc_visibility__Configuration_E23get_memo_from_table_forB1c_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %.val.i.i.i.i, i32 noundef %.val1.i.i.i.i, i32 noundef %i.bc)
          to label %.noexc14.i.i.i unwind label %.loopexit.i.i.i, !noalias !871 ; 11 uses

.noexc14.i.i.i:                                   ; preds = %bb.m
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs8_NtCsileJQcQObtj_7hir_def10visibilityNtB1d_11AssocItemId16assoc_visibility1__32assoc_visibility__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc14.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i8, ptr %i.bg, align 8, !range !880, !noalias !873, !noundef !18
  %.not6.i.i.i.i.i.i = icmp eq i8 %i.bh, -1
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs8_NtCsileJQcQObtj_7hir_def10visibilityNtB1d_11AssocItemId16assoc_visibility1__32assoc_visibility__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = load i32, ptr %i.al, align 8, !noalias !875, !noundef !18
  store i32 %.val.i.i.i.i, ptr %i.d, align 4, !noalias !875
  store i32 %.val1.i.i.i.i, ptr %i.bd, align 4, !noalias !875
  store i32 %i.bi, ptr %i.be, align 4, !noalias !875
  %i.bj = load atomic i64, ptr %i.bf acquire, align 8, !noalias !881 ; 3 uses
  %i.bk = icmp ne i64 %i.bj, 0
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = load i64, ptr %i.aj, align 8, !range !23, !noalias !882, !noundef !18
  %i.bm = icmp eq i64 %i.bj, %i.bl
  br i1 %i.bm, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !20

_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.o
  %i.bn = invoke noundef i8 @_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.bf, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.bj) #36
          to label %.noexc15.i.i.i unwind label %.loopexit.i.i.i, !noalias !871 ; 2 uses

.noexc15.i.i.i:                                   ; preds = %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.bo = icmp eq i8 %i.bn, 2
  br i1 %i.bo, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs8_NtCsileJQcQObtj_7hir_def10visibilityNtB1d_11AssocItemId16assoc_visibility1__32assoc_visibility__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.noexc15.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 29
  %i.bq = load atomic i8, ptr %i.bp monotonic, align 1, !noalias !873
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs8_NtCsileJQcQObtj_7hir_def10visibilityNtB1d_11AssocItemId16assoc_visibility1__32assoc_visibility__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %bb.q

.thread.i.i.i.i.i:                                ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 29
  %i.bs = load atomic i8, ptr %i.br monotonic, align 1, !noalias !873
  %.not7.i21.i.i.i.i.i = icmp eq i8 %i.bs, 0
  br i1 %.not7.i21.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs8_NtCsileJQcQObtj_7hir_def10visibilityNtB1d_11AssocItemId16assoc_visibility1__32assoc_visibility__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs8_NtCsileJQcQObtj_7hir_def10visibilityNtB1d_11AssocItemId16assoc_visibility1__32assoc_visibility__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.bt = icmp eq i8 %i.bn, 1
  br i1 %i.bt, label %bb.r, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs8_NtCsileJQcQObtj_7hir_def10visibilityNtB1d_11AssocItemId16assoc_visibility1__32assoc_visibility__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !883
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !883
  store ptr %i.c, ptr %i.b, align 8, !noalias !883
  %i.bu = load ptr, ptr %i.ag, align 8, !noalias !883, !noundef !18
  %.not.i11.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i11.i.i.i.i.i, label %.noexc18.i.i.i, label %bb.s, !prof !20

.noexc18.i.i.i:                                   ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !883
  %i.bv = load i64, ptr %i.aj, align 8, !range !23, !noalias !883, !noundef !18
  invoke void @_RNvMs1_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.bf, i64 noundef %i.bv)
          to label %.noexc16.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !871

.noexc16.i.i.i:                                   ; preds = %.noexc18.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !883
  invoke void @_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.bf, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs8_NtCsileJQcQObtj_7hir_def10visibilityNtB1d_11AssocItemId16assoc_visibility1__32assoc_visibility__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !871

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @149) #36
          to label %.noexc18.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !871

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs8_NtCsileJQcQObtj_7hir_def10visibilityNtB1d_11AssocItemId16assoc_visibility1__32assoc_visibility__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.p, %.noexc15.i.i.i, %bb.n, %.noexc14.i.i.i
  %i.bw = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs8_NtCsileJQcQObtj_7hir_def10visibilityNtB1d_11AssocItemId16assoc_visibility1__32assoc_visibility__Configuration_E10fetch_coldB1d_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %.val.i.i.i.i, i32 noundef %.val1.i.i.i.i, i32 noundef %i.bc)
          to label %.noexc19.i.i.i unwind label %.loopexit.i.i.i, !noalias !871 ; 2 uses

.noexc19.i.i.i:                                   ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs8_NtCsileJQcQObtj_7hir_def10visibilityNtB1d_11AssocItemId16assoc_visibility1__32assoc_visibility__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.m, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs8_NtCsileJQcQObtj_7hir_def10visibilityNtB1d_11AssocItemId16assoc_visibility1__32assoc_visibility__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs8_NtCsileJQcQObtj_7hir_def10visibilityNtB1d_11AssocItemId16assoc_visibility1__32assoc_visibility__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i: ; preds = %.noexc19.i.i.i, %.thread.i.i.i.i.i, %.noexc16.i.i.i, %bb.q
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.bf, %bb.q ], [ %i.bf, %.noexc16.i.i.i ], [ %i.bf, %.thread.i.i.i.i.i ], [ %i.bw, %.noexc19.i.i.i ] ; 5 uses
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 30
  %i.bz = load i8, ptr %i.by, align 2, !range !24, !noalias !873, !noundef !18
  %i.ca = load i64, ptr %i.bx, align 8, !range !23, !noalias !873, !noundef !18
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 29
  %i.cc = load atomic i8, ptr %i.cb monotonic, align 1, !noalias !873
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.cc, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs8_NtCsileJQcQObtj_7hir_def10visibilityNtB1d_11AssocItemId16assoc_visibility1__32assoc_visibility__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i
  %i.cd = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !875
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.u, !prof !20

bb.u:                                             ; preds = %bb.t
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCsd9Lm8bEdjjY_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECsileJQcQObtj_7hir_def(ptr noundef nonnull align 8 @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !871

bb.v:                                             ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs8_NtCsileJQcQObtj_7hir_def10visibilityNtB1d_11AssocItemId16assoc_visibility1__32assoc_visibility__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i
  %i.cf = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bx)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !871

_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u, %bb.t
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.u ], [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.t ], [ %i.cf, %bb.v ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store i64 -1, ptr %i.cg, align 8, !noalias !884
  call void @llvm.experimental.noalias.scope.decl(metadata !885)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !885, !noalias !886, !noundef !18 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !885, !noalias !886, !nonnull !18, !noundef !18
  %i.cl = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !885, !noalias !886, !noundef !18 ; 2 uses
  %.not.i13.i.i.i.i.i = icmp ugt i64 %i.ci, %i.cm
  br i1 %.not.i13.i.i.i.i.i, label %bb.w, label %bb.x, !prof !25

bb.w:                                             ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ci, i64 noundef %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #35
          to label %.noexc.i.i.i.i.i unwind label %bb.z, !noalias !873

.noexc.i.i.i.i.i:                                 ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = getelementptr [152 x i8], ptr %i.ck, i64 %i.ci
  %i.co = getelementptr i8, ptr %i.cn, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !887
  store i32 %.val.i.i.i.i, ptr %i.a, align 4, !noalias !887
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.val1.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !887
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !887
  invoke void @_RNvMNtCsd9Lm8bEdjjY_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.co, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bz, i64 noundef %i.ca, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc14.i.i.i.i.i unwind label %bb.z, !noalias !873

.noexc14.i.i.i.i.i:                               ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !887
  %.pre.i.i.i.i.i = load i64, ptr %i.cg, align 8, !noalias !875
  %i.cp = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.w
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = load i64, ptr %i.cg, align 8, !noalias !875, !noundef !18
  %i.cs = add i64 %i.cr, 1
  store i64 %i.cs, ptr %i.cg, align 8, !noalias !875
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs8_NtCsileJQcQObtj_7hir_def10visibilityNtB1d_11AssocItemId16assoc_visibility1__32assoc_visibility__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.m
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.v, %bb.u, %bb.s, %.noexc16.i.i.i, %.noexc18.i.i.i, %bb.l, %select.unfold.i.i.i.i.i.i, %.noexc10.i.i.i, %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, %bb.j, %bb.i, %.noexc8.i.i.i, %bb.h, %.noexc6.i.i.i, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.z
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cq, %bb.z ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvMNtCsd9Lm8bEdjjY_5salsa6attachNtBG_8Attached6attach7DbGuardECsileJQcQObtj_7hir_def(ptr %.sroa.0.0.i.i.i.i) #32
          to label %bb.ae unwind label %bb.ad, !noalias !871

bb.aa:                                            ; preds = %.noexc14.i.i.i.i.i, %bb.x
  %i.ct = phi i64 [ %i.cp, %.noexc14.i.i.i.i.i ], [ 0, %bb.x ]
  store i64 %i.ct, ptr %i.cg, align 8, !noalias !875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !873
  %.sroa.03.0.copyload = load i8, ptr %3, align 8, !alias.scope !888, !noalias !889 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.4, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.4.0..sroa_idx, i64 11, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE8try_withNCINvBW_6attachNtNtCsileJQcQObtj_7hir_def10visibility10VisibilityDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMs8_B1Z_NtB21_11AssocItemId16assoc_visibility17assoc_visibility_0E0B1X_EB21_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cu = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !871, !noundef !18 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !871 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !871
  %.not3.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not3.i.i.i.i.i, label %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE8try_withNCINvBW_6attachNtNtCsileJQcQObtj_7hir_def10visibility10VisibilityDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMs8_B1Z_NtB21_11AssocItemId16assoc_visibility17assoc_visibility_0E0B1X_EB21_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cw) ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  %i.cy = load ptr, ptr %i.cx, align 8, !invariant.load !18, !noalias !871, !nonnull !18
  %i.cz = call noundef nonnull align 8 ptr %i.cy(ptr noundef nonnull %i.cu) #34, !noalias !871, !inline_history !866
  call void @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cz), !noalias !871
  br label %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE8try_withNCINvBW_6attachNtNtCsileJQcQObtj_7hir_def10visibility10VisibilityDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMs8_B1Z_NtB21_11AssocItemId16assoc_visibility17assoc_visibility_0E0B1X_EB21_.exit

bb.ad:                                            ; preds = %.body.i.i.i
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !871
  unreachable

bb.ae:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE8try_withNCINvBW_6attachNtNtCsileJQcQObtj_7hir_def10visibility10VisibilityDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMs8_B1Z_NtB21_11AssocItemId16assoc_visibility17assoc_visibility_0E0B1X_EB21_.exit: ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.db = icmp eq i8 %.sroa.03.0.copyload, -1
  br i1 %i.db, label %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE8try_withNCINvBW_6attachNtNtCsileJQcQObtj_7hir_def10visibility10VisibilityDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMs8_B1Z_NtB21_11AssocItemId16assoc_visibility17assoc_visibility_0E0B1X_EB21_.exit.thread, label %bb.af, !prof !29

_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE8try_withNCINvBW_6attachNtNtCsileJQcQObtj_7hir_def10visibility10VisibilityDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMs8_B1Z_NtB21_11AssocItemId16assoc_visibility17assoc_visibility_0E0B1X_EB21_.exit.thread: ; preds = %bb.a, %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE8try_withNCINvBW_6attachNtNtCsileJQcQObtj_7hir_def10visibility10VisibilityDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMs8_B1Z_NtB21_11AssocItemId16assoc_visibility17assoc_visibility_0E0B1X_EB21_.exit
  call void @_RNvNtNtCscAsMj0W7j8b_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #35
  unreachable

bb.af:                                            ; preds = %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE8try_withNCINvBW_6attachNtNtCsileJQcQObtj_7hir_def10visibility10VisibilityDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMs8_B1Z_NtB21_11AssocItemId16assoc_visibility17assoc_visibility_0E0B1X_EB21_.exit
  store i8 %.sroa.03.0.copyload, ptr %0, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.4, i64 11, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachNtNtCsileJQcQObtj_7hir_def5attrs27RustcLayoutScalarValidRangeDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMsl_B1V_NtB1V_9AttrFlags31rustc_layout_scalar_valid_range31rustc_layout_scalar_valid_range0E0B1T_EB1X_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 16 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.4 = alloca [48 x i8], align 16           ; 2 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !18, !noundef !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !935)
  %i.h = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) null), !noalias !936, !inline_history !893 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE8try_withNCINvBW_6attachNtNtCsileJQcQObtj_7hir_def5attrs27RustcLayoutScalarValidRangeDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMsl_B1Z_NtB1Z_9AttrFlags31rustc_layout_scalar_valid_range31rustc_layout_scalar_valid_range0E0B1X_EB21_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !alias.scope !935, !noalias !937, !nonnull !18, !noundef !18
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !935, !noalias !937, !nonnull !18, !noundef !18
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !935, !noalias !937 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !935, !noalias !937 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !935, !noalias !937 ; 3 uses
  %i.j = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 64
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !938
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i) #34, !noalias !939, !inline_history !900 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !940, !noundef !18 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !940, !nonnull !18, !noundef !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !940
  store ptr %i.n, ptr %i.g, align 8, !noalias !940
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !940
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !940
  store ptr %i.l, ptr %i.f, align 8, !noalias !940
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !940
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !20

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !940
  store ptr %i.m, ptr %i.o, align 8, !noalias !940
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !940
  store ptr %i.g, ptr %i.e, align 8, !noalias !940
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsileJQcQObtj_7hir_def, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !940
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !940
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsileJQcQObtj_7hir_def, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !940
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @146, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #35, !noalias !939
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !940
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !18, !noalias !941, !nonnull !18
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i) #34
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !939, !inline_history !906 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 11 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1T_9AttrFlags31rustc_layout_scalar_valid_range1__46rustc_layout_scalar_valid_range_Configuration_EE13get_or_createNCNvMs_B1L_B1J_14fn_ingredient_0EB1V_(ptr noundef nonnull align 4 @_RNvNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB9_9AttrFlags31rustc_layout_scalar_valid_range1__41rustc_layout_scalar_valid_range_FN_CACHE_, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.x)
          to label %.noexc3.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !939 ; 7 uses

.noexc3.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !942
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags31rustc_layout_scalar_valid_range1__NtB7_31rustc_layout_scalar_valid_range14fn_ingredient_.exit.i.i.i.i, label %bb.g, !prof !20

bb.g:                                             ; preds = %.noexc3.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB3e_9AttrFlags31rustc_layout_scalar_valid_range1__NtB36_46rustc_layout_scalar_valid_range_Configuration_14fn_ingredient_s_0E0zEB3g_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %.sroa.6.0.copyload.i)
          to label %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags31rustc_layout_scalar_valid_range1__NtB7_31rustc_layout_scalar_valid_range14fn_ingredient_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !939

_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags31rustc_layout_scalar_valid_range1__NtB7_31rustc_layout_scalar_valid_range14fn_ingredient_.exit.i.i.i.i: ; preds = %bb.g, %.noexc3.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %i.ae = getelementptr i8, ptr %.sroa.7.0.copyload.i, i64 4
  %.val.i.i.i.i = load i32, ptr %i.ae, align 4, !range !21, !noalias !941, !noundef !18 ; 5 uses
  %i.af = getelementptr i8, ptr %.sroa.7.0.copyload.i, i64 8
  %.val1.i.i.i.i = load i32, ptr %i.af, align 4, !noalias !941, !noundef !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !941
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !943, !noundef !18
  %.not.i8.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i8.i.i.i.i.i, label %.noexc6.i.i.i, label %bb.h, !prof !20

.noexc6.i.i.i:                                    ; preds = %bb.h, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags31rustc_layout_scalar_valid_range1__NtB7_31rustc_layout_scalar_valid_range14fn_ingredient_.exit.i.i.i.i
  %i.ai = invoke noundef zeroext i1 @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !939

.noexc5.i.i.i:                                    ; preds = %.noexc6.i.i.i
  br i1 %i.ai, label %bb.i, label %.noexc8.i.i.i, !prof !22

bb.h:                                             ; preds = %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags31rustc_layout_scalar_valid_range1__NtB7_31rustc_layout_scalar_valid_range14fn_ingredient_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @150) #36
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !939

.noexc8.i.i.i:                                    ; preds = %bb.i, %.noexc5.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.ak = invoke noundef zeroext i1 @_RNvMs3_NtCsd9Lm8bEdjjY_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.aj)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !939

.noexc7.i.i.i:                                    ; preds = %.noexc8.i.i.i
  br i1 %i.ak, label %bb.j, label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !22

bb.i:                                             ; preds = %.noexc5.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !939

bb.j:                                             ; preds = %.noexc7.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !939

_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc7.i.i.i
  %i.al = getelementptr i8, ptr %i.z, i64 592     ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.al, align 8, !noalias !943, !noundef !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !944), !noalias !945
  %i.am = add i32 %.val.i.i.i.i, -1
  %i.an = lshr i32 %i.am, 10
  %i.ao = zext nneg i32 %i.an to i64              ; 2 uses
  %i.ap = invoke noundef i64 @_RNvMs8_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCsileJQcQObtj_7hir_def(i64 noundef %i.ao)
          to label %.noexc10.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !939

.noexc10.i.i.i:                                   ; preds = %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 328
  %i.ar = invoke noundef align 8 ptr @_RNvMs2_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCsd9Lm8bEdjjY_5salsa5table4PageEKj3a_E3getCsileJQcQObtj_7hir_def(ptr noundef nonnull align 8 %i.aq, i64 noundef %i.ap)
          to label %.noexc11.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !939 ; 3 uses

end_hunk_1
begin_hunk_2_@_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachNtNtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abi9ExternAbiDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNtCsileJQcQObtj_7hir_def10signatures16extern_block_abi0E0B1T_EB3B_:bb.a
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i) #34, !noalias !1051, !inline_history !1024 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !1052, !noundef !18 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !1052, !nonnull !18, !noundef !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1052
  store ptr %i.n, ptr %i.g, align 8, !noalias !1052
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !1052
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1052
  store ptr %i.l, ptr %i.f, align 8, !noalias !1052
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !1052
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !20

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !1052
  store ptr %i.m, ptr %i.o, align 8, !noalias !1052
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1052
  store ptr %i.g, ptr %i.e, align 8, !noalias !1052
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsileJQcQObtj_7hir_def, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !1052
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !1052
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsileJQcQObtj_7hir_def, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !1052
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @146, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #35, !noalias !1051
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1052
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !18, !noalias !1053, !nonnull !18
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i) #34
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1051, !inline_history !1029 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 10 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNtCsileJQcQObtj_7hir_def10signaturess6_1__31extern_block_abi_Configuration_EE13get_or_createNCNvMs_B1L_B1J_14fn_ingredient_0EB1P_(ptr noundef nonnull align 4 @_RNvNvNtCsileJQcQObtj_7hir_def10signaturess6_1__26extern_block_abi_FN_CACHE_, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.x)
          to label %.noexc3.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1051 ; 6 uses

.noexc3.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 520
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !1054
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtCsileJQcQObtj_7hir_def10signaturess6_1__NtB3b_31extern_block_abi_Configuration_14fn_ingredient_s_0E0zEB3f_.exit.i.i.i.i, label %bb.g, !prof !20

bb.g:                                             ; preds = %.noexc3.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 480
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNtCsileJQcQObtj_7hir_def10signaturess6_1__NtB36_31extern_block_abi_Configuration_14fn_ingredient_s_0E0zEB3a_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %.sroa.6.0.copyload.i)
          to label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtCsileJQcQObtj_7hir_def10signaturess6_1__NtB3b_31extern_block_abi_Configuration_14fn_ingredient_s_0E0zEB3f_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1051

_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtCsileJQcQObtj_7hir_def10signaturess6_1__NtB3b_31extern_block_abi_Configuration_14fn_ingredient_s_0E0zEB3f_.exit.i.i.i.i: ; preds = %bb.g, %.noexc3.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %i.ae = load i32, ptr %.sroa.7.0.copyload.i, align 4, !range !21, !noalias !1053, !noundef !18 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noalias !1053, !noundef !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1053
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !1055, !noundef !18
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc6.i.i.i, label %bb.h, !prof !20

.noexc6.i.i.i:                                    ; preds = %bb.h, %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtCsileJQcQObtj_7hir_def10signaturess6_1__NtB3b_31extern_block_abi_Configuration_14fn_ingredient_s_0E0zEB3f_.exit.i.i.i.i
  %i.aj = invoke noundef zeroext i1 @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1051

.noexc5.i.i.i:                                    ; preds = %.noexc6.i.i.i
  br i1 %i.aj, label %bb.i, label %.noexc8.i.i.i, !prof !22

bb.h:                                             ; preds = %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtCsileJQcQObtj_7hir_def10signaturess6_1__NtB3b_31extern_block_abi_Configuration_14fn_ingredient_s_0E0zEB3f_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @150) #36
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1051

.noexc8.i.i.i:                                    ; preds = %bb.i, %.noexc5.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.al = invoke noundef zeroext i1 @_RNvMs3_NtCsd9Lm8bEdjjY_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ak)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1051

.noexc7.i.i.i:                                    ; preds = %.noexc8.i.i.i
  br i1 %i.al, label %bb.j, label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !22

bb.i:                                             ; preds = %.noexc5.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1051

bb.j:                                             ; preds = %.noexc7.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1051

_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc7.i.i.i
  %i.am = getelementptr i8, ptr %i.z, i64 576     ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.am, align 8, !noalias !1055, !noundef !18
  %i.an = getelementptr i8, ptr %i.z, i64 580
  %.val8.i.i.i.i.i = load i32, ptr %i.an, align 4, !alias.scope !1056, !noalias !1055, !noundef !18 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.noexc15.i.i.i, %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.aq = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function4memoINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def10signaturess6_1__31extern_block_abi_Configuration_E23get_memo_from_table_forB16_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc10.i.i.i unwind label %.loopexit.i.i.i, !noalias !1051 ; 11 uses

.noexc10.i.i.i:                                   ; preds = %bb.k
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def10signaturess6_1__31extern_block_abi_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc10.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load i8, ptr %i.ar, align 8, !range !1057, !noalias !1053, !noundef !18
  %.not6.i.i.i.i.i.i = icmp eq i8 %i.as, -1
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def10signaturess6_1__31extern_block_abi_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load i32, ptr %i.am, align 8, !noalias !1055, !noundef !18
  store i32 %i.ae, ptr %i.d, align 4, !noalias !1055
  store i32 %i.ag, ptr %i.ao, align 4, !noalias !1055
  store i32 %i.at, ptr %i.ap, align 4, !noalias !1055
  %i.au = load atomic i64, ptr %i.aq acquire, align 8, !noalias !1058 ; 3 uses
  %i.av = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i64, ptr %i.ak, align 8, !range !23, !noalias !1059, !noundef !18
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !20

_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ay = invoke noundef i8 @_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.au) #36
          to label %.noexc11.i.i.i unwind label %.loopexit.i.i.i, !noalias !1051 ; 2 uses

.noexc11.i.i.i:                                   ; preds = %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.az = icmp eq i8 %i.ay, 2
  br i1 %i.az, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def10signaturess6_1__31extern_block_abi_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc11.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.bb = load atomic i8, ptr %i.ba monotonic, align 1, !noalias !1053
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def10signaturess6_1__31extern_block_abi_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.bd = load atomic i8, ptr %i.bc monotonic, align 1, !noalias !1053
  %.not7.i22.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not7.i22.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def10signaturess6_1__31extern_block_abi_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def10signaturess6_1__31extern_block_abi_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.be = icmp eq i8 %i.ay, 1
  br i1 %i.be, label %bb.p, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def10signaturess6_1__31extern_block_abi_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1060
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !1055
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1060
  store ptr %i.c, ptr %i.b, align 8, !noalias !1060
  %i.bf = load ptr, ptr %i.ah, align 8, !noalias !1060, !noundef !18
  %.not.i12.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i12.i.i.i.i.i, label %.noexc14.i.i.i, label %bb.q, !prof !20

.noexc14.i.i.i:                                   ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1060
  %i.bg = load i64, ptr %i.ak, align 8, !range !23, !noalias !1060, !noundef !18
  invoke void @_RNvMs1_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.aq, i64 noundef %i.bg)
          to label %.noexc12.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1051

.noexc12.i.i.i:                                   ; preds = %.noexc14.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1060
  invoke void @_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def10signaturess6_1__31extern_block_abi_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1051

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @149) #36
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1051

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def10signaturess6_1__31extern_block_abi_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.n, %.noexc11.i.i.i, %bb.l, %.noexc10.i.i.i
  %i.bh = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def10signaturess6_1__31extern_block_abi_Configuration_E10fetch_coldB17_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc15.i.i.i unwind label %.loopexit.i.i.i, !noalias !1051 ; 2 uses

.noexc15.i.i.i:                                   ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def10signaturess6_1__31extern_block_abi_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.k, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def10signaturess6_1__31extern_block_abi_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def10signaturess6_1__31extern_block_abi_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i: ; preds = %.noexc15.i.i.i, %.thread.i.i.i.i.i, %.noexc12.i.i.i, %bb.o
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.o ], [ %i.aq, %.noexc12.i.i.i ], [ %i.aq, %.thread.i.i.i.i.i ], [ %i.bh, %.noexc15.i.i.i ] ; 5 uses
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 30
  %i.bk = load i8, ptr %i.bj, align 2, !range !24, !noalias !1053, !noundef !18
  %i.bl = load i64, ptr %i.bi, align 8, !range !23, !noalias !1053, !noundef !18
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 29
  %i.bn = load atomic i8, ptr %i.bm monotonic, align 1, !noalias !1053
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def10signaturess6_1__31extern_block_abi_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.bo = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !1055
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.s, !prof !20

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCsd9Lm8bEdjjY_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECsileJQcQObtj_7hir_def(ptr noundef nonnull align 8 @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1051

bb.t:                                             ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def10signaturess6_1__31extern_block_abi_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.bq = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bi)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1051

_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.s ], [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.r ], [ %i.bq, %bb.t ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store i64 -1, ptr %i.br, align 8, !noalias !1061
  call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !1062, !noalias !1063, !noundef !18 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !1062, !noalias !1063, !nonnull !18, !noundef !18
  %i.bw = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !1062, !noalias !1063, !noundef !18 ; 2 uses
  %.not.i14.i.i.i.i.i = icmp ugt i64 %i.bt, %i.bx
  br i1 %.not.i14.i.i.i.i.i, label %bb.u, label %bb.v, !prof !25

bb.u:                                             ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bt, i64 noundef %i.bx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #35
          to label %.noexc.i.i.i.i.i unwind label %bb.x, !noalias !1053

.noexc.i.i.i.i.i:                                 ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr [152 x i8], ptr %i.bv, i64 %i.bt
  %i.bz = getelementptr i8, ptr %i.by, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1064
  store i32 %i.ae, ptr %i.a, align 4, !noalias !1064
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ag, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1064
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1064
  invoke void @_RNvMNtCsd9Lm8bEdjjY_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.bz, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bk, i64 noundef %i.bl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc15.i.i.i.i.i unwind label %bb.x, !noalias !1053

.noexc15.i.i.i.i.i:                               ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1064
  %.pre.i.i.i.i.i = load i64, ptr %i.br, align 8, !noalias !1055
  %i.ca = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = load i64, ptr %i.br, align 8, !noalias !1055, !noundef !18
  %i.cd = add i64 %i.cc, 1
  store i64 %i.cd, ptr %i.br, align 8, !noalias !1055
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def10signaturess6_1__31extern_block_abi_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.k
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.t, %bb.s, %bb.q, %.noexc12.i.i.i, %.noexc14.i.i.i, %bb.j, %bb.i, %.noexc8.i.i.i, %bb.h, %.noexc6.i.i.i, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.x
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cb, %bb.x ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvMNtCsd9Lm8bEdjjY_5salsa6attachNtBG_8Attached6attach7DbGuardECsileJQcQObtj_7hir_def(ptr %.sroa.0.0.i.i.i.i) #32
          to label %bb.ac unwind label %bb.ab, !noalias !1051

bb.y:                                             ; preds = %.noexc15.i.i.i.i.i, %bb.v
  %i.ce = phi i64 [ %i.ca, %.noexc15.i.i.i.i.i ], [ 0, %bb.v ]
  store i64 %i.ce, ptr %i.br, align 8, !noalias !1055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1053
  %i.cf = load i8, ptr %2, align 8, !range !1065, !noalias !1053, !noundef !18
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 33
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !1053
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ci = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !1051, !noundef !18 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !1051 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !1051
  %.not3.i.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not3.i.i.i.i.i, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ck) ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  %i.cm = load ptr, ptr %i.cl, align 8, !invariant.load !18, !noalias !1051, !nonnull !18
  %i.cn = call noundef nonnull align 8 ptr %i.cm(ptr noundef nonnull %i.ci) #34, !noalias !1051, !inline_history !1048
  call void @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cn), !noalias !1051
  br label %bb.ae

bb.ab:                                            ; preds = %.body.i.i.i
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !1051
  unreachable

bb.ac:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

bb.ad:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCscAsMj0W7j8b_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #35
  unreachable

bb.ae:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %i.cp = insertvalue { i8, i8 } poison, i8 %i.cf, 0
  %i.cq = insertvalue { i8, i8 } %i.cp, i8 %i.ch, 1
  ret { i8, i8 } %i.cq
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachRINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs39E2wp1vf7X_6intern6symbol6SymbolEDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB40_9AttrFlags11doc_aliases11doc_aliases0E0B1T_EB42_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !18, !noundef !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  %i.h = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) null), !noalias !1106, !inline_history !1068 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE8try_withNCINvBW_6attachRINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs39E2wp1vf7X_6intern6symbol6SymbolEDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB44_9AttrFlags11doc_aliases11doc_aliases0E0B1X_EB46_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !1106, !nonnull !18, !noundef !18
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1106, !nonnull !18, !noundef !18
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1106 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1106 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !1106 ; 6 uses
  %i.j = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 64
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !1107
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i) #34, !noalias !1108, !inline_history !1073 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !1109, !noundef !18 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !1109, !nonnull !18, !noundef !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1109
  store ptr %i.n, ptr %i.g, align 8, !noalias !1109
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !1109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1109
  store ptr %i.l, ptr %i.f, align 8, !noalias !1109
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !1109
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !20

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !1109
  store ptr %i.m, ptr %i.o, align 8, !noalias !1109
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1109
  store ptr %i.g, ptr %i.e, align 8, !noalias !1109
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsileJQcQObtj_7hir_def, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !1109
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !1109
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsileJQcQObtj_7hir_def, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !1109
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @146, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #35, !noalias !1108
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1109
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !18, !noalias !1110, !nonnull !18
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i) #34
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1108, !inline_history !1078 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 11 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1T_9AttrFlags11doc_aliases1__26doc_aliases_Configuration_EE13get_or_createNCNvMs_B1L_B1J_14fn_ingredient_0EB1V_(ptr noundef nonnull align 4 @_RNvNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB9_9AttrFlags11doc_aliases1__21doc_aliases_FN_CACHE_, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.x)
          to label %.noexc3.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1108 ; 7 uses

.noexc3.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !1111
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i, label %bb.g, !prof !20

bb.g:                                             ; preds = %.noexc3.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB3e_9AttrFlags11doc_aliases1__NtB36_26doc_aliases_Configuration_14fn_ingredient_s_0E0zEB3g_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %.sroa.6.0.copyload.i)
          to label %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1108

_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i: ; preds = %bb.g, %.noexc3.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %i.ae = load i32, ptr %.sroa.7.0.copyload.i, align 4, !range !27, !alias.scope !1112, !noalias !1110, !noundef !18
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 4 ; 11 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 8 ; 13 uses
  switch i32 %i.ae, label %default.unreachable [
    i32 0, label %_RNvXNvCsileJQcQObtj_7hir_defsq_1__NtB4_9AttrDefIdNtNtCsd9Lm8bEdjjY_5salsa2id4AsId5as_id.exit.i.i.i.i
    i32 1, label %bb.h
    i32 2, label %_RNvXNvCsileJQcQObtj_7hir_defsq_1__NtB4_9AttrDefIdNtNtCsd9Lm8bEdjjY_5salsa2id4AsId5as_id.exit.i.i.i.i
    i32 3, label %_RNvXNvCsileJQcQObtj_7hir_defsq_1__NtB4_9AttrDefIdNtNtCsd9Lm8bEdjjY_5salsa2id4AsId5as_id.exit.i.i.i.i
    i32 4, label %_RNvXNvCsileJQcQObtj_7hir_defsq_1__NtB4_9AttrDefIdNtNtCsd9Lm8bEdjjY_5salsa2id4AsId5as_id.exit.i.i.i.i
    i32 5, label %_RNvXNvCsileJQcQObtj_7hir_defsq_1__NtB4_9AttrDefIdNtNtCsd9Lm8bEdjjY_5salsa2id4AsId5as_id.exit.i.i.i.i
    i32 6, label %_RNvXNvCsileJQcQObtj_7hir_defsq_1__NtB4_9AttrDefIdNtNtCsd9Lm8bEdjjY_5salsa2id4AsId5as_id.exit.i.i.i.i
    i32 7, label %_RNvXNvCsileJQcQObtj_7hir_defsq_1__NtB4_9AttrDefIdNtNtCsd9Lm8bEdjjY_5salsa2id4AsId5as_id.exit.i.i.i.i
    i32 8, label %bb.i
    i32 9, label %_RNvXNvCsileJQcQObtj_7hir_defsq_1__NtB4_9AttrDefIdNtNtCsd9Lm8bEdjjY_5salsa2id4AsId5as_id.exit.i.i.i.i
    i32 10, label %_RNvXNvCsileJQcQObtj_7hir_defsq_1__NtB4_9AttrDefIdNtNtCsd9Lm8bEdjjY_5salsa2id4AsId5as_id.exit.i.i.i.i
    i32 11, label %_RNvXNvCsileJQcQObtj_7hir_defsq_1__NtB4_9AttrDefIdNtNtCsd9Lm8bEdjjY_5salsa2id4AsId5as_id.exit.i.i.i.i
    i32 12, label %_RNvXNvCsileJQcQObtj_7hir_defsq_1__NtB4_9AttrDefIdNtNtCsd9Lm8bEdjjY_5salsa2id4AsId5as_id.exit.i.i.i.i
  ]

default.unreachable:                              ; preds = %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i
  unreachable

bb.h:                                             ; preds = %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 12
  br label %_RNvXNvCsileJQcQObtj_7hir_defsq_1__NtB4_9AttrDefIdNtNtCsd9Lm8bEdjjY_5salsa2id4AsId5as_id.exit.i.i.i.i

bb.i:                                             ; preds = %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 12
  br label %_RNvXNvCsileJQcQObtj_7hir_defsq_1__NtB4_9AttrDefIdNtNtCsd9Lm8bEdjjY_5salsa2id4AsId5as_id.exit.i.i.i.i

_RNvXNvCsileJQcQObtj_7hir_defsq_1__NtB4_9AttrDefIdNtNtCsd9Lm8bEdjjY_5salsa2id4AsId5as_id.exit.i.i.i.i: ; preds = %bb.i, %bb.h, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i
  %.sroa.18.0.in.i.i.i.i.i = phi ptr [ %i.ag, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i ], [ %i.ai, %bb.i ], [ %i.ah, %bb.h ], [ %i.ag, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i ], [ %i.ag, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i ], [ %i.ag, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i ], [ %i.ag, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i ], [ %i.ag, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i ], [ %i.ag, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i ], [ %i.ag, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i ], [ %i.ag, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i ], [ %i.ag, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i ], [ %i.ag, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i ]
  %.sroa.0.0.in.i.i.i.i.i = phi ptr [ %i.af, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i ], [ %i.ag, %bb.i ], [ %i.ag, %bb.h ], [ %i.af, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i ], [ %i.af, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i ], [ %i.af, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i ], [ %i.af, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i ], [ %i.af, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i ], [ %i.af, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i ], [ %i.af, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i ], [ %i.af, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i ], [ %i.af, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i ], [ %i.af, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags11doc_aliases1__NtB7_11doc_aliases14fn_ingredient_.exit.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i = load i32, ptr %.sroa.0.0.in.i.i.i.i.i, align 4, !range !21, !alias.scope !1112, !noalias !1110, !noundef !18 ; 5 uses
  %.sroa.18.0.i.i.i.i.i = load i32, ptr %.sroa.18.0.in.i.i.i.i.i, align 4, !alias.scope !1112, !noalias !1110, !noundef !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1110
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !1113, !noundef !18
  %.not.i8.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i8.i.i.i.i.i, label %.noexc6.i.i.i, label %bb.j, !prof !20

.noexc6.i.i.i:                                    ; preds = %bb.j, %_RNvXNvCsileJQcQObtj_7hir_defsq_1__NtB4_9AttrDefIdNtNtCsd9Lm8bEdjjY_5salsa2id4AsId5as_id.exit.i.i.i.i
  %i.al = invoke noundef zeroext i1 @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1108

.noexc5.i.i.i:                                    ; preds = %.noexc6.i.i.i
  br i1 %i.al, label %bb.k, label %.noexc8.i.i.i, !prof !22

bb.j:                                             ; preds = %_RNvXNvCsileJQcQObtj_7hir_defsq_1__NtB4_9AttrDefIdNtNtCsd9Lm8bEdjjY_5salsa2id4AsId5as_id.exit.i.i.i.i
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @150) #36
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1108

.noexc8.i.i.i:                                    ; preds = %bb.k, %.noexc5.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.an = invoke noundef zeroext i1 @_RNvMs3_NtCsd9Lm8bEdjjY_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.am)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1108

.noexc7.i.i.i:                                    ; preds = %.noexc8.i.i.i
end_hunk_2
begin_hunk_3_@_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachRINtNtCshzWfHUSfYae_4core6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCsileJQcQObtj_7hir_def9item_tree8ItemTreeEEDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvB37_20file_item_tree_query0E0B1T_EB39_:bb.a
bb.l:                                             ; preds = %.noexc12.i.i.i
  %i.av = load i64, ptr %i.au, align 8, !range !26, !noalias !1484, !noundef !18
  %i.aw = trunc nuw i64 %i.av to i1
  br i1 %i.aw, label %bb.m, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def9item_trees0_1__35file_item_tree_query_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ax = load i32, ptr %i.aq, align 8, !noalias !1486, !noundef !18
  store i32 %i.ae, ptr %i.d, align 4, !noalias !1486
  store i32 %i.af, ptr %i.as, align 4, !noalias !1486
  store i32 %i.ax, ptr %i.at, align 4, !noalias !1486
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 4 uses
  %i.az = load atomic i64, ptr %i.ay acquire, align 8, !noalias !1488 ; 3 uses
  %i.ba = icmp ne i64 %i.az, 0
  call void @llvm.assume(i1 %i.ba)
  %i.bb = load i64, ptr %i.ao, align 8, !range !23, !noalias !1489, !noundef !18
  %i.bc = icmp eq i64 %i.az, %i.bb
  br i1 %i.bc, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !20

_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.bd = invoke noundef i8 @_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.ay, ptr noundef nonnull align 8 %i.y, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.az) #36
          to label %.noexc13.i.i.i unwind label %.loopexit.i.i.i, !noalias !1482 ; 2 uses

.noexc13.i.i.i:                                   ; preds = %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.be = icmp eq i8 %i.bd, 2
  br i1 %i.be, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def9item_trees0_1__35file_item_tree_query_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc13.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 45
  %i.bg = load atomic i8, ptr %i.bf monotonic, align 1, !noalias !1484
  %.not6.i.i.i.i.i.i = icmp eq i8 %i.bg, 0
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def9item_trees0_1__35file_item_tree_query_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 45
  %i.bi = load atomic i8, ptr %i.bh monotonic, align 1, !noalias !1484
  %.not6.i22.i.i.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not6.i22.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def9item_trees0_1__35file_item_tree_query_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def9item_trees0_1__35file_item_tree_query_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bj = icmp eq i8 %i.bd, 1
  br i1 %i.bj, label %bb.p, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def9item_trees0_1__35file_item_tree_query_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1490
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !1486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1490
  store ptr %i.c, ptr %i.b, align 8, !noalias !1490
  %i.bk = load ptr, ptr %i.al, align 8, !noalias !1490, !noundef !18
  %.not.i12.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i12.i.i.i.i.i, label %.noexc16.i.i.i, label %bb.q, !prof !20

.noexc16.i.i.i:                                   ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1490
  %i.bl = load i64, ptr %i.ao, align 8, !range !23, !noalias !1490, !noundef !18
  invoke void @_RNvMs1_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.ay, i64 noundef %i.bl)
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1482

.noexc14.i.i.i:                                   ; preds = %.noexc16.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1490
  invoke void @_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.ay, ptr noundef nonnull align 8 %i.y, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def9item_trees0_1__35file_item_tree_query_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1482

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @149) #36
          to label %.noexc16.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1482

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def9item_trees0_1__35file_item_tree_query_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.n, %.noexc13.i.i.i, %bb.l, %.noexc12.i.i.i
  %i.bm = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def9item_trees0_1__35file_item_tree_query_Configuration_E10fetch_coldB17_(ptr noundef nonnull align 8 %i.ag, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull align 8 %i.z, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.af, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc17.i.i.i unwind label %.loopexit.i.i.i, !noalias !1482 ; 2 uses

.noexc17.i.i.i:                                   ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def9item_trees0_1__35file_item_tree_query_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.k, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def9item_trees0_1__35file_item_tree_query_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def9item_trees0_1__35file_item_tree_query_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i: ; preds = %.noexc17.i.i.i, %.thread.i.i.i.i.i, %.noexc14.i.i.i, %bb.o
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.au, %bb.o ], [ %i.au, %.noexc14.i.i.i ], [ %i.au, %.thread.i.i.i.i.i ], [ %i.bm, %.noexc17.i.i.i ] ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 46
  %i.bp = load i8, ptr %i.bo, align 2, !range !24, !noalias !1484, !noundef !18
  %i.bq = load i64, ptr %i.bn, align 8, !range !23, !noalias !1484, !noundef !18
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 45
  %i.bs = load atomic i8, ptr %i.br monotonic, align 1, !noalias !1484
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.bs, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def9item_trees0_1__35file_item_tree_query_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.bt = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !1486
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.s, !prof !20

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCsd9Lm8bEdjjY_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECsileJQcQObtj_7hir_def(ptr noundef nonnull align 8 @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1482

bb.t:                                             ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def9item_trees0_1__35file_item_tree_query_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.bv = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bn)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1482

_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.s ], [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.r ], [ %i.bv, %bb.t ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 5 uses
  store i64 -1, ptr %i.bw, align 8, !noalias !1491
  call void @llvm.experimental.noalias.scope.decl(metadata !1492)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !1492, !noalias !1493, !noundef !18 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !1492, !noalias !1493, !nonnull !18, !noundef !18
  %i.cb = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !1492, !noalias !1493, !noundef !18 ; 2 uses
  %.not.i14.i.i.i.i.i = icmp ugt i64 %i.by, %i.cc
  br i1 %.not.i14.i.i.i.i.i, label %bb.u, label %bb.v, !prof !25

bb.u:                                             ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.by, i64 noundef %i.cc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #35
          to label %.noexc.i.i.i.i.i unwind label %bb.x, !noalias !1484

.noexc.i.i.i.i.i:                                 ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.by, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cd = getelementptr [152 x i8], ptr %i.ca, i64 %i.by
  %i.ce = getelementptr i8, ptr %i.cd, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1494
  store i32 %i.ae, ptr %i.a, align 4, !noalias !1494
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.af, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1494
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1494
  invoke void @_RNvMNtCsd9Lm8bEdjjY_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.ce, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bp, i64 noundef %i.bq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc15.i.i.i.i.i unwind label %bb.x, !noalias !1484

.noexc15.i.i.i.i.i:                               ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1494
  %.pre.i.i.i.i.i = load i64, ptr %i.bw, align 8, !noalias !1486
  %i.cf = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.cg = landingpad { ptr, i32 }
          cleanup
  %i.ch = load i64, ptr %i.bw, align 8, !noalias !1486, !noundef !18
  %i.ci = add i64 %i.ch, 1
  store i64 %i.ci, ptr %i.bw, align 8, !noalias !1486
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def9item_trees0_1__35file_item_tree_query_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.k
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.t, %bb.s, %bb.q, %.noexc14.i.i.i, %.noexc16.i.i.i, %bb.j, %bb.i, %.noexc10.i.i.i, %bb.h, %.noexc8.i.i.i, %bb.g, %.noexc4.i.i.i, %.noexc3.i.i.i, %.noexc.i.i.i, %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.x
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cg, %bb.x ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvMNtCsd9Lm8bEdjjY_5salsa6attachNtBG_8Attached6attach7DbGuardECsileJQcQObtj_7hir_def(ptr %.sroa.0.0.i.i.i.i) #32
          to label %bb.ac unwind label %bb.ab, !noalias !1482

bb.y:                                             ; preds = %.noexc15.i.i.i.i.i, %bb.v
  %i.cj = phi i64 [ %i.cf, %.noexc15.i.i.i.i.i ], [ 0, %bb.v ]
  store i64 %i.cj, ptr %i.bw, align 8, !noalias !1486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1484
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ck = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !1482, !noundef !18 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !1482 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !1482
  %.not3.i.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not3.i.i.i.i.i, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cm) ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 56
  %i.co = load ptr, ptr %i.cn, align 8, !invariant.load !18, !noalias !1482, !nonnull !18
  %i.cp = call noundef nonnull align 8 ptr %i.co(ptr noundef nonnull %i.ck) #34, !noalias !1482, !inline_history !1479
  call void @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cp), !noalias !1482
  br label %bb.ae

bb.ab:                                            ; preds = %.body.i.i.i
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !1482
  unreachable

bb.ac:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

bb.ad:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCscAsMj0W7j8b_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #35
  unreachable

bb.ae:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  ret ptr %i.cr
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachRINtNtCshzWfHUSfYae_4core6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtNtCsileJQcQObtj_7hir_def5attrs4docs4DocsEEDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMsl_B39_NtB39_9AttrFlags4docs5docs_0E0B1T_EB3b_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !18, !noundef !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1535)
  %i.h = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) null), !noalias !1535, !inline_history !1497 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !1535, !nonnull !18, !noundef !18
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1535, !nonnull !18, !noundef !18
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1535 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1535 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !1535 ; 6 uses
  %i.j = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 64
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !1536
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i) #34, !noalias !1537, !inline_history !1502 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !1538, !noundef !18 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !1538, !nonnull !18, !noundef !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1538
  store ptr %i.n, ptr %i.g, align 8, !noalias !1538
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !1538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1538
  store ptr %i.l, ptr %i.f, align 8, !noalias !1538
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !1538
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !20

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !1538
  store ptr %i.m, ptr %i.o, align 8, !noalias !1538
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1538
  store ptr %i.g, ptr %i.e, align 8, !noalias !1538
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsileJQcQObtj_7hir_def, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !1538
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !1538
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsileJQcQObtj_7hir_def, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !1538
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @146, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #35, !noalias !1537
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1538
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !18, !noalias !1539, !nonnull !18
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i) #34
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1537, !inline_history !1507 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 11 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1T_9AttrFlags4docs1__20docs__Configuration_EE13get_or_createNCNvMs_B1L_B1J_14fn_ingredient_0EB1V_(ptr noundef nonnull align 4 @_RNvNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB9_9AttrFlags4docs1__15docs__FN_CACHE_, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.x)
          to label %.noexc3.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1537 ; 8 uses

.noexc3.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 120
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !1540
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i, label %bb.g, !prof !20

bb.g:                                             ; preds = %.noexc3.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB3e_9AttrFlags4docs1__NtB36_20docs__Configuration_14fn_ingredient_s_0E0zEB3g_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %.sroa.6.0.copyload.i)
          to label %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1537

_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i: ; preds = %bb.g, %.noexc3.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %i.ae = load i32, ptr %.sroa.7.0.copyload.i, align 4, !range !27, !alias.scope !1541, !noalias !1539, !noundef !18
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 4 ; 11 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 8 ; 13 uses
  switch i32 %i.ae, label %default.unreachable [
    i32 0, label %_RNvXNvCsileJQcQObtj_7hir_defsq_1__NtB4_9AttrDefIdNtNtCsd9Lm8bEdjjY_5salsa2id4AsId5as_id.exit.i.i.i.i
    i32 1, label %bb.h
    i32 2, label %_RNvXNvCsileJQcQObtj_7hir_defsq_1__NtB4_9AttrDefIdNtNtCsd9Lm8bEdjjY_5salsa2id4AsId5as_id.exit.i.i.i.i
    i32 3, label %_RNvXNvCsileJQcQObtj_7hir_defsq_1__NtB4_9AttrDefIdNtNtCsd9Lm8bEdjjY_5salsa2id4AsId5as_id.exit.i.i.i.i
    i32 4, label %_RNvXNvCsileJQcQObtj_7hir_defsq_1__NtB4_9AttrDefIdNtNtCsd9Lm8bEdjjY_5salsa2id4AsId5as_id.exit.i.i.i.i
    i32 5, label %_RNvXNvCsileJQcQObtj_7hir_defsq_1__NtB4_9AttrDefIdNtNtCsd9Lm8bEdjjY_5salsa2id4AsId5as_id.exit.i.i.i.i
    i32 6, label %_RNvXNvCsileJQcQObtj_7hir_defsq_1__NtB4_9AttrDefIdNtNtCsd9Lm8bEdjjY_5salsa2id4AsId5as_id.exit.i.i.i.i
    i32 7, label %_RNvXNvCsileJQcQObtj_7hir_defsq_1__NtB4_9AttrDefIdNtNtCsd9Lm8bEdjjY_5salsa2id4AsId5as_id.exit.i.i.i.i
    i32 8, label %bb.i
    i32 9, label %_RNvXNvCsileJQcQObtj_7hir_defsq_1__NtB4_9AttrDefIdNtNtCsd9Lm8bEdjjY_5salsa2id4AsId5as_id.exit.i.i.i.i
    i32 10, label %_RNvXNvCsileJQcQObtj_7hir_defsq_1__NtB4_9AttrDefIdNtNtCsd9Lm8bEdjjY_5salsa2id4AsId5as_id.exit.i.i.i.i
    i32 11, label %_RNvXNvCsileJQcQObtj_7hir_defsq_1__NtB4_9AttrDefIdNtNtCsd9Lm8bEdjjY_5salsa2id4AsId5as_id.exit.i.i.i.i
    i32 12, label %_RNvXNvCsileJQcQObtj_7hir_defsq_1__NtB4_9AttrDefIdNtNtCsd9Lm8bEdjjY_5salsa2id4AsId5as_id.exit.i.i.i.i
  ]

default.unreachable:                              ; preds = %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i
  unreachable

bb.h:                                             ; preds = %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 12
  br label %_RNvXNvCsileJQcQObtj_7hir_defsq_1__NtB4_9AttrDefIdNtNtCsd9Lm8bEdjjY_5salsa2id4AsId5as_id.exit.i.i.i.i

bb.i:                                             ; preds = %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 12
  br label %_RNvXNvCsileJQcQObtj_7hir_defsq_1__NtB4_9AttrDefIdNtNtCsd9Lm8bEdjjY_5salsa2id4AsId5as_id.exit.i.i.i.i

_RNvXNvCsileJQcQObtj_7hir_defsq_1__NtB4_9AttrDefIdNtNtCsd9Lm8bEdjjY_5salsa2id4AsId5as_id.exit.i.i.i.i: ; preds = %bb.i, %bb.h, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i
  %.sroa.18.0.in.i.i.i.i.i = phi ptr [ %i.ag, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i ], [ %i.ai, %bb.i ], [ %i.ah, %bb.h ], [ %i.ag, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i ], [ %i.ag, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i ], [ %i.ag, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i ], [ %i.ag, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i ], [ %i.ag, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i ], [ %i.ag, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i ], [ %i.ag, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i ], [ %i.ag, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i ], [ %i.ag, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i ], [ %i.ag, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i ]
  %.sroa.0.0.in.i.i.i.i.i = phi ptr [ %i.af, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i ], [ %i.ag, %bb.i ], [ %i.ag, %bb.h ], [ %i.af, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i ], [ %i.af, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i ], [ %i.af, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i ], [ %i.af, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i ], [ %i.af, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i ], [ %i.af, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i ], [ %i.af, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i ], [ %i.af, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i ], [ %i.af, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i ], [ %i.af, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4docs1__NtB7_5docs_14fn_ingredient_.exit.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i = load i32, ptr %.sroa.0.0.in.i.i.i.i.i, align 4, !range !21, !alias.scope !1541, !noalias !1539, !noundef !18 ; 6 uses
  %.sroa.18.0.i.i.i.i.i = load i32, ptr %.sroa.18.0.in.i.i.i.i.i, align 4, !alias.scope !1541, !noalias !1539, !noundef !18 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1539
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !1542, !noundef !18
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc6.i.i.i, label %bb.j, !prof !20

.noexc6.i.i.i:                                    ; preds = %bb.j, %_RNvXNvCsileJQcQObtj_7hir_defsq_1__NtB4_9AttrDefIdNtNtCsd9Lm8bEdjjY_5salsa2id4AsId5as_id.exit.i.i.i.i
  %i.al = invoke noundef zeroext i1 @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1537

.noexc5.i.i.i:                                    ; preds = %.noexc6.i.i.i
  br i1 %i.al, label %bb.k, label %.noexc8.i.i.i, !prof !22

bb.j:                                             ; preds = %_RNvXNvCsileJQcQObtj_7hir_defsq_1__NtB4_9AttrDefIdNtNtCsd9Lm8bEdjjY_5salsa2id4AsId5as_id.exit.i.i.i.i
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @150) #36
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1537

.noexc8.i.i.i:                                    ; preds = %bb.k, %.noexc5.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.an = invoke noundef zeroext i1 @_RNvMs3_NtCsd9Lm8bEdjjY_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.am)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1537

.noexc7.i.i.i:                                    ; preds = %.noexc8.i.i.i
  br i1 %i.an, label %bb.l, label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !22

bb.k:                                             ; preds = %.noexc5.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1537

bb.l:                                             ; preds = %.noexc7.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1537

_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.l, %.noexc7.i.i.i
  %i.ao = getelementptr i8, ptr %i.z, i64 656     ; 2 uses
  %.val8.i.i.i.i.i = load i32, ptr %i.ao, align 8, !noalias !1542, !noundef !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1543), !noalias !1544
  %i.ap = add i32 %.sroa.0.0.i.i.i.i.i, -1
  %i.aq = lshr i32 %i.ap, 10
  %i.ar = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.as = invoke noundef i64 @_RNvMs8_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCsileJQcQObtj_7hir_def(i64 noundef %i.ar)
          to label %.noexc10.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1537

.noexc10.i.i.i:                                   ; preds = %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 328
  %i.au = invoke noundef align 8 ptr @_RNvMs2_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCsd9Lm8bEdjjY_5salsa5table4PageEKj3a_E3getCsileJQcQObtj_7hir_def(ptr noundef nonnull align 8 %i.at, i64 noundef %i.as)
          to label %.noexc11.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1537 ; 3 uses

.noexc11.i.i.i:                                   ; preds = %.noexc10.i.i.i
  %.not.i1.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i1.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.noexc11.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.aw = load atomic i8, ptr %i.av acquire, align 8, !noalias !1545
  %.not6.i.i.i.i.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not6.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i, label %_RNvMNtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB2_3VecNtNtCsd9Lm8bEdjjY_5salsa5table4PageE3getCsileJQcQObtj_7hir_def.exit.i.i.i.i.i.i

_RNvMNtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB2_3VecNtNtCsd9Lm8bEdjjY_5salsa5table4PageE3getCsileJQcQObtj_7hir_def.exit.i.i.i.i.i.i: ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.ay = load i32, ptr %i.ax, align 8, !noalias !1545, !noundef !18
  %i.az = zext i32 %i.ay to i64                   ; 3 uses
end_hunk_3
begin_hunk_4_@_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachRINtNtCshzWfHUSfYae_4core6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtNtCsileJQcQObtj_7hir_def5attrs4docs4DocsEEDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMsl_B39_NtB39_9AttrFlags4docs5docs_0E0B1T_EB3b_:bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8, !noalias !1547 ; 3 uses
  %i.bo = icmp ne i64 %i.bn, 0
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = load i64, ptr %i.am, align 8, !range !23, !noalias !1548, !noundef !18
  %i.bq = icmp eq i64 %i.bn, %i.bp
  br i1 %i.bq, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !20

_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.q
  %i.br = invoke noundef i8 @_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.bm, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.bn) #36
          to label %.noexc15.i.i.i unwind label %.loopexit.i.i.i, !noalias !1537 ; 2 uses

.noexc15.i.i.i:                                   ; preds = %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.bs = icmp eq i8 %i.br, 2
  br i1 %i.bs, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags4docs1__20docs__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.noexc15.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 45
  %i.bu = load atomic i8, ptr %i.bt monotonic, align 1, !noalias !1539
  %.not6.i.i.i.i.i.i = icmp eq i8 %i.bu, 0
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags4docs1__20docs__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %bb.s

.thread.i.i.i.i.i:                                ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 45
  %i.bw = load atomic i8, ptr %i.bv monotonic, align 1, !noalias !1539
  %.not6.i22.i.i.i.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not6.i22.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags4docs1__20docs__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags4docs1__20docs__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.bx = icmp eq i8 %i.br, 1
  br i1 %i.bx, label %bb.t, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags4docs1__20docs__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1549
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !1542
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1549
  store ptr %i.c, ptr %i.b, align 8, !noalias !1549
  %i.by = load ptr, ptr %i.aj, align 8, !noalias !1549, !noundef !18
  %.not.i12.i.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i12.i.i.i.i.i, label %.noexc18.i.i.i, label %bb.u, !prof !20

.noexc18.i.i.i:                                   ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1549
  %i.bz = load i64, ptr %i.am, align 8, !range !23, !noalias !1549, !noundef !18
  invoke void @_RNvMs1_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.bm, i64 noundef %i.bz)
          to label %.noexc16.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1537

.noexc16.i.i.i:                                   ; preds = %.noexc18.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1549
  invoke void @_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.bm, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags4docs1__20docs__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1537

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @149) #36
          to label %.noexc18.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1537

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags4docs1__20docs__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.r, %.noexc15.i.i.i, %bb.p, %.noexc14.i.i.i
  %i.ca = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags4docs1__20docs__Configuration_E10fetch_coldB1d_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %.sroa.0.0.i.i.i.i.i, i32 noundef %.sroa.18.0.i.i.i.i.i, i32 noundef %i.bf)
          to label %.noexc19.i.i.i unwind label %.loopexit.i.i.i, !noalias !1537 ; 2 uses

.noexc19.i.i.i:                                   ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags4docs1__20docs__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.o, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags4docs1__20docs__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags4docs1__20docs__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i: ; preds = %.noexc19.i.i.i, %.thread.i.i.i.i.i, %.noexc16.i.i.i, %bb.s
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.bi, %bb.s ], [ %i.bi, %.noexc16.i.i.i ], [ %i.bi, %.thread.i.i.i.i.i ], [ %i.ca, %.noexc19.i.i.i ] ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !1542, !noundef !18
  %.not.i6.i.i.i.i.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i6.i.i.i.i.i, label %_RNvXs_NtNtNtCsd9Lm8bEdjjY_5salsa8function8eviction3lruNtB4_3LruNtB6_14EvictionPolicy10record_use.exit.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags4docs1__20docs__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i
  invoke void @_RNvMNtNtNtCsd9Lm8bEdjjY_5salsa8function8eviction3lruNtB2_3Lru6insert(ptr noundef nonnull align 8 %i.cb, i32 noundef range(i32 1, 0) %.sroa.0.0.i.i.i.i.i, i32 noundef %.sroa.18.0.i.i.i.i.i) #36
          to label %_RNvXs_NtNtNtCsd9Lm8bEdjjY_5salsa8function8eviction3lruNtB4_3LruNtB6_14EvictionPolicy10record_use.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1537

_RNvXs_NtNtNtCsd9Lm8bEdjjY_5salsa8function8eviction3lruNtB4_3LruNtB6_14EvictionPolicy10record_use.exit.i.i.i.i.i: ; preds = %bb.v, %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags4docs1__20docs__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 46
  %i.cf = load i8, ptr %i.ce, align 2, !range !24, !noalias !1539, !noundef !18
  %i.cg = load i64, ptr %i.cd, align 8, !range !23, !noalias !1539, !noundef !18
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 45
  %i.ci = load atomic i8, ptr %i.ch monotonic, align 1, !noalias !1539
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.ci, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %_RNvXs_NtNtNtCsd9Lm8bEdjjY_5salsa8function8eviction3lruNtB4_3LruNtB6_14EvictionPolicy10record_use.exit.i.i.i.i.i
  %i.cj = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !1542
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.x, !prof !20

bb.x:                                             ; preds = %bb.w
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCsd9Lm8bEdjjY_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECsileJQcQObtj_7hir_def(ptr noundef nonnull align 8 @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1537

bb.y:                                             ; preds = %_RNvXs_NtNtNtCsd9Lm8bEdjjY_5salsa8function8eviction3lruNtB4_3LruNtB6_14EvictionPolicy10record_use.exit.i.i.i.i.i
  %i.cl = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.cd)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1537

_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.y, %bb.x, %bb.w
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.x ], [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.w ], [ %i.cl, %bb.y ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store i64 -1, ptr %i.cm, align 8, !noalias !1550
  call void @llvm.experimental.noalias.scope.decl(metadata !1551)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !1551, !noalias !1552, !noundef !18 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !1551, !noalias !1552, !nonnull !18, !noundef !18
  %i.cr = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !1551, !noalias !1552, !noundef !18 ; 2 uses
  %.not.i14.i.i.i.i.i = icmp ugt i64 %i.co, %i.cs
  br i1 %.not.i14.i.i.i.i.i, label %bb.z, label %bb.aa, !prof !25

bb.z:                                             ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.co, i64 noundef %i.cs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #35
          to label %.noexc.i.i.i.i.i unwind label %bb.ac, !noalias !1539

.noexc.i.i.i.i.i:                                 ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.co, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ct = getelementptr [152 x i8], ptr %i.cq, i64 %i.co
  %i.cu = getelementptr i8, ptr %i.ct, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1553
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %i.a, align 4, !noalias !1553
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.18.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1553
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val8.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1553
  invoke void @_RNvMNtCsd9Lm8bEdjjY_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.cu, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.cf, i64 noundef %i.cg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc15.i.i.i.i.i unwind label %bb.ac, !noalias !1539

.noexc15.i.i.i.i.i:                               ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1553
  %.pre.i.i.i.i.i = load i64, ptr %i.cm, align 8, !noalias !1542
  %i.cv = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %i.cw = landingpad { ptr, i32 }
          cleanup
  %i.cx = load i64, ptr %i.cm, align 8, !noalias !1542, !noundef !18
  %i.cy = add i64 %i.cx, 1
  store i64 %i.cy, ptr %i.cm, align 8, !noalias !1542
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags4docs1__20docs__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.o
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.y, %bb.x, %bb.v, %bb.u, %.noexc16.i.i.i, %.noexc18.i.i.i, %bb.n, %select.unfold.i.i.i.i.i.i, %.noexc10.i.i.i, %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, %bb.l, %bb.k, %.noexc8.i.i.i, %bb.j, %.noexc6.i.i.i, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.ac
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cw, %bb.ac ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvMNtCsd9Lm8bEdjjY_5salsa6attachNtBG_8Attached6attach7DbGuardECsileJQcQObtj_7hir_def(ptr %.sroa.0.0.i.i.i.i) #32
          to label %bb.ah unwind label %bb.ag, !noalias !1537

bb.ad:                                            ; preds = %.noexc15.i.i.i.i.i, %bb.aa
  %i.cz = phi i64 [ %i.cv, %.noexc15.i.i.i.i.i ], [ 0, %bb.aa ]
  store i64 %i.cz, ptr %i.cm, align 8, !noalias !1542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1539
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.da = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !1537, !noundef !18 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !1537 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !1537
  %.not3.i.i.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not3.i.i.i.i.i, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dc) ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 56
  %i.de = load ptr, ptr %i.dd, align 8, !invariant.load !18, !noalias !1537, !nonnull !18
  %i.df = call noundef nonnull align 8 ptr %i.de(ptr noundef nonnull %i.da) #34, !noalias !1537, !inline_history !1534
  call void @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.df), !noalias !1537
  br label %bb.aj

bb.ag:                                            ; preds = %.body.i.i.i
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !1537
  unreachable

bb.ah:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

bb.ai:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCscAsMj0W7j8b_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #35
  unreachable

bb.aj:                                            ; preds = %bb.ad, %bb.ae, %bb.af
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  ret ptr %i.dh
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachRINtNtCshzWfHUSfYae_4core6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSmEEDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB41_9AttrFlags28legacy_const_generic_indices29legacy_const_generic_indices_0E0B1T_EB43_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !18, !noundef !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1590)
  %i.h = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) null), !noalias !1590, !inline_history !1556 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !1590, !nonnull !18, !noundef !18
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1590, !nonnull !18, !noundef !18
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1590 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1590 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !1590 ; 3 uses
  %i.j = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 64
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !1591
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i) #34, !noalias !1592, !inline_history !1561 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !1593, !noundef !18 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !1593, !nonnull !18, !noundef !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1593
  store ptr %i.n, ptr %i.g, align 8, !noalias !1593
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !1593
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1593
  store ptr %i.l, ptr %i.f, align 8, !noalias !1593
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !1593
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !20

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !1593
  store ptr %i.m, ptr %i.o, align 8, !noalias !1593
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1593
  store ptr %i.g, ptr %i.e, align 8, !noalias !1593
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsileJQcQObtj_7hir_def, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !1593
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !1593
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsileJQcQObtj_7hir_def, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !1593
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @146, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #35, !noalias !1592
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1593
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !18, !noalias !1594, !nonnull !18
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i) #34
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1592, !inline_history !1566 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 10 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1T_9AttrFlags28legacy_const_generic_indices1__44legacy_const_generic_indices__Configuration_EE13get_or_createNCNvMs_B1L_B1J_14fn_ingredient_0EB1V_(ptr noundef nonnull align 4 @_RNvNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB9_9AttrFlags28legacy_const_generic_indices1__39legacy_const_generic_indices__FN_CACHE_, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.x)
          to label %.noexc3.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1592 ; 6 uses

.noexc3.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 520
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !1595
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags28legacy_const_generic_indices1__NtB7_29legacy_const_generic_indices_14fn_ingredient_.exit.i.i.i.i, label %bb.g, !prof !20

bb.g:                                             ; preds = %.noexc3.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 480
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB3e_9AttrFlags28legacy_const_generic_indices1__NtB36_44legacy_const_generic_indices__Configuration_14fn_ingredient_s_0E0zEB3g_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %.sroa.6.0.copyload.i)
          to label %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags28legacy_const_generic_indices1__NtB7_29legacy_const_generic_indices_14fn_ingredient_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1592

_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags28legacy_const_generic_indices1__NtB7_29legacy_const_generic_indices_14fn_ingredient_.exit.i.i.i.i: ; preds = %bb.g, %.noexc3.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %.val.i.i.i.i = load i32, ptr %.sroa.7.0.copyload.i, align 4, !range !21, !noalias !1594, !noundef !18 ; 4 uses
  %i.ae = getelementptr i8, ptr %.sroa.7.0.copyload.i, i64 4
  %.val1.i.i.i.i = load i32, ptr %i.ae, align 4, !noalias !1594, !noundef !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1594
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !1596, !noundef !18
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc6.i.i.i, label %bb.h, !prof !20

.noexc6.i.i.i:                                    ; preds = %bb.h, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags28legacy_const_generic_indices1__NtB7_29legacy_const_generic_indices_14fn_ingredient_.exit.i.i.i.i
  %i.ah = invoke noundef zeroext i1 @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1592

.noexc5.i.i.i:                                    ; preds = %.noexc6.i.i.i
  br i1 %i.ah, label %bb.i, label %.noexc8.i.i.i, !prof !22

bb.h:                                             ; preds = %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags28legacy_const_generic_indices1__NtB7_29legacy_const_generic_indices_14fn_ingredient_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @150) #36
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1592

.noexc8.i.i.i:                                    ; preds = %bb.i, %.noexc5.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.aj = invoke noundef zeroext i1 @_RNvMs3_NtCsd9Lm8bEdjjY_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ai)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1592

.noexc7.i.i.i:                                    ; preds = %.noexc8.i.i.i
  br i1 %i.aj, label %bb.j, label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !22

bb.i:                                             ; preds = %.noexc5.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1592

bb.j:                                             ; preds = %.noexc7.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1592

_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc7.i.i.i
  %i.ak = getelementptr i8, ptr %i.z, i64 576     ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.ak, align 8, !noalias !1596, !noundef !18
  %i.al = getelementptr i8, ptr %i.z, i64 580
  %.val8.i.i.i.i.i = load i32, ptr %i.al, align 4, !alias.scope !1597, !noalias !1596, !noundef !18 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.noexc15.i.i.i, %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.ao = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function4memoINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1a_9AttrFlags28legacy_const_generic_indices1__44legacy_const_generic_indices__Configuration_E23get_memo_from_table_forB1c_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %.val.i.i.i.i, i32 noundef %.val1.i.i.i.i, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc10.i.i.i unwind label %.loopexit.i.i.i, !noalias !1592 ; 8 uses

.noexc10.i.i.i:                                   ; preds = %bb.k
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags28legacy_const_generic_indices1__44legacy_const_generic_indices__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc10.i.i.i
  %i.ap = load i64, ptr %i.ao, align 8, !range !26, !noalias !1594, !noundef !18
  %i.aq = trunc nuw i64 %i.ap to i1
  br i1 %i.aq, label %bb.m, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags28legacy_const_generic_indices1__44legacy_const_generic_indices__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ar = load i32, ptr %i.ak, align 8, !noalias !1596, !noundef !18
  store i32 %.val.i.i.i.i, ptr %i.d, align 4, !noalias !1596
  store i32 %.val1.i.i.i.i, ptr %i.am, align 4, !noalias !1596
  store i32 %i.ar, ptr %i.an, align 4, !noalias !1596
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8, !noalias !1598 ; 3 uses
  %i.au = icmp ne i64 %i.at, 0
  tail call void @llvm.assume(i1 %i.au)
  %i.av = load i64, ptr %i.ai, align 8, !range !23, !noalias !1599, !noundef !18
  %i.aw = icmp eq i64 %i.at, %i.av
  br i1 %i.aw, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !20

_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ax = invoke noundef i8 @_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.as, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.at) #36
          to label %.noexc11.i.i.i unwind label %.loopexit.i.i.i, !noalias !1592 ; 2 uses

.noexc11.i.i.i:                                   ; preds = %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.ay = icmp eq i8 %i.ax, 2
  br i1 %i.ay, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags28legacy_const_generic_indices1__44legacy_const_generic_indices__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc11.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 53
  %i.ba = load atomic i8, ptr %i.az monotonic, align 1, !noalias !1594
  %.not6.i.i.i.i.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags28legacy_const_generic_indices1__44legacy_const_generic_indices__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 53
  %i.bc = load atomic i8, ptr %i.bb monotonic, align 1, !noalias !1594
  %.not6.i22.i.i.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not6.i22.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags28legacy_const_generic_indices1__44legacy_const_generic_indices__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags28legacy_const_generic_indices1__44legacy_const_generic_indices__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bd = icmp eq i8 %i.ax, 1
  br i1 %i.bd, label %bb.p, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags28legacy_const_generic_indices1__44legacy_const_generic_indices__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !1596
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1600
  store ptr %i.c, ptr %i.b, align 8, !noalias !1600
  %i.be = load ptr, ptr %i.af, align 8, !noalias !1600, !noundef !18
  %.not.i12.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i12.i.i.i.i.i, label %.noexc14.i.i.i, label %bb.q, !prof !20

.noexc14.i.i.i:                                   ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1600
  %i.bf = load i64, ptr %i.ai, align 8, !range !23, !noalias !1600, !noundef !18
  invoke void @_RNvMs1_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.as, i64 noundef %i.bf)
          to label %.noexc12.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1592

.noexc12.i.i.i:                                   ; preds = %.noexc14.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1600
  invoke void @_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.as, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags28legacy_const_generic_indices1__44legacy_const_generic_indices__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1592

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @149) #36
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1592

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags28legacy_const_generic_indices1__44legacy_const_generic_indices__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.n, %.noexc11.i.i.i, %bb.l, %.noexc10.i.i.i
  %i.bg = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags28legacy_const_generic_indices1__44legacy_const_generic_indices__Configuration_E10fetch_coldB1d_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %.val.i.i.i.i, i32 noundef %.val1.i.i.i.i, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc15.i.i.i unwind label %.loopexit.i.i.i, !noalias !1592 ; 2 uses

.noexc15.i.i.i:                                   ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags28legacy_const_generic_indices1__44legacy_const_generic_indices__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.k, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags28legacy_const_generic_indices1__44legacy_const_generic_indices__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags28legacy_const_generic_indices1__44legacy_const_generic_indices__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i: ; preds = %.noexc15.i.i.i, %.thread.i.i.i.i.i, %.noexc12.i.i.i, %bb.o
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.ao, %bb.o ], [ %i.ao, %.noexc12.i.i.i ], [ %i.ao, %.thread.i.i.i.i.i ], [ %i.bg, %.noexc15.i.i.i ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 54
  %i.bj = load i8, ptr %i.bi, align 2, !range !24, !noalias !1594, !noundef !18
  %i.bk = load i64, ptr %i.bh, align 8, !range !23, !noalias !1594, !noundef !18
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 53
  %i.bm = load atomic i8, ptr %i.bl monotonic, align 1, !noalias !1594
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.bm, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags28legacy_const_generic_indices1__44legacy_const_generic_indices__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i
  %i.bn = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !1596
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.s, !prof !20

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCsd9Lm8bEdjjY_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECsileJQcQObtj_7hir_def(ptr noundef nonnull align 8 @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1592

bb.t:                                             ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags28legacy_const_generic_indices1__44legacy_const_generic_indices__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i
  %i.bp = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bh)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1592

_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.s ], [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.r ], [ %i.bp, %bb.t ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store i64 -1, ptr %i.bq, align 8, !noalias !1601
  call void @llvm.experimental.noalias.scope.decl(metadata !1602)
  %i.br = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !1602, !noalias !1603, !noundef !18 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !1602, !noalias !1603, !nonnull !18, !noundef !18
  %i.bv = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !1602, !noalias !1603, !noundef !18 ; 2 uses
  %.not.i14.i.i.i.i.i = icmp ugt i64 %i.bs, %i.bw
  br i1 %.not.i14.i.i.i.i.i, label %bb.u, label %bb.v, !prof !25

bb.u:                                             ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bs, i64 noundef %i.bw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #35
          to label %.noexc.i.i.i.i.i unwind label %bb.x, !noalias !1594

.noexc.i.i.i.i.i:                                 ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bx = getelementptr [152 x i8], ptr %i.bu, i64 %i.bs
  %i.by = getelementptr i8, ptr %i.bx, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1604
  store i32 %.val.i.i.i.i, ptr %i.a, align 4, !noalias !1604
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.val1.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1604
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1604
  invoke void @_RNvMNtCsd9Lm8bEdjjY_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.by, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bj, i64 noundef %i.bk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc15.i.i.i.i.i unwind label %bb.x, !noalias !1594

.noexc15.i.i.i.i.i:                               ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1604
  %.pre.i.i.i.i.i = load i64, ptr %i.bq, align 8, !noalias !1596
  %i.bz = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = load i64, ptr %i.bq, align 8, !noalias !1596, !noundef !18
  %i.cc = add i64 %i.cb, 1
  store i64 %i.cc, ptr %i.bq, align 8, !noalias !1596
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags28legacy_const_generic_indices1__44legacy_const_generic_indices__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.k
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.t, %bb.s, %bb.q, %.noexc12.i.i.i, %.noexc14.i.i.i, %bb.j, %bb.i, %.noexc8.i.i.i, %bb.h, %.noexc6.i.i.i, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.x
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ca, %bb.x ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvMNtCsd9Lm8bEdjjY_5salsa6attachNtBG_8Attached6attach7DbGuardECsileJQcQObtj_7hir_def(ptr %.sroa.0.0.i.i.i.i) #32
          to label %bb.ac unwind label %bb.ab, !noalias !1592

bb.y:                                             ; preds = %.noexc15.i.i.i.i.i, %bb.v
  %i.cd = phi i64 [ %i.bz, %.noexc15.i.i.i.i.i ], [ 0, %bb.v ]
  store i64 %i.cd, ptr %i.bq, align 8, !noalias !1596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1594
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ce = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !1592, !noundef !18 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !1592 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !1592
  %.not3.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not3.i.i.i.i.i, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cg) ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  %i.ci = load ptr, ptr %i.ch, align 8, !invariant.load !18, !noalias !1592, !nonnull !18
  %i.cj = call noundef nonnull align 8 ptr %i.ci(ptr noundef nonnull %i.ce) #34, !noalias !1592, !inline_history !1589
  call void @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cj), !noalias !1592
  br label %bb.ae

bb.ab:                                            ; preds = %.body.i.i.i
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !1592
  unreachable

bb.ac:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

bb.ad:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCscAsMj0W7j8b_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #35
  unreachable

bb.ae:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  ret ptr %i.cl
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachRINtNtCshzWfHUSfYae_4core6option6OptionNtCs42xZ1oUXfIG_8smol_str7SmolStrEDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB3W_9AttrFlags17doc_html_root_url18doc_html_root_url_0E0B1T_EB3Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !18, !noundef !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1637)
  %i.h = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) null), !noalias !1637, !inline_history !1607 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE8try_withNCINvBW_6attachRINtNtCshzWfHUSfYae_4core6option6OptionNtCs42xZ1oUXfIG_8smol_str7SmolStrEDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB40_9AttrFlags17doc_html_root_url18doc_html_root_url_0E0B1X_EB42_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !1637, !nonnull !18, !noundef !18
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1637, !nonnull !18, !noundef !18
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1637 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1637 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !1637 ; 3 uses
  %i.j = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 64
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !1638
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i) #34, !noalias !1639, !inline_history !1612 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !1640, !noundef !18 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !1640, !nonnull !18, !noundef !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1640
  store ptr %i.n, ptr %i.g, align 8, !noalias !1640
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !1640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1640
  store ptr %i.l, ptr %i.f, align 8, !noalias !1640
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !1640
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !20

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !1640
  store ptr %i.m, ptr %i.o, align 8, !noalias !1640
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1640
  store ptr %i.g, ptr %i.e, align 8, !noalias !1640
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsileJQcQObtj_7hir_def, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !1640
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !1640
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsileJQcQObtj_7hir_def, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !1640
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @146, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #35, !noalias !1639
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1640
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !18, !noalias !1641, !nonnull !18
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i) #34
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1639, !inline_history !1617 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 10 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1T_9AttrFlags17doc_html_root_url1__33doc_html_root_url__Configuration_EE13get_or_createNCNvMs_B1L_B1J_14fn_ingredient_0EB1V_(ptr noundef nonnull align 4 @_RNvNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB9_9AttrFlags17doc_html_root_url1__28doc_html_root_url__FN_CACHE_, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.x)
          to label %.noexc3.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1639 ; 6 uses

.noexc3.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 520
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !1642
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB3j_9AttrFlags17doc_html_root_url1__NtB3b_33doc_html_root_url__Configuration_14fn_ingredient_s_0E0zEB3l_.exit.i.i.i.i, label %bb.g, !prof !20

bb.g:                                             ; preds = %.noexc3.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 480
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB3e_9AttrFlags17doc_html_root_url1__NtB36_33doc_html_root_url__Configuration_14fn_ingredient_s_0E0zEB3g_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %.sroa.6.0.copyload.i)
          to label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB3j_9AttrFlags17doc_html_root_url1__NtB3b_33doc_html_root_url__Configuration_14fn_ingredient_s_0E0zEB3l_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1639

_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB3j_9AttrFlags17doc_html_root_url1__NtB3b_33doc_html_root_url__Configuration_14fn_ingredient_s_0E0zEB3l_.exit.i.i.i.i: ; preds = %bb.g, %.noexc3.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %i.ae = load i32, ptr %.sroa.7.0.copyload.i, align 4, !range !21, !noalias !1641, !noundef !18 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noalias !1641, !noundef !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1641
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !1643, !noundef !18
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc6.i.i.i, label %bb.h, !prof !20

.noexc6.i.i.i:                                    ; preds = %bb.h, %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB3j_9AttrFlags17doc_html_root_url1__NtB3b_33doc_html_root_url__Configuration_14fn_ingredient_s_0E0zEB3l_.exit.i.i.i.i
  %i.aj = invoke noundef zeroext i1 @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1639

.noexc5.i.i.i:                                    ; preds = %.noexc6.i.i.i
  br i1 %i.aj, label %bb.i, label %.noexc8.i.i.i, !prof !22

bb.h:                                             ; preds = %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB3j_9AttrFlags17doc_html_root_url1__NtB3b_33doc_html_root_url__Configuration_14fn_ingredient_s_0E0zEB3l_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @150) #36
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1639

.noexc8.i.i.i:                                    ; preds = %bb.i, %.noexc5.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.al = invoke noundef zeroext i1 @_RNvMs3_NtCsd9Lm8bEdjjY_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ak)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1639

.noexc7.i.i.i:                                    ; preds = %.noexc8.i.i.i
  br i1 %i.al, label %bb.j, label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !22

bb.i:                                             ; preds = %.noexc5.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1639

bb.j:                                             ; preds = %.noexc7.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1639

_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc7.i.i.i
  %i.am = getelementptr i8, ptr %i.z, i64 576     ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.am, align 8, !noalias !1643, !noundef !18
  %i.an = getelementptr i8, ptr %i.z, i64 580
  %.val8.i.i.i.i.i = load i32, ptr %i.an, align 4, !alias.scope !1644, !noalias !1643, !noundef !18 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.noexc15.i.i.i, %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.aq = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function4memoINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1a_9AttrFlags17doc_html_root_url1__33doc_html_root_url__Configuration_E23get_memo_from_table_forB1c_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc10.i.i.i unwind label %.loopexit.i.i.i, !noalias !1639 ; 8 uses

.noexc10.i.i.i:                                   ; preds = %bb.k
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags17doc_html_root_url1__33doc_html_root_url__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc10.i.i.i
  %i.ar = load i8, ptr %i.aq, align 8, !range !1645, !noalias !1641, !noundef !18
  %.not6.i.i.i.i.i.i = icmp eq i8 %i.ar, -2
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags17doc_html_root_url1__33doc_html_root_url__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = load i32, ptr %i.am, align 8, !noalias !1643, !noundef !18
  store i32 %i.ae, ptr %i.d, align 4, !noalias !1643
  store i32 %i.ag, ptr %i.ao, align 4, !noalias !1643
  store i32 %i.as, ptr %i.ap, align 4, !noalias !1643
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8, !noalias !1646 ; 3 uses
  %i.av = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i64, ptr %i.ak, align 8, !range !23, !noalias !1647, !noundef !18
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !20

_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ay = invoke noundef i8 @_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.at, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.au) #36
          to label %.noexc11.i.i.i unwind label %.loopexit.i.i.i, !noalias !1639 ; 2 uses

.noexc11.i.i.i:                                   ; preds = %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.az = icmp eq i8 %i.ay, 2
  br i1 %i.az, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags17doc_html_root_url1__33doc_html_root_url__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc11.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 53
  %i.bb = load atomic i8, ptr %i.ba monotonic, align 1, !noalias !1641
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags17doc_html_root_url1__33doc_html_root_url__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 53
  %i.bd = load atomic i8, ptr %i.bc monotonic, align 1, !noalias !1641
  %.not7.i22.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not7.i22.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags17doc_html_root_url1__33doc_html_root_url__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags17doc_html_root_url1__33doc_html_root_url__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.be = icmp eq i8 %i.ay, 1
  br i1 %i.be, label %bb.p, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags17doc_html_root_url1__33doc_html_root_url__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1648
end_hunk_4
begin_hunk_5_@_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachRINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsileJQcQObtj_7hir_def5attrs10DeriveInfoEDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMsl_B2y_NtB2y_9AttrFlags11derive_info11derive_info0E0B1T_EB2A_:bb.a
bb.n:                                             ; preds = %.noexc14.i.i.i
  %i.bg = load i64, ptr %i.bf, align 8, !range !26, !noalias !1755, !noundef !18
  %i.bh = trunc nuw i64 %i.bg to i1
  br i1 %i.bh, label %bb.o, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags11derive_info1__26derive_info_Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bi = load i32, ptr %i.al, align 8, !noalias !1757, !noundef !18
  store i32 %.val.i.i.i.i, ptr %i.d, align 4, !noalias !1757
  store i32 %.val1.i.i.i.i, ptr %i.bd, align 4, !noalias !1757
  store i32 %i.bi, ptr %i.be, align 4, !noalias !1757
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 32 ; 4 uses
  %i.bk = load atomic i64, ptr %i.bj acquire, align 8, !noalias !1762 ; 3 uses
  %i.bl = icmp ne i64 %i.bk, 0
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = load i64, ptr %i.aj, align 8, !range !23, !noalias !1763, !noundef !18
  %i.bn = icmp eq i64 %i.bk, %i.bm
  br i1 %i.bn, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !20

_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.o
  %i.bo = invoke noundef i8 @_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.bj, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.bk) #36
          to label %.noexc15.i.i.i unwind label %.loopexit.i.i.i, !noalias !1753 ; 2 uses

.noexc15.i.i.i:                                   ; preds = %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.bp = icmp eq i8 %i.bo, 2
  br i1 %i.bp, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags11derive_info1__26derive_info_Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.noexc15.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 61
  %i.br = load atomic i8, ptr %i.bq monotonic, align 1, !noalias !1755
  %.not6.i.i.i.i.i.i = icmp eq i8 %i.br, 0
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags11derive_info1__26derive_info_Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %bb.q

.thread.i.i.i.i.i:                                ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bf, i64 61
  %i.bt = load atomic i8, ptr %i.bs monotonic, align 1, !noalias !1755
  %.not6.i21.i.i.i.i.i = icmp eq i8 %i.bt, 0
  br i1 %.not6.i21.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags11derive_info1__26derive_info_Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags11derive_info1__26derive_info_Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.bu = icmp eq i8 %i.bo, 1
  br i1 %i.bu, label %bb.r, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags11derive_info1__26derive_info_Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1764
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !1757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1764
  store ptr %i.c, ptr %i.b, align 8, !noalias !1764
  %i.bv = load ptr, ptr %i.ag, align 8, !noalias !1764, !noundef !18
  %.not.i11.i.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i11.i.i.i.i.i, label %.noexc18.i.i.i, label %bb.s, !prof !20

.noexc18.i.i.i:                                   ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1764
  %i.bw = load i64, ptr %i.aj, align 8, !range !23, !noalias !1764, !noundef !18
  invoke void @_RNvMs1_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.bj, i64 noundef %i.bw)
          to label %.noexc16.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1753

.noexc16.i.i.i:                                   ; preds = %.noexc18.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1764
  invoke void @_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.bj, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags11derive_info1__26derive_info_Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1753

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @149) #36
          to label %.noexc18.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1753

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags11derive_info1__26derive_info_Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.p, %.noexc15.i.i.i, %bb.n, %.noexc14.i.i.i
  %i.bx = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags11derive_info1__26derive_info_Configuration_E10fetch_coldB1d_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %.val.i.i.i.i, i32 noundef %.val1.i.i.i.i, i32 noundef %i.bc)
          to label %.noexc19.i.i.i unwind label %.loopexit.i.i.i, !noalias !1753 ; 2 uses

.noexc19.i.i.i:                                   ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags11derive_info1__26derive_info_Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.m, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags11derive_info1__26derive_info_Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags11derive_info1__26derive_info_Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i: ; preds = %.noexc19.i.i.i, %.thread.i.i.i.i.i, %.noexc16.i.i.i, %bb.q
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.bf, %bb.q ], [ %i.bf, %.noexc16.i.i.i ], [ %i.bf, %.thread.i.i.i.i.i ], [ %i.bx, %.noexc19.i.i.i ] ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 62
  %i.ca = load i8, ptr %i.bz, align 2, !range !24, !noalias !1755, !noundef !18
  %i.cb = load i64, ptr %i.by, align 8, !range !23, !noalias !1755, !noundef !18
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 61
  %i.cd = load atomic i8, ptr %i.cc monotonic, align 1, !noalias !1755
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags11derive_info1__26derive_info_Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i
  %i.ce = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !1757
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.u, !prof !20

bb.u:                                             ; preds = %bb.t
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCsd9Lm8bEdjjY_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECsileJQcQObtj_7hir_def(ptr noundef nonnull align 8 @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1753

bb.v:                                             ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags11derive_info1__26derive_info_Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i
  %i.cg = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.by)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1753

_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u, %bb.t
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.u ], [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.t ], [ %i.cg, %bb.v ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store i64 -1, ptr %i.ch, align 8, !noalias !1765
  call void @llvm.experimental.noalias.scope.decl(metadata !1766)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !1766, !noalias !1767, !noundef !18 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !1766, !noalias !1767, !nonnull !18, !noundef !18
  %i.cm = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !1766, !noalias !1767, !noundef !18 ; 2 uses
  %.not.i13.i.i.i.i.i = icmp ugt i64 %i.cj, %i.cn
  br i1 %.not.i13.i.i.i.i.i, label %bb.w, label %bb.x, !prof !25

bb.w:                                             ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.cj, i64 noundef %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #35
          to label %.noexc.i.i.i.i.i unwind label %bb.z, !noalias !1755

.noexc.i.i.i.i.i:                                 ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.co = getelementptr [152 x i8], ptr %i.cl, i64 %i.cj
  %i.cp = getelementptr i8, ptr %i.co, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1768
  store i32 %.val.i.i.i.i, ptr %i.a, align 4, !noalias !1768
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.val1.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1768
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1768
  invoke void @_RNvMNtCsd9Lm8bEdjjY_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.cp, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.ca, i64 noundef %i.cb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc14.i.i.i.i.i unwind label %bb.z, !noalias !1755

.noexc14.i.i.i.i.i:                               ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1768
  %.pre.i.i.i.i.i = load i64, ptr %i.ch, align 8, !noalias !1757
  %i.cq = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.w
  %i.cr = landingpad { ptr, i32 }
          cleanup
  %i.cs = load i64, ptr %i.ch, align 8, !noalias !1757, !noundef !18
  %i.ct = add i64 %i.cs, 1
  store i64 %i.ct, ptr %i.ch, align 8, !noalias !1757
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags11derive_info1__26derive_info_Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.m
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.v, %bb.u, %bb.s, %.noexc16.i.i.i, %.noexc18.i.i.i, %bb.l, %select.unfold.i.i.i.i.i.i, %.noexc10.i.i.i, %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, %bb.j, %bb.i, %.noexc8.i.i.i, %bb.h, %.noexc6.i.i.i, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.z
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cr, %bb.z ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvMNtCsd9Lm8bEdjjY_5salsa6attachNtBG_8Attached6attach7DbGuardECsileJQcQObtj_7hir_def(ptr %.sroa.0.0.i.i.i.i) #32
          to label %bb.ae unwind label %bb.ad, !noalias !1753

bb.aa:                                            ; preds = %.noexc14.i.i.i.i.i, %bb.x
  %i.cu = phi i64 [ %i.cq, %.noexc14.i.i.i.i.i ], [ 0, %bb.x ]
  store i64 %i.cu, ptr %i.ch, align 8, !noalias !1757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1755
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cv = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !1753, !noundef !18 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !1753 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !1753
  %.not3.i.i.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not3.i.i.i.i.i, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cx) ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 56
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !18, !noalias !1753, !nonnull !18
  %i.da = call noundef nonnull align 8 ptr %i.cz(ptr noundef nonnull %i.cv) #34, !noalias !1753, !inline_history !1750
  call void @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.da), !noalias !1753
  br label %bb.ag

bb.ad:                                            ; preds = %.body.i.i.i
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !1753
  unreachable

bb.ae:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

bb.af:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCscAsMj0W7j8b_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #35
  unreachable

bb.ag:                                            ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  ret ptr %i.dc
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachRINtNtNtNtBa_11collections4hash3set7HashSetNtNtCs39E2wp1vf7X_6intern6symbol6SymbolNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB4N_9AttrFlags15target_features15target_features0E0B1T_EB4P_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !18, !noundef !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1805)
  %i.h = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) null), !noalias !1805, !inline_history !1771 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE8try_withNCINvBW_6attachRINtNtNtNtBa_11collections4hash3set7HashSetNtNtCs39E2wp1vf7X_6intern6symbol6SymbolNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB4R_9AttrFlags15target_features15target_features0E0B1X_EB4T_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !1805, !nonnull !18, !noundef !18
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1805, !nonnull !18, !noundef !18
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1805 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1805 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !1805 ; 3 uses
  %i.j = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 64
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !1806
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i) #34, !noalias !1807, !inline_history !1776 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !1808, !noundef !18 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !1808, !nonnull !18, !noundef !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1808
  store ptr %i.n, ptr %i.g, align 8, !noalias !1808
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !1808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1808
  store ptr %i.l, ptr %i.f, align 8, !noalias !1808
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !1808
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !20

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !1808
  store ptr %i.m, ptr %i.o, align 8, !noalias !1808
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1808
  store ptr %i.g, ptr %i.e, align 8, !noalias !1808
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsileJQcQObtj_7hir_def, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !1808
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !1808
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsileJQcQObtj_7hir_def, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !1808
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @146, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #35, !noalias !1807
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1808
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !18, !noalias !1809, !nonnull !18
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i) #34
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1807, !inline_history !1781 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 10 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1T_9AttrFlags15target_features1__30target_features_Configuration_EE13get_or_createNCNvMs_B1L_B1J_14fn_ingredient_0EB1V_(ptr noundef nonnull align 4 @_RNvNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB9_9AttrFlags15target_features1__25target_features_FN_CACHE_, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.x)
          to label %.noexc3.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1807 ; 6 uses

.noexc3.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 520
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !1810
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags15target_features1__NtB7_15target_features14fn_ingredient_.exit.i.i.i.i, label %bb.g, !prof !20

bb.g:                                             ; preds = %.noexc3.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 480
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB3e_9AttrFlags15target_features1__NtB36_30target_features_Configuration_14fn_ingredient_s_0E0zEB3g_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %.sroa.6.0.copyload.i)
          to label %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags15target_features1__NtB7_15target_features14fn_ingredient_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1807

_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags15target_features1__NtB7_15target_features14fn_ingredient_.exit.i.i.i.i: ; preds = %bb.g, %.noexc3.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %.val.i.i.i.i = load i32, ptr %.sroa.7.0.copyload.i, align 4, !range !21, !noalias !1809, !noundef !18 ; 4 uses
  %i.ae = getelementptr i8, ptr %.sroa.7.0.copyload.i, i64 4
  %.val1.i.i.i.i = load i32, ptr %i.ae, align 4, !noalias !1809, !noundef !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1809
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !1811, !noundef !18
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc6.i.i.i, label %bb.h, !prof !20

.noexc6.i.i.i:                                    ; preds = %bb.h, %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags15target_features1__NtB7_15target_features14fn_ingredient_.exit.i.i.i.i
  %i.ah = invoke noundef zeroext i1 @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1807

.noexc5.i.i.i:                                    ; preds = %.noexc6.i.i.i
  br i1 %i.ah, label %bb.i, label %.noexc8.i.i.i, !prof !22

bb.h:                                             ; preds = %_RNvMs2_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags15target_features1__NtB7_15target_features14fn_ingredient_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @150) #36
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1807

.noexc8.i.i.i:                                    ; preds = %bb.i, %.noexc5.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.aj = invoke noundef zeroext i1 @_RNvMs3_NtCsd9Lm8bEdjjY_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ai)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1807

.noexc7.i.i.i:                                    ; preds = %.noexc8.i.i.i
  br i1 %i.aj, label %bb.j, label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !22

bb.i:                                             ; preds = %.noexc5.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1807

bb.j:                                             ; preds = %.noexc7.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1807

_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc7.i.i.i
  %i.ak = getelementptr i8, ptr %i.z, i64 576     ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.ak, align 8, !noalias !1811, !noundef !18
  %i.al = getelementptr i8, ptr %i.z, i64 580
  %.val8.i.i.i.i.i = load i32, ptr %i.al, align 4, !alias.scope !1812, !noalias !1811, !noundef !18 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.noexc15.i.i.i, %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.ao = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function4memoINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1a_9AttrFlags15target_features1__30target_features_Configuration_E23get_memo_from_table_forB1c_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %.val.i.i.i.i, i32 noundef %.val1.i.i.i.i, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc10.i.i.i unwind label %.loopexit.i.i.i, !noalias !1807 ; 8 uses

.noexc10.i.i.i:                                   ; preds = %bb.k
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags15target_features1__30target_features_Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc10.i.i.i
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !1809, !noundef !18
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags15target_features1__30target_features_Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = load i32, ptr %i.ak, align 8, !noalias !1811, !noundef !18
  store i32 %.val.i.i.i.i, ptr %i.d, align 4, !noalias !1811
  store i32 %.val1.i.i.i.i, ptr %i.am, align 4, !noalias !1811
  store i32 %i.aq, ptr %i.an, align 4, !noalias !1811
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 4 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8, !noalias !1813 ; 3 uses
  %i.at = icmp ne i64 %i.as, 0
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load i64, ptr %i.ai, align 8, !range !23, !noalias !1814, !noundef !18
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !20

_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.aw = invoke noundef i8 @_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.ar, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.as) #36
          to label %.noexc11.i.i.i unwind label %.loopexit.i.i.i, !noalias !1807 ; 2 uses

.noexc11.i.i.i:                                   ; preds = %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.ax = icmp eq i8 %i.aw, 2
  br i1 %i.ax, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags15target_features1__30target_features_Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc11.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 61
  %i.az = load atomic i8, ptr %i.ay monotonic, align 1, !noalias !1809
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.az, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags15target_features1__30target_features_Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 61
  %i.bb = load atomic i8, ptr %i.ba monotonic, align 1, !noalias !1809
  %.not7.i22.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not7.i22.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags15target_features1__30target_features_Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags15target_features1__30target_features_Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bc = icmp eq i8 %i.aw, 1
  br i1 %i.bc, label %bb.p, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB1b_9AttrFlags15target_features1__30target_features_Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1815
end_hunk_5
begin_hunk_6_@_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachRNtNtCsileJQcQObtj_7hir_def17unstable_features16UnstableFeaturesDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMs2_B1W_B1U_5query6query_0E0B1T_EB1Y_:bb.a
bb.l:                                             ; preds = %.noexc10.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 78
  %i.as = load i8, ptr %i.ar, align 2, !range !32, !noalias !2426, !noundef !18
  %.not6.i.i.i.i.i.i = icmp eq i8 %i.as, 2
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs2_NtCsileJQcQObtj_7hir_def17unstable_featuresNtB1b_16UnstableFeatures5query1__21query__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load i32, ptr %i.am, align 8, !noalias !2428, !noundef !18
  store i32 %i.ae, ptr %i.d, align 4, !noalias !2428
  store i32 %i.ag, ptr %i.ao, align 4, !noalias !2428
  store i32 %i.at, ptr %i.ap, align 4, !noalias !2428
  %i.au = load atomic i64, ptr %i.aq acquire, align 8, !noalias !2430 ; 3 uses
  %i.av = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i64, ptr %i.ak, align 8, !range !23, !noalias !2431, !noundef !18
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !20

_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ay = invoke noundef i8 @_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.au) #36
          to label %.noexc11.i.i.i unwind label %.loopexit.i.i.i, !noalias !2424 ; 2 uses

.noexc11.i.i.i:                                   ; preds = %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.az = icmp eq i8 %i.ay, 2
  br i1 %i.az, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs2_NtCsileJQcQObtj_7hir_def17unstable_featuresNtB1b_16UnstableFeatures5query1__21query__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc11.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.bb = load atomic i8, ptr %i.ba monotonic, align 1, !noalias !2426
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs2_NtCsileJQcQObtj_7hir_def17unstable_featuresNtB1b_16UnstableFeatures5query1__21query__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.bd = load atomic i8, ptr %i.bc monotonic, align 1, !noalias !2426
  %.not7.i22.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not7.i22.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs2_NtCsileJQcQObtj_7hir_def17unstable_featuresNtB1b_16UnstableFeatures5query1__21query__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs2_NtCsileJQcQObtj_7hir_def17unstable_featuresNtB1b_16UnstableFeatures5query1__21query__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.be = icmp eq i8 %i.ay, 1
  br i1 %i.be, label %bb.p, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs2_NtCsileJQcQObtj_7hir_def17unstable_featuresNtB1b_16UnstableFeatures5query1__21query__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !2428
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2432
  store ptr %i.c, ptr %i.b, align 8, !noalias !2432
  %i.bf = load ptr, ptr %i.ah, align 8, !noalias !2432, !noundef !18
  %.not.i12.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i12.i.i.i.i.i, label %.noexc14.i.i.i, label %bb.q, !prof !20

.noexc14.i.i.i:                                   ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2432
  %i.bg = load i64, ptr %i.ak, align 8, !range !23, !noalias !2432, !noundef !18
  invoke void @_RNvMs1_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.aq, i64 noundef %i.bg)
          to label %.noexc12.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !2424

.noexc12.i.i.i:                                   ; preds = %.noexc14.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2432
  invoke void @_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs2_NtCsileJQcQObtj_7hir_def17unstable_featuresNtB1b_16UnstableFeatures5query1__21query__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !2424

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @149) #36
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !2424

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs2_NtCsileJQcQObtj_7hir_def17unstable_featuresNtB1b_16UnstableFeatures5query1__21query__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.n, %.noexc11.i.i.i, %bb.l, %.noexc10.i.i.i
  %i.bh = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs2_NtCsileJQcQObtj_7hir_def17unstable_featuresNtB1b_16UnstableFeatures5query1__21query__Configuration_E10fetch_coldB1d_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc15.i.i.i unwind label %.loopexit.i.i.i, !noalias !2424 ; 2 uses

.noexc15.i.i.i:                                   ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs2_NtCsileJQcQObtj_7hir_def17unstable_featuresNtB1b_16UnstableFeatures5query1__21query__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.k, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs2_NtCsileJQcQObtj_7hir_def17unstable_featuresNtB1b_16UnstableFeatures5query1__21query__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs2_NtCsileJQcQObtj_7hir_def17unstable_featuresNtB1b_16UnstableFeatures5query1__21query__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i: ; preds = %.noexc15.i.i.i, %.thread.i.i.i.i.i, %.noexc12.i.i.i, %bb.o
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.o ], [ %i.aq, %.noexc12.i.i.i ], [ %i.aq, %.thread.i.i.i.i.i ], [ %i.bh, %.noexc15.i.i.i ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 30
  %i.bk = load i8, ptr %i.bj, align 2, !range !24, !noalias !2426, !noundef !18
  %i.bl = load i64, ptr %i.bi, align 8, !range !23, !noalias !2426, !noundef !18
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 29
  %i.bn = load atomic i8, ptr %i.bm monotonic, align 1, !noalias !2426
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs2_NtCsileJQcQObtj_7hir_def17unstable_featuresNtB1b_16UnstableFeatures5query1__21query__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i
  %i.bo = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !2428
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.s, !prof !20

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCsd9Lm8bEdjjY_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECsileJQcQObtj_7hir_def(ptr noundef nonnull align 8 @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !2424

bb.t:                                             ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs2_NtCsileJQcQObtj_7hir_def17unstable_featuresNtB1b_16UnstableFeatures5query1__21query__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i
  %i.bq = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bi)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !2424

_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.s ], [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.r ], [ %i.bq, %bb.t ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store i64 -1, ptr %i.br, align 8, !noalias !2433
  call void @llvm.experimental.noalias.scope.decl(metadata !2434)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !2434, !noalias !2435, !noundef !18 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !2434, !noalias !2435, !nonnull !18, !noundef !18
  %i.bw = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !2434, !noalias !2435, !noundef !18 ; 2 uses
  %.not.i14.i.i.i.i.i = icmp ugt i64 %i.bt, %i.bx
  br i1 %.not.i14.i.i.i.i.i, label %bb.u, label %bb.v, !prof !25

bb.u:                                             ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bt, i64 noundef %i.bx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #35
          to label %.noexc.i.i.i.i.i unwind label %bb.x, !noalias !2426

.noexc.i.i.i.i.i:                                 ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr [152 x i8], ptr %i.bv, i64 %i.bt
  %i.bz = getelementptr i8, ptr %i.by, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2436
  store i32 %i.ae, ptr %i.a, align 4, !noalias !2436
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ag, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !2436
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !2436
  invoke void @_RNvMNtCsd9Lm8bEdjjY_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.bz, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bk, i64 noundef %i.bl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc15.i.i.i.i.i unwind label %bb.x, !noalias !2426

.noexc15.i.i.i.i.i:                               ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2436
  %.pre.i.i.i.i.i = load i64, ptr %i.br, align 8, !noalias !2428
  %i.ca = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = load i64, ptr %i.br, align 8, !noalias !2428, !noundef !18
  %i.cd = add i64 %i.cc, 1
  store i64 %i.cd, ptr %i.br, align 8, !noalias !2428
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs2_NtCsileJQcQObtj_7hir_def17unstable_featuresNtB1b_16UnstableFeatures5query1__21query__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.k
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.t, %bb.s, %bb.q, %.noexc12.i.i.i, %.noexc14.i.i.i, %bb.j, %bb.i, %.noexc8.i.i.i, %bb.h, %.noexc6.i.i.i, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.x
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cb, %bb.x ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvMNtCsd9Lm8bEdjjY_5salsa6attachNtBG_8Attached6attach7DbGuardECsileJQcQObtj_7hir_def(ptr %.sroa.0.0.i.i.i.i) #32
          to label %bb.ac unwind label %bb.ab, !noalias !2424

bb.y:                                             ; preds = %.noexc15.i.i.i.i.i, %bb.v
  %i.ce = phi i64 [ %i.ca, %.noexc15.i.i.i.i.i ], [ 0, %bb.v ]
  store i64 %i.ce, ptr %i.br, align 8, !noalias !2428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2426
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cf = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !2424, !noundef !18 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !2424 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !2424
  %.not3.i.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not3.i.i.i.i.i, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ch) ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  %i.cj = load ptr, ptr %i.ci, align 8, !invariant.load !18, !noalias !2424, !nonnull !18
  %i.ck = call noundef nonnull align 8 ptr %i.cj(ptr noundef nonnull %i.cf) #34, !noalias !2424, !inline_history !2421
  call void @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ck), !noalias !2424
  br label %bb.ae

bb.ab:                                            ; preds = %.body.i.i.i
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !2424
  unreachable

bb.ac:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

bb.ad:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCscAsMj0W7j8b_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #35
  unreachable

bb.ae:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 32
  ret ptr %i.cm
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 4 ptr @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachRNtNtCsileJQcQObtj_7hir_def7nameres10DefMapPairDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvB1W_19crate_local_def_map0E0B1T_EB1Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !18, !noundef !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2473)
  %i.h = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) null), !noalias !2473, !inline_history !2439 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE8try_withNCINvBW_6attachRNtNtCsileJQcQObtj_7hir_def7nameres10DefMapPairDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvB20_19crate_local_def_map0E0B1X_EB22_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !2473, !nonnull !18, !noundef !18
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2473, !nonnull !18, !noundef !18
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2473 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !2473 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !2473 ; 3 uses
  %i.j = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 64
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !2474
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i) #34, !noalias !2475, !inline_history !2444 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !2476, !noundef !18 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !2476, !nonnull !18, !noundef !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2476
  store ptr %i.n, ptr %i.g, align 8, !noalias !2476
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !2476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2476
  store ptr %i.l, ptr %i.f, align 8, !noalias !2476
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !2476
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !20

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !2476
  store ptr %i.m, ptr %i.o, align 8, !noalias !2476
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2476
  store ptr %i.g, ptr %i.e, align 8, !noalias !2476
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsileJQcQObtj_7hir_def, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !2476
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !2476
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsileJQcQObtj_7hir_def, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !2476
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @146, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #35, !noalias !2475
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2476
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !18, !noalias !2477, !nonnull !18
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i) #34
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !2475, !inline_history !2449 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 10 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNtCsileJQcQObtj_7hir_def7nameress_1__34crate_local_def_map_Configuration_EE13get_or_createNCNvMs_B1L_B1J_14fn_ingredient_0EB1P_(ptr noundef nonnull align 4 @_RNvNvNtCsileJQcQObtj_7hir_def7nameress_1__29crate_local_def_map_FN_CACHE_, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.x)
          to label %.noexc3.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !2475 ; 6 uses

.noexc3.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 520
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !2478
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RNvMs2_NvNtCsileJQcQObtj_7hir_def7nameress_1__NtB7_19crate_local_def_map14fn_ingredient_.exit.i.i.i.i, label %bb.g, !prof !20

bb.g:                                             ; preds = %.noexc3.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 480
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNtCsileJQcQObtj_7hir_def7nameress_1__NtB36_34crate_local_def_map_Configuration_14fn_ingredient_s_0E0zEB3a_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %.sroa.6.0.copyload.i)
          to label %_RNvMs2_NvNtCsileJQcQObtj_7hir_def7nameress_1__NtB7_19crate_local_def_map14fn_ingredient_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !2475

_RNvMs2_NvNtCsileJQcQObtj_7hir_def7nameress_1__NtB7_19crate_local_def_map14fn_ingredient_.exit.i.i.i.i: ; preds = %bb.g, %.noexc3.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %i.ae = load i32, ptr %.sroa.7.0.copyload.i, align 4, !range !21, !noalias !2477, !noundef !18 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noalias !2477, !noundef !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2477
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !2479, !noundef !18
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc6.i.i.i, label %bb.h, !prof !20

.noexc6.i.i.i:                                    ; preds = %bb.h, %_RNvMs2_NvNtCsileJQcQObtj_7hir_def7nameress_1__NtB7_19crate_local_def_map14fn_ingredient_.exit.i.i.i.i
  %i.aj = invoke noundef zeroext i1 @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !2475

.noexc5.i.i.i:                                    ; preds = %.noexc6.i.i.i
  br i1 %i.aj, label %bb.i, label %.noexc8.i.i.i, !prof !22

bb.h:                                             ; preds = %_RNvMs2_NvNtCsileJQcQObtj_7hir_def7nameress_1__NtB7_19crate_local_def_map14fn_ingredient_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @150) #36
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !2475

.noexc8.i.i.i:                                    ; preds = %bb.i, %.noexc5.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.al = invoke noundef zeroext i1 @_RNvMs3_NtCsd9Lm8bEdjjY_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ak)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !2475

.noexc7.i.i.i:                                    ; preds = %.noexc8.i.i.i
  br i1 %i.al, label %bb.j, label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !22

bb.i:                                             ; preds = %.noexc5.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !2475

bb.j:                                             ; preds = %.noexc7.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !2475

_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc7.i.i.i
  %i.am = getelementptr i8, ptr %i.z, i64 576     ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.am, align 8, !noalias !2479, !noundef !18
  %i.an = getelementptr i8, ptr %i.z, i64 580
  %.val8.i.i.i.i.i = load i32, ptr %i.an, align 4, !alias.scope !2480, !noalias !2479, !noundef !18 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.noexc15.i.i.i, %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.aq = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function4memoINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def7nameress_1__34crate_local_def_map_Configuration_E23get_memo_from_table_forB16_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc10.i.i.i unwind label %.loopexit.i.i.i, !noalias !2475 ; 8 uses

.noexc10.i.i.i:                                   ; preds = %bb.k
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def7nameress_1__34crate_local_def_map_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc10.i.i.i
  %i.ar = load i32, ptr %i.aq, align 8, !noalias !2477, !noundef !18
  %.not6.i.i.i.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def7nameress_1__34crate_local_def_map_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = load i32, ptr %i.am, align 8, !noalias !2479, !noundef !18
  store i32 %i.ae, ptr %i.d, align 4, !noalias !2479
  store i32 %i.ag, ptr %i.ao, align 4, !noalias !2479
  store i32 %i.as, ptr %i.ap, align 4, !noalias !2479
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8, !noalias !2481 ; 3 uses
  %i.av = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i64, ptr %i.ak, align 8, !range !23, !noalias !2482, !noundef !18
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !20

_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ay = invoke noundef i8 @_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.at, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.au) #36
          to label %.noexc11.i.i.i unwind label %.loopexit.i.i.i, !noalias !2475 ; 2 uses

.noexc11.i.i.i:                                   ; preds = %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.az = icmp eq i8 %i.ay, 2
  br i1 %i.az, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def7nameress_1__34crate_local_def_map_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc11.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 37
  %i.bb = load atomic i8, ptr %i.ba monotonic, align 1, !noalias !2477
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def7nameress_1__34crate_local_def_map_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 37
  %i.bd = load atomic i8, ptr %i.bc monotonic, align 1, !noalias !2477
  %.not7.i22.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not7.i22.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def7nameress_1__34crate_local_def_map_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def7nameress_1__34crate_local_def_map_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.be = icmp eq i8 %i.ay, 1
  br i1 %i.be, label %bb.p, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def7nameress_1__34crate_local_def_map_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2483
end_hunk_6
begin_hunk_7_@_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachbDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNtCsileJQcQObtj_7hir_def5attrs21crate_supports_no_std0E0bEB2I_:bb.a
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i) #34, !noalias !3733, !inline_history !3706 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !3734, !noundef !18 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !3734, !nonnull !18, !noundef !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3734
  store ptr %i.n, ptr %i.g, align 8, !noalias !3734
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !3734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3734
  store ptr %i.l, ptr %i.f, align 8, !noalias !3734
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !3734
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !20

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !3734
  store ptr %i.m, ptr %i.o, align 8, !noalias !3734
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3734
  store ptr %i.g, ptr %i.e, align 8, !noalias !3734
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsileJQcQObtj_7hir_def, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !3734
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !3734
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsileJQcQObtj_7hir_def, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !3734
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @146, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #35, !noalias !3733
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3734
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !18, !noalias !3735, !nonnull !18
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i) #34
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !3733, !inline_history !3711 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 10 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNtCsileJQcQObtj_7hir_def5attrss_1__36crate_supports_no_std_Configuration_EE13get_or_createNCNvMs_B1L_B1J_14fn_ingredient_0EB1P_(ptr noundef nonnull align 4 @_RNvNvNtCsileJQcQObtj_7hir_def5attrss_1__31crate_supports_no_std_FN_CACHE_, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.x)
          to label %.noexc3.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !3733 ; 6 uses

.noexc3.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 520
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !3736
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtCsileJQcQObtj_7hir_def5attrss_1__NtB3b_36crate_supports_no_std_Configuration_14fn_ingredient_s_0E0zEB3f_.exit.i.i.i.i, label %bb.g, !prof !20

bb.g:                                             ; preds = %.noexc3.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 480
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNtCsileJQcQObtj_7hir_def5attrss_1__NtB36_36crate_supports_no_std_Configuration_14fn_ingredient_s_0E0zEB3a_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %.sroa.6.0.copyload.i)
          to label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtCsileJQcQObtj_7hir_def5attrss_1__NtB3b_36crate_supports_no_std_Configuration_14fn_ingredient_s_0E0zEB3f_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !3733

_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtCsileJQcQObtj_7hir_def5attrss_1__NtB3b_36crate_supports_no_std_Configuration_14fn_ingredient_s_0E0zEB3f_.exit.i.i.i.i: ; preds = %bb.g, %.noexc3.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %i.ae = load i32, ptr %.sroa.7.0.copyload.i, align 4, !range !21, !noalias !3735, !noundef !18 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noalias !3735, !noundef !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3735
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !3737, !noundef !18
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc6.i.i.i, label %bb.h, !prof !20

.noexc6.i.i.i:                                    ; preds = %bb.h, %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtCsileJQcQObtj_7hir_def5attrss_1__NtB3b_36crate_supports_no_std_Configuration_14fn_ingredient_s_0E0zEB3f_.exit.i.i.i.i
  %i.aj = invoke noundef zeroext i1 @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !3733

.noexc5.i.i.i:                                    ; preds = %.noexc6.i.i.i
  br i1 %i.aj, label %bb.i, label %.noexc8.i.i.i, !prof !22

bb.h:                                             ; preds = %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtCsileJQcQObtj_7hir_def5attrss_1__NtB3b_36crate_supports_no_std_Configuration_14fn_ingredient_s_0E0zEB3f_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @150) #36
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !3733

.noexc8.i.i.i:                                    ; preds = %bb.i, %.noexc5.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.al = invoke noundef zeroext i1 @_RNvMs3_NtCsd9Lm8bEdjjY_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ak)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !3733

.noexc7.i.i.i:                                    ; preds = %.noexc8.i.i.i
  br i1 %i.al, label %bb.j, label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !22

bb.i:                                             ; preds = %.noexc5.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !3733

bb.j:                                             ; preds = %.noexc7.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !3733

_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc7.i.i.i
  %i.am = getelementptr i8, ptr %i.z, i64 576     ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.am, align 8, !noalias !3737, !noundef !18
  %i.an = getelementptr i8, ptr %i.z, i64 580
  %.val8.i.i.i.i.i = load i32, ptr %i.an, align 4, !alias.scope !3738, !noalias !3737, !noundef !18 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.noexc15.i.i.i, %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.aq = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function4memoINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def5attrss_1__36crate_supports_no_std_Configuration_E23get_memo_from_table_forB16_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc10.i.i.i unwind label %.loopexit.i.i.i, !noalias !3733 ; 11 uses

.noexc10.i.i.i:                                   ; preds = %bb.k
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def5attrss_1__36crate_supports_no_std_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc10.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load i8, ptr %i.ar, align 8, !range !32, !noalias !3735, !noundef !18
  %.not6.i.i.i.i.i.i = icmp eq i8 %i.as, 2
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def5attrss_1__36crate_supports_no_std_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load i32, ptr %i.am, align 8, !noalias !3737, !noundef !18
  store i32 %i.ae, ptr %i.d, align 4, !noalias !3737
  store i32 %i.ag, ptr %i.ao, align 4, !noalias !3737
  store i32 %i.at, ptr %i.ap, align 4, !noalias !3737
  %i.au = load atomic i64, ptr %i.aq acquire, align 8, !noalias !3739 ; 3 uses
  %i.av = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i64, ptr %i.ak, align 8, !range !23, !noalias !3740, !noundef !18
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !20

_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ay = invoke noundef i8 @_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.au) #36
          to label %.noexc11.i.i.i unwind label %.loopexit.i.i.i, !noalias !3733 ; 2 uses

.noexc11.i.i.i:                                   ; preds = %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.az = icmp eq i8 %i.ay, 2
  br i1 %i.az, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def5attrss_1__36crate_supports_no_std_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc11.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.bb = load atomic i8, ptr %i.ba monotonic, align 1, !noalias !3735
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def5attrss_1__36crate_supports_no_std_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.bd = load atomic i8, ptr %i.bc monotonic, align 1, !noalias !3735
  %.not7.i22.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not7.i22.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def5attrss_1__36crate_supports_no_std_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def5attrss_1__36crate_supports_no_std_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.be = icmp eq i8 %i.ay, 1
  br i1 %i.be, label %bb.p, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def5attrss_1__36crate_supports_no_std_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !3737
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3741
  store ptr %i.c, ptr %i.b, align 8, !noalias !3741
  %i.bf = load ptr, ptr %i.ah, align 8, !noalias !3741, !noundef !18
  %.not.i12.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i12.i.i.i.i.i, label %.noexc14.i.i.i, label %bb.q, !prof !20

.noexc14.i.i.i:                                   ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3741
  %i.bg = load i64, ptr %i.ak, align 8, !range !23, !noalias !3741, !noundef !18
  invoke void @_RNvMs1_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.aq, i64 noundef %i.bg)
          to label %.noexc12.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !3733

.noexc12.i.i.i:                                   ; preds = %.noexc14.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3741
  invoke void @_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def5attrss_1__36crate_supports_no_std_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !3733

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @149) #36
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !3733

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def5attrss_1__36crate_supports_no_std_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.n, %.noexc11.i.i.i, %bb.l, %.noexc10.i.i.i
  %i.bh = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def5attrss_1__36crate_supports_no_std_Configuration_E10fetch_coldB17_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc15.i.i.i unwind label %.loopexit.i.i.i, !noalias !3733 ; 2 uses

.noexc15.i.i.i:                                   ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def5attrss_1__36crate_supports_no_std_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.k, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def5attrss_1__36crate_supports_no_std_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def5attrss_1__36crate_supports_no_std_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i: ; preds = %.noexc15.i.i.i, %.thread.i.i.i.i.i, %.noexc12.i.i.i, %bb.o
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.o ], [ %i.aq, %.noexc12.i.i.i ], [ %i.aq, %.thread.i.i.i.i.i ], [ %i.bh, %.noexc15.i.i.i ] ; 4 uses
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 30
  %i.bk = load i8, ptr %i.bj, align 2, !range !24, !noalias !3735, !noundef !18
  %i.bl = load i64, ptr %i.bi, align 8, !range !23, !noalias !3735, !noundef !18
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 29
  %i.bn = load atomic i8, ptr %i.bm monotonic, align 1, !noalias !3735
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def5attrss_1__36crate_supports_no_std_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.bo = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !3737
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.s, !prof !20

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCsd9Lm8bEdjjY_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECsileJQcQObtj_7hir_def(ptr noundef nonnull align 8 @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !3733

bb.t:                                             ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def5attrss_1__36crate_supports_no_std_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.bq = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bi)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !3733

_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.s ], [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.r ], [ %i.bq, %bb.t ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store i64 -1, ptr %i.br, align 8, !noalias !3742
  call void @llvm.experimental.noalias.scope.decl(metadata !3743)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !3743, !noalias !3744, !noundef !18 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !3743, !noalias !3744, !nonnull !18, !noundef !18
  %i.bw = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !3743, !noalias !3744, !noundef !18 ; 2 uses
  %.not.i14.i.i.i.i.i = icmp ugt i64 %i.bt, %i.bx
  br i1 %.not.i14.i.i.i.i.i, label %bb.u, label %bb.v, !prof !25

bb.u:                                             ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bt, i64 noundef %i.bx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #35
          to label %.noexc.i.i.i.i.i unwind label %bb.x, !noalias !3735

.noexc.i.i.i.i.i:                                 ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr [152 x i8], ptr %i.bv, i64 %i.bt
  %i.bz = getelementptr i8, ptr %i.by, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3745
  store i32 %i.ae, ptr %i.a, align 4, !noalias !3745
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ag, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !3745
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !3745
  invoke void @_RNvMNtCsd9Lm8bEdjjY_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.bz, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bk, i64 noundef %i.bl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc15.i.i.i.i.i unwind label %bb.x, !noalias !3735

.noexc15.i.i.i.i.i:                               ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3745
  %.pre.i.i.i.i.i = load i64, ptr %i.br, align 8, !noalias !3737
  %i.ca = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = load i64, ptr %i.br, align 8, !noalias !3737, !noundef !18
  %i.cd = add i64 %i.cc, 1
  store i64 %i.cd, ptr %i.br, align 8, !noalias !3737
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsileJQcQObtj_7hir_def5attrss_1__36crate_supports_no_std_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.k
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.t, %bb.s, %bb.q, %.noexc12.i.i.i, %.noexc14.i.i.i, %bb.j, %bb.i, %.noexc8.i.i.i, %bb.h, %.noexc6.i.i.i, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.x
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cb, %bb.x ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvMNtCsd9Lm8bEdjjY_5salsa6attachNtBG_8Attached6attach7DbGuardECsileJQcQObtj_7hir_def(ptr %.sroa.0.0.i.i.i.i) #32
          to label %bb.ac unwind label %bb.ab, !noalias !3733

bb.y:                                             ; preds = %.noexc15.i.i.i.i.i, %bb.v
  %i.ce = phi i64 [ %i.ca, %.noexc15.i.i.i.i.i ], [ 0, %bb.v ]
  store i64 %i.ce, ptr %i.br, align 8, !noalias !3737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3735
  %i.cf = load i8, ptr %2, align 8, !range !33, !noalias !3735, !noundef !18
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !3733, !noundef !18 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !3733 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !3733
  %.not3.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not3.i.i.i.i.i, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  %i.ck = load ptr, ptr %i.cj, align 8, !invariant.load !18, !noalias !3733, !nonnull !18
  %i.cl = call noundef nonnull align 8 ptr %i.ck(ptr noundef nonnull %i.cg) #34, !noalias !3733, !inline_history !3730
  call void @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cl), !noalias !3733
  br label %bb.ad

bb.ab:                                            ; preds = %.body.i.i.i
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !3733
  unreachable

bb.ac:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE8try_withNCINvBW_6attachbDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNtCsileJQcQObtj_7hir_def5attrs21crate_supports_no_std0E0bEB2M_.exit: ; preds = %bb.a
  tail call void @_RNvNtNtCscAsMj0W7j8b_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #35
  unreachable

bb.ad:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %i.cn = trunc nuw i8 %i.cf to i1
  ret i1 %i.cn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyhE4withNCNvNtNtNtBa_4sync4mpmc5waker17current_thread_id0jECsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !18, !noundef !18
  %i.a = tail call noundef ptr %.val(ptr noalias nofree noundef dereferenceable_or_null(2) null), !inline_history !3746 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscAsMj0W7j8b_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %i.a to i64
  ret i64 %i.c
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef i64 @_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table18fetch_or_push_pageINtNtB8_14tracked_struct5ValueNtCsileJQcQObtj_7hir_def10ModuleIdLtENCINvMs_NtB8_11zalsa_localNtB2g_10ZalsaLocal13allocate_coldB13_NCNvMs3_B16_INtB16_14IngredientImplB1x_E8allocate0E0EB1z_(ptr noundef nonnull align 8 %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 11 uses
  %i.d = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 8 uses
  %i.f = cmpxchg weak ptr %i.e, i8 0, i8 1 acquire monotonic, align 1
  %i.g = extractvalue { i8, i1 } %i.f, 1
  br i1 %i.g, label %bb.c, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMs1_NtCsaWIbZW7RmAr_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.e, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.j = invoke noundef align 8 ptr @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBS_5table9PageIndexENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE7get_mutBO_ECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d)
          to label %bb.f unwind label %bb.d       ; 4 uses

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = cmpxchg ptr %i.e, i8 1, i8 0 release monotonic, align 1
  %i.m = extractvalue { i8, i1 } %i.l, 1
  br i1 %i.m, label %common.resume, label %bb.e, !prof !20

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs1_NtCsaWIbZW7RmAr_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.e, i1 noundef zeroext false)
          to label %common.resume unwind label %bb.z

bb.f:                                             ; preds = %bb.c
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !noundef !18 ; 3 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.h, label %bb.x

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.q = cmpxchg ptr %i.e, i8 1, i8 0 release monotonic, align 1
  %i.r = extractvalue { i8, i1 } %i.q, 1
  br i1 %i.r, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtB38_5table9PageIndexENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEECsileJQcQObtj_7hir_def.exit9, label %bb.i, !prof !20

bb.i:                                             ; preds = %bb.h
  call void @_RNvMs1_NtCsaWIbZW7RmAr_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.e, i1 noundef zeroext false)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtB38_5table9PageIndexENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEECsileJQcQObtj_7hir_def.exit9

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtB38_5table9PageIndexENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEECsileJQcQObtj_7hir_def.exit9: ; preds = %bb.h, %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3760)
  %i.s = load i32, ptr %3, align 4, !alias.scope !3760, !noundef !18
  %i.t = zext i32 %i.s to i64                     ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.v = load i64, ptr %i.u, align 8, !noalias !3760, !noundef !18 ; 2 uses
  %i.w = icmp ugt i64 %i.v, %i.t
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtB38_5table9PageIndexENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEECsileJQcQObtj_7hir_def.exit9
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !noalias !3760, !nonnull !18, !noundef !18
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.t ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !3760, !nonnull !18, !noundef !18
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !3760, !nonnull !18, !align !30, !noundef !18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 152
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !18, !noalias !3760, !nonnull !18
  %i.af = call noundef nonnull align 8 ptr %i.ae(ptr noundef nonnull %i.aa) #34, !noalias !3760, !inline_history !3749 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !3760, !nonnull !18, !noundef !18
  %i.ah = atomicrmw add ptr %i.ag, i64 1 monotonic, align 8, !noalias !3760
  %i.ai = icmp slt i64 %i.ah, 0
  br i1 %i.ai, label %bb.l, label %_RNvYNCINvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtBa_10ZalsaLocal13allocate_coldINtNtBc_14tracked_struct5ValueNtCsileJQcQObtj_7hir_def10ModuleIdLtENCNvMs3_B1i_INtB1i_14IngredientImplB1J_E8allocate0E0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceuE9call_onceB1L_.exit

bb.k:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtB38_5table9PageIndexENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEECsileJQcQObtj_7hir_def.exit9
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.t, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #35, !noalias !3760
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @llvm.trap()
  unreachable

_RNvYNCINvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtBa_10ZalsaLocal13allocate_coldINtNtBc_14tracked_struct5ValueNtCsileJQcQObtj_7hir_def10ModuleIdLtENCNvMs3_B1i_INtB1i_14IngredientImplB1J_E8allocate0E0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceuE9call_onceB1L_.exit: ; preds = %bb.j
  %i.aj = load ptr, ptr %i.af, align 8, !noalias !3760, !nonnull !18, !noundef !18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !3761)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.aj, ptr %i.b, align 8, !noalias !3761
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !3761
  %i.ak = call noundef align 8 dereferenceable_or_null(65536) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef 65536, i64 noundef 8) #30, !noalias !3761 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.m, label %_RINvMs6_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_4Page3newINtNtB8_14tracked_struct5ValueNtCsileJQcQObtj_7hir_def10ModuleIdLtEEB1i_.exit, !prof !17

bb.m:                                             ; preds = %_RNvYNCINvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtBa_10ZalsaLocal13allocate_coldINtNtBc_14tracked_struct5ValueNtCsileJQcQObtj_7hir_def10ModuleIdLtENCNvMs3_B1i_INtB1i_14IngredientImplB1J_E8allocate0E0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceuE9call_onceB1L_.exit
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 65536) #31
          to label %.noexc.i unwind label %bb.n, !noalias !3761

.noexc.i:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !noalias !3762
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.o, label %common.resume

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo14MemoTableTypesE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #36
          to label %common.resume unwind label %bb.p, !noalias !3761

bb.p:                                             ; preds = %bb.o
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !3761
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.d, %bb.s, %bb.v, %bb.n, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.ba, %bb.s ], [ %i.am, %bb.n ], [ %i.am, %bb.o ], [ %i.bc, %bb.v ], [ %i.k, %bb.d ], [ %i.k, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_RINvMs6_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_4Page3newINtNtB8_14tracked_struct5ValueNtCsileJQcQObtj_7hir_def10ModuleIdLtEEB1i_.exit: ; preds = %_RNvYNCINvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtBa_10ZalsaLocal13allocate_coldINtNtBc_14tracked_struct5ValueNtCsileJQcQObtj_7hir_def10ModuleIdLtENCNvMs3_B1i_INtB1i_14IngredientImplB1J_E8allocate0E0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceuE9call_onceB1L_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 %1, ptr %i.aq, align 8, !alias.scope !3761
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.ar, align 8, !alias.scope !3761
  store ptr %i.ak, ptr %i.c, align 8, !alias.scope !3761
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @32, ptr %i.as, align 8, !alias.scope !3761
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) @7, i64 16, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.aj, ptr %i.au, align 8, !alias.scope !3761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.aw = atomicrmw add ptr %i.av, i64 1 monotonic, align 8, !noalias !3763 ; 4 uses
  %i.ax = icmp slt i64 %i.aw, 0
  br i1 %i.ax, label %bb.q, label %bb.r, !prof !22

bb.q:                                             ; preds = %_RINvMs6_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_4Page3newINtNtB8_14tracked_struct5ValueNtCsileJQcQObtj_7hir_def10ModuleIdLtEEB1i_.exit
end_hunk_7
