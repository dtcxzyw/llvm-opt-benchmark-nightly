Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.08?download=true
inline.NumInlined: 5341
inline.NumDeleted: 2209
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvXs3E_NtNtCsarohYtwVpE2_13libcst_native5nodes10expressionNtB6_10ExpressionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone:bb.a
  %.not.i526 = icmp eq i64 %i.afl, -1
  br i1 %.not.i526, label %bb.og, label %bb.of

bb.of:                                            ; preds = %bb.oe
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i525), !noalias !7216
  %i.afm = getelementptr inbounds nuw i8, ptr %i.aep, i64 72
  %.sroa.0.24..sroa_idx.i527 = getelementptr inbounds nuw i8, ptr %.sroa.0.i525, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.24..sroa_idx.i527, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.afm, i64 56, i1 false), !noalias !7215
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10whitespace9EmptyLineENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.0.i525, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.afk)
          to label %.noexc531 unwind label %bb.oi

.noexc531:                                        ; preds = %bb.of
  %i.afn = getelementptr inbounds nuw i8, ptr %i.aep, i64 144
  %i.afo = load i8, ptr %i.afn, align 8, !range !23, !alias.scope !7214, !noalias !7215, !noundef !13
  %i.afp = getelementptr inbounds nuw i8, ptr %i.aep, i64 128
  %i.afq = load ptr, ptr %i.afp, align 8, !alias.scope !7214, !noalias !7215, !nonnull !13, !noundef !13
  %i.afr = getelementptr inbounds nuw i8, ptr %i.aep, i64 136
  %i.afs = load i64, ptr %i.afr, align 8, !alias.scope !7214, !noalias !7215, !noundef !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.k, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i525, i64 80, i1 false), !noalias !7217
  %.sroa.5.0..sroa_idx.i528 = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store ptr %i.afq, ptr %.sroa.5.0..sroa_idx.i528, align 8, !alias.scope !7213, !noalias !7217
  %.sroa.6.0..sroa_idx.i529 = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  store i64 %i.afs, ptr %.sroa.6.0..sroa_idx.i529, align 8, !alias.scope !7213, !noalias !7217
  %.sroa.7.0..sroa_idx.i530 = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  store i8 %i.afo, ptr %.sroa.7.0..sroa_idx.i530, align 8, !alias.scope !7213, !noalias !7217
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i525), !noalias !7216
  br label %_RNvXsR_NtNtCsarohYtwVpE2_13libcst_native5nodes10whitespaceNtB5_25ParenthesizableWhitespaceNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit532

bb.og:                                            ; preds = %bb.oe
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.afk, i64 104, i1 false), !alias.scope !7218, !noalias !7210
  br label %_RNvXsR_NtNtCsarohYtwVpE2_13libcst_native5nodes10whitespaceNtB5_25ParenthesizableWhitespaceNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit532

bb.oh:                                            ; preds = %bb.ol, %bb.oi
  %.pn.i.i204 = phi { ptr, i32 } [ %i.agd, %bb.ol ], [ %i.aft, %bb.oi ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression10RightParenEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.l) #38
          to label %bb.oc unwind label %bb.om, !noalias !7210, !inline_history !6850

bb.oi:                                            ; preds = %bb.of
  %i.aft = landingpad { ptr, i32 }
          cleanup
  br label %bb.oh

_RNvXsR_NtNtCsarohYtwVpE2_13libcst_native5nodes10whitespaceNtB5_25ParenthesizableWhitespaceNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit532: ; preds = %bb.og, %.noexc531
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0630)
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aep, i64 152 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7219)
  call void @llvm.experimental.noalias.scope.decl(metadata !7220)
  %i.afv = load i64, ptr %i.afu, align 8, !range !22, !alias.scope !7220, !noalias !7221, !noundef !13
  %.not.i518 = icmp eq i64 %i.afv, -1
  br i1 %.not.i518, label %bb.ok, label %bb.oj

bb.oj:                                            ; preds = %_RNvXsR_NtNtCsarohYtwVpE2_13libcst_native5nodes10whitespaceNtB5_25ParenthesizableWhitespaceNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit532
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i517), !noalias !7222
  %i.afw = getelementptr inbounds nuw i8, ptr %i.aep, i64 176
  %.sroa.0.24..sroa_idx.i519 = getelementptr inbounds nuw i8, ptr %.sroa.0.i517, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.24..sroa_idx.i519, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.afw, i64 56, i1 false), !noalias !7221
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10whitespace9EmptyLineENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.0.i517, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.afu)
          to label %.noexc523 unwind label %bb.ol

