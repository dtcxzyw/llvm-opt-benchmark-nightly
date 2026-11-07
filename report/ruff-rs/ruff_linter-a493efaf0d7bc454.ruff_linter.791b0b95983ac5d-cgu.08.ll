Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.08?download=true
inline.NumInlined: 5341
inline.NumDeleted: 2209
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_15DiagnosticGuard11try_set_fixNCNvNtNtNtNtBa_5rules9pyupgrade5rules22deprecated_mock_import22deprecated_mock_imports0_0EBa_:bb.a

bb.ah:                                            ; preds = %bb.af
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !noalias !758
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement9StatementNtCsiXichZnxgbf_6anyhow5ErrorE6unwrapCsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEB5_.exit.i.i
  %.sroa.6.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0.copyload4.i.i = load ptr, ptr %.sroa.6.0..sroa_idx3.i.i, align 8, !noalias !759
  %.sroa.8.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.8.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2312) %.sroa.8.0..sroa_idx5.i.i, ptr noundef nonnull align 8 dereferenceable(2312) %.sroa.8.0..sroa_idx6.i.i, i64 2312, i1 false), !noalias !755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !756
  tail call void @llvm.experimental.noalias.scope.decl(metadata !760)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !761)
  store i64 %i.cb, ptr %i.t, align 8, !alias.scope !762, !noalias !755
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %.sroa.6.0.copyload4.i.i, ptr %.sroa.6.0..sroa_idx2.i.i, align 8, !alias.scope !762, !noalias !755
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763)
  %.not.i.i.i = icmp eq i64 %i.cb, -1
  br i1 %.not.i.i.i, label %bb.ai, label %.invoke.i.i, !prof !15

.invoke.i.i:                                      ; preds = %bb.aj, %bb.ai, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement9StatementNtCsiXichZnxgbf_6anyhow5ErrorE6unwrapCsEhZmuQNqkz_11ruff_linter.exit.i.i
  %i.ci = phi ptr [ @183, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement9StatementNtCsiXichZnxgbf_6anyhow5ErrorE6unwrapCsEhZmuQNqkz_11ruff_linter.exit.i.i ], [ @192, %bb.aj ], [ @192, %bb.ai ]
  %i.cj = phi i64 [ 26, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement9StatementNtCsiXichZnxgbf_6anyhow5ErrorE6unwrapCsEhZmuQNqkz_11ruff_linter.exit.i.i ], [ 35, %bb.aj ], [ 35, %bb.ai ]
  %i.ck = invoke noundef nonnull ptr @_RINvMNtCsiXichZnxgbf_6anyhow5errorNtB5_5Error3msgReECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ci, i64 noundef %i.cj)
          to label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules22deprecated_mock_import18format_import_from.exit.thread.i unwind label %bb.cn, !noalias !755

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules22deprecated_mock_import18format_import_from.exit.thread.i: ; preds = %.invoke.i.i
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement9StatementECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(2328) %i.t), !noalias !755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !755
  br label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules22deprecated_mock_import22deprecated_mock_imports0_0Bb_.exit.thread

bb.ai:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement9StatementNtCsiXichZnxgbf_6anyhow5ErrorE6unwrapCsEhZmuQNqkz_11ruff_linter.exit.i.i
  %i.cl = load ptr, ptr %.sroa.8.0..sroa_idx5.i.i, align 8, !alias.scope !763, !noalias !755, !nonnull !14, !noundef !14 ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !763, !noalias !755, !noundef !14
  %.not3.i.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not3.i.i.i, label %.invoke.i.i, label %bb.aj, !prof !19

bb.aj:                                            ; preds = %bb.ai
  %i.co = load i64, ptr %i.cl, align 8, !range !33, !noalias !764, !noundef !14 ; 2 uses
  %i.cp = icmp ne i64 %i.co, 15
  tail call void @llvm.assume(i1 %i.cp)
  %i.cq = icmp eq i64 %i.co, 13
  br i1 %i.cq, label %bb.ak, label %.invoke.i.i, !prof !15

.body92.i.i:                                      ; preds = %bb.cz, %.thread16.i.i, %bb.cn, %bb.cj, %bb.bn, %bb.bl, %common.resume.i.i.i.i, %bb.av, %bb.ar, %bb.an
  %.pn90.i.i = phi { ptr, i32 } [ %common.resume.op.i.i.i.i, %common.resume.i.i.i.i ], [ %i.gk, %bb.cz ], [ %i.dy, %bb.bn ], [ %i.cy, %bb.an ], [ %i.dl, %bb.av ], [ %i.dd, %bb.ar ], [ %i.fc, %bb.cj ], [ %.pn8721.i.i, %.thread16.i.i ], [ %.pn.i.i, %bb.bl ], [ %i.ff, %bb.cn ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement9StatementECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(2328) %i.t) #38
          to label %common.resume unwind label %bb.cy, !noalias !755

bb.ak:                                            ; preds = %bb.aj
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 48 ; 8 uses
  %i.ct = load i64, ptr %i.cs, align 8, !range !23, !noalias !755, !noundef !14
  %.not.i.i = icmp eq i64 %i.ct, -1
  br i1 %.not.i.i, label %bb.al, label %bb.bd

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !755
  %i.cu = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr @339, ptr %i.cu, align 8, !noalias !755
  %i.cv = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store i64 8, ptr %i.cv, align 8, !noalias !755
  store i64 0, ptr %i.r, align 8, !noalias !755
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !755
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.57.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !755
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !755
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i64 0, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !noalias !755
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !765
  %i.cw = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 16, 673) 64, i64 noundef range(i64 4, 9) 8) #41, !noalias !765 ; 4 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.am, label %bb.ap, !prof !19

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #40
          to label %.noexc111.i.i unwind label %bb.an, !noalias !755

.noexc111.i.i:                                    ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.am
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression4NameECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.r) #38
          to label %.body92.i.i unwind label %bb.ao, !noalias !755

bb.ao:                                            ; preds = %bb.an
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !noalias !755
  unreachable

