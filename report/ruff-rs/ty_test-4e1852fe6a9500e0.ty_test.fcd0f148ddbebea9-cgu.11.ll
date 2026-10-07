Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_test-4e1852fe6a9500e0.ty_test.fcd0f148ddbebea9-cgu.11?download=true
inline.NumInlined: 534
inline.NumDeleted: 298
begin_hunk_0_@_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachRNtNtCslHJxOrvIAon_7ty_test2db12FileSettingsDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_NCNvB1W_13file_settings0E0B1T_EB1Y_:bb.a
bb.l:                                             ; preds = %.noexc11.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 162
  %i.as = load i8, ptr %i.ar, align 2, !range !13, !noalias !310, !noundef !3
  %.not6.i.i.i.i.i.i = icmp eq i8 %i.as, -1
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCslHJxOrvIAon_7ty_test2dbs_1__28file_settings_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load i32, ptr %i.am, align 8, !noalias !312, !noundef !3
  store i32 %i.ae, ptr %i.d, align 4, !noalias !312
  store i32 %i.ag, ptr %i.ao, align 4, !noalias !312
  store i32 %i.at, ptr %i.ap, align 4, !noalias !312
  %i.au = load atomic i64, ptr %i.aq acquire, align 8, !noalias !314 ; 3 uses
  %i.av = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i64, ptr %i.ak, align 8, !range !14, !noalias !315, !noundef !3
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !11

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ay = invoke noundef i8 @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.au)
          to label %.noexc12.i.i.i unwind label %.loopexit.i.i.i, !noalias !308 ; 2 uses

.noexc12.i.i.i:                                   ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.az = icmp eq i8 %i.ay, 2
  br i1 %i.az, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCslHJxOrvIAon_7ty_test2dbs_1__28file_settings_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc12.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.bb = load atomic i8, ptr %i.ba monotonic, align 1, !noalias !310
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCslHJxOrvIAon_7ty_test2dbs_1__28file_settings_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.bd = load atomic i8, ptr %i.bc monotonic, align 1, !noalias !310
  %.not7.i24.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not7.i24.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCslHJxOrvIAon_7ty_test2dbs_1__28file_settings_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCslHJxOrvIAon_7ty_test2dbs_1__28file_settings_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.be = icmp eq i8 %i.ay, 1
  br i1 %i.be, label %bb.p, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCslHJxOrvIAon_7ty_test2dbs_1__28file_settings_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !316
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !316
  store ptr %i.c, ptr %i.b, align 8, !noalias !316
  %i.bf = load ptr, ptr %i.ah, align 8, !noalias !316, !noundef !3
  %.not.i12.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i12.i.i.i.i.i, label %.noexc13.i.i.i, label %bb.q, !prof !11

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @48)
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !308

.noexc13.i.i.i:                                   ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !316
  %i.bg = load i64, ptr %i.ak, align 8, !range !14, !noalias !316, !noundef !3
  invoke void @_RNvMs1_NtCs45bxiIjzMqg_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.aq, i64 noundef %i.bg)
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !308

.noexc14.i.i.i:                                   ; preds = %.noexc13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !316
  invoke void @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCslHJxOrvIAon_7ty_test2dbs_1__28file_settings_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !308

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCslHJxOrvIAon_7ty_test2dbs_1__28file_settings_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.n, %.noexc12.i.i.i, %bb.l, %.noexc11.i.i.i
  %i.bh = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCslHJxOrvIAon_7ty_test2dbs_1__28file_settings_Configuration_E10fetch_coldB17_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val6.i.i.i.i.i)
          to label %.noexc16.i.i.i unwind label %.loopexit.i.i.i, !noalias !308 ; 2 uses