.noexc523:                                        ; preds = %bb.oj
  %i.afx = getelementptr inbounds nuw i8, ptr %i.aep, i64 248
  %i.afy = load i8, ptr %i.afx, align 8, !range !23, !alias.scope !7220, !noalias !7221, !noundef !13
  %i.afz = getelementptr inbounds nuw i8, ptr %i.aep, i64 232
  %i.aga = load ptr, ptr %i.afz, align 8, !alias.scope !7220, !noalias !7221, !nonnull !13, !noundef !13
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aep, i64 240
  %i.agc = load i64, ptr %i.agb, align 8, !alias.scope !7220, !noalias !7221, !noundef !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0630, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i517, i64 80, i1 false), !noalias !7223
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i517), !noalias !7222
  br label %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression9NamedExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit

bb.ok:                                            ; preds = %_RNvXsR_NtNtCsarohYtwVpE2_13libcst_native5nodes10whitespaceNtB5_25ParenthesizableWhitespaceNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0630, ptr noundef nonnull align 8 dereferenceable(80) %i.afu, i64 80, i1 false), !alias.scope !7224, !noalias !7210
  %.sroa.5631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aep, i64 232
  %.sroa.5631.0.copyload = load ptr, ptr %.sroa.5631.0..sroa_idx, align 8, !alias.scope !7224, !noalias !7210
  %.sroa.6633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aep, i64 240
  %.sroa.6633.0.copyload = load i64, ptr %.sroa.6633.0..sroa_idx, align 8, !alias.scope !7224, !noalias !7210
  %.sroa.7635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aep, i64 248
  %.sroa.7635.0.copyload = load i8, ptr %.sroa.7635.0..sroa_idx, align 8, !alias.scope !7224, !noalias !7210
  %.sroa.8637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aep, i64 249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8637, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8637.0..sroa_idx, i64 7, i1 false)
  br label %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression9NamedExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit

bb.ol:                                            ; preds = %bb.oj
  %i.agd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10whitespace25ParenthesizableWhitespaceECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(104) %i.k) #38
          to label %bb.oh unwind label %bb.om, !noalias !7210, !inline_history !6850

bb.om:                                            ; preds = %bb.ol, %bb.oh, %bb.oc, %bb.nz, %.body535
  %i.age = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !noalias !7210, !inline_history !6850
  unreachable

bb.on:                                            ; preds = %bb.nu
  %i.agf = landingpad { ptr, i32 }
          cleanup
  br label %bb.oo

bb.oo:                                            ; preds = %.body535, %bb.nv, %bb.on
  %eh.lpad-body207 = phi { ptr, i32 } [ %.pn.pn.pn.pn.i.i201, %.body535 ], [ %i.agf, %bb.on ], [ %i.aeu, %bb.nv ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aeo, i64 noundef 272, i64 noundef 8) #41, !noalias !7205
  br label %common.resume

_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression9NamedExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.noexc523, %bb.ok
  %.sroa.7635.0 = phi i8 [ %.sroa.7635.0.copyload, %bb.ok ], [ %i.afy, %.noexc523 ]
  %.sroa.6633.0 = phi i64 [ %.sroa.6633.0.copyload, %bb.ok ], [ %i.agc, %.noexc523 ]
  %.sroa.5631.0 = phi ptr [ %.sroa.5631.0.copyload, %bb.ok ], [ %i.aga, %.noexc523 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0627.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !7225
  %.sroa.0627.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0627.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0627.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !7225
  %.sroa.0627.sroa.0.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0627.sroa.0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0627.sroa.0.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %i.k, i64 104, i1 false), !noalias !7225
  %.sroa.0627.sroa.0.152..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0627.sroa.0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0627.sroa.0.152..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0630, i64 80, i1 false), !noalias !7225
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0630)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !7206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !7206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !7206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !7206
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.aeo, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.0627.sroa.0, i64 232, i1 false), !noalias !7226
  %.sroa.0627.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aeo, i64 232
  store ptr %.sroa.5631.0, ptr %.sroa.0627.sroa.7.0..sroa_idx, align 8, !noalias !7226
  %.sroa.0627.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aeo, i64 240
  store i64 %.sroa.6633.0, ptr %.sroa.0627.sroa.8.0..sroa_idx, align 8, !noalias !7226
  %.sroa.0627.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aeo, i64 248
  store i8 %.sroa.7635.0, ptr %.sroa.0627.sroa.9.0..sroa_idx, align 8, !noalias !7226
  %.sroa.0627.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aeo, i64 249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.0627.sroa.10.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8637, i64 7, i1 false)
  %.sroa.7628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aeo, i64 256
  store ptr %i.aeq, ptr %.sroa.7628.0..sroa_idx, align 8, !noalias !7226
  %.sroa.8629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aeo, i64 264
  store ptr %i.aey, ptr %.sroa.8629.0..sroa_idx, align 8, !noalias !7226
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0627.sroa.0)
  br label %bb.op