bb.ap:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cw, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false), !noalias !755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !755
  store i64 0, ptr %i.c, align 8, !noalias !755
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.cw, ptr %i.da, align 8, !noalias !755
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !755
  %i.db = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 16, 673) 16, i64 noundef range(i64 4, 9) 8) #41, !noalias !755 ; 4 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.aq, label %bb.at, !prof !19

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #40
          to label %.noexc112.i.i unwind label %bb.ar, !noalias !755

.noexc112.i.i:                                    ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.aq
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression10ExpressionECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(16) %i.c) #38
          to label %.body92.i.i unwind label %bb.as, !noalias !755

bb.as:                                            ; preds = %bb.ar
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !noalias !755
  unreachable

bb.at:                                            ; preds = %bb.ap
  store i64 0, ptr %i.db, align 8, !noalias !755
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %i.cw, ptr %i.df, align 8, !noalias !755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !755
  %i.dg = getelementptr inbounds nuw i8, ptr %i.s, i64 320
  store ptr %i.db, ptr %i.dg, align 8, !noalias !755
  store i64 0, ptr %i.s, align 8, !noalias !755
  %.sroa.011.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.011.sroa.4.0..sroa_idx.i.i, align 8, !noalias !755
  %.sroa.011.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.011.sroa.6.sroa.4.0..sroa.011.sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.011.sroa.5.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !755
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.011.sroa.6.sroa.4.0..sroa.011.sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !755
  %.sroa.011.sroa.6.sroa.5.0..sroa.011.sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i64 0, ptr %.sroa.011.sroa.6.sroa.5.0..sroa.011.sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !755
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store ptr @119, ptr %.sroa.512.0..sroa_idx.i.i, align 8, !noalias !755
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store i64 4, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !755
  %i.dh = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  store i64 -1, ptr %i.dh, align 8, !noalias !755
  %.sroa.429.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.429.0..sroa_idx.i.i, align 8, !noalias !755
  %.sroa.530.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  store i64 0, ptr %.sroa.530.0..sroa_idx.i.i, align 8, !noalias !755
  %.sroa.732.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 216
  store i64 -1, ptr %.sroa.732.0..sroa_idx.i.i, align 8, !noalias !755
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 224
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !755
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 232
  store i64 0, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !755
  %i.di = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store i64 0, ptr %i.di, align 8, !noalias !755
  %.sroa.434.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.434.0..sroa_idx.i.i, align 8, !noalias !755
  %.sroa.535.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %.sroa.437.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.535.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !755
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.437.0..sroa_idx.i.i, align 8, !noalias !755
  %.sroa.538.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  store i64 0, ptr %.sroa.538.0..sroa_idx.i.i, align 8, !noalias !755
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !766
  %i.dj = tail call noundef align 8 dereferenceable_or_null(328) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 16, 673) 328, i64 noundef range(i64 4, 9) 8) #41, !noalias !766 ; 4 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.au, label %bb.ax, !prof !19

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 328) #40
          to label %.noexc114.i.i unwind label %bb.av, !noalias !755

.noexc114.i.i:                                    ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.au
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression9AttributeECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.s) #38
          to label %.body92.i.i unwind label %bb.aw, !noalias !755

bb.aw:                                            ; preds = %bb.av
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !noalias !755
  unreachable

bb.ax:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.dj, ptr noundef nonnull align 8 dereferenceable(328) %i.s, i64 328, i1 false), !noalias !755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !755
  %.val108.i.i = load i64, ptr %i.cr, align 8, !range !34, !noalias !755, !noundef !14
  %i.dn = getelementptr i8, ptr %i.cl, i64 16     ; 3 uses
  %.val109.i.i = load ptr, ptr %i.dn, align 8, !noalias !755 ; 6 uses
  switch i64 %.val108.i.i, label %bb.ba [
    i64 2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15NameOrAttributeEECsEhZmuQNqkz_11ruff_linter.exit.i.i
    i64 0, label %bb.ay
  ]

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val109.i.i) ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression4NameECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(64) %.val109.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15NameOrAttributeECsEhZmuQNqkz_11ruff_linter.exit.i.i.i unwind label %bb.az, !noalias !755

common.resume.i.i.i.i:                            ; preds = %bb.bb, %bb.az
  %.sink.i.i.i.i = phi i64 [ 328, %bb.bb ], [ 64, %bb.az ]
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.dp, %bb.bb ], [ %i.do, %bb.az ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val109.i.i, i64 noundef %.sink.i.i.i.i, i64 noundef 8) #41, !noalias !755
  store i64 1, ptr %i.cr, align 8, !noalias !755
  store ptr %i.dj, ptr %i.dn, align 8, !noalias !755
  br label %.body92.i.i

bb.az:                                            ; preds = %bb.ay
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i.i

bb.ba:                                            ; preds = %bb.ax
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val109.i.i) ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression9AttributeECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(328) %.val109.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15NameOrAttributeECsEhZmuQNqkz_11ruff_linter.exit.i.i.i unwind label %bb.bb, !noalias !755, !inline_history !1

bb.bb:                                            ; preds = %bb.ba
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15NameOrAttributeECsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %bb.ba, %bb.ay
  %.sink1.i.i.i.i = phi i64 [ 64, %bb.ay ], [ 328, %bb.ba ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val109.i.i, i64 noundef %.sink1.i.i.i.i, i64 noundef 8) #41, !noalias !755
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15NameOrAttributeEECsEhZmuQNqkz_11ruff_linter.exit.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15NameOrAttributeEECsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15NameOrAttributeECsEhZmuQNqkz_11ruff_linter.exit.i.i.i, %bb.ax
  store i64 1, ptr %i.cr, align 8, !noalias !755
  store ptr %i.dj, ptr %i.dn, align 8, !noalias !755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !755
  invoke void @_RNvXNtNtCsEhZmuQNqkz_11ruff_linter3fix8codemodsNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement9StatementNtB2_14CodegenStylist15codegen_stylistB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2328) %i.t, ptr noundef nonnull align 8 %.val3.i)
          to label %bb.bc unwind label %bb.cn, !noalias !755

bb.bc:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15NameOrAttributeEECsEhZmuQNqkz_11ruff_linter.exit.i.i
  %.sroa.0.0.copyload9.i = load i64, ptr %i.q, align 8, !noalias !767
  %.sroa.10.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.10.0.copyload17.i = load ptr, ptr %.sroa.10.0..sroa_idx16.i, align 8, !noalias !767
  %.sroa.12.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.12.0.copyload25.i = load i64, ptr %.sroa.12.0..sroa_idx24.i, align 8, !noalias !767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !755
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules22deprecated_mock_import18format_import_from.exit.i

