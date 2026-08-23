Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff-e768ae2d72824186.ruff.64ca6932328cfb18-cgu.12?download=true
inline.NumInlined: 1670
inline.NumDeleted: 939
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RNvNtNtCs8EvorvD8vmS_4ruff8commands6linter6linter:bb.a
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.i.loopexit, %.loopexit.split-lp.i.loopexit.split-lp, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit120, %.loopexit.split-lp.i.loopexit ], [ %lpad.loopexit.split-lp121, %.loopexit.split-lp.i.loopexit.split-lp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q) #33
          to label %.body unwind label %bb.t, !noalias !2810

bb.s:                                             ; preds = %bb.r
  br i1 %i.bq, label %.invoke.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs8EvorvD8vmS_4ruff.exit.i, !prof !18

.invoke.i:                                        ; preds = %bb.s, %.noexc33.i
  %i.br = phi ptr [ @111, %.noexc33.i ], [ @243, %bb.s ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @114, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.br) #32
          to label %.cont.i unwind label %.loopexit.split-lp.i.loopexit.split-lp, !noalias !2810

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs8EvorvD8vmS_4ruff.exit.i: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2810
  call void @llvm.experimental.noalias.scope.decl(metadata !2811)
  call void @llvm.experimental.noalias.scope.decl(metadata !2814)
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs8EvorvD8vmS_4ruff.exit.i.i.i.i.i.i.i.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs8EvorvD8vmS_4ruff.exit.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixReuINtNtNtBa_3ops9try_trait17NeverShortCircuituENCNvNtNtCs8EvorvD8vmS_4ruff8commands6linter6linter0NCINvMB2m_B2j_10wrap_mut_2uB2g_NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2g_NCNvYINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB32_ENtCs6Wt4yPw39th_9itertools9Itertools4join0E0E0E0B3a_.exit.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs8EvorvD8vmS_4ruff.exit.i
  %i.bs = phi ptr [ %i.bt, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixReuINtNtNtBa_3ops9try_trait17NeverShortCircuituENCNvNtNtCs8EvorvD8vmS_4ruff8commands6linter6linter0NCINvMB2m_B2j_10wrap_mut_2uB2g_NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2g_NCNvYINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB32_ENtCs6Wt4yPw39th_9itertools9Itertools4join0E0E0E0B3a_.exit.i.i.i.i ], [ %i.bg, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs8EvorvD8vmS_4ruff.exit.i ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bs, i64 16
  %.val5.i.i.i.i = load ptr, ptr %i.bu, align 8, !noalias !2817, !nonnull !7, !noundef !7
  %i.bv = getelementptr i8, ptr %i.bs, i64 24
  %.val6.i.i.i.i = load i64, ptr %i.bv, align 8, !noalias !2817, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2823
  store ptr %.val5.i.i.i.i, ptr %i.n, align 8, !noalias !2828
  store i64 %.val6.i.i.i.i, ptr %i.al, align 8, !noalias !2828
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef 1)
          to label %.noexc32.i unwind label %.loopexit.i, !noalias !2810

.noexc32.i:                                       ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs8EvorvD8vmS_4ruff.exit.i.i.i.i.i.i.i.i
  %i.bw = load i64, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !2831, !noalias !2834, !noundef !7 ; 2 uses
  %i.bx = icmp sgt i64 %i.bw, -1
  call void @llvm.assume(i1 %i.bx)
  %i.by = load ptr, ptr %.sroa.47.0..sroa_idx.i, align 8, !alias.scope !2831, !noalias !2834, !nonnull !7, !noundef !7
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bw
  store i8 47, ptr %i.bz, align 1, !noalias !2817
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !2831, !noalias !2834
  %i.ca = add i64 %.pre.i.i.i.i.i.i.i.i.i, 1
  store i64 %i.ca, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !2831, !noalias !2834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2828
  store ptr %i.n, ptr %i.m, align 8, !noalias !2828
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs8EvorvD8vmS_4ruff, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !2828
  %i.cb = invoke noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @109, ptr noundef nonnull @108, ptr noundef nonnull %i.m)
          to label %.noexc33.i unwind label %.loopexit.i, !noalias !2810

.noexc33.i:                                       ; preds = %.noexc32.i
  br i1 %i.cb, label %.invoke.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixReuINtNtNtBa_3ops9try_trait17NeverShortCircuituENCNvNtNtCs8EvorvD8vmS_4ruff8commands6linter6linter0NCINvMB2m_B2j_10wrap_mut_2uB2g_NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2g_NCNvYINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB32_ENtCs6Wt4yPw39th_9itertools9Itertools4join0E0E0E0B3a_.exit.i.i.i.i, !prof !18

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixReuINtNtNtBa_3ops9try_trait17NeverShortCircuituENCNvNtNtCs8EvorvD8vmS_4ruff8commands6linter6linter0NCINvMB2m_B2j_10wrap_mut_2uB2g_NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2g_NCNvYINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB32_ENtCs6Wt4yPw39th_9itertools9Itertools4join0E0E0E0B3a_.exit.i.i.i.i: ; preds = %.noexc33.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2823
  %i.cc = icmp eq ptr %i.bt, %i.bf
  br i1 %i.cc, label %_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixENCNvNtNtCs8EvorvD8vmS_4ruff8commands6linter6linter0ENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callReNCNvYBR_NtCs6Wt4yPw39th_9itertools9Itertools4join0E0EB37_.exit.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs8EvorvD8vmS_4ruff.exit.i.i.i.i.i.i.i.i