bb.op:                                            ; preds = %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression9NamedExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15TemplatedStringENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15FormattedStringENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18ConcatenatedStringENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression12SimpleStringENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression5AwaitENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression5YieldENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression6LambdaENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression5IfExpENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression14StarredElementENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression9SubscriptENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression4DictENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression3SetENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit, %bb.ht, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression8DictCompENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression7SetCompENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression8ListCompENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression12GeneratorExpENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression4CallENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit, %bb.dl, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression9AttributeENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression16BooleanOperationENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15BinaryOperationENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression14UnaryOperationENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression10ComparisonENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression9ImaginaryENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression5FloatENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression7IntegerENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression8EllipsisENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression4NameENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.31.0 = phi ptr [ %i.dp, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression4NameENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit ], [ %i.dy, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression8EllipsisENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit ], [ %i.ee, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression7IntegerENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit ], [ %i.en, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression5FloatENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit ], [ %i.ew, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression9ImaginaryENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit ], [ %i.ff, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression10ComparisonENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit ], [ %i.fw, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression14UnaryOperationENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit ], [ %i.hz, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15BinaryOperationENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit ], [ %i.iz, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression16BooleanOperationENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit ], [ %i.lr, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression9AttributeENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit ], [ %i.lu, %bb.dl ], [ %i.lv, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression4CallENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit ], [ %i.ng, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression12GeneratorExpENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit ], [ %i.oa, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression8ListCompENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit ], [ %i.po, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression7SetCompENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit ], [ %i.rc, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression8DictCompENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit ], [ %i.tt, %bb.ht ], [ %i.tu, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression3SetENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit ], [ %i.uz, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression4DictENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit ], [ %i.we, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression9SubscriptENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit ], [ %i.wh, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression14StarredElementENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit ], [ %i.wk, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression5IfExpENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit ], [ %i.zf, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression6LambdaENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit ], [ %i.aaw, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression5YieldENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit ], [ %i.aca, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression5AwaitENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit ], [ %i.acz, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression12SimpleStringENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit ], [ %i.adi, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18ConcatenatedStringENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit ], [ %i.adk, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15FormattedStringENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit ], [ %i.adz, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15TemplatedStringENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit ], [ %i.aeo, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression9NamedExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit ]
  %i.agg = insertvalue { i64, ptr } poison, i64 %i.dn, 0
  %i.agh = insertvalue { i64, ptr } %i.agg, ptr %.sroa.31.0, 1
  ret { i64, ptr } %i.agh
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs3V_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_7FStringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !noundef !13
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !noundef !13
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !noundef !13
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.i = load i32, ptr %i.h, align 4, !noundef !13
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.k, ptr noundef nonnull align 4 %i.l)
  br i1 %i.m, label %bb.d, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7244)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !7243, !noalias !7244, !noundef !13 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !7244, !noalias !7243, !noundef !13
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %bb.e, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !7244, !noalias !7243, !nonnull !13, !noundef !13
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !7243, !noalias !7244, !nonnull !13, !noundef !13
  %.not5.not = icmp eq i64 %i.o, 0
  br i1 %.not5.not, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph

_RNvXs2C_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_28InterpolatedStringFormatSpecNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.aa, %bb.z, %.split11, %.split
  %i.w = add nuw i64 %.sroa.01.0.i.i6, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.o
  br i1 %exitcond.not, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %_RNvXs2C_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_28InterpolatedStringFormatSpecNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
  %.sroa.01.0.i.i6 = phi i64 [ %i.w, %_RNvXs2C_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_28InterpolatedStringFormatSpecNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit ], [ 0, %bb.e ] ; 3 uses
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.v, i64 %.sroa.01.0.i.i6 ; 15 uses
  %i.y = getelementptr inbounds nuw [64 x i8], ptr %i.t, i64 %.sroa.01.0.i.i6 ; 15 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 60 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 4, !range !61, !noalias !7245, !noundef !13
  %i.ab = icmp eq i8 %i.aa, 0                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 60 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 4, !range !61, !noalias !7245, !noundef !13
  %i.ae = icmp eq i8 %i.ad, 0                     ; 2 uses
  %i.af = xor i1 %i.ab, %i.ae
  br i1 %i.af, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  br i1 %i.ab, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.assume(i1 %i.ae), !noalias !7245
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !noalias !7245, !noundef !13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !noalias !7245, !noundef !13
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.am = load i32, ptr %i.al, align 4, !noalias !7245, !noundef !13
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.ao = load i32, ptr %i.an, align 4, !noalias !7245, !noundef !13
  %i.ap = icmp eq i32 %i.am, %i.ao
  br i1 %i.ap, label %bb.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.as = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.aq, ptr noundef nonnull align 4 %i.ar), !noalias !7245, !inline_history !7230
  br i1 %i.as, label %bb.j, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.au = load i64, ptr %i.at, align 8, !noalias !7245, !noundef !13 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !noalias !7245, !noundef !13
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %.split11, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread

.split11:                                         ; preds = %bb.j
  %i.ay = load ptr, ptr %i.y, align 8, !noalias !7245, !nonnull !13, !noundef !13
  %i.az = load ptr, ptr %i.x, align 8, !noalias !7245, !nonnull !13, !noundef !13
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.az, ptr nonnull %i.ay, i64 %i.au), !noalias !7245, !inline_history !7230
  %i.ba = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ba, label %_RNvXs2C_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_28InterpolatedStringFormatSpecNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread

bb.k:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.bc = load i32, ptr %i.bb, align 8, !noalias !7245, !noundef !13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.be = load i32, ptr %i.bd, align 8, !noalias !7245, !noundef !13
  %i.bf = icmp eq i32 %i.bc, %i.be
  br i1 %i.bf, label %bb.l, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 44
  %i.bh = load i32, ptr %i.bg, align 4, !noalias !7245, !noundef !13
  %i.bi = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.bj = load i32, ptr %i.bi, align 4, !noalias !7245, !noundef !13
  %i.bk = icmp eq i32 %i.bh, %i.bj
  br i1 %i.bk, label %bb.m, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.bm = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.bn = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.bl, ptr noundef nonnull align 4 %i.bm), !noalias !7245, !inline_history !7231
  br i1 %i.bn, label %bb.n, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !7245, !nonnull !13, !noundef !13
  %i.bq = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !7245, !nonnull !13, !noundef !13
  %i.bs = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.bp, ptr noundef nonnull align 8 %i.br), !noalias !7245, !inline_history !7231
  br i1 %i.bs, label %bb.o, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %i.x, i64 23
  %i.bu = load i8, ptr %i.bt, align 1, !range !73, !noalias !7245, !noundef !13
  %.not.i.i = icmp eq i8 %i.bu, -1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.y, i64 23
  %i.bw = load i8, ptr %i.bv, align 1, !range !73, !noalias !7245, !noundef !13
  %i.bx = icmp eq i8 %i.bw, -1                    ; 2 uses
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %i.bx, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.r

bb.q:                                             ; preds = %bb.o
  br i1 %i.bx, label %bb.t, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread

bb.r:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7246), !noalias !7245
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7247), !noalias !7245
  %i.by = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.bz = load i32, ptr %i.by, align 8, !alias.scope !7246, !noalias !7248, !noundef !13
  %i.ca = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.cb = load i32, ptr %i.ca, align 8, !alias.scope !7247, !noalias !7249, !noundef !13
  %i.cc = icmp eq i32 %i.bz, %i.cb
  br i1 %i.cc, label %bb.s, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  %i.ce = load i32, ptr %i.cd, align 4, !alias.scope !7246, !noalias !7248, !noundef !13
  %i.cf = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.cg = load i32, ptr %i.cf, align 4, !alias.scope !7247, !noalias !7249, !noundef !13
  %i.ch = icmp eq i32 %i.ce, %i.cg
  br i1 %i.ch, label %_RNvXs30_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9DebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread

_RNvXs30_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9DebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.s
  %i.ci = tail call noundef zeroext i1 @_RNvXs9_Csg7m2K3K1Fzf_11compact_strNtB5_13CompactStringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.y), !noalias !7245, !inline_history !7231
  br i1 %i.ci, label %bb.t, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread

bb.t:                                             ; preds = %_RNvXs30_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9DebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i, %bb.q
  %.val.i.i = load i8, ptr %i.z, align 4, !range !74, !noalias !7245, !noundef !13
  %.val5.i.i = load i8, ptr %i.ac, align 4, !range !74, !noalias !7245, !noundef !13
  %i.cj = icmp eq i8 %.val.i.i, %.val5.i.i
  br i1 %i.cj, label %bb.u, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.ck = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !7245, !align !20, !noundef !13 ; 6 uses
  %.not3.i.i = icmp eq ptr %i.cl, null
  %i.cm = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !7245, !align !20, !noundef !13 ; 6 uses
  %i.co = icmp eq ptr %i.cn, null                 ; 2 uses
  br i1 %.not3.i.i, label %.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %i.co, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread, label %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit

.split:                                           ; preds = %bb.u
  br i1 %i.co, label %_RNvXs2C_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_28InterpolatedStringFormatSpecNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread

_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.v
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cq = load i32, ptr %i.cp, align 8, !noalias !7245, !noundef !13
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cs = load i32, ptr %i.cr, align 8, !noalias !7245, !noundef !13
  %i.ct = icmp eq i32 %i.cq, %i.cs
  br i1 %i.ct, label %bb.w, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread

bb.w:                                             ; preds = %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 28
  %i.cv = load i32, ptr %i.cu, align 4, !noalias !7245, !noundef !13
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 28
  %i.cx = load i32, ptr %i.cw, align 4, !noalias !7245, !noundef !13
  %i.cy = icmp eq i32 %i.cv, %i.cx
  br i1 %i.cy, label %bb.x, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.db = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.cz, ptr noundef nonnull align 4 %i.da), !noalias !7245, !inline_history !7235
  br i1 %i.db, label %bb.y, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7250), !noalias !7245
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7251), !noalias !7245
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7252), !noalias !7245
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7253), !noalias !7245
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !alias.scope !7254, !noalias !7255, !noundef !13 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !7256, !noalias !7257, !noundef !13
  %i.dg = icmp eq i64 %i.dd, %i.df
  br i1 %i.dg, label %bb.z, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !alias.scope !7256, !noalias !7257, !nonnull !13, !noundef !13
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !alias.scope !7254, !noalias !7255, !nonnull !13, !noundef !13
  %.not1.not.i = icmp eq i64 %i.dd, 0
  br i1 %.not1.not.i, label %_RNvXs2C_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_28InterpolatedStringFormatSpecNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i

bb.aa:                                            ; preds = %.lr.ph.i
  %i.dl = add nuw i64 %.sroa.01.0.i2.i, 1         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dl, %i.dd
  br i1 %exitcond.not.i, label %_RNvXs2C_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_28InterpolatedStringFormatSpecNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.z, %bb.aa
  %.sroa.01.0.i2.i = phi i64 [ %i.dl, %bb.aa ], [ 0, %bb.z ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [64 x i8], ptr %i.dk, i64 %.sroa.01.0.i2.i
  %i.dn = getelementptr inbounds nuw [64 x i8], ptr %i.di, i64 %.sroa.01.0.i2.i
  %i.do = tail call fastcc noundef zeroext i1 @_RNvXsbK_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.dm, ptr noundef nonnull align 8 %i.dn), !noalias !7258, !inline_history !7242
  br i1 %i.do, label %bb.aa, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread

_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvXs2C_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_28InterpolatedStringFormatSpecNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %bb.e
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.val = load i8, ptr %i.dp, align 4, !noundef !13
  %.val1 = load i8, ptr %i.dq, align 4, !noundef !13
  %i.dr = icmp eq i8 %.val, %.val1
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread

_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread: ; preds = %bb.y, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit, %bb.x, %bb.w, %bb.r, %bb.s, %_RNvXs30_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9DebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i, %bb.v, %bb.n, %bb.q, %bb.k, %bb.m, %bb.p, %bb.t, %bb.l, %bb.g, %bb.i, %bb.h, %bb.j, %.lr.ph, %.split, %.split11, %.lr.ph.i, %bb.d, %bb.b, %bb.a, %bb.c, %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.0.0 = phi i1 [ %i.dr, %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.d ], [ false, %.lr.ph.i ], [ false, %.split11 ], [ false, %.split ], [ false, %.lr.ph ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.l ], [ false, %bb.t ], [ false, %bb.p ], [ false, %bb.m ], [ false, %bb.k ], [ false, %bb.q ], [ false, %bb.n ], [ false, %bb.v ], [ false, %_RNvXs30_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9DebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i ], [ false, %bb.s ], [ false, %bb.r ], [ false, %bb.w ], [ false, %bb.x ], [ false, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit ], [ false, %bb.y ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding7BindingEEINtB1l_7IterMutbEEINtB5_7ZipImplBW_B2F_E3newCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8
  store ptr %3, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = call noundef i64 @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBb_5slice4iter4IterRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding7BindingEENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  %i.f = call noundef i64 @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutbENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.e)
  store ptr %1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0.0.i, ptr %i.k, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEBW_EINtB5_7ZipImplBW_BW_E3newCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %2, i64 %1)
  %spec.select.i.i4 = tail call noundef i64 @llvm.usub.sat.i64(i64 %4, i64 %3)
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %spec.select.i.i4, i64 %spec.select.i.i)
  store i64 %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %4, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0.0.i, ptr %i.e, align 8
  ret void