bb.bd:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !755
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement11ImportAliasENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs)
          to label %bb.be unwind label %bb.cn, !noalias !755

bb.be:                                            ; preds = %bb.bd
  invoke fastcc void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules22deprecated_mock_import20clean_import_aliases(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m)
          to label %bb.bf unwind label %bb.cn, !noalias !755

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !755
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !755
  %i.dq = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i64 24, i1 false), !noalias !755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !755
  %i.dr = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !noalias !755, !noundef !14 ; 2 uses
  %i.dt = icmp ult i64 %i.ds, 20587884010836554
  call void @llvm.assume(i1 %i.dt)
  %.not30.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not30.i.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !755
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !755
  invoke fastcc void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules22deprecated_mock_import12format_mocks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %i.ah, ptr noundef nonnull align 8 %.val3.i)
          to label %bb.bm unwind label %bb.cz, !noalias !768

bb.bh:                                            ; preds = %bb.bf
  %i.du = load i64, ptr %i.cs, align 8, !range !23, !alias.scope !769, !noalias !755, !noundef !14
  %i.dv = icmp eq i64 %i.du, -1
  br i1 %i.dv, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement11ImportNamesECsEhZmuQNqkz_11ruff_linter.exit.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement11ImportAliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cs)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement11ImportAliasEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i unwind label %bb.bj, !noalias !755

bb.bj:                                            ; preds = %bb.bi
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement11ImportAliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cs)
          to label %.body118.i.i unwind label %bb.bk, !noalias !755

bb.bk:                                            ; preds = %bb.bj
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !noalias !755
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement11ImportAliasEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %bb.bi
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement11ImportAliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cs)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement11ImportNamesECsEhZmuQNqkz_11ruff_linter.exit.i.i unwind label %bb.bq, !noalias !755

bb.bl:                                            ; preds = %.body151.i.i
  br i1 %.sroa.080.2.i.i, label %.thread16.i.i, label %.body92.i.i

bb.bm:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !755
  %.sroa.0.0.copyload8.i = load i64, ptr %i.l, align 8, !noalias !767
  %.sroa.10.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.10.0.copyload15.i = load ptr, ptr %.sroa.10.0..sroa_idx14.i, align 8, !noalias !767
  %.sroa.12.0..sroa_idx22.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.12.0.copyload23.i = load i64, ptr %.sroa.12.0..sroa_idx22.i, align 8, !noalias !767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !755
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement11ImportAliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.bo unwind label %bb.bn, !noalias !755

bb.bn:                                            ; preds = %bb.bm
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement11ImportAliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body92.i.i unwind label %bb.bp, !noalias !755

bb.bo:                                            ; preds = %bb.bm
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement11ImportAliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement11ImportAliasEECsEhZmuQNqkz_11ruff_linter.exit.i.i unwind label %bb.cn, !noalias !755

bb.bp:                                            ; preds = %bb.bn
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !noalias !755
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement11ImportAliasEECsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement6AsNameEEECsEhZmuQNqkz_11ruff_linter.exit.i.i, %bb.bo
  %.sroa.12.1.i = phi i64 [ %.sroa.12.0.copyload23.i, %bb.bo ], [ %.sroa.12.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement6AsNameEEECsEhZmuQNqkz_11ruff_linter.exit.i.i ]
  %.sroa.10.1.i = phi ptr [ %.sroa.10.0.copyload15.i, %bb.bo ], [ %.sroa.10.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement6AsNameEEECsEhZmuQNqkz_11ruff_linter.exit.i.i ]
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.copyload8.i, %bb.bo ], [ %.sroa.0.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement6AsNameEEECsEhZmuQNqkz_11ruff_linter.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !755
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules22deprecated_mock_import18format_import_from.exit.i

bb.bq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement11ImportAliasEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.body118.i.i

.body118.i.i:                                     ; preds = %bb.bq, %bb.bj
  %eh.lpad-body119.i.i = phi { ptr, i32 } [ %i.ea, %bb.bq ], [ %i.dw, %bb.bj ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !755
  br label %.thread16.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement11ImportNamesECsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement11ImportAliasEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i, %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !755
  %i.eb = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr @339, ptr %i.eb, align 8, !noalias !755
  %i.ec = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i64 8, ptr %i.ec, align 8, !noalias !755
  store i64 0, ptr %i.i, align 8, !noalias !755
  %.sroa.440.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.440.0..sroa_idx.i.i, align 8, !noalias !755
  %.sroa.541.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.443.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.541.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !755
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.443.0..sroa_idx.i.i, align 8, !noalias !755
  %.sroa.544.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 0, ptr %.sroa.544.0..sroa_idx.i.i, align 8, !noalias !755
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !770
  %i.ed = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 16, 673) 64, i64 noundef range(i64 4, 9) 8) #41, !noalias !770 ; 4 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %bb.br, label %bb.bu, !prof !19

bb.br:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement11ImportNamesECsEhZmuQNqkz_11ruff_linter.exit.i.i
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #40
          to label %.noexc124.i.i unwind label %bb.bs, !noalias !755

.noexc124.i.i:                                    ; preds = %bb.br
  unreachable

bb.bs:                                            ; preds = %bb.br
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression4NameECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.i) #38
          to label %.thread16.i.i unwind label %bb.bt, !noalias !755

bb.bt:                                            ; preds = %bb.bs
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !noalias !755
  unreachable

bb.bu:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement11ImportNamesECsEhZmuQNqkz_11ruff_linter.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ed, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false), !noalias !755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !755
  store i64 0, ptr %i.d, align 8, !noalias !755
  %i.eh = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ed, ptr %i.eh, align 8, !noalias !755
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !755
  %i.ei = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 16, 673) 16, i64 noundef range(i64 4, 9) 8) #41, !noalias !755 ; 4 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.bv, label %bb.by, !prof !19

bb.bv:                                            ; preds = %bb.bu
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #40
          to label %.noexc126.i.i unwind label %bb.bw, !noalias !755