_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixENCNvNtNtCs8EvorvD8vmS_4ruff8commands6linter6linter0ENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callReNCNvYBR_NtCs6Wt4yPw39th_9itertools9Itertools4join0E0EB37_.exit.i: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixReuINtNtNtBa_3ops9try_trait17NeverShortCircuituENCNvNtNtCs8EvorvD8vmS_4ruff8commands6linter6linter0NCINvMB2m_B2j_10wrap_mut_2uB2g_NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2g_NCNvYINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB32_ENtCs6Wt4yPw39th_9itertools9Itertools4join0E0E0E0B3a_.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !2835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2810
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2810
  br label %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixENCNvNtNtCs8EvorvD8vmS_4ruff8commands6linter6linter0ENtCs6Wt4yPw39th_9itertools9Itertools4joinB2F_.exit

bb.t:                                             ; preds = %.loopexit.split-lp.i
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !2810
  unreachable

.loopexit124:                                     ; preds = %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixENCNvNtNtCs8EvorvD8vmS_4ruff8commands6linter6linter0ENtCs6Wt4yPw39th_9itertools9Itertools4joinB2F_.exit, %bb.v
  %lpad.loopexit126 = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp125:                            ; preds = %bb.x
  %lpad.loopexit.split-lp127 = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp125, %.loopexit124
  %lpad.phi128 = phi { ptr, i32 } [ %lpad.loopexit126, %.loopexit124 ], [ %lpad.loopexit.split-lp127, %.loopexit.split-lp125 ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y) #33
          to label %.body unwind label %bb.aa

bb.v:                                             ; preds = %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixENCNvNtNtCs8EvorvD8vmS_4ruff8commands6linter6linter0ENtCs6Wt4yPw39th_9itertools9Itertools4joinB2F_.exit
  %i.ce = extractvalue { ptr, i64 } %i.be, 0
  %i.cf = extractvalue { ptr, i64 } %i.be, 1
  store ptr %i.ce, ptr %i.x, align 8
  store i64 %i.cf, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %i.y, ptr %i.w, align 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.433.0..sroa_idx, align 8
  store ptr %i.x, ptr %i.an, align 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs8EvorvD8vmS_4ruff, ptr %.sroa.437.0..sroa_idx, align 8
  %i.cg = invoke noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @109, ptr noundef nonnull @205, ptr noundef nonnull %i.w)
          to label %bb.w unwind label %.loopexit124

bb.w:                                             ; preds = %bb.v
  br i1 %i.cg, label %bb.x, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs8EvorvD8vmS_4ruff.exit, !prof !18

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @114, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) #32
          to label %.noexc unwind label %.loopexit.split-lp125

.noexc:                                           ; preds = %bb.x
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs8EvorvD8vmS_4ruff.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i unwind label %bb.y

bb.y:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs8EvorvD8vmS_4ruff.exit
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.body unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs8EvorvD8vmS_4ruff.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff.exit unwind label %.loopexit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.cj = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %exitcond = icmp eq i64 %i.cj, 60
  br i1 %exitcond, label %.loopexit119, label %bb.d

bb.aa:                                            ; preds = %.body103, %bb.bk, %.body88, %bb.u, %.body
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.ab:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6linter10LinterInfoEEB1d_.exit, %.loopexit119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.ab, ptr %i.t, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.462.0..sroa_idx, align 8
  %i.cl = invoke noundef ptr @_RNvYINtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufwriter9BufWriterNtNtB9_5stdio10StdoutLockENtB9_5Write9write_fmtCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull @108, ptr noundef nonnull %i.t)
          to label %bb.bs unwind label %.loopexit.split-lp ; 2 uses

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.val = load ptr, ptr %i.cm, align 8            ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.val75 = load i64, ptr %i.cn, align 8          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2836
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef 128, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc86 unwind label %bb.bf

.noexc86:                                         ; preds = %bb.ac
  %i.co = load i64, ptr %i.k, align 8, !range !16, !noalias !2836, !noundef !7
  %i.cp = trunc nuw i64 %i.co to i1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !range !17, !noalias !2836, !noundef !7 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  br i1 %i.cp, label %bb.ad, label %bb.ae, !prof !18

bb.ad:                                            ; preds = %.noexc86
  %i.ct = load i64, ptr %i.cs, align 8, !noalias !2836
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.cr, i64 %i.ct) #32
          to label %.noexc87 unwind label %bb.bf

.noexc87:                                         ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %.noexc86
  %i.cu = load ptr, ptr %i.cs, align 8, !noalias !2836, !nonnull !7, !noundef !7
  %i.cv = icmp samesign ugt i64 %i.cr, 127
  call void @llvm.assume(i1 %i.cv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2836
  store i64 %i.cr, ptr %i.l, align 8, !noalias !2836
  %i.cw = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.cu, ptr %i.cw, align 8, !noalias !2836
  %i.cx = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 0, ptr %i.cx, align 8, !noalias !2836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2839
  store ptr %i.l, ptr %i.j, align 8, !noalias !2839
  %i.cy = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @16, ptr %i.cy, align 8, !noalias !2839
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 2, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2839
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2842)
  call void @llvm.experimental.noalias.scope.decl(metadata !2845)
  %.idx.i.i.i.i = mul nuw nsw i64 %.val75, 72
  %i.cz = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !2836

