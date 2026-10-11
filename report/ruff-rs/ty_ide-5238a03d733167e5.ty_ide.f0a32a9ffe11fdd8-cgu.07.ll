Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_ide-5238a03d733167e5.ty_ide.f0a32a9ffe11fdd8-cgu.07?download=true
inline.NumInlined: 1518
inline.NumDeleted: 782
begin_hunk_0_@_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachRNtNtCskEUeM34gmJU_6ty_ide7symbols11FlatSymbolsDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_NCNvB1W_16symbols_for_file0E0B1T_EB1Y_:bb.a
bb.m:                                             ; preds = %.noexc11.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load i64, ptr %i.bc, align 8, !range !7, !noalias !423, !noundef !4
  %.not6.i.i.i.i.i.i = icmp eq i64 %i.bd, -1
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbols1__31symbols_for_file_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = load i32, ptr %i.ax, align 8, !noalias !425, !noundef !4
  store i32 %i.ap, ptr %i.d, align 4, !noalias !425
  store i32 %i.ar, ptr %i.az, align 4, !noalias !425
  store i32 %i.be, ptr %i.ba, align 4, !noalias !425
  %i.bf = load atomic i64, ptr %i.bb acquire, align 8, !noalias !427 ; 3 uses
  %i.bg = icmp ne i64 %i.bf, 0
  call void @llvm.assume(i1 %i.bg)
  %i.bh = load i64, ptr %i.av, align 8, !range !13, !noalias !428, !noundef !4
  %i.bi = icmp eq i64 %i.bf, %i.bh
  br i1 %i.bi, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !6

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.n
  %i.bj = invoke noundef i8 @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.bb, ptr noundef nonnull align 8 %i.y, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.bf)
          to label %.noexc12.i.i.i unwind label %.loopexit.i.i.i, !noalias !421 ; 2 uses

.noexc12.i.i.i:                                   ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.bk = icmp eq i8 %i.bj, 2
  br i1 %i.bk, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbols1__31symbols_for_file_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc12.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 29
  %i.bm = load atomic i8, ptr %i.bl monotonic, align 1, !noalias !423
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.bm, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbols1__31symbols_for_file_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.p

.thread.i.i.i.i.i:                                ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bb, i64 29
  %i.bo = load atomic i8, ptr %i.bn monotonic, align 1, !noalias !423
  %.not7.i21.i.i.i.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not7.i21.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbols1__31symbols_for_file_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbols1__31symbols_for_file_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bp = icmp eq i8 %i.bj, 1
  br i1 %i.bp, label %bb.q, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbols1__31symbols_for_file_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !429
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !425
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !429
  store ptr %i.c, ptr %i.b, align 8, !noalias !429
  %i.bq = load ptr, ptr %i.as, align 8, !noalias !429, !noundef !4
  %.not.i11.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i11.i.i.i.i.i, label %.noexc13.i.i.i, label %bb.r, !prof !6

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @35)
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !421

.noexc13.i.i.i:                                   ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !429
  %i.br = load i64, ptr %i.av, align 8, !range !13, !noalias !429, !noundef !4
  invoke void @_RNvMs1_NtCs45bxiIjzMqg_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.bb, i64 noundef %i.br)
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !421

.noexc14.i.i.i:                                   ; preds = %.noexc13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !429
  invoke void @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.bb, ptr noundef nonnull align 8 %i.y, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbols1__31symbols_for_file_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !421

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbols1__31symbols_for_file_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.o, %.noexc12.i.i.i, %bb.m, %.noexc11.i.i.i
  %i.bs = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbols1__31symbols_for_file_Configuration_E10fetch_coldB17_(ptr noundef nonnull align 8 %i.ak, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull align 8 %i.z, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %i.ap, i32 noundef %i.ar, i32 noundef %.val6.i.i.i.i.i)
          to label %.noexc16.i.i.i unwind label %.loopexit.i.i.i, !noalias !421 ; 2 uses

.noexc16.i.i.i:                                   ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbols1__31symbols_for_file_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.l, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbols1__31symbols_for_file_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbols1__31symbols_for_file_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i: ; preds = %.noexc16.i.i.i, %.thread.i.i.i.i.i, %.noexc14.i.i.i, %bb.p
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.bb, %bb.p ], [ %i.bb, %.noexc14.i.i.i ], [ %i.bb, %.thread.i.i.i.i.i ], [ %i.bs, %.noexc16.i.i.i ] ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 30
  %i.bv = load i8, ptr %i.bu, align 2, !range !19, !noalias !423, !noundef !4
  %i.bw = load i64, ptr %i.bt, align 8, !range !13, !noalias !423, !noundef !4
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 29
  %i.by = load atomic i8, ptr %i.bx monotonic, align 1, !noalias !423
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbols1__31symbols_for_file_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.bz = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !425
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.t, !prof !6