.noexc126.i.i:                                    ; preds = %bb.bv
  unreachable

bb.bw:                                            ; preds = %bb.bv
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression10ExpressionECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(16) %i.d) #38
          to label %.thread16.i.i unwind label %bb.bx, !noalias !755

bb.bx:                                            ; preds = %bb.bw
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !noalias !755
  unreachable

bb.by:                                            ; preds = %bb.bu
  store i64 0, ptr %i.ei, align 8, !noalias !755
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %i.ed, ptr %i.em, align 8, !noalias !755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !755
  %i.en = getelementptr inbounds nuw i8, ptr %i.j, i64 320
  store ptr %i.ei, ptr %i.en, align 8, !noalias !755
  store i64 0, ptr %i.j, align 8, !noalias !755
  %.sroa.045.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.045.sroa.4.0..sroa_idx.i.i, align 8, !noalias !755
  %.sroa.045.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.045.sroa.6.sroa.4.0..sroa.045.sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.045.sroa.5.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !755
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.045.sroa.6.sroa.4.0..sroa.045.sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !755
  %.sroa.045.sroa.6.sroa.5.0..sroa.045.sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 0, ptr %.sroa.045.sroa.6.sroa.5.0..sroa.045.sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !755
  %.sroa.546.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr @119, ptr %.sroa.546.0..sroa_idx.i.i, align 8, !noalias !755
  %.sroa.647.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i64 4, ptr %.sroa.647.0..sroa_idx.i.i, align 8, !noalias !755
  %i.eo = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  store i64 -1, ptr %i.eo, align 8, !noalias !755
  %.sroa.465.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.465.0..sroa_idx.i.i, align 8, !noalias !755
  %.sroa.566.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  store i64 0, ptr %.sroa.566.0..sroa_idx.i.i, align 8, !noalias !755
  %.sroa.768.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 216
  store i64 -1, ptr %.sroa.768.0..sroa_idx.i.i, align 8, !noalias !755
  %.sroa.869.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 224
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.869.0..sroa_idx.i.i, align 8, !noalias !755
  %.sroa.970.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 232
  store i64 0, ptr %.sroa.970.0..sroa_idx.i.i, align 8, !noalias !755
  %i.ep = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i64 0, ptr %i.ep, align 8, !noalias !755
  %.sroa.473.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.473.0..sroa_idx.i.i, align 8, !noalias !755
  %.sroa.574.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %.sroa.476.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.574.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !755
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.476.0..sroa_idx.i.i, align 8, !noalias !755
  %.sroa.577.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  store i64 0, ptr %.sroa.577.0..sroa_idx.i.i, align 8, !noalias !755
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !771
  %i.eq = call noundef align 8 dereferenceable_or_null(328) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 16, 673) 328, i64 noundef range(i64 4, 9) 8) #41, !noalias !771 ; 4 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %bb.bz, label %bb.cc, !prof !19

bb.bz:                                            ; preds = %bb.by
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 328) #40
          to label %.noexc128.i.i unwind label %bb.ca, !noalias !755

.noexc128.i.i:                                    ; preds = %bb.bz
  unreachable

bb.ca:                                            ; preds = %bb.bz
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression9AttributeECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.j) #38
          to label %.thread16.i.i unwind label %bb.cb, !noalias !755

bb.cb:                                            ; preds = %bb.ca
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !noalias !755
  unreachable

bb.cc:                                            ; preds = %bb.by
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.eq, ptr noundef nonnull align 8 dereferenceable(328) %i.j, i64 328, i1 false), !noalias !755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !755
  %.val106.i.i = load i64, ptr %i.cr, align 8, !range !34, !noalias !755, !noundef !14
  %i.eu = getelementptr i8, ptr %i.cl, i64 16     ; 3 uses
  %.val107.i.i = load ptr, ptr %i.eu, align 8, !noalias !755 ; 6 uses
  switch i64 %.val106.i.i, label %bb.cf [
    i64 2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15NameOrAttributeEECsEhZmuQNqkz_11ruff_linter.exit137.i.i
    i64 0, label %bb.cd
  ]

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val107.i.i) ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression4NameECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(64) %.val107.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15NameOrAttributeECsEhZmuQNqkz_11ruff_linter.exit.i133.i.i unwind label %bb.ce, !noalias !755

common.resume.i.i130.i.i:                         ; preds = %bb.cg, %bb.ce
  %.sink.i.i131.i.i = phi i64 [ 328, %bb.cg ], [ 64, %bb.ce ]
  %common.resume.op.i.i132.i.i = phi { ptr, i32 } [ %i.ew, %bb.cg ], [ %i.ev, %bb.ce ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val107.i.i, i64 noundef %.sink.i.i131.i.i, i64 noundef 8) #41, !noalias !755
  store i64 1, ptr %i.cr, align 8, !noalias !755
  store ptr %i.eq, ptr %i.eu, align 8, !noalias !755
  br label %.thread16.i.i

bb.ce:                                            ; preds = %bb.cd
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i130.i.i

bb.cf:                                            ; preds = %bb.cc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val107.i.i) ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression9AttributeECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(328) %.val107.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15NameOrAttributeECsEhZmuQNqkz_11ruff_linter.exit.i133.i.i unwind label %bb.cg, !noalias !755, !inline_history !1

bb.cg:                                            ; preds = %bb.cf
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i130.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15NameOrAttributeECsEhZmuQNqkz_11ruff_linter.exit.i133.i.i: ; preds = %bb.cf, %bb.cd
  %.sink1.i.i134.i.i = phi i64 [ 64, %bb.cd ], [ 328, %bb.cf ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val107.i.i, i64 noundef %.sink1.i.i134.i.i, i64 noundef 8) #41, !noalias !755
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15NameOrAttributeEECsEhZmuQNqkz_11ruff_linter.exit137.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15NameOrAttributeEECsEhZmuQNqkz_11ruff_linter.exit137.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15NameOrAttributeECsEhZmuQNqkz_11ruff_linter.exit.i133.i.i, %bb.cc
  store i64 1, ptr %i.cr, align 8, !noalias !755
  store ptr %i.eq, ptr %i.eu, align 8, !noalias !755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !755
  invoke void @_RNvXNtNtCsEhZmuQNqkz_11ruff_linter3fix8codemodsNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement9StatementNtB2_14CodegenStylist15codegen_stylistB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2328) %i.t, ptr noundef nonnull align 8 %.val3.i)
          to label %bb.ch unwind label %.body.thread24.i.i, !noalias !755