.noexc.i:                                         ; preds = %bb.ae
  %cond.i.i.i.i = icmp eq i64 %.val75, 0
  br i1 %cond.i.i.i.i, label %.noexc88.invoke.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.dd = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.df = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %i.dg = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  %i.dj = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  br label %.split.i.i.i.i.i.i.i.i.i.invoke.i

.split.i.i.i.i.i.i.i.i.i.invoke.i:                ; preds = %.noexc87.i, %.lr.ph.i.i.i.i.i.i
  %i.dm = phi i1 [ true, %.lr.ph.i.i.i.i.i.i ], [ false, %.noexc87.i ] ; 2 uses
  %i.dn = phi ptr [ %.val, %.lr.ph.i.i.i.i.i.i ], [ %i.do, %.noexc87.i ] ; 10 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2848)
  call void @llvm.experimental.noalias.scope.decl(metadata !2851)
  %..i = select i1 %i.dm, ptr @80, ptr @84
  %.85.i = select i1 %i.dm, i64 1, i64 2
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %..i, i64 noundef range(i64 0, -9223372036854775808) %.85.i)
          to label %.lr.ph.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.split.i.i.i.i.i.i.i.i.i.invoke.i
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 2)
          to label %.noexc7.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc7.i:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2854)
  call void @llvm.experimental.noalias.scope.decl(metadata !2857)
  call void @llvm.experimental.noalias.scope.decl(metadata !2860)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 56
  %i.dq = load ptr, ptr %i.dp, align 8, !alias.scope !2862, !noalias !2863, !noundef !7 ; 2 uses
  %i.dr = load i64, ptr %i.dn, align 8, !range !99, !alias.scope !2862, !noalias !2863, !noundef !7
  store i64 2, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2872, !noalias !2879
  store i8 0, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !2872, !noalias !2879
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %.noexc8.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc8.i:                                        ; preds = %.noexc7.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ds, align 8, !alias.scope !2862, !noalias !2863 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %.val27.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dt, align 8, !alias.scope !2862, !noalias !2863
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %.noexc9.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc9.i:                                        ; preds = %.noexc8.i
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 2)
          to label %.noexc10.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc10.i:                                       ; preds = %.noexc9.i
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 2)
          to label %.noexc11.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc11.i:                                       ; preds = %.noexc10.i
  %i.du = invoke noundef ptr @_RINvNtCscvBHLZPbXnS_10serde_json3ser18format_escaped_strQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2_15PrettyFormatterECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.j, ptr noalias nonnull readonly align 8 poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef range(i64 3, 11) 6)
          to label %.noexc12.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836 ; 0 uses

.noexc12.i:                                       ; preds = %.noexc11.i
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef range(i64 0, -9223372036854775808) 2)
          to label %.noexc13.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc13.i:                                       ; preds = %.noexc12.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i.i) ]
  %i.dv = invoke noundef ptr @_RINvNtCscvBHLZPbXnS_10serde_json3ser18format_escaped_strQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2_15PrettyFormatterECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.j, ptr noalias nonnull readonly align 8 poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val27.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc14.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836 ; 0 uses

.noexc14.i:                                       ; preds = %.noexc13.i
  store i8 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !2882, !noalias !2885
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  %.val28.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dw, align 8, !alias.scope !2862, !noalias !2863 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %.val29.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dx, align 8, !alias.scope !2862, !noalias !2863
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef range(i64 0, -9223372036854775808) 2)
          to label %.noexc15.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc15.i:                                       ; preds = %.noexc14.i
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 2)
          to label %.noexc16.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc16.i:                                       ; preds = %.noexc15.i
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 2)
          to label %.noexc17.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc17.i:                                       ; preds = %.noexc16.i
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dq, null
  %.not25.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dr, -1 ; 2 uses
  %i.dy = invoke noundef ptr @_RINvNtCscvBHLZPbXnS_10serde_json3ser18format_escaped_strQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2_15PrettyFormatterECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.j, ptr noalias nonnull readonly align 8 poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef range(i64 3, 11) 4)
          to label %.noexc18.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836 ; 0 uses

.noexc18.i:                                       ; preds = %.noexc17.i
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef range(i64 0, -9223372036854775808) 2)
          to label %.noexc19.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc19.i:                                       ; preds = %.noexc18.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val28.i.i.i.i.i.i.i.i.i.i.i) ]
  %i.dz = invoke noundef ptr @_RINvNtCscvBHLZPbXnS_10serde_json3ser18format_escaped_strQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2_15PrettyFormatterECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.j, ptr noalias nonnull readonly align 8 poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val28.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val29.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc20.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836 ; 0 uses

.noexc20.i:                                       ; preds = %.noexc19.i
  store i8 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !2890, !noalias !2893
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i3.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i3.i.i.i.i.i.i.i.i.i.i:              ; preds = %.noexc20.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dn, i64 64
  %.val31.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ea, align 8, !alias.scope !2862, !noalias !2863
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef range(i64 0, -9223372036854775808) 2)
          to label %.noexc21.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc21.i:                                       ; preds = %.lr.ph.i.i.i.i3.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 2)
          to label %.noexc22.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc22.i:                                       ; preds = %.noexc21.i
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 2)
          to label %.noexc23.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc23.i:                                       ; preds = %.noexc22.i
  %i.eb = invoke noundef ptr @_RINvNtCscvBHLZPbXnS_10serde_json3ser18format_escaped_strQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2_15PrettyFormatterECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.j, ptr noalias nonnull readonly align 8 poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef range(i64 3, 8) 3)
          to label %.noexc24.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836 ; 0 uses