end_hunk_0
begin_hunk_1_@_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq:bb.a
  %i.x = tail call fastcc noundef zeroext i1 @_RNvXsg3_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_8ExprDictNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.v, ptr noundef nonnull align 8 %i.w)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = tail call fastcc noundef zeroext i1 @_RNvXsg8_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprSetNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.y, ptr noundef nonnull align 8 %i.z)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = tail call fastcc noundef zeroext i1 @_RNvXsgd_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_12ExprListCompNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.ab, ptr noundef nonnull align 8 %i.ac)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = tail call fastcc noundef zeroext i1 @_RNvXsgi_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_11ExprSetCompNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.ae, ptr noundef nonnull align 8 %i.af)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = tail call fastcc noundef zeroext i1 @_RNvXsgn_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_12ExprDictCompNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.ah, ptr noundef nonnull align 8 %i.ai)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = tail call fastcc noundef zeroext i1 @_RNvXsgs_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_13ExprGeneratorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.ak, ptr noundef nonnull align 8 %i.al)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = tail call fastcc noundef zeroext i1 @_RNvXsgx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9ExprAwaitNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.an, ptr noundef nonnull align 8 %i.ao)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = tail call fastcc noundef zeroext i1 @_RNvXsgC_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9ExprYieldNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.ar)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = tail call fastcc noundef zeroext i1 @_RNvXsgH_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_13ExprYieldFromNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.at, ptr noundef nonnull align 8 %i.au)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = tail call fastcc noundef zeroext i1 @_RNvXsgM_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_11ExprCompareNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.aw, ptr noundef nonnull align 8 %i.ax)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = tail call fastcc noundef zeroext i1 @_RNvXsgR_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_8ExprCallNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.az, ptr noundef nonnull align 8 %i.ba)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = tail call fastcc noundef zeroext i1 @_RNvXsgW_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_11ExprFStringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.bc, ptr noundef nonnull align 8 %i.bd)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %bb.b
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = tail call fastcc noundef zeroext i1 @_RNvXsh1_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_11ExprTStringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.bf, ptr noundef nonnull align 8 %i.bg)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bk = tail call fastcc noundef zeroext i1 @_RNvXsh6_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprStringLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.bi, ptr noundef nonnull align 8 %i.bj)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.w:                                             ; preds = %bb.b
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = tail call fastcc noundef zeroext i1 @_RNvXshb_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_16ExprBytesLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.bl, ptr noundef nonnull align 8 %i.bm)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %bb.b
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = tail call fastcc noundef zeroext i1 @_RNvXshg_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprNumberLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.bo, ptr noundef nonnull align 8 %i.bp)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %bb.b
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bt = tail call fastcc noundef zeroext i1 @_RNvXshl_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_18ExprBooleanLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.br, ptr noundef nonnull align 4 %i.bs)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %bb.b
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bw = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.bu, ptr noundef nonnull align 4 %i.bv)
  br i1 %i.bw, label %bb.aa, label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.aa:                                            ; preds = %bb.z
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !noundef !13
  %i.ca = load i32, ptr %i.bx, align 4, !noundef !13
  %i.cb = icmp eq i32 %i.bz, %i.ca
  br i1 %i.cb, label %bb.ab, label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.aa
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cd = load i32, ptr %i.cc, align 8, !noundef !13
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cf = load i32, ptr %i.ce, align 8, !noundef !13
  %i.cg = icmp eq i32 %i.cd, %i.cf
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ac:                                            ; preds = %bb.b
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cj = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.ch, ptr noundef nonnull align 4 %i.ci)
  br i1 %i.cj, label %bb.ad, label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !noundef !13
  %i.cn = load i32, ptr %i.ck, align 4, !noundef !13
  %i.co = icmp eq i32 %i.cm, %i.cn
  br i1 %i.co, label %bb.ae, label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ae:                                            ; preds = %bb.ad
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cq = load i32, ptr %i.cp, align 8, !noundef !13
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cs = load i32, ptr %i.cr, align 8, !noundef !13
  %i.ct = icmp eq i32 %i.cq, %i.cs
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.af:                                            ; preds = %bb.b
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cw = tail call fastcc noundef zeroext i1 @_RNvXshD_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_13ExprAttributeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.cu, ptr noundef nonnull align 8 %i.cv)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ag:                                            ; preds = %bb.b
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cz = tail call fastcc noundef zeroext i1 @_RNvXshI_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_13ExprSubscriptNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.cx, ptr noundef nonnull align 8 %i.cy)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ah:                                            ; preds = %bb.b
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dc = tail call fastcc noundef zeroext i1 @_RNvXshN_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_11ExprStarredNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.da, ptr noundef nonnull align 8 %i.db)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ai:                                            ; preds = %bb.b
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.df = tail call fastcc noundef zeroext i1 @_RNvXshS_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_8ExprNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.dd, ptr noundef nonnull align 8 %i.de)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.aj:                                            ; preds = %bb.b
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.di = tail call fastcc noundef zeroext i1 @_RNvXshX_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_8ExprListNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.dg, ptr noundef nonnull align 8 %i.dh)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ak:                                            ; preds = %bb.b
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dl = tail call fastcc noundef zeroext i1 @_RNvXsi2_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9ExprTupleNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.dj, ptr noundef nonnull align 8 %i.dk)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.al:                                            ; preds = %bb.b
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.do = tail call fastcc noundef zeroext i1 @_RNvXsi7_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9ExprSliceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.dm, ptr noundef nonnull align 8 %i.dn)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.am:                                            ; preds = %bb.b
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dr = tail call fastcc noundef zeroext i1 @_RNvXsic_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_20ExprIpyEscapeCommandNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.dp, ptr noundef nonnull align 8 %i.dq)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsbK_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !range !61, !noundef !13
  %i.c = icmp eq i8 %i.b, 0                       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4, !range !61, !noundef !13
  %i.f = icmp eq i8 %i.e, 0                       ; 2 uses
  %i.g = xor i1 %i.c, %i.f
  br i1 %i.g, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.c, label %bb.h