bb.t:                                             ; preds = %bb.s
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECskEUeM34gmJU_6ty_ide(ptr noundef nonnull align 8 @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !421

bb.u:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbols1__31symbols_for_file_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.cb = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bt)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !421

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t, %bb.s
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.t ], [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.s ], [ %i.cb, %bb.u ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 5 uses
  store i64 -1, ptr %i.cc, align 8, !noalias !430
  call void @llvm.experimental.noalias.scope.decl(metadata !431)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !431, !noalias !432, !noundef !4 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !431, !noalias !432, !nonnull !4, !noundef !4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !431, !noalias !432, !noundef !4 ; 2 uses
  %.not.i13.i.i.i.i.i = icmp ugt i64 %i.ce, %i.ci
  br i1 %.not.i13.i.i.i.i.i, label %bb.v, label %bb.w, !prof !20

bb.v:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ce, i64 noundef %i.ci, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #22
          to label %.noexc.i.i.i.i.i unwind label %bb.y, !noalias !423

.noexc.i.i.i.i.i:                                 ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.ce, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cj = getelementptr [152 x i8], ptr %i.cg, i64 %i.ce
  %i.ck = getelementptr i8, ptr %i.cj, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !433
  store i32 %i.ap, ptr %i.a, align 4, !noalias !433
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ar, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !433
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !433
  invoke void @_RNvMNtCs45bxiIjzMqg_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.ck, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bv, i64 noundef %i.bw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc14.i.i.i.i.i unwind label %bb.y, !noalias !423

.noexc14.i.i.i.i.i:                               ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !433
  %.pre.i.i.i.i.i = load i64, ptr %i.cc, align 8, !noalias !425
  %i.cl = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.v
  %i.cm = landingpad { ptr, i32 }
          cleanup
  %i.cn = load i64, ptr %i.cc, align 8, !noalias !425, !noundef !4
  %i.co = add i64 %i.cn, 1
  store i64 %i.co, ptr %i.cc, align 8, !noalias !425
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbols1__31symbols_for_file_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.l
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.u, %bb.t, %.noexc14.i.i.i, %.noexc13.i.i.i, %bb.r, %bb.k, %bb.j, %.noexc9.i.i.i, %.noexc6.i.i.i, %bb.i, %bb.h, %bb.g, %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.y
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cm, %bb.y ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtCs45bxiIjzMqg_5salsa6attachNtBG_8Attached6attach7DbGuardECskEUeM34gmJU_6ty_ide(ptr %.sroa.0.0.i.i.i.i) #24
          to label %bb.ad unwind label %bb.ac, !noalias !421

bb.z:                                             ; preds = %.noexc14.i.i.i.i.i, %bb.w
  %i.cp = phi i64 [ %i.cl, %.noexc14.i.i.i.i.i ], [ 0, %bb.w ]
  store i64 %i.cp, ptr %i.cc, align 8, !noalias !425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !423
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cq = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !421, !noundef !4 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !421 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !421
  %.not3.i.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not3.i.i.i.i.i, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cs) ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  %i.cu = load ptr, ptr %i.ct, align 8, !invariant.load !4, !noalias !421, !nonnull !4
  %i.cv = call noundef nonnull align 8 ptr %i.cu(ptr noundef nonnull %i.cq), !noalias !421, !inline_history !418
  call void @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cv), !noalias !421
  br label %bb.af

bb.ac:                                            ; preds = %.body.i.i.i
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !421
  unreachable

bb.ad:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

bb.ae:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22
  unreachable

bb.af:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 32
  ret ptr %i.cx
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachRNtNtCskEUeM34gmJU_6ty_ide7symbols11FlatSymbolsDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_NCNvB1W_28symbols_for_file_global_only0E0B1T_EB1Y_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  %i.i = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(24) null), !noalias !466, !inline_history !436 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !466, !nonnull !4, !noundef !4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !466, !nonnull !4, !noundef !4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !466 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !466 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !466 ; 3 uses
  %i.k = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 64
  %.val.i.i = load ptr, ptr %i.k, align 8, !noalias !467
  %i.l = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i), !noalias !468, !inline_history !441 ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0        ; 3 uses
  %i.n = extractvalue { ptr, ptr } %i.l, 1        ; 2 uses
  %i.o = load ptr, ptr %i.i, align 8, !noalias !469, !noundef !4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.p, align 8, !noalias !469, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !469
  store ptr %i.o, ptr %i.h, align 8, !noalias !469
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.q, ptr %i.r, align 8, !noalias !469
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !469
  store ptr %i.m, ptr %i.g, align 8, !noalias !469
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.n, ptr %i.s, align 8, !noalias !469
  %i.t = icmp eq ptr %i.o, %i.m
  br i1 %i.t, label %bb.f, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.b
  store ptr %i.m, ptr %i.i, align 8, !noalias !469
  store ptr %i.n, ptr %i.p, align 8, !noalias !469
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !469
  store ptr %i.h, ptr %i.f, align 8, !noalias !469
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCskEUeM34gmJU_6ty_ide, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !469
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.u, align 8, !noalias !469
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCskEUeM34gmJU_6ty_ide, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !469
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @32, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #22, !noalias !468
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !469
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.i, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !invariant.load !4, !noalias !470, !nonnull !4
  %i.x = invoke { ptr, ptr } %i.w(ptr noundef nonnull %.sroa.5.0.copyload.i)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !468, !inline_history !446 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.y = extractvalue { ptr, ptr } %i.x, 0        ; 11 uses
  %i.z = extractvalue { ptr, ptr } %i.x, 1        ; 8 uses
  %i.aa = load atomic i32, ptr @_RNvNvNtCskEUeM34gmJU_6ty_ide7symbolss_1__38symbols_for_file_global_only_FN_CACHE_ acquire, align 4, !noalias !470 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %bb.g, label %_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbolss_1__43symbols_for_file_global_only_Configuration_EE13get_or_createNtB1N_28symbols_for_file_global_onlyKj0_EB1P_.exit.i.i.i.i, !prof !18