.body.thread24.i.i:                               ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15NameOrAttributeEECsEhZmuQNqkz_11ruff_linter.exit137.i.i
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %.thread16.i.i

bb.ch:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15NameOrAttributeEECsEhZmuQNqkz_11ruff_linter.exit137.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ez = load i64, ptr %i.ey, align 8, !noalias !755, !noundef !14 ; 2 uses
  %i.fa = icmp ult i64 %i.ez, 41175768021673107
  call void @llvm.assume(i1 %i.fa)
  %i.fb = icmp eq i64 %i.ez, 0
  br i1 %i.fb, label %bb.ci, label %bb.cm

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !755
  %.sroa.0.0.copyload7.i = load i64, ptr %i.l, align 8, !noalias !767
  %.sroa.10.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.10.0.copyload13.i = load ptr, ptr %.sroa.10.0..sroa_idx12.i, align 8, !noalias !767
  %.sroa.12.0..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.12.0.copyload21.i = load i64, ptr %.sroa.12.0..sroa_idx20.i, align 8, !noalias !767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !755
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement6AsNameEENtNtNtBJ_3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.ck unwind label %bb.cj, !noalias !755

bb.cj:                                            ; preds = %bb.ci
  %i.fc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement6AsNameEENtNtNtBQ_3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body92.i.i unwind label %bb.cl, !noalias !755

bb.ck:                                            ; preds = %bb.ci
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement6AsNameEENtNtNtBQ_3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement6AsNameEEECsEhZmuQNqkz_11ruff_linter.exit.i.i unwind label %bb.cn, !noalias !755

bb.cl:                                            ; preds = %bb.cj
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !noalias !755
  unreachable

bb.cm:                                            ; preds = %bb.ch
  %i.fe = invoke noundef i8 @_RNvMNtCsjSXNr8pNfhj_19ruff_python_codegen7stylistNtB2_7Stylist11line_ending(ptr noundef nonnull align 8 %.val3.i)
          to label %switch.lookup unwind label %bb.co, !noalias !755 ; 2 uses

bb.cn:                                            ; preds = %bb.ck, %bb.bo, %bb.be, %bb.bd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15NameOrAttributeEECsEhZmuQNqkz_11ruff_linter.exit.i.i, %.invoke.i.i
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %.body92.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement6AsNameEEECsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i, %bb.ck
  %.sroa.12.0.i = phi i64 [ %.sroa.12.0.copyload21.i, %bb.ck ], [ %.sroa.12.0.copyload19.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i ]
  %.sroa.10.0.i = phi ptr [ %.sroa.10.0.copyload13.i, %bb.ck ], [ %.sroa.10.0.copyload11.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i ]
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload7.i, %bb.ck ], [ %.sroa.0.0.copyload6.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !755
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement11ImportAliasEECsEhZmuQNqkz_11ruff_linter.exit.i.i

.body151.i.i:                                     ; preds = %bb.cw, %bb.cu, %bb.co
  %.sroa.080.2.i.i = phi i1 [ false, %bb.cu ], [ %.sroa.080.3.i.i, %bb.co ], [ false, %bb.cw ]
  %.pn.i.i = phi { ptr, i32 } [ %i.ge, %bb.cu ], [ %i.fg, %bb.co ], [ %i.gh, %bb.cw ] ; 2 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #38
          to label %bb.bl unwind label %bb.cy, !noalias !755

bb.co:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i, %bb.cr, %bb.cp, %switch.lookup, %bb.cm
  %.sroa.080.3.i.i = phi i1 [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i ], [ false, %bb.cr ], [ true, %bb.cp ], [ true, %switch.lookup ], [ true, %bb.cm ]
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %.body151.i.i

switch.lookup:                                    ; preds = %bb.cm
  %i.fh = zext nneg i8 %i.fe to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXNtNtCsEhZmuQNqkz_11ruff_linter3fix8codemodsNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement9StatementNtB2_14CodegenStylist15codegen_stylistB6_.877, i64 %i.fh
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.fi = zext nneg i8 %i.fe to i64
  %switch.gep22 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtCsEhZmuQNqkz_11ruff_linter3fix8codemodsNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement9StatementNtB2_14CodegenStylist15codegen_stylistB6_, i64 %i.fi
  %switch.load23 = load i8, ptr %switch.gep22, align 1
  %switch.ext = zext i8 %switch.load23 to i64     ; 3 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %switch.ext)
          to label %bb.cp unwind label %bb.co, !noalias !755

bb.cp:                                            ; preds = %switch.lookup
  %i.fj = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 9 uses
  %i.fk = load i64, ptr %i.fj, align 8, !alias.scope !772, !noalias !755, !noundef !14 ; 2 uses
  %i.fl = icmp sgt i64 %i.fk, -1
  call void @llvm.assume(i1 %i.fl)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !alias.scope !772, !noalias !755, !nonnull !14, !noundef !14
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fo, ptr noundef nonnull readonly align 1 dereferenceable(1) %switch.load, i64 %switch.ext, i1 false), !noalias !755
  %.pre.i.i.i = load i64, ptr %i.fj, align 8, !alias.scope !772, !noalias !755
  %i.fp = add i64 %.pre.i.i.i, %switch.ext
  store i64 %i.fp, ptr %i.fj, align 8, !alias.scope !772, !noalias !755
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.ah)
          to label %.noexc145.i.i unwind label %bb.co, !noalias !755