_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.r, %bb.o, %bb.p, %bb.s, %bb.q, %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %bb.h, %_RNvXs30_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9DebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.a ], [ false, %bb.f ], [ %i.ab, %bb.g ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.c ], [ %i.bq, %bb.s ], [ false, %bb.i ], [ false, %bb.o ], [ false, %bb.q ], [ false, %bb.m ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.n ], [ false, %bb.k ], [ %.mux, %bb.r ], [ false, %_RNvXs30_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9DebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit ], [ false, %bb.p ]
  ret i1 %.sroa.0.0.shrunk

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !noundef !13
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i32, ptr %i.j, align 8, !noundef !13
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = load i32, ptr %i.m, align 4, !noundef !13
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.p = load i32, ptr %i.o, align 4, !noundef !13
  %i.q = icmp eq i32 %i.n, %i.p
  br i1 %i.q, label %bb.e, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.r, ptr noundef nonnull align 4 %i.s)
  br i1 %i.t, label %bb.f, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noundef !13 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noundef !13
  %i.y = icmp eq i64 %i.v, %i.x
  br i1 %i.y, label %bb.g, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %1, align 8, !nonnull !13, !noundef !13
  %i.aa = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.aa, ptr nonnull %i.z, i64 %i.v)
  %i.ab = icmp eq i32 %bcmp.i, 0
  br label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load i32, ptr %i.ac, align 8, !noundef !13
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.af = load i32, ptr %i.ae, align 8, !noundef !13
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.i, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ai = load i32, ptr %i.ah, align 4, !noundef !13
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ak = load i32, ptr %i.aj, align 4, !noundef !13
  %i.al = icmp eq i32 %i.ai, %i.ak
  br i1 %i.al, label %bb.j, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ao = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.am, ptr noundef nonnull align 4 %i.an), !inline_history !7942
  br i1 %i.ao, label %bb.k, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !13, !noundef !13
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !13, !noundef !13
  %i.at = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.as), !inline_history !7942
  br i1 %i.at, label %bb.l, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.av = load i8, ptr %i.au, align 1, !range !73, !noundef !13
  %.not.i = icmp eq i8 %i.av, -1
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.ax = load i8, ptr %i.aw, align 1, !range !73, !noundef !13
  %i.ay = icmp eq i8 %i.ax, -1                    ; 2 uses
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.ay, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.o