bb.g:                                             ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !470
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) @4, i64 16, i1 false), !noalias !470
  %i.ac = invoke noundef i32 @_RNvNtNtCs45bxiIjzMqg_5salsa16ingredient_cache3imp24get_or_create_index_slow(ptr noundef nonnull align 4 @_RNvNvNtCskEUeM34gmJU_6ty_ide7symbolss_1__38symbols_for_file_global_only_FN_CACHE_, ptr noundef nonnull align 8 %i.y, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 45, i64 noundef 0)
          to label %.noexc4.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !468

.noexc4.i.i.i:                                    ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !470
  br label %_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbolss_1__43symbols_for_file_global_only_Configuration_EE13get_or_createNtB1N_28symbols_for_file_global_onlyKj0_EB1P_.exit.i.i.i.i

_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbolss_1__43symbols_for_file_global_only_Configuration_EE13get_or_createNtB1N_28symbols_for_file_global_onlyKj0_EB1P_.exit.i.i.i.i: ; preds = %.noexc4.i.i.i, %.noexc.i.i.i
  %.sroa.0.0.i.i.i.i.i = phi i32 [ %i.ac, %.noexc4.i.i.i ], [ %i.aa, %.noexc.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !470, !nonnull !4, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !noalias !470, !noundef !4
  %i.ah = zext i32 %.sroa.0.0.i.i.i.i.i to i64    ; 2 uses
  %i.ai = icmp ugt i64 %i.ag, %i.ah
  call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.ah
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !470, !nonnull !4, !noundef !4 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 520
  %i.am = load atomic i32, ptr %i.al acquire, align 4, !noalias !471
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtCskEUeM34gmJU_6ty_ide7symbolss_1__NtB37_43symbols_for_file_global_only_Configuration_14fn_ingredient_0E0zEB3b_.exit.i.i.i.i, label %bb.h, !prof !6

bb.h:                                             ; preds = %_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbolss_1__43symbols_for_file_global_only_Configuration_EE13get_or_createNtB1N_28symbols_for_file_global_onlyKj0_EB1P_.exit.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 480
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNtCskEUeM34gmJU_6ty_ide7symbolss_1__NtB32_43symbols_for_file_global_only_Configuration_14fn_ingredient_0E0zEB36_(ptr noundef nonnull align 8 %i.ao, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %.sroa.6.0.copyload.i)
          to label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtCskEUeM34gmJU_6ty_ide7symbolss_1__NtB37_43symbols_for_file_global_only_Configuration_14fn_ingredient_0E0zEB3b_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !468

_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtCskEUeM34gmJU_6ty_ide7symbolss_1__NtB37_43symbols_for_file_global_only_Configuration_14fn_ingredient_0E0zEB3b_.exit.i.i.i.i: ; preds = %bb.h, %_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbolss_1__43symbols_for_file_global_only_Configuration_EE13get_or_createNtB1N_28symbols_for_file_global_onlyKj0_EB1P_.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %i.ap = load i32, ptr %.sroa.7.0.copyload.i, align 4, !range !9, !noalias !470, !noundef !4 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !noalias !470, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !470
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 1352 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !noalias !472, !noundef !4
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc6.i.i.i, label %bb.i, !prof !6

bb.i:                                             ; preds = %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtCskEUeM34gmJU_6ty_ide7symbolss_1__NtB37_43symbols_for_file_global_only_Configuration_14fn_ingredient_0E0zEB3b_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.y, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @36)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !468

.noexc6.i.i.i:                                    ; preds = %bb.i, %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtCskEUeM34gmJU_6ty_ide7symbolss_1__NtB37_43symbols_for_file_global_only_Configuration_14fn_ingredient_0E0zEB3b_.exit.i.i.i.i
  %i.au = invoke noundef zeroext i1 @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !468

.noexc7.i.i.i:                                    ; preds = %.noexc6.i.i.i
  br i1 %i.au, label %bb.j, label %.noexc9.i.i.i, !prof !18

.noexc9.i.i.i:                                    ; preds = %bb.j, %.noexc7.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 136 ; 3 uses
  %i.aw = invoke noundef zeroext i1 @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.av)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !468

.noexc8.i.i.i:                                    ; preds = %.noexc9.i.i.i
  br i1 %i.aw, label %bb.k, label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !18

bb.j:                                             ; preds = %.noexc7.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.z)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !468