.noexc24.i:                                       ; preds = %.noexc23.i
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef range(i64 0, -9223372036854775808) 2)
          to label %.noexc25.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc25.i:                                       ; preds = %.noexc24.i
  %i.ec = invoke noundef ptr @_RINvNtCscvBHLZPbXnS_10serde_json3ser18format_escaped_strQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2_15PrettyFormatterECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.j, ptr noalias nonnull readonly align 8 poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dq, i64 noundef %.val31.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc26.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836 ; 0 uses

.noexc26.i:                                       ; preds = %.noexc25.i
  store i8 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !2898, !noalias !2901
  br i1 %.not25.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.af

.thread.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc20.i
  br i1 %.not25.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i44.i.i.i.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %.noexc26.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2906)
  call void @llvm.experimental.noalias.scope.decl(metadata !2909)
  br label %.lr.ph.i.i.i.i44.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i44.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.af, %.thread.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef range(i64 0, -9223372036854775808) 2)
          to label %.noexc27.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc27.i:                                       ; preds = %.lr.ph.i.i.i.i44.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 2)
          to label %.noexc28.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc28.i:                                       ; preds = %.noexc27.i
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 2)
          to label %.noexc29.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc29.i:                                       ; preds = %.noexc28.i
  %i.ed = invoke noundef ptr @_RINvNtCscvBHLZPbXnS_10serde_json3ser18format_escaped_strQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2_15PrettyFormatterECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.j, ptr noalias nonnull readonly align 8 poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) @78, i64 noundef range(i64 3, 14) 10)
          to label %.noexc30.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836 ; 0 uses

.noexc30.i:                                       ; preds = %.noexc29.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2912)
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef range(i64 0, -9223372036854775808) 2)
          to label %.noexc31.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc31.i:                                       ; preds = %.noexc30.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2915)
  call void @llvm.experimental.noalias.scope.decl(metadata !2918)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ee, align 8, !alias.scope !2920, !noalias !2921, !nonnull !7, !noundef !7 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ef, align 8, !alias.scope !2920, !noalias !2921, !noundef !7 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2924)
  call void @llvm.experimental.noalias.scope.decl(metadata !2927)
  call void @llvm.experimental.noalias.scope.decl(metadata !2930)
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 5
  %i.eg = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i8 0, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !2933, !noalias !2938
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %.noexc32.i83 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc32.i83:                                     ; preds = %.noexc31.i
  %cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc83.invoke.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %.noexc32.i83, %.noexc80.i
  %i.eh = phi i1 [ false, %.noexc80.i ], [ true, %.noexc32.i83 ] ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvNtNtCs8EvorvD8vmS_4ruff8commands6linter6linter:bb.a
.outer.i.i9.i.i.i.i.i.i._crit_edge:               ; preds = %_RINvYNtNtCscvBHLZPbXnS_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i.i15.i.i.i.i.i.i, %bb.as
  %.sroa.5.0.ph.i.i10.i.i.i.i.i.i.lcssa = phi i64 [ %.sroa.5.0.ph.i.i10.i.i.i.i.i.i279, %bb.as ], [ %i.gq, %_RINvYNtNtCscvBHLZPbXnS_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i.i15.i.i.i.i.i.i ] ; 2 uses
  %.sroa.05.0.ph.i.i11.i.i.i.i.i.i.lcssa = phi ptr [ %.sroa.05.0.ph.i.i11.i.i.i.i.i.i280, %bb.as ], [ %i.go, %_RINvYNtNtCscvBHLZPbXnS_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i.i15.i.i.i.i.i.i ]
  %i.gg = icmp eq i64 %.sroa.5.0.ph.i.i10.i.i.i.i.i.i.lcssa, 0
  br i1 %i.gg, label %_RINvNtCscvBHLZPbXnS_10serde_json3ser18format_escaped_strQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2_15PrettyFormatterECs8EvorvD8vmS_4ruff.exit16.i.i.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %.outer.i.i9.i.i.i.i.i.i._crit_edge
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0.ph.i.i11.i.i.i.i.i.i.lcssa, i64 noundef range(i64 1, -9223372036854775808) %.sroa.5.0.ph.i.i10.i.i.i.i.i.i.lcssa)
          to label %_RINvNtCscvBHLZPbXnS_10serde_json3ser18format_escaped_strQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2_15PrettyFormatterECs8EvorvD8vmS_4ruff.exit16.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs8EvorvD8vmS_4ruff.exit.i.i14.i.i.i.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs8EvorvD8vmS_4ruff.exit.i.i14.i.i.i.i.i.i.lr.ph, %bb.as
  %.sroa.010.0.i.i12.i.i.i.i.i.i273 = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs8EvorvD8vmS_4ruff.exit.i.i14.i.i.i.i.i.i.lr.ph ], [ %i.gf, %bb.as ] ; 6 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.05.0.ph.i.i11.i.i.i.i.i.i280, i64 %.sroa.010.0.i.i12.i.i.i.i.i.i273
  %i.gi = load i8, ptr %i.gh, align 1, !alias.scope !3003, !noalias !3004, !noundef !7 ; 3 uses
  %i.gj = zext i8 %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr @_RNvNtCscvBHLZPbXnS_10serde_json3ser6ESCAPE, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1, !noalias !3006, !noundef !7 ; 3 uses
  %i.gm = icmp eq i8 %i.gl, 0
  br i1 %i.gm, label %bb.as, label %bb.au