bb.n:                                             ; preds = %bb.l
  br i1 %i.ay, label %bb.q, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7946)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7947)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ba = load i32, ptr %i.az, align 8, !alias.scope !7946, !noalias !7947, !noundef !13
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bc = load i32, ptr %i.bb, align 8, !alias.scope !7947, !noalias !7946, !noundef !13
  %i.bd = icmp eq i32 %i.ba, %i.bc
  br i1 %i.bd, label %bb.p, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bf = load i32, ptr %i.be, align 4, !alias.scope !7946, !noalias !7947, !noundef !13
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bh = load i32, ptr %i.bg, align 4, !alias.scope !7947, !noalias !7946, !noundef !13
  %i.bi = icmp eq i32 %i.bf, %i.bh
  br i1 %i.bi, label %_RNvXs30_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9DebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs30_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9DebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.p
  %i.bj = tail call noundef zeroext i1 @_RNvXs9_Csg7m2K3K1Fzf_11compact_strNtB5_13CompactStringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  br i1 %i.bj, label %bb.q, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %_RNvXs30_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9DebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %bb.n
  %.val.i = load i8, ptr %i.a, align 4, !range !74, !noundef !13
  %.val5.i = load i8, ptr %i.d, align 4, !range !74, !noundef !13
  %i.bk = icmp eq i8 %.val.i, %.val5.i
  br i1 %i.bk, label %bb.r, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !align !20, !noundef !13 ; 2 uses
  %.not3.i = icmp eq ptr %i.bm, null              ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !align !20, !noundef !13 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null                 ; 2 uses
  %brmerge = or i1 %.not3.i, %i.bp
  %.mux = and i1 %.not3.i, %i.bp
  br i1 %brmerge, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bq = tail call fastcc noundef zeroext i1 @_RNvXs2C_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_28InterpolatedStringFormatSpecNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.bm, ptr noundef nonnull align 8 %i.bo), !inline_history !7942
  br label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsbK_NtNtCsarohYtwVpE2_13libcst_native5nodes10expressionNtB6_18ConcatenatedStringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(168) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0123 = alloca [48 x i8], align 8         ; 8 uses
  %i.q = alloca [168 x i8], align 8               ; 12 uses
  %.sroa.1091 = alloca [56 x i8], align 8         ; 4 uses
  %.sroa.081 = alloca [48 x i8], align 8          ; 5 uses
  %.sroa.066 = alloca [48 x i8], align 8          ; 5 uses
  %i.r = alloca [168 x i8], align 8               ; 12 uses
  %.sroa.054 = alloca [48 x i8], align 8          ; 5 uses
  %.sroa.751.sroa.0 = alloca [48 x i8], align 8   ; 7 uses
  %.sroa.10 = alloca [56 x i8], align 8           ; 4 uses
  %.sroa.0.i = alloca [80 x i8], align 8          ; 5 uses
  %.sroa.0 = alloca [80 x i8], align 8            ; 5 uses
  %.sroa.8 = alloca [7 x i8], align 1             ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 5 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 152
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7985)
  %i.x = tail call noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression6StringE13new_uninit_inCsEhZmuQNqkz_11ruff_linter(), !noalias !7985, !inline_history !7950 ; 12 uses
  %i.y = load ptr, ptr %i.w, align 8, !alias.scope !7985, !nonnull !13, !noundef !13 ; 20 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7986)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.751.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7987), !noalias !7985
  %i.z = load i64, ptr %i.y, align 8, !range !46, !alias.scope !7988, !noalias !7989, !noundef !13 ; 3 uses
  %i.aa = icmp ne i64 %i.z, -9223372036854775807
  tail call void @llvm.assume(i1 %i.aa), !noalias !7985
  %i.ab = xor i64 %i.z, -9223372036854775808
  %i.ac = icmp slt i64 %i.z, 0
  %i.ad = select i1 %i.ac, i64 %i.ab, i64 1
  switch i64 %i.ad, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7990)
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !7990, !noalias !7991, !nonnull !13, !noundef !13
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !7990, !noalias !7991, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !7992
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression9LeftParenENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ae)
          to label %.noexc23 unwind label %bb.s

.noexc23:                                         ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !7992
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression10RightParenENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj)
          to label %.noexc7 unwind label %bb.d, !noalias !7991

bb.d:                                             ; preds = %.noexc23
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression9LeftParenEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.j) #38
          to label %bb.t unwind label %bb.e, !noalias !7991

bb.e:                                             ; preds = %bb.d
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !noalias !7991
  unreachable

.noexc7:                                          ; preds = %.noexc23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.054, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !7990
  %.sroa.054.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.054, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.054.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !7990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !7992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !7992
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.751.sroa.0, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.054, i64 48, i1 false), !noalias !7993
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.054)
  %i.am = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.ai, i64 0
  br label %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression6StringENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !7994
  invoke fastcc void @_RNvXsbK_NtNtCsarohYtwVpE2_13libcst_native5nodes10expressionNtB6_18ConcatenatedStringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(168) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.y)
          to label %.noexc8 unwind label %bb.s, !inline_history !7959

.noexc8:                                          ; preds = %bb.f
  %.sroa.049.0.copyload50 = load i64, ptr %i.r, align 8, !noalias !7993
  %.sroa.751.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.751.sroa.0, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.751.0..sroa_idx52, i64 48, i1 false), !noalias !7993
  %.sroa.751.sroa.7.0..sroa.751.0..sroa_idx52.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %.sroa.751.sroa.7.0.copyload57 = load ptr, ptr %.sroa.751.sroa.7.0..sroa.751.0..sroa_idx52.sroa_idx, align 8, !noalias !7993
end_hunk_1