bb.k:                                             ; preds = %.noexc8.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.z)
          to label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !468

_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.k, %.noexc8.i.i.i
  %i.ax = getelementptr i8, ptr %i.ak, i64 576    ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.ax, align 8, !noalias !472, !noundef !4
  %i.ay = getelementptr i8, ptr %i.ak, i64 580
  %.val8.i.i.i.i.i = load i32, ptr %i.ay, align 4, !alias.scope !473, !noalias !472, !noundef !4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.l

bb.l:                                             ; preds = %.noexc16.i.i.i, %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.bb = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function4memoINtB4_14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbolss_1__43symbols_for_file_global_only_Configuration_E23get_memo_from_table_forB16_(ptr noundef nonnull align 8 %i.ak, ptr noundef nonnull align 8 %i.y, i32 noundef range(i32 1, 0) %i.ap, i32 noundef %i.ar, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc11.i.i.i unwind label %.loopexit.i.i.i, !noalias !468 ; 11 uses

.noexc11.i.i.i:                                   ; preds = %bb.l
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbolss_1__43symbols_for_file_global_only_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.noexc11.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load i64, ptr %i.bc, align 8, !range !7, !noalias !470, !noundef !4
  %.not6.i.i.i.i.i.i = icmp eq i64 %i.bd, -1
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbolss_1__43symbols_for_file_global_only_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = load i32, ptr %i.ax, align 8, !noalias !472, !noundef !4
  store i32 %i.ap, ptr %i.d, align 4, !noalias !472
  store i32 %i.ar, ptr %i.az, align 4, !noalias !472
  store i32 %i.be, ptr %i.ba, align 4, !noalias !472
  %i.bf = load atomic i64, ptr %i.bb acquire, align 8, !noalias !474 ; 3 uses
  %i.bg = icmp ne i64 %i.bf, 0
  call void @llvm.assume(i1 %i.bg)
  %i.bh = load i64, ptr %i.av, align 8, !range !13, !noalias !475, !noundef !4
  %i.bi = icmp eq i64 %i.bf, %i.bh
  br i1 %i.bi, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !6

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.n
  %i.bj = invoke noundef i8 @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.bb, ptr noundef nonnull align 8 %i.y, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.bf)
          to label %.noexc12.i.i.i unwind label %.loopexit.i.i.i, !noalias !468 ; 2 uses

.noexc12.i.i.i:                                   ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.bk = icmp eq i8 %i.bj, 2
  br i1 %i.bk, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbolss_1__43symbols_for_file_global_only_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc12.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 29
  %i.bm = load atomic i8, ptr %i.bl monotonic, align 1, !noalias !470
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.bm, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbolss_1__43symbols_for_file_global_only_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.p

.thread.i.i.i.i.i:                                ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bb, i64 29
  %i.bo = load atomic i8, ptr %i.bn monotonic, align 1, !noalias !470
  %.not7.i21.i.i.i.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not7.i21.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbolss_1__43symbols_for_file_global_only_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbolss_1__43symbols_for_file_global_only_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bp = icmp eq i8 %i.bj, 1
  br i1 %i.bp, label %bb.q, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbolss_1__43symbols_for_file_global_only_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !476
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !476
  store ptr %i.c, ptr %i.b, align 8, !noalias !476
  %i.bq = load ptr, ptr %i.as, align 8, !noalias !476, !noundef !4
  %.not.i11.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i11.i.i.i.i.i, label %.noexc13.i.i.i, label %bb.r, !prof !6

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @35)
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !468

.noexc13.i.i.i:                                   ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !476
  %i.br = load i64, ptr %i.av, align 8, !range !13, !noalias !476, !noundef !4
  invoke void @_RNvMs1_NtCs45bxiIjzMqg_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.bb, i64 noundef %i.br)
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !468

.noexc14.i.i.i:                                   ; preds = %.noexc13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !476
  invoke void @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.bb, ptr noundef nonnull align 8 %i.y, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbolss_1__43symbols_for_file_global_only_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !468

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbolss_1__43symbols_for_file_global_only_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.o, %.noexc12.i.i.i, %bb.m, %.noexc11.i.i.i
  %i.bs = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbolss_1__43symbols_for_file_global_only_Configuration_E10fetch_coldB17_(ptr noundef nonnull align 8 %i.ak, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull align 8 %i.z, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %i.ap, i32 noundef %i.ar, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc16.i.i.i unwind label %.loopexit.i.i.i, !noalias !468 ; 2 uses

.noexc16.i.i.i:                                   ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbolss_1__43symbols_for_file_global_only_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.l, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbolss_1__43symbols_for_file_global_only_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbolss_1__43symbols_for_file_global_only_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i: ; preds = %.noexc16.i.i.i, %.thread.i.i.i.i.i, %.noexc14.i.i.i, %bb.p
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.bb, %bb.p ], [ %i.bb, %.noexc14.i.i.i ], [ %i.bb, %.thread.i.i.i.i.i ], [ %i.bs, %.noexc16.i.i.i ] ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 30
  %i.bv = load i8, ptr %i.bu, align 2, !range !19, !noalias !470, !noundef !4
  %i.bw = load i64, ptr %i.bt, align 8, !range !13, !noalias !470, !noundef !4
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 29
  %i.by = load atomic i8, ptr %i.bx monotonic, align 1, !noalias !470
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbolss_1__43symbols_for_file_global_only_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.bz = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !472
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.t, !prof !6