.noexc16.i.i.i:                                   ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCslHJxOrvIAon_7ty_test2dbs_1__28file_settings_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.k, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCslHJxOrvIAon_7ty_test2dbs_1__28file_settings_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCslHJxOrvIAon_7ty_test2dbs_1__28file_settings_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i: ; preds = %.noexc16.i.i.i, %.thread.i.i.i.i.i, %.noexc14.i.i.i, %bb.o
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.o ], [ %i.aq, %.noexc14.i.i.i ], [ %i.aq, %.thread.i.i.i.i.i ], [ %i.bh, %.noexc16.i.i.i ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 30
  %i.bk = load i8, ptr %i.bj, align 2, !range !15, !noalias !310, !noundef !3
  %i.bl = load i64, ptr %i.bi, align 8, !range !14, !noalias !310, !noundef !3
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 29
  %i.bn = load atomic i8, ptr %i.bm monotonic, align 1, !noalias !310
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCslHJxOrvIAon_7ty_test2dbs_1__28file_settings_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.bo = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !312
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.s, !prof !11

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECslHJxOrvIAon_7ty_test(ptr noundef nonnull align 8 @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !308

bb.t:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCslHJxOrvIAon_7ty_test2dbs_1__28file_settings_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.bq = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bi)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !308

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.s ], [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.r ], [ %i.bq, %bb.t ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store i64 -1, ptr %i.br, align 8, !noalias !317
  call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !318, !noalias !319, !noundef !3 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !318, !noalias !319, !nonnull !3, !noundef !3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !318, !noalias !319, !noundef !3 ; 2 uses
  %.not.i16.i.i.i.i.i = icmp ugt i64 %i.bt, %i.bx
  br i1 %.not.i16.i.i.i.i.i, label %bb.u, label %bb.v, !prof !320

bb.u:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bt, i64 noundef %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #28
          to label %.noexc.i.i.i.i.i unwind label %bb.x, !noalias !310

.noexc.i.i.i.i.i:                                 ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr [152 x i8], ptr %i.bv, i64 %i.bt
  %i.bz = getelementptr i8, ptr %i.by, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !321
  store i32 %i.ae, ptr %i.a, align 4, !noalias !321
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ag, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !321
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !321
  invoke void @_RNvMNtCs45bxiIjzMqg_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.bz, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bk, i64 noundef %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc17.i.i.i.i.i unwind label %bb.x, !noalias !310

.noexc17.i.i.i.i.i:                               ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !321
  %.pre.i.i.i.i.i = load i64, ptr %i.br, align 8, !noalias !312
  %i.ca = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = load i64, ptr %i.br, align 8, !noalias !312, !noundef !3
  %i.cd = add i64 %i.cc, 1
  store i64 %i.cd, ptr %i.br, align 8, !noalias !312
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCslHJxOrvIAon_7ty_test2dbs_1__28file_settings_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.k
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.t, %bb.s, %.noexc14.i.i.i, %.noexc13.i.i.i, %bb.q, %bb.j, %bb.i, %.noexc9.i.i.i, %.noexc6.i.i.i, %bb.h, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.x
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cb, %bb.x ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtCs45bxiIjzMqg_5salsa6attachNtBG_8Attached6attach7DbGuardECslHJxOrvIAon_7ty_test(ptr %.sroa.0.0.i.i.i.i) #27
          to label %bb.ac unwind label %bb.ab, !noalias !308

bb.y:                                             ; preds = %.noexc17.i.i.i.i.i, %bb.v
  %i.ce = phi i64 [ %i.ca, %.noexc17.i.i.i.i.i ], [ 0, %bb.v ]
  store i64 %i.ce, ptr %i.br, align 8, !noalias !312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !310
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cf = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !308, !noundef !3 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !308 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !308
  %.not3.i.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not3.i.i.i.i.i, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ch) ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  %i.cj = load ptr, ptr %i.ci, align 8, !invariant.load !3, !noalias !308, !nonnull !3
  %i.ck = call noundef nonnull align 8 ptr %i.cj(ptr noundef nonnull %i.cf), !noalias !308, !inline_history !305
  call void @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ck), !noalias !308
  br label %bb.ae