bb.au:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs8EvorvD8vmS_4ruff.exit.i.i14.i.i.i.i.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.05.0.ph.i.i11.i.i.i.i.i.i280, i64 %.sroa.010.0.i.i12.i.i.i.i.i.i273
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 1 ; 2 uses
  %i.gp = xor i64 %.sroa.010.0.i.i12.i.i.i.i.i.i273, -1
  %i.gq = add i64 %.sroa.5.0.ph.i.i10.i.i.i.i.i.i279, %i.gp ; 3 uses
  %i.gr = icmp eq i64 %.sroa.010.0.i.i12.i.i.i.i.i.i273, 0
  br i1 %i.gr, label %.noexc65.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0.ph.i.i11.i.i.i.i.i.i280, i64 noundef range(i64 1, -9223372036854775808) %.sroa.010.0.i.i12.i.i.i.i.i.i273)
          to label %.noexc65.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc65.i:                                       ; preds = %bb.av, %bb.au
  %i.gs = icmp eq i8 %i.gl, 117
  br i1 %i.gs, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.noexc65.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3006
  %i.gt = and i8 %i.gi, 15
  %i.gu = zext nneg i8 %i.gt to i64
  %i.gv = lshr i8 %i.gi, 4
  %i.gw = zext nneg i8 %i.gv to i64
  %i.gx = getelementptr inbounds nuw i8, ptr @_RNvNvNtNtCscvBHLZPbXnS_10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1, !noalias !3006, !noundef !7
  %i.gz = getelementptr inbounds nuw i8, ptr @_RNvNvNtNtCscvBHLZPbXnS_10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS, i64 %i.gu
  %i.ha = load i8, ptr %i.gz, align 1, !noalias !3006, !noundef !7
  store <4 x i8> <i8 92, i8 117, i8 48, i8 48>, ptr %i.g, align 4, !noalias !3006
  store i8 %i.gy, ptr %i.dh, align 4, !noalias !3006
  store i8 %i.ha, ptr %i.di, align 1, !noalias !3006
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef range(i64 0, -9223372036854775808) 6)
          to label %.noexc66.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc66.i:                                       ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3006
  br label %_RINvYNtNtCscvBHLZPbXnS_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i.i15.i.i.i.i.i.i

bb.ax:                                            ; preds = %.noexc65.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3006
  store i8 92, ptr %i.f, align 1, !noalias !3006
  store i8 %i.gl, ptr %i.dg, align 1, !noalias !3006
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef range(i64 0, -9223372036854775808) 2)
          to label %.noexc67.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc67.i:                                       ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3006
  br label %_RINvYNtNtCscvBHLZPbXnS_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i.i15.i.i.i.i.i.i

_RINvYNtNtCscvBHLZPbXnS_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i.i15.i.i.i.i.i.i: ; preds = %.noexc67.i, %.noexc66.i
  %exitcond.not.i.i13.i.i.i.i.i.i272 = icmp eq i64 %i.gq, 0
  br i1 %exitcond.not.i.i13.i.i.i.i.i.i272, label %.outer.i.i9.i.i.i.i.i.i._crit_edge, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs8EvorvD8vmS_4ruff.exit.i.i14.i.i.i.i.i.i.lr.ph

_RINvNtCscvBHLZPbXnS_10serde_json3ser18format_escaped_strQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2_15PrettyFormatterECs8EvorvD8vmS_4ruff.exit16.i.i.i.i.i.i: ; preds = %bb.at, %.outer.i.i9.i.i.i.i.i.i._crit_edge
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %.noexc68.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc68.i:                                       ; preds = %_RINvNtCscvBHLZPbXnS_10serde_json3ser18format_escaped_strQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2_15PrettyFormatterECs8EvorvD8vmS_4ruff.exit16.i.i.i.i.i.i
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef range(i64 0, -9223372036854775808) 2)
          to label %.noexc69.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc69.i:                                       ; preds = %.noexc68.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3007)
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %.noexc70.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc70.i:                                       ; preds = %.noexc69.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3010), !noalias !3013
  %exitcond.not.i.i.i.i.i.i.i.i281288 = icmp eq i64 %.val13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %exitcond.not.i.i.i.i.i.i.i.i281288, label %.outer.i.i.i.i.i.i.i.i._crit_edge, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs8EvorvD8vmS_4ruff.exit.i.i.i.i.i.i.i.i.lr.ph

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs8EvorvD8vmS_4ruff.exit.i.i.i.i.i.i.i.i.lr.ph: ; preds = %.noexc70.i, %_RINvYNtNtCscvBHLZPbXnS_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i.i.i.i.i.i.i.i
  %.sroa.05.0.ph.i.i.i.i.i.i.i.i290 = phi ptr [ %i.hk, %_RINvYNtNtCscvBHLZPbXnS_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i.i.i.i.i.i.i.i ], [ %.val12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc70.i ] ; 4 uses
  %.sroa.5.0.ph.i.i.i.i.i.i.i.i289 = phi i64 [ %i.hm, %_RINvYNtNtCscvBHLZPbXnS_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i.i.i.i.i.i.i.i ], [ %.val13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc70.i ] ; 3 uses
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs8EvorvD8vmS_4ruff.exit.i.i.i.i.i.i.i.i

bb.ay:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs8EvorvD8vmS_4ruff.exit.i.i.i.i.i.i.i.i
  %i.hb = add i64 %.sroa.010.0.i.i.i.i.i.i.i.i282, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.hb, %.sroa.5.0.ph.i.i.i.i.i.i.i.i289
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.outer.i.i.i.i.i.i.i.i._crit_edge, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs8EvorvD8vmS_4ruff.exit.i.i.i.i.i.i.i.i