bb.t:                                             ; preds = %bb.s
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECskEUeM34gmJU_6ty_ide(ptr noundef nonnull align 8 @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !468

bb.u:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbolss_1__43symbols_for_file_global_only_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.cb = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bt)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !468

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t, %bb.s
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.t ], [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.s ], [ %i.cb, %bb.u ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 5 uses
  store i64 -1, ptr %i.cc, align 8, !noalias !477
  call void @llvm.experimental.noalias.scope.decl(metadata !478)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !478, !noalias !479, !noundef !4 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !478, !noalias !479, !nonnull !4, !noundef !4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !478, !noalias !479, !noundef !4 ; 2 uses
  %.not.i13.i.i.i.i.i = icmp ugt i64 %i.ce, %i.ci
  br i1 %.not.i13.i.i.i.i.i, label %bb.v, label %bb.w, !prof !20

bb.v:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ce, i64 noundef %i.ci, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #22
          to label %.noexc.i.i.i.i.i unwind label %bb.y, !noalias !470

.noexc.i.i.i.i.i:                                 ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.ce, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cj = getelementptr [152 x i8], ptr %i.cg, i64 %i.ce
  %i.ck = getelementptr i8, ptr %i.cj, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !480
  store i32 %i.ap, ptr %i.a, align 4, !noalias !480
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ar, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !480
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !480
  invoke void @_RNvMNtCs45bxiIjzMqg_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.ck, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bv, i64 noundef %i.bw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc14.i.i.i.i.i unwind label %bb.y, !noalias !470

.noexc14.i.i.i.i.i:                               ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !480
  %.pre.i.i.i.i.i = load i64, ptr %i.cc, align 8, !noalias !472
  %i.cl = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.v
  %i.cm = landingpad { ptr, i32 }
          cleanup
  %i.cn = load i64, ptr %i.cc, align 8, !noalias !472, !noundef !4
  %i.co = add i64 %i.cn, 1
  store i64 %i.co, ptr %i.cc, align 8, !noalias !472
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCskEUeM34gmJU_6ty_ide7symbolss_1__43symbols_for_file_global_only_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.l
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.u, %bb.t, %.noexc14.i.i.i, %.noexc13.i.i.i, %bb.r, %bb.k, %bb.j, %.noexc9.i.i.i, %.noexc6.i.i.i, %bb.i, %bb.h, %bb.g, %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.y
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cm, %bb.y ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtCs45bxiIjzMqg_5salsa6attachNtBG_8Attached6attach7DbGuardECskEUeM34gmJU_6ty_ide(ptr %.sroa.0.0.i.i.i.i) #24
          to label %bb.ad unwind label %bb.ac, !noalias !468

bb.z:                                             ; preds = %.noexc14.i.i.i.i.i, %bb.w
  %i.cp = phi i64 [ %i.cl, %.noexc14.i.i.i.i.i ], [ 0, %bb.w ]
  store i64 %i.cp, ptr %i.cc, align 8, !noalias !472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !470
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cq = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !468, !noundef !4 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !468 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !468
  %.not3.i.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not3.i.i.i.i.i, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cs) ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  %i.cu = load ptr, ptr %i.ct, align 8, !invariant.load !4, !noalias !468, !nonnull !4
  %i.cv = call noundef nonnull align 8 ptr %i.cu(ptr noundef nonnull %i.cq), !noalias !468, !inline_history !465
  call void @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cv), !noalias !468
  br label %bb.af

bb.ac:                                            ; preds = %.body.i.i.i
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !468
  unreachable

bb.ad:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

bb.ae:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22
  unreachable