.noexc145.i.i:                                    ; preds = %bb.cp
  %i.fq = load i64, ptr %i.fj, align 8, !alias.scope !773, !noalias !755, !noundef !14 ; 3 uses
  %i.fr = icmp sgt i64 %i.fq, -1
  call void @llvm.assume(i1 %i.fr)
  %.not.i143.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i143.i.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %.noexc145.i.i
  %i.fs = load ptr, ptr %i.fm, align 8, !alias.scope !773, !noalias !755, !nonnull !14, !noundef !14
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ft, ptr nonnull readonly align 1 %i.af, i64 %i.ah, i1 false), !noalias !768
  %.pre.i144.i.i = load i64, ptr %i.fj, align 8, !alias.scope !773, !noalias !755
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %.noexc145.i.i
  %i.fu = phi i64 [ %.pre.i144.i.i, %bb.cq ], [ %i.fq, %.noexc145.i.i ]
  %i.fv = add i64 %i.fu, %i.ah
  store i64 %i.fv, ptr %i.fj, align 8, !alias.scope !773, !noalias !755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !755
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !755
  invoke fastcc void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules22deprecated_mock_import12format_mocks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %i.ah, ptr noundef nonnull align 8 %.val3.i)
          to label %bb.cs unwind label %bb.co, !noalias !768

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !755
  %i.fw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !noalias !755, !nonnull !14, !noundef !14
  %i.fy = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.fz = load i64, ptr %i.fy, align 8, !noalias !755, !noundef !14 ; 4 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.fz)
          to label %.noexc149.i.i unwind label %bb.cu, !noalias !755

.noexc149.i.i:                                    ; preds = %bb.cs
  %i.ga = load i64, ptr %i.fj, align 8, !alias.scope !774, !noalias !755, !noundef !14 ; 3 uses
  %i.gb = icmp sgt i64 %i.ga, -1
  call void @llvm.assume(i1 %i.gb)
  %.not.i147.i.i = icmp eq i64 %i.fz, 0
  br i1 %.not.i147.i.i, label %bb.cv, label %bb.ct

bb.ct:                                            ; preds = %.noexc149.i.i
  %i.gc = load ptr, ptr %i.fm, align 8, !alias.scope !774, !noalias !755, !nonnull !14, !noundef !14
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.ga
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gd, ptr nonnull readonly align 1 %i.fx, i64 %i.fz, i1 false), !noalias !755
  %.pre.i148.i.i = load i64, ptr %i.fj, align 8, !alias.scope !774, !noalias !755
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  %i.ge = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #38
          to label %.body151.i.i unwind label %bb.cy, !noalias !755

bb.cv:                                            ; preds = %bb.ct, %.noexc149.i.i
  %i.gf = phi i64 [ %.pre.i148.i.i, %bb.ct ], [ %i.ga, %.noexc149.i.i ]
  %i.gg = add i64 %i.gf, %i.fz
  store i64 %i.gg, ptr %i.fj, align 8, !alias.scope !774, !noalias !755
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i unwind label %bb.cw, !noalias !755

bb.cw:                                            ; preds = %bb.cv
  %i.gh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body151.i.i unwind label %bb.cx, !noalias !755

bb.cx:                                            ; preds = %bb.cw
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !noalias !755
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %bb.cv
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i unwind label %bb.co, !noalias !755

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !755
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !755
  %.sroa.0.0.copyload6.i = load i64, ptr %i.l, align 8, !noalias !767
  %.sroa.10.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.10.0.copyload11.i = load ptr, ptr %.sroa.10.0..sroa_idx10.i, align 8, !noalias !767
  %.sroa.12.0..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.12.0.copyload19.i = load i64, ptr %.sroa.12.0..sroa_idx18.i, align 8, !noalias !767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !755
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement6AsNameEEECsEhZmuQNqkz_11ruff_linter.exit.i.i

bb.cy:                                            ; preds = %bb.cz, %.thread16.i.i, %bb.cu, %.body151.i.i, %.body92.i.i
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !noalias !755
  unreachable

.thread16.i.i:                                    ; preds = %.body.thread24.i.i, %common.resume.i.i130.i.i, %bb.ca, %bb.bw, %bb.bs, %.body118.i.i, %bb.bl
end_hunk_0
begin_hunk_1_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules28multiple_imports_on_one_line28multiple_imports_on_one_line:bb.a
  unreachable

bb.ck:                                            ; preds = %bb.ch, %bb.cg
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #38
          to label %.body unwind label %bb.cl, !noalias !4532

bb.cl:                                            ; preds = %bb.ck
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !noalias !4532
  unreachable

bb.cm:                                            ; preds = %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %.noexc4, %.noexc4, %.noexc4, %.noexc4, %.noexc4, %.noexc4
  %.sink.i10.i = phi i64 [ 20, %bb.bl ], [ 4, %.noexc4 ], [ 4, %.noexc4 ], [ 4, %.noexc4 ], [ 12, %bb.bk ], [ 28, %bb.bj ], [ 28, %bb.bi ], [ 60, %bb.bh ], [ 28, %bb.bg ], [ 12, %bb.bf ], [ 52, %bb.be ], [ 4, %.noexc4 ], [ 36, %bb.bd ], [ 36, %bb.bc ], [ 44, %bb.bb ], [ 28, %bb.ba ], [ 36, %bb.az ], [ 20, %bb.ay ], [ 20, %bb.ax ], [ 36, %bb.aw ], [ 20, %bb.av ], [ 28, %bb.au ], [ 4, %.noexc4 ], [ 60, %bb.at ], [ 4, %.noexc4 ]
  %.sroa.0.0.in.i11.i = phi ptr [ %i.dd, %bb.bl ], [ %1, %.noexc4 ], [ %1, %.noexc4 ], [ %1, %.noexc4 ], [ %i.dc, %bb.bk ], [ %i.db, %bb.bj ], [ %i.da, %bb.bi ], [ %i.cz, %bb.bh ], [ %i.cy, %bb.bg ], [ %i.cx, %bb.bf ], [ %i.cw, %bb.be ], [ %1, %.noexc4 ], [ %i.cv, %bb.bd ], [ %i.cu, %bb.bc ], [ %i.ct, %bb.bb ], [ %i.cs, %bb.ba ], [ %i.cr, %bb.az ], [ %i.cq, %bb.ay ], [ %i.cp, %bb.ax ], [ %i.co, %bb.aw ], [ %i.cn, %bb.av ], [ %i.cm, %bb.au ], [ %1, %.noexc4 ], [ %i.cl, %bb.at ], [ %1, %.noexc4 ]
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 %.sink.i10.i
  %.sroa.0.0.i12.i = load i32, ptr %.sroa.0.0.in.i11.i, align 8, !noalias !4531, !noundef !14
  %.sroa.26.0.i13.i = load i32, ptr %i.eo, align 4, !noalias !4531, !noundef !14
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics4editNtB2_4Edit17range_replacement(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, i32 noundef %.sroa.0.0.i12.i, i32 noundef %.sroa.26.0.i13.i)
          to label %.noexc8 unwind label %bb.co