.outer.i.i.i.i.i.i.i.i._crit_edge:                ; preds = %_RINvYNtNtCscvBHLZPbXnS_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i.i.i.i.i.i.i.i, %bb.ay, %.noexc70.i
  %.sroa.5.0.ph.i.i.i.i.i.i.i.i.lcssa = phi i64 [ %.sroa.5.0.ph.i.i.i.i.i.i.i.i289, %bb.ay ], [ %.val13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc70.i ], [ %i.hm, %_RINvYNtNtCscvBHLZPbXnS_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.05.0.ph.i.i.i.i.i.i.i.i.lcssa = phi ptr [ %.sroa.05.0.ph.i.i.i.i.i.i.i.i290, %bb.ay ], [ %.val12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc70.i ], [ %i.hk, %_RINvYNtNtCscvBHLZPbXnS_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i.i.i.i.i.i.i.i ]
  %i.hc = icmp eq i64 %.sroa.5.0.ph.i.i.i.i.i.i.i.i.lcssa, 0
  br i1 %i.hc, label %_RINvNtCscvBHLZPbXnS_10serde_json3ser18format_escaped_strQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2_15PrettyFormatterECs8EvorvD8vmS_4ruff.exit.i.i.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %.outer.i.i.i.i.i.i.i.i._crit_edge
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0.ph.i.i.i.i.i.i.i.i.lcssa, i64 noundef range(i64 1, -9223372036854775808) %.sroa.5.0.ph.i.i.i.i.i.i.i.i.lcssa)
          to label %_RINvNtCscvBHLZPbXnS_10serde_json3ser18format_escaped_strQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2_15PrettyFormatterECs8EvorvD8vmS_4ruff.exit.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs8EvorvD8vmS_4ruff.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs8EvorvD8vmS_4ruff.exit.i.i.i.i.i.i.i.i.lr.ph, %bb.ay
  %.sroa.010.0.i.i.i.i.i.i.i.i282 = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs8EvorvD8vmS_4ruff.exit.i.i.i.i.i.i.i.i.lr.ph ], [ %i.hb, %bb.ay ] ; 6 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.05.0.ph.i.i.i.i.i.i.i.i290, i64 %.sroa.010.0.i.i.i.i.i.i.i.i282
  %i.he = load i8, ptr %i.hd, align 1, !alias.scope !3014, !noalias !3015, !noundef !7 ; 3 uses
  %i.hf = zext i8 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr @_RNvNtCscvBHLZPbXnS_10serde_json3ser6ESCAPE, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !noalias !3017, !noundef !7 ; 3 uses
  %i.hi = icmp eq i8 %i.hh, 0
  br i1 %i.hi, label %bb.ay, label %bb.ba

bb.ba:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs8EvorvD8vmS_4ruff.exit.i.i.i.i.i.i.i.i
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.05.0.ph.i.i.i.i.i.i.i.i290, i64 %.sroa.010.0.i.i.i.i.i.i.i.i282
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 1 ; 2 uses
  %i.hl = xor i64 %.sroa.010.0.i.i.i.i.i.i.i.i282, -1
  %i.hm = add i64 %.sroa.5.0.ph.i.i.i.i.i.i.i.i289, %i.hl ; 3 uses
  %i.hn = icmp eq i64 %.sroa.010.0.i.i.i.i.i.i.i.i282, 0
  br i1 %i.hn, label %.noexc72.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0.ph.i.i.i.i.i.i.i.i290, i64 noundef range(i64 1, -9223372036854775808) %.sroa.010.0.i.i.i.i.i.i.i.i282)
          to label %.noexc72.i unwind label %.loopexit.i84, !noalias !2836

.noexc72.i:                                       ; preds = %bb.bb, %bb.ba
  %i.ho = icmp eq i8 %i.hh, 117
  br i1 %i.ho, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.noexc72.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3017
  %i.hp = and i8 %i.he, 15
  %i.hq = zext nneg i8 %i.hp to i64
  %i.hr = lshr i8 %i.he, 4
  %i.hs = zext nneg i8 %i.hr to i64
  %i.ht = getelementptr inbounds nuw i8, ptr @_RNvNvNtNtCscvBHLZPbXnS_10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1, !noalias !3017, !noundef !7
  %i.hv = getelementptr inbounds nuw i8, ptr @_RNvNvNtNtCscvBHLZPbXnS_10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS, i64 %i.hq
  %i.hw = load i8, ptr %i.hv, align 1, !noalias !3017, !noundef !7
  store <4 x i8> <i8 92, i8 117, i8 48, i8 48>, ptr %i.i, align 4, !noalias !3017
  store i8 %i.hu, ptr %i.dk, align 4, !noalias !3017
  store i8 %i.hw, ptr %i.dl, align 1, !noalias !3017
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef range(i64 0, -9223372036854775808) 6)
          to label %.noexc73.i unwind label %.loopexit.i84, !noalias !2836

.noexc73.i:                                       ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3017
  br label %_RINvYNtNtCscvBHLZPbXnS_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i.i.i.i.i.i.i.i

bb.bd:                                            ; preds = %.noexc72.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3017
  store i8 92, ptr %i.h, align 1, !noalias !3017
  store i8 %i.hh, ptr %i.dj, align 1, !noalias !3017
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef range(i64 0, -9223372036854775808) 2)
          to label %.noexc74.i unwind label %.loopexit.i84, !noalias !2836