bb.af:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 32
  ret ptr %i.cx
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB2b_NtNtB3i_6marker4SendNtNtNtB3i_5panic11unwind_safe13RefUnwindSafeNtB4r_10UnwindSafeNtB47_4SyncEL_EE3get0jECskEUeM34gmJU_6ty_ide(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.a = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(16) null), !inline_history !481 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.a, align 8, !noundef !4
  ret i64 %.val.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB2b_NtNtB3i_6marker4SendNtNtNtB3i_5panic11unwind_safe13RefUnwindSafeNtB4r_10UnwindSafeNtB47_4SyncEL_EE9put_value0jECskEUeM34gmJU_6ty_ide(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.a = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(16) null), !inline_history !482 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.a, align 8, !noundef !4
  ret i64 %.val.i
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCsfRVkQhu4QG3_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCsg7jhnslYu1x_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1N_3len14MinLenProducerINtNtB1P_3vec13DrainProducerNtNtCs56aZGHL6Dc6_7ruff_db5files4FileEEINtNtB1N_8map_with15MapWithConsumerINtNtB1N_13flat_map_iter19FlatMapIterConsumerINtNtNtB1N_7collect8consumer15CollectConsumerNtCskEUeM34gmJU_6ty_ide15ReferenceTargetENCNvNtB6v_10references10referencess0_0ENtNtCs4o81Y09oZk1_10ty_project8parallel10ParallelDbNCINvYINtB2X_6MinLenINtB3q_8IntoIterB3P_EENtB7N_19ParallelIteratorExt11map_with_dbINtNtCscdodAO9FK5_5alloc3vec3VecB6t_ENCB7a_s_0E0EE0NCB1G_s_0INtB5N_13CollectResultB6t_EBaS_E0TBaS_BaS_EEB6v_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(184) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [248 x i8], align 8               ; 8 uses
  %i.b = alloca [248 x i8], align 8               ; 10 uses
  %.sroa.5.i.i = alloca [32 x i8], align 8        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.c = tail call noundef nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMs4_NtCsfRVkQhu4QG3_10rayon_core8registryNtBd_8Registry14in_worker_cold10LOCK_LATCH0s_023___RUST_STD_INTERNAL_VAL)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.d, ptr noundef nonnull align 8 dereferenceable(184) %2, i64 184, i1 false), !noalias !505
  store ptr %i.c, ptr %i.b, align 8, !noalias !504
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  store i64 0, ptr %i.e, align 8, !noalias !504
  invoke void @_RNvMs4_NtCsfRVkQhu4QG3_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCsfRVkQhu4QG3_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsg7jhnslYu1x_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2Z_3len14MinLenProducerINtNtB31_3vec13DrainProducerNtNtCs56aZGHL6Dc6_7ruff_db5files4FileEEINtNtB2Z_8map_with15MapWithConsumerINtNtB2Z_13flat_map_iter19FlatMapIterConsumerINtNtNtB2Z_7collect8consumer15CollectConsumerNtCskEUeM34gmJU_6ty_ide15ReferenceTargetENCNvNtB7H_10references10referencess0_0ENtNtCs4o81Y09oZk1_10ty_project8parallel10ParallelDbNCINvYINtB49_6MinLenINtB4C_8IntoIterB51_EENtB8Z_19ParallelIteratorExt11map_with_dbINtNtCscdodAO9FK5_5alloc3vec3VecB7F_ENCB8m_s_0E0EE0NCB2S_s_0INtB6Z_13CollectResultB7F_EBc4_E0TBc4_Bc4_EE00BcB_ENtB5_3Job7executeB7H_, ptr noundef nonnull %i.b)
          to label %bb.b unwind label %bb.k, !noalias !504

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !noalias !504, !noundef !4
  invoke void @_RNvMs3_NtCsfRVkQhu4QG3_10rayon_core5latchNtB5_9LockLatch14wait_and_reset(ptr noundef nonnull align 4 %i.f)
          to label %bb.c unwind label %bb.k, !noalias !504

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.a, ptr noundef nonnull align 8 dereferenceable(248) %i.b, i64 248, i1 false), !noalias !504
  call void @llvm.experimental.noalias.scope.decl(metadata !506)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !506, !noalias !507
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !506, !noalias !507 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %.sroa.4.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !506, !noalias !507 ; 3 uses
  switch i64 %.sroa.0.0.copyload.i.i.i.i, label %default.unreachable1.i.i.i.i.i [
    i64 0, label %bb.d
    i64 1, label %bb.h
    i64 2, label %bb.e
  ], !prof !21

default.unreachable1.i.i.i.i.i:                   ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #22
          to label %.noexc.i.i.i.i unwind label %bb.f, !noalias !508

.noexc.i.i.i.i:                                   ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i.i) ]
  invoke void @_RNvNtCsfRVkQhu4QG3_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.2.0.copyload.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.4.0.copyload.i.i.i.i) #22
          to label %.noexc1.i.i.i.i unwind label %bb.f, !noalias !508

.noexc1.i.i.i.i:                                  ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !509, !noalias !507, !noundef !4
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.body.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCsfRVkQhu4QG3_10rayon_core4join12join_contextNCINvNvNtNtCsg7jhnslYu1x_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1A_3len14MinLenProducerINtNtB1C_3vec13DrainProducerNtNtCs56aZGHL6Dc6_7ruff_db5files4FileEEINtNtB1A_8map_with15MapWithConsumerINtNtB1A_13flat_map_iter19FlatMapIterConsumerINtNtNtB1A_7collect8consumer15CollectConsumerNtCskEUeM34gmJU_6ty_ide15ReferenceTargetENCNvNtB6i_10references10referencess0_0ENtNtCs4o81Y09oZk1_10ty_project8parallel10ParallelDbNCINvYINtB2K_6MinLenINtB3d_8IntoIterB3C_EENtB7A_19ParallelIteratorExt11map_with_dbINtNtCscdodAO9FK5_5alloc3vec3VecB6g_ENCB6X_s_0E0EE0NCB1t_s_0INtB5A_13CollectResultB6g_EBaF_E0EB6i_(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.i)
          to label %.body.i.i unwind label %bb.j, !noalias !507