bb.ab:                                            ; preds = %.body.i.i.i
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !308
  unreachable

bb.ac:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

bb.ad:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #28
  unreachable

bb.ae:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 32
  ret ptr %i.cm
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_RINvMs4_CshFWUtO0bu8g_6caminoNtB6_8Utf8Path3neweECslHJxOrvIAon_7ty_test(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %1, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEEECslHJxOrvIAon_7ty_test(ptr noalias noundef nonnull align 8 dereferenceable(1400) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !350, !alias.scope !351, !noundef !3
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEECslHJxOrvIAon_7ty_test.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !357, !nonnull !3, !noundef !3
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !358
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoECslHJxOrvIAon_7ty_test.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoECslHJxOrvIAon_7ty_test.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEECslHJxOrvIAon_7ty_test(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) #27
          to label %.body.i.i unwind label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoECslHJxOrvIAon_7ty_test.exit.i.i.i: ; preds = %bb.c, %bb.b
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBJ_3ops4drop4Drop4dropCslHJxOrvIAon_7ty_test(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEECslHJxOrvIAon_7ty_test.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoECslHJxOrvIAon_7ty_test.exit.i.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBQ_3ops4drop4Drop4dropCslHJxOrvIAon_7ty_test(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.body.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEECslHJxOrvIAon_7ty_test.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoECslHJxOrvIAon_7ty_test.exit.i.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBQ_3ops4drop4Drop4dropCslHJxOrvIAon_7ty_test(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures8CapturesECslHJxOrvIAon_7ty_test.exit.i.i unwind label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEECslHJxOrvIAon_7ty_test.exit.i.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.h, %bb.e, %bb.d
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.l, %bb.h ], [ %i.i, %bb.e ], [ %i.h, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1096
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers11PikeVMCacheECslHJxOrvIAon_7ty_test(ptr noalias noundef align 8 dereferenceable(216) %i.m) #27
          to label %bb.i unwind label %bb.y

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures8CapturesECslHJxOrvIAon_7ty_test.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEECslHJxOrvIAon_7ty_test.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1096
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers11PikeVMCacheECslHJxOrvIAon_7ty_test(ptr noalias noundef align 8 dereferenceable(216) %i.n)
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.j, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.p, %bb.j ], [ %eh.lpad-body.i.i, %.body.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1312
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers23BoundedBacktrackerCacheECslHJxOrvIAon_7ty_test(ptr noalias noundef align 8 dereferenceable(56) %i.o) #27
          to label %bb.l unwind label %bb.y

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures8CapturesECslHJxOrvIAon_7ty_test.exit.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures8CapturesECslHJxOrvIAon_7ty_test.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1312
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers23BoundedBacktrackerCacheECslHJxOrvIAon_7ty_test(ptr noalias noundef align 8 dereferenceable(56) %i.q)
          to label %bb.n unwind label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.i
  %.pn2.i.i = phi { ptr, i32 } [ %i.s, %bb.m ], [ %.pn.i.i, %bb.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1368
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers12OnePassCacheECslHJxOrvIAon_7ty_test(ptr noalias noundef align 8 dereferenceable(32) %i.r) #27
          to label %.body8.i.i unwind label %bb.y

bb.m:                                             ; preds = %bb.k
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.n:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 4 uses
  %i.u = load i64, ptr %i.t, align 8, !range !7, !alias.scope !359, !noundef !3
  %i.v = icmp eq i64 %i.u, -1
  br i1 %i.v, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers12OnePassCacheECslHJxOrvIAon_7ty_test.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBJ_3ops4drop4Drop4dropCslHJxOrvIAon_7ty_test(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata3dfa7onepass5CacheECslHJxOrvIAon_7ty_test.exit.i.i.i.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBQ_3ops4drop4Drop4dropCslHJxOrvIAon_7ty_test(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %.body8.i.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata3dfa7onepass5CacheECslHJxOrvIAon_7ty_test.exit.i.i.i.i: ; preds = %bb.o
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBQ_3ops4drop4Drop4dropCslHJxOrvIAon_7ty_test(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers12OnePassCacheECslHJxOrvIAon_7ty_test.exit.i.i unwind label %bb.r

.body8.i.i:                                       ; preds = %bb.r, %bb.p, %bb.l
  %.pn4.i.i = phi { ptr, i32 } [ %.pn2.i.i, %bb.l ], [ %i.y, %bb.r ], [ %i.w, %bb.p ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers11HybridCacheECslHJxOrvIAon_7ty_test(ptr noalias noundef nonnull align 8 dereferenceable(1400) %0) #27
          to label %.body10.i.i unwind label %bb.y

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata3dfa7onepass5CacheECslHJxOrvIAon_7ty_test.exit.i.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body8.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers12OnePassCacheECslHJxOrvIAon_7ty_test.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata3dfa7onepass5CacheECslHJxOrvIAon_7ty_test.exit.i.i.i.i, %bb.n
  %i.z = load i64, ptr %0, align 8, !range !6, !alias.scope !360, !noundef !3
  %i.aa = icmp eq i64 %i.z, 2
  br i1 %i.aa, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers11HybridCacheECslHJxOrvIAon_7ty_test.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers12OnePassCacheECslHJxOrvIAon_7ty_test.exit.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfa5CacheECslHJxOrvIAon_7ty_test(ptr noalias noundef nonnull align 8 dereferenceable(1400) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid5regex5CacheECslHJxOrvIAon_7ty_test.exit.i.i.i.i unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 352
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfa5CacheECslHJxOrvIAon_7ty_test(ptr noalias noundef align 8 dereferenceable(352) %i.ac) #27
          to label %.body10.i.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid5regex5CacheECslHJxOrvIAon_7ty_test.exit.i.i.i.i: ; preds = %bb.s
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 352
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfa5CacheECslHJxOrvIAon_7ty_test(ptr noalias noundef align 8 dereferenceable(352) %i.ae)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers11HybridCacheECslHJxOrvIAon_7ty_test.exit.i.i unwind label %bb.w

.body10.i.i:                                      ; preds = %bb.w, %bb.t, %.body8.i.i
  %.pn6.i.i = phi { ptr, i32 } [ %.pn4.i.i, %.body8.i.i ], [ %i.ai, %bb.w ], [ %i.ab, %bb.t ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !range !6, !alias.scope !361, !noundef !3
  %i.ah = icmp eq i64 %i.ag, 2
  br i1 %i.ah, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers18ReverseHybridCacheECslHJxOrvIAon_7ty_test.exit.i.i, label %bb.v

bb.v:                                             ; preds = %.body10.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfa5CacheECslHJxOrvIAon_7ty_test(ptr noalias noundef nonnull align 8 dereferenceable(352) %i.af)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers18ReverseHybridCacheECslHJxOrvIAon_7ty_test.exit.i.i unwind label %bb.y

bb.w:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid5regex5CacheECslHJxOrvIAon_7ty_test.exit.i.i.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body10.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers11HybridCacheECslHJxOrvIAon_7ty_test.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid5regex5CacheECslHJxOrvIAon_7ty_test.exit.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers12OnePassCacheECslHJxOrvIAon_7ty_test.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !range !6, !alias.scope !362, !noundef !3
  %i.al = icmp eq i64 %i.ak, 2
  br i1 %i.al, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEECslHJxOrvIAon_7ty_test.exit, label %bb.x

bb.x:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers11HybridCacheECslHJxOrvIAon_7ty_test.exit.i.i
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfa5CacheECslHJxOrvIAon_7ty_test(ptr noalias noundef nonnull align 8 dereferenceable(352) %i.aj)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEECslHJxOrvIAon_7ty_test.exit
end_hunk_0