.noexc74.i:                                       ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3017
  br label %_RINvYNtNtCscvBHLZPbXnS_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i.i.i.i.i.i.i.i

_RINvYNtNtCscvBHLZPbXnS_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc74.i, %.noexc73.i
  %exitcond.not.i.i.i.i.i.i.i.i281 = icmp eq i64 %i.hm, 0
  br i1 %exitcond.not.i.i.i.i.i.i.i.i281, label %.outer.i.i.i.i.i.i.i.i._crit_edge, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs8EvorvD8vmS_4ruff.exit.i.i.i.i.i.i.i.i.lr.ph

_RINvNtCscvBHLZPbXnS_10serde_json3ser18format_escaped_strQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2_15PrettyFormatterECs8EvorvD8vmS_4ruff.exit.i.i.i.i.i.i: ; preds = %bb.az, %.outer.i.i.i.i.i.i.i.i._crit_edge
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %.noexc75.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc75.i:                                       ; preds = %_RINvNtCscvBHLZPbXnS_10serde_json3ser18format_escaped_strQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2_15PrettyFormatterECs8EvorvD8vmS_4ruff.exit.i.i.i.i.i.i
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %.noexc76.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc76.i:                                       ; preds = %.noexc75.i
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 2)
          to label %.noexc77.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc77.i:                                       ; preds = %.noexc76.i
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 2)
          to label %.noexc78.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc78.i:                                       ; preds = %.noexc77.i
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 2)
          to label %.noexc79.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc79.i:                                       ; preds = %.noexc78.i
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %.noexc80.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc80.i:                                       ; preds = %.noexc79.i
  %i.hx = icmp eq ptr %i.ej, %i.eg
  br i1 %i.hx, label %.lr.ph.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc80.i
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %.noexc81.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc81.i:                                       ; preds = %.lr.ph.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 2)
          to label %.noexc82.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc82.i:                                       ; preds = %.noexc81.i
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 2)
          to label %.noexc83.invoke.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc83.invoke.i:                                ; preds = %.noexc82.i, %.noexc32.i83
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.noexc83.invoke.i, %.thread.i.i.i.i.i.i.i.i.i.i.i, %.noexc26.i
  store i64 1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !3018, !noalias !3025
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %.noexc85.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc85.i:                                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 2)
          to label %.noexc86.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc86.i:                                       ; preds = %.noexc85.i
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %.noexc87.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2836

.noexc87.i:                                       ; preds = %.noexc86.i
  store i8 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !3026, !noalias !3029
  %i.hy = icmp eq ptr %i.do, %i.cz
  br i1 %i.hy, label %_RINvXsd_NtCscvBHLZPbXnS_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i14.i.i.i.i, label %.split.i.i.i.i.i.i.i.i.i.invoke.i

_RINvXsd_NtCscvBHLZPbXnS_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i14.i.i.i.i: ; preds = %.noexc87.i
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %.noexc88.invoke.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !2836

.noexc88.invoke.i:                                ; preds = %_RINvXsd_NtCscvBHLZPbXnS_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i14.i.i.i.i, %.noexc.i
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !2836

.loopexit.i84:                                    ; preds = %bb.bd, %bb.bc, %bb.bb
  %lpad.loopexit.i85 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i81

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.ax, %bb.aw, %bb.av
  %lpad.loopexit1.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i81

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.ar, %bb.aq, %bb.ap
  %lpad.loopexit4.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i81

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.al, %bb.ak, %bb.aj
  %lpad.loopexit6.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i81

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %.noexc79.i, %.noexc78.i, %.noexc77.i, %.noexc76.i, %.noexc75.i, %_RINvNtCscvBHLZPbXnS_10serde_json3ser18format_escaped_strQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2_15PrettyFormatterECs8EvorvD8vmS_4ruff.exit.i.i.i.i.i.i, %bb.az, %.noexc69.i, %.noexc68.i, %_RINvNtCscvBHLZPbXnS_10serde_json3ser18format_escaped_strQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2_15PrettyFormatterECs8EvorvD8vmS_4ruff.exit16.i.i.i.i.i.i, %bb.at, %.noexc62.i, %.noexc61.i, %.noexc60.i, %.noexc59.i, %.noexc58.i, %.noexc57.i, %_RINvNtCscvBHLZPbXnS_10serde_json3ser18format_escaped_strQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2_15PrettyFormatterECs8EvorvD8vmS_4ruff.exit25.i.i.i.i.i.i, %bb.an, %.noexc51.i, %.noexc50.i, %_RINvNtCscvBHLZPbXnS_10serde_json3ser18format_escaped_strQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2_15PrettyFormatterECs8EvorvD8vmS_4ruff.exit34.i.i.i.i.i.i, %bb.ah, %.noexc44.i, %.noexc43.i, %.noexc42.i, %.noexc41.i, %.noexc40.i, %.noexc39.i, %.noexc38.i, %.noexc37.i, %.noexc36.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit9.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i81

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %.noexc86.i, %.noexc85.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc83.invoke.i, %.noexc82.i, %.noexc81.i, %.lr.ph.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc31.i, %.noexc30.i, %.noexc29.i, %.noexc28.i, %.noexc27.i, %.lr.ph.i.i.i.i44.i.i.i.i.i.i.i.i.i.i.i, %.noexc25.i, %.noexc24.i, %.noexc23.i, %.noexc22.i, %.noexc21.i, %.lr.ph.i.i.i.i3.i.i.i.i.i.i.i.i.i.i, %.noexc19.i, %.noexc18.i, %.noexc17.i, %.noexc16.i, %.noexc15.i, %.noexc14.i, %.noexc13.i, %.noexc12.i, %.noexc11.i, %.noexc10.i, %.noexc9.i, %.noexc8.i, %.noexc7.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i.invoke.i
  %lpad.loopexit11.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i81

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.noexc88.invoke.i, %_RINvXsd_NtCscvBHLZPbXnS_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i14.i.i.i.i, %bb.ae
  %lpad.loopexit.split-lp12.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i81