bb.h:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !510
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !511, !noalias !507, !noundef !4
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsfRVkQhu4QG3_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsg7jhnslYu1x_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3e_3len14MinLenProducerINtNtB3g_3vec13DrainProducerNtNtCs56aZGHL6Dc6_7ruff_db5files4FileEEINtNtB3e_8map_with15MapWithConsumerINtNtB3e_13flat_map_iter19FlatMapIterConsumerINtNtNtB3e_7collect8consumer15CollectConsumerNtCskEUeM34gmJU_6ty_ide15ReferenceTargetENCNvNtB7W_10references10referencess0_0ENtNtCs4o81Y09oZk1_10ty_project8parallel10ParallelDbNCINvYINtB4o_6MinLenINtB4R_8IntoIterB5g_EENtB9e_19ParallelIteratorExt11map_with_dbINtNtCscdodAO9FK5_5alloc3vec3VecB7U_ENCB8B_s_0E0EE0NCB37_s_0INtB7e_13CollectResultB7U_EBcj_E0TBcj_Bcj_EE0BcQ_EB7W_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCsfRVkQhu4QG3_10rayon_core4join12join_contextNCINvNvNtNtCsg7jhnslYu1x_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1A_3len14MinLenProducerINtNtB1C_3vec13DrainProducerNtNtCs56aZGHL6Dc6_7ruff_db5files4FileEEINtNtB1A_8map_with15MapWithConsumerINtNtB1A_13flat_map_iter19FlatMapIterConsumerINtNtNtB1A_7collect8consumer15CollectConsumerNtCskEUeM34gmJU_6ty_ide15ReferenceTargetENCNvNtB6i_10references10referencess0_0ENtNtCs4o81Y09oZk1_10ty_project8parallel10ParallelDbNCINvYINtB2K_6MinLenINtB3d_8IntoIterB3C_EENtB7A_19ParallelIteratorExt11map_with_dbINtNtCscdodAO9FK5_5alloc3vec3VecB6g_ENCB6X_s_0E0EE0NCB1t_s_0INtB5A_13CollectResultB6g_EBaF_E0EB6i_(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.m), !noalias !512
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsfRVkQhu4QG3_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsg7jhnslYu1x_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3e_3len14MinLenProducerINtNtB3g_3vec13DrainProducerNtNtCs56aZGHL6Dc6_7ruff_db5files4FileEEINtNtB3e_8map_with15MapWithConsumerINtNtB3e_13flat_map_iter19FlatMapIterConsumerINtNtNtB3e_7collect8consumer15CollectConsumerNtCskEUeM34gmJU_6ty_ide15ReferenceTargetENCNvNtB7W_10references10referencess0_0ENtNtCs4o81Y09oZk1_10ty_project8parallel10ParallelDbNCINvYINtB4o_6MinLenINtB4R_8IntoIterB5g_EENtB9e_19ParallelIteratorExt11map_with_dbINtNtCscdodAO9FK5_5alloc3vec3VecB7U_ENCB8B_s_0E0EE0NCB37_s_0INtB7e_13CollectResultB7U_EBcj_E0TBcj_Bcj_EE0BcQ_EB7W_.exit

bb.j:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !508
  unreachable

bb.k:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsfRVkQhu4QG3_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCsg7jhnslYu1x_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3t_3len14MinLenProducerINtNtB3v_3vec13DrainProducerNtNtCs56aZGHL6Dc6_7ruff_db5files4FileEEINtNtB3t_8map_with15MapWithConsumerINtNtB3t_13flat_map_iter19FlatMapIterConsumerINtNtNtB3t_7collect8consumer15CollectConsumerNtCskEUeM34gmJU_6ty_ide15ReferenceTargetENCNvNtB8b_10references10referencess0_0ENtNtCs4o81Y09oZk1_10ty_project8parallel10ParallelDbNCINvYINtB4D_6MinLenINtB56_8IntoIterB5v_EENtB9t_19ParallelIteratorExt11map_with_dbINtNtCscdodAO9FK5_5alloc3vec3VecB89_ENCB8Q_s_0E0EE0NCB3m_s_0INtB7t_13CollectResultB89_EBcy_E0TBcy_Bcy_EE00Bd5_EEB8b_(ptr noalias noundef align 8 dereferenceable(248) %i.b) #24
          to label %.body.i.i unwind label %bb.l, !noalias !504

bb.l:                                             ; preds = %bb.k
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !504
  unreachable