.noexc8:                                          ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4531
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB2_3Fix9safe_edit(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc9 unwind label %bb.co

.noexc9:                                          ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4531
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules28multiple_imports_on_one_line13split_imports.exit

bb.cn:                                            ; preds = %bb.a, %bb.cp
  ret void

bb.co:                                            ; preds = %.noexc8, %bb.cm, %.noexc6, %bb.ci, %switch.lookup, %bb.ar, %.noexc2, %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i, %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules28multiple_imports_on_one_line13split_imports.exit
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ck, %bb.co
  %eh.lpad-body = phi { ptr, i32 } [ %i.ep, %bb.co ], [ %lpad.thr_comm.i, %bb.ck ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.i) #38
          to label %bb.cr unwind label %bb.cq

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules28multiple_imports_on_one_line13split_imports.exit: ; preds = %.noexc9, %.noexc7
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef align 8 dereferenceable(48) %i.i, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.h)
          to label %bb.cp unwind label %bb.co

bb.cp:                                            ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules28multiple_imports_on_one_line13split_imports.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.cn

bb.cq:                                            ; preds = %.body
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.cr:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11tryceratops5rules19verbose_log_message19verbose_log_message(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 144115188075855872) %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !4559 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 11 uses
  %.idx = shl nuw nsw i64 %2, 6
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge48, label %.lr.ph47

.lr.ph47:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %.sroa.018.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph47, %._crit_edge44
  %.sroa.0.045 = phi ptr [ %1, %.lr.ph47 ], [ %i.t, %._crit_edge44 ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.045, i64 64 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.045, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.v = load ptr, ptr %i.j, align 8, !nonnull !14, !align !21, !noundef !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !14, !align !21, !noundef !14 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 192
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !14, !noundef !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 200
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !14
  store ptr %i.i, ptr %i.k, align 8
  store ptr %i.z, ptr %i.l, align 8
  store i64 %i.ab, ptr %i.m, align 8
  store i64 0, ptr %i.f, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.416.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.517.0..sroa_idx, align 8
  %i.ac = invoke noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u)
          to label %bb.d unwind label %bb.c

._crit_edge48:                                    ; preds = %._crit_edge44, %bb.a
  ret void

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11tryceratops7helpers22LoggerCandidateVisitorEBJ_(ptr noalias noundef align 8 dereferenceable(48) %i.f) #38
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprCallNtNtCs4xX4QTdRF9r_18ruff_python_stdlib7logging12LoggingLevelEEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.y

bb.d:                                             ; preds = %bb.b
  %i.ae = load ptr, ptr %i.u, align 8, !nonnull !14, !noundef !14
  %i.af = load i64, ptr %i.ae, align 8, !noundef !14
  invoke void @_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_bodyNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11tryceratops7helpers22LoggerCandidateVisitorEBZ_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 %i.ac, i64 noundef %i.af)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %.sroa.416.0..sroa_idx, align 8, !nonnull !14, !noundef !14 ; 4 uses
  %i.ah = load i64, ptr %i.f, align 8, !range !26, !noundef !14
  %i.ai = load i64, ptr %.sroa.517.0..sroa_idx, align 8, !noundef !14 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.aj = icmp ult i64 %i.ai, 576460752303423488
  call void @llvm.assume(i1 %i.aj)
  %.idx49 = shl nuw nsw i64 %i.ai, 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx49 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.ag, ptr %i.e, align 8
  store ptr %i.ag, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %i.ah, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %i.ak, ptr %.sroa.6.0..sroa_idx, align 8
  %i.al = icmp eq i64 %i.ai, 0
  br i1 %i.al, label %._crit_edge44, label %.lr.ph43

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.am, %bb.f ], [ %eh.lpad-body, %.body ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprCallNtNtCs4xX4QTdRF9r_18ruff_python_stdlib7logging12LoggingLevelEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprCallNtNtCs4xX4QTdRF9r_18ruff_python_stdlib7logging12LoggingLevelEEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.y

bb.f:                                             ; preds = %._crit_edge, %bb.g
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEECsEhZmuQNqkz_11ruff_linter.exit

.lr.ph43:                                         ; preds = %bb.e, %bb.h
  %i.an = phi ptr [ %i.bb, %bb.h ], [ %i.ak, %bb.e ]
  %i.ao = phi ptr [ %i.ba, %bb.h ], [ %i.ag, %bb.e ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4560)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4560
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load i8, ptr %i.aq, align 8, !range !29, !noalias !4560, !noundef !14
  %i.as = icmp eq i8 %i.ar, 3
  br i1 %i.as, label %bb.g, label %bb.h

._crit_edge44:                                    ; preds = %bb.h, %bb.e
  call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprCallNtNtCs4xX4QTdRF9r_18ruff_python_stdlib7logging12LoggingLevelEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.at = icmp eq ptr %i.t, %i.g
  br i1 %i.at, label %._crit_edge48, label %bb.b

bb.g:                                             ; preds = %.lr.ph43
  %i.au = load ptr, ptr %i.ao, align 8, !noalias !4560, !nonnull !14, !align !21, !noundef !14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !14
  %i.az = getelementptr inbounds nuw [72 x i8], ptr %i.aw, i64 %i.ay
  store ptr null, ptr %i.c, align 8
  store ptr null, ptr %.sroa.018.sroa.5.0..sroa_idx, align 8
  store ptr %i.aw, ptr %.sroa.519.0..sroa_idx, align 8
  store ptr %i.az, ptr %.sroa.620.0..sroa_idx, align 8
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtB2x_5slice4iter4IterNtB13_4ExprEBQ_NCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11tryceratops5rules19verbose_log_message19verbose_log_message0EE9from_iterB4c_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.c)
          to label %bb.i unwind label %bb.f