.loopexit.split-lp.i81:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i84
  %lpad.phi.i82 = phi { ptr, i32 } [ %lpad.loopexit.i85, %.loopexit.i84 ], [ %lpad.loopexit1.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit4.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit6.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit9.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit11.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp12.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff(ptr noalias noundef align 8 dereferenceable(24) %i.l) #33
          to label %.body88 unwind label %bb.be, !noalias !2836

bb.be:                                            ; preds = %.loopexit.split-lp.i81
  %i.hz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !2836
  unreachable

.body88:                                          ; preds = %bb.bm, %.loopexit.split-lp.i81, %bb.bf, %bb.bk
  %.pn = phi { ptr, i32 } [ %i.ih, %bb.bk ], [ %lpad.phi.i82, %.loopexit.split-lp.i81 ], [ %i.ia, %bb.bf ], [ %i.ik, %bb.bm ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6linter10LinterInfoEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.v) #33
          to label %.body unwind label %bb.aa

bb.bf:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff.exit96, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i92, %bb.ad, %bb.ac, %bb.bh
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %.body88

bb.bg:                                            ; preds = %.noexc88.invoke.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2839
  %.sroa.0118.0.copyload = load i64, ptr %i.l, align 8 ; 2 uses
  %.sroa.5.0.copyload = load ptr, ptr %i.cw, align 8 ; 4 uses
  %.sroa.7.0.copyload = load i64, ptr %i.cx, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2836
  %i.ib = icmp eq i64 %.sroa.0118.0.copyload, -1
  br i1 %i.ib, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.ic = invoke noundef nonnull ptr @_RNvXs_NtCsiXichZnxgbf_6anyhow5errorNtB6_5ErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCscvBHLZPbXnS_10serde_json5error5ErrorE4fromCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 %.sroa.5.0.copyload)
          to label %bb.cc unwind label %bb.bf

bb.bi:                                            ; preds = %bb.bg
  store i64 %.sroa.0118.0.copyload, ptr %i.u, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.sroa.7.0.copyload, ptr %.sroa.520.0..sroa_idx, align 8
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab, i64 noundef %.sroa.7.0.copyload)
          to label %.noexc90 unwind label %bb.bk

.noexc90:                                         ; preds = %bb.bi
  %i.id = load i64, ptr %.sroa.526.0..sroa_idx, align 8, !alias.scope !3030, !noundef !7 ; 3 uses
  %i.ie = icmp sgt i64 %i.id, -1
  call void @llvm.assume(i1 %i.ie)
  %.not.i = icmp eq i64 %.sroa.7.0.copyload, 0
  br i1 %.not.i, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %.noexc90
  %i.if = load ptr, ptr %.sroa.425.0..sroa_idx, align 8, !alias.scope !3030, !nonnull !7, !noundef !7
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.id
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ig, ptr readonly align 1 %.sroa.5.0.copyload, i64 %.sroa.7.0.copyload, i1 false)
  %.pre.i = load i64, ptr %.sroa.526.0..sroa_idx, align 8, !alias.scope !3030
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.ih = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u) #33
          to label %.body88 unwind label %bb.aa

bb.bl:                                            ; preds = %bb.bj, %.noexc90
  %i.ii = phi i64 [ %.pre.i, %bb.bj ], [ %i.id, %.noexc90 ]
  %i.ij = add i64 %i.ii, %.sroa.7.0.copyload
  store i64 %i.ij, ptr %.sroa.526.0..sroa_idx, align 8, !alias.scope !3030
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i92 unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ik = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body88 unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.il = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i92: ; preds = %bb.bl
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff.exit96 unwind label %bb.bf

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff.exit96: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.im = load i64, ptr %.sroa.526.0..sroa_idx, align 8, !alias.scope !3033, !noundef !7 ; 3 uses
  %i.in = icmp sgt i64 %i.im, -1
  call void @llvm.assume(i1 %i.in)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab, i64 noundef 1)
          to label %bb.bo unwind label %bb.bf

bb.bo:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff.exit96
  %i.io = load ptr, ptr %.sroa.425.0..sroa_idx, align 8, !alias.scope !3033, !nonnull !7, !noundef !7
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.im
  store i8 10, ptr %i.ip, align 1
  %i.iq = add nuw i64 %i.im, 1
  store i64 %i.iq, ptr %.sroa.526.0..sroa_idx, align 8, !alias.scope !3033
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6linter10LinterInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.bq unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ir = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8EvorvD8vmS_4ruff8commands6linter10LinterInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.body unwind label %bb.br

bb.bq:                                            ; preds = %bb.bo
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8EvorvD8vmS_4ruff8commands6linter10LinterInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6linter10LinterInfoEEB1d_.exit unwind label %.loopexit.split-lp

bb.br:                                            ; preds = %bb.bp
  %i.is = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6linter10LinterInfoEEB1d_.exit: ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.ab

end_hunk_1