.body.i.i:                                        ; preds = %bb.k, %bb.g, %bb.f
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.h, %bb.g ], [ %lpad.thr_comm.i.i.i, %bb.k ]
  resume { ptr, i32 } %eh.lpad-body.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsfRVkQhu4QG3_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsg7jhnslYu1x_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3e_3len14MinLenProducerINtNtB3g_3vec13DrainProducerNtNtCs56aZGHL6Dc6_7ruff_db5files4FileEEINtNtB3e_8map_with15MapWithConsumerINtNtB3e_13flat_map_iter19FlatMapIterConsumerINtNtNtB3e_7collect8consumer15CollectConsumerNtCskEUeM34gmJU_6ty_ide15ReferenceTargetENCNvNtB7W_10references10referencess0_0ENtNtCs4o81Y09oZk1_10ty_project8parallel10ParallelDbNCINvYINtB4o_6MinLenINtB4R_8IntoIterB5g_EENtB9e_19ParallelIteratorExt11map_with_dbINtNtCscdodAO9FK5_5alloc3vec3VecB7U_ENCB8B_s_0E0EE0NCB37_s_0INtB7e_13CollectResultB7U_EBcj_E0TBcj_Bcj_EE0BcQ_EB7W_.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !504
  store ptr %.sroa.2.0.copyload.i.i.i.i, ptr %0, align 8, !alias.scope !503, !noalias !513
  %.sroa.6.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.0.copyload.i.i.i.i, ptr %.sroa.6.8..sroa_idx.i, align 8, !alias.scope !503, !noalias !513
  %.sroa.7.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i.i, i64 32, i1 false), !noalias !513
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCsfRVkQhu4QG3_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCsg7jhnslYu1x_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1N_3len14MinLenProducerINtNtB1P_3vec13DrainProducerNtNtCs56aZGHL6Dc6_7ruff_db5files4FileEEINtNtB1N_8map_with15MapWithConsumerINtNtB1N_13flat_map_iter19FlatMapIterConsumerINtNtNtB1N_7collect8consumer15CollectConsumerNtNtNtCskEUeM34gmJU_6ty_ide14call_hierarchy14incoming_calls11RawCallSiteENCNvB6v_14incoming_callss1_0ENtNtCs4o81Y09oZk1_10ty_project8parallel10ParallelDbNCINvYINtB2X_6MinLenINtB3q_8IntoIterB3P_EENtB89_19ParallelIteratorExt11map_with_dbINtNtCscdodAO9FK5_5alloc3vec3VecB6t_ENCB7G_s0_0E0EE0NCB1G_s_0INtB5N_13CollectResultB6t_EBbf_E0TBbf_Bbf_EEB6z_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(184) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [248 x i8], align 8               ; 8 uses
  %i.b = alloca [248 x i8], align 8               ; 10 uses
  %.sroa.5.i.i = alloca [32 x i8], align 8        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.c = tail call noundef nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMs4_NtCsfRVkQhu4QG3_10rayon_core8registryNtBd_8Registry14in_worker_cold10LOCK_LATCH0s_023___RUST_STD_INTERNAL_VAL)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.d, ptr noundef nonnull align 8 dereferenceable(184) %2, i64 184, i1 false), !noalias !536
  store ptr %i.c, ptr %i.b, align 8, !noalias !535
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  store i64 0, ptr %i.e, align 8, !noalias !535
  invoke void @_RNvMs4_NtCsfRVkQhu4QG3_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCsfRVkQhu4QG3_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsg7jhnslYu1x_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2Z_3len14MinLenProducerINtNtB31_3vec13DrainProducerNtNtCs56aZGHL6Dc6_7ruff_db5files4FileEEINtNtB2Z_8map_with15MapWithConsumerINtNtB2Z_13flat_map_iter19FlatMapIterConsumerINtNtNtB2Z_7collect8consumer15CollectConsumerNtNtNtCskEUeM34gmJU_6ty_ide14call_hierarchy14incoming_calls11RawCallSiteENCNvB7H_14incoming_callss1_0ENtNtCs4o81Y09oZk1_10ty_project8parallel10ParallelDbNCINvYINtB49_6MinLenINtB4C_8IntoIterB51_EENtB9l_19ParallelIteratorExt11map_with_dbINtNtCscdodAO9FK5_5alloc3vec3VecB7F_ENCB8S_s0_0E0EE0NCB2S_s_0INtB6Z_13CollectResultB7F_EBcr_E0TBcr_Bcr_EE00BcY_ENtB5_3Job7executeB7L_, ptr noundef nonnull %i.b)
          to label %bb.b unwind label %bb.k, !noalias !535

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !noalias !535, !noundef !4
  invoke void @_RNvMs3_NtCsfRVkQhu4QG3_10rayon_core5latchNtB5_9LockLatch14wait_and_reset(ptr noundef nonnull align 4 %i.f)
          to label %bb.c unwind label %bb.k, !noalias !535

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.a, ptr noundef nonnull align 8 dereferenceable(248) %i.b, i64 248, i1 false), !noalias !535
  call void @llvm.experimental.noalias.scope.decl(metadata !537)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !537, !noalias !538
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !537, !noalias !538 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %.sroa.4.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !537, !noalias !538 ; 3 uses
  switch i64 %.sroa.0.0.copyload.i.i.i.i, label %default.unreachable1.i.i.i.i.i [
    i64 0, label %bb.d
    i64 1, label %bb.h
    i64 2, label %bb.e
  ], !prof !21

default.unreachable1.i.i.i.i.i:                   ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #22
          to label %.noexc.i.i.i.i unwind label %bb.f, !noalias !539

end_hunk_0