bb.h:                                             ; preds = %.lr.ph43, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEECsEhZmuQNqkz_11ruff_linter.exit31
  %i.ba = phi ptr [ %i.ap, %.lr.ph43 ], [ %.pre57, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEECsEhZmuQNqkz_11ruff_linter.exit31 ] ; 2 uses
  %i.bb = phi ptr [ %i.an, %.lr.ph43 ], [ %.pre, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEECsEhZmuQNqkz_11ruff_linter.exit31 ] ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %._crit_edge44, label %.lr.ph43

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bd = load ptr, ptr %i.n, align 8, !nonnull !14, !noundef !14 ; 4 uses
  %i.be = load i64, ptr %i.d, align 8, !range !26, !noundef !14
  %i.bf = load i64, ptr %i.o, align 8, !noundef !14 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 1152921504606846976
  call void @llvm.assume(i1 %i.bg)
  %.idx50 = shl nuw nsw i64 %i.bf, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.bd, ptr %i.b, align 8
  store ptr %i.bd, ptr %.sroa.48.0..sroa_idx, align 8
  store i64 %i.be, ptr %.sroa.59.0..sroa_idx, align 8
  store ptr %i.bh, ptr %.sroa.610.0..sroa_idx, align 8
  %i.bi = icmp eq i64 %i.bf, 0
  br i1 %i.bi, label %._crit_edge, label %.lr.ph

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter.exit3.i, %bb.o, %.lr.ph, %bb.m
  %lpad.loopexit.split-lp76 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter.exit.i
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter.exit.i ], [ %lpad.loopexit.split-lp76, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.y

.lr.ph:                                           ; preds = %bb.i, %.backedge
  %i.bj = phi ptr [ %i.cc, %.backedge ], [ %i.bd, %bb.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4561)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bk, ptr %.sroa.48.0..sroa_idx, align 8, !alias.scope !4561
  %i.bl = load ptr, ptr %i.bj, align 8, !noalias !4561, !nonnull !14, !align !21, !noundef !14 ; 3 uses
  %i.bm = invoke noundef i32 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel12resolve_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.i, ptr noundef nonnull align 8 %i.bl)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

._crit_edge:                                      ; preds = %.backedge, %bb.i
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEECsEhZmuQNqkz_11ruff_linter.exit31 unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEECsEhZmuQNqkz_11ruff_linter.exit31: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !4562
  %.pre57 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4562
  br label %bb.h

bb.j:                                             ; preds = %.lr.ph
  %.not27 = icmp eq i32 %i.bm, 0
  br i1 %.not27, label %.backedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = load i64, ptr %i.p, align 8, !noundef !14 ; 2 uses
  %i.bo = add i32 %i.bm, -1
  %i.bp = zext i32 %i.bo to i64                   ; 3 uses
  %i.bq = icmp ugt i64 %i.bn, %i.bp
  br i1 %i.bq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.br = load ptr, ptr %i.q, align 8, !nonnull !14, !noundef !14
  %i.bs = getelementptr inbounds nuw [72 x i8], ptr %i.br, i64 %i.bp
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load i32, ptr %i.bt, align 8, !range !64, !noundef !14
  %i.bv = icmp eq i32 %i.bu, 18
  br i1 %i.bv, label %bb.o, label %.backedge

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bp, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #40
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bx = load i32, ptr %i.bw, align 8, !noundef !14
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  %i.bz = load i32, ptr %i.by, align 4, !noundef !14
  %i.ca = load ptr, ptr %i.j, align 8, !nonnull !14, !align !21, !noundef !14
  invoke void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules11tryceratops5rules19verbose_log_message17VerboseLogMessageEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull align 8 %i.ca, i32 noundef %i.bx, i32 noundef %i.bz)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.backedge:                                        ; preds = %bb.l, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_.exit, %bb.j
  %i.cb = load ptr, ptr %.sroa.610.0..sroa_idx, align 8, !alias.scope !4563, !nonnull !14, !noundef !14
  %i.cc = load ptr, ptr %.sroa.48.0..sroa_idx, align 8, !alias.scope !4563, !nonnull !14, !noundef !14 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.cb
  br i1 %i.cd, label %._crit_edge, label %.lr.ph

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvXse_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %bb.t unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4564)
  %i.cf = load ptr, ptr %i.r, align 8, !alias.scope !4565, !noundef !14 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ch = atomicrmw add ptr %i.cf, i64 -1 release, align 8, !noalias !4566
  %i.ci = icmp eq i64 %i.ch, 1
  br i1 %i.ci, label %bb.s, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter.exit.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.x

bb.t:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !4567)
  %i.cj = load ptr, ptr %i.r, align 8, !alias.scope !4568, !noundef !14 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter.exit3.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = atomicrmw add ptr %i.cj, i64 -1 release, align 8, !noalias !4569
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.v, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter.exit3.i

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter.exit3.i unwind label %bb.w

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.w, %bb.s, %bb.r, %bb.q
  %.pn.i = phi { ptr, i32 } [ %i.cn, %bb.w ], [ %i.ce, %bb.s ], [ %i.ce, %bb.q ], [ %i.ce, %bb.r ]
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTQL0_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEp6OutputuEL_Ej1_ENtNtB1o_4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter.exit3.i: ; preds = %bb.v, %bb.u, %bb.t
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTQL0_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEp6OutputuEL_Ej1_ENtNtB1o_4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.s
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter.exit3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.backedge

bb.y:                                             ; preds = %.body, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEECsEhZmuQNqkz_11ruff_linter.exit, %bb.c
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprCallNtNtCs4xX4QTdRF9r_18ruff_python_stdlib7logging12LoggingLevelEEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEECsEhZmuQNqkz_11ruff_linter.exit, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %i.ad, %bb.c ], [ %.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEECsEhZmuQNqkz_11ruff_linter.exit ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11tryceratops5rules29type_check_without_type_error10check_body(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, ptr noundef nonnull align 8 %1, i64 noundef range(i64 0, 104811045873349726) %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !4574 {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 9 uses
  %i.b = alloca [144 x i8], align 8               ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [72 x i8], align 8                ; 14 uses
  %.idx = mul nuw nsw i64 %2, 88
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  %.sroa.gep6.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.gep9.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1024
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11tryceratops5rules29type_check_without_type_error11check_raise.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.l, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11tryceratops5rules29type_check_without_type_error11check_raise.exit ] ; 28 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false)
end_hunk_1
