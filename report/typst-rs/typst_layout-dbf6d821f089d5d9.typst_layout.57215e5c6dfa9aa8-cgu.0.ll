Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19601
inline.NumDeleted: 9837
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_RINvNtCsloFShupyl5J_6comemo7memoize7memoizeINtNtB4_5input5MultiTINtNtB4_5track7TrackedDNtCsdaEETE4DqmE_13typst_library5WorldEL_NtNvB1p_1__12___ComemoCallERINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtB1p_7LibraryEIB11_DNtNtNtB1p_13introspection12introspector12IntrospectorEL_NtNvB3A_1__12___ComemoCallEIB11_NtNtB1p_6engine6TracedNtNvB50_1__12___ComemoCallEINtB13_10TrackedMutNtB50_4SinkNtNvB50_s_1__12___ComemoCallEIB11_NtB50_5RouteNtNvB50_s0_1__12___ComemoCallERSTRNtNtNtB1p_11foundations7content7ContentNtNtB7B_6styles10StyleChainEIB11_NtNtB3C_7locator7LocatorNtNvB8J_1__12___ComemoCallEB8a_EEINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEENCNvBaN_20layout_page_run_impl0EBaR_:bb.a
  br i1 %i.abt, label %bb.ep, label %.thread1008.i

bb.ep:                                            ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtB8_4auto5SmartINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB8_7content7ContentEEECs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abh, i64 8 ; 2 uses
  %i.abv = load ptr, ptr %i.abu, align 8, !alias.scope !11390, !noalias !11391, !noundef !41
  %.not.i.i.i458.i = icmp eq ptr %i.abv, null
  br i1 %.not.i.i.i458.i, label %.thread1011.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  invoke void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.abu)
          to label %..thread1011_crit_edge.i unwind label %bb.ed, !noalias !11207

..thread1011_crit_edge.i:                         ; preds = %bb.eq
  %.sroa.6750.8.copyload1013.pre.i = load ptr, ptr %i.w, align 8, !noalias !11392
  br label %.thread1011.i

bb.er:                                            ; preds = %.noexc460.i
  %i.abw = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvXsj_NvNtNtCsdaEETE4DqmE_13typst_library6layout4page1__NtBb_8PageElemINtNtNtNtBf_11foundations7content5field16SettablePropertyKha_E5FIELD04LOCK, i64 32) acquire, align 8, !noalias !11393
  %i.abx = icmp eq i32 %i.abw, 0
  br i1 %i.abx, label %_RNvYNtNtNtCsdaEETE4DqmE_13typst_library6layout4page8PageElemINtNtNtNtB8_11foundations7content5field16SettablePropertyKha_E11default_refCs7tN9tvpkfrg_12typst_layout.exit.i.i.i, label %bb.es, !prof !43

bb.es:                                            ; preds = %bb.er
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartINtNtCs3oUPovFnLWP_4core6option6OptionNtNtBY_7content7ContentEEE10initializeNCINvB2_11get_or_initFEBT_E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 @_RNvNCNvXsj_NvNtNtCsdaEETE4DqmE_13typst_library6layout4page1__NtBb_8PageElemINtNtNtNtBf_11foundations7content5field16SettablePropertyKha_E5FIELD04LOCK)
          to label %_RNvYNtNtNtCsdaEETE4DqmE_13typst_library6layout4page8PageElemINtNtNtNtB8_11foundations7content5field16SettablePropertyKha_E11default_refCs7tN9tvpkfrg_12typst_layout.exit.i.i.i unwind label %bb.ed, !noalias !11207

_RNvYNtNtNtCsdaEETE4DqmE_13typst_library6layout4page8PageElemINtNtNtNtB8_11foundations7content5field16SettablePropertyKha_E11default_refCs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %bb.es, %bb.er
  call void @llvm.experimental.noalias.scope.decl(metadata !11394)
  %i.aby = load i64, ptr @_RNvNCNvXsj_NvNtNtCsdaEETE4DqmE_13typst_library6layout4page1__NtBb_8PageElemINtNtNtNtBf_11foundations7content5field16SettablePropertyKha_E5FIELD04LOCK, align 8, !range !49, !alias.scope !11394, !noalias !11395, !noundef !41
  %i.abz = trunc nuw i64 %i.aby to i1
  br i1 %i.abz, label %bb.et, label %.thread1008.i

bb.et:                                            ; preds = %_RNvYNtNtNtCsdaEETE4DqmE_13typst_library6layout4page8PageElemINtNtNtNtB8_11foundations7content5field16SettablePropertyKha_E11default_refCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !11396
  %i.aca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvXsj_NvNtNtCsdaEETE4DqmE_13typst_library6layout4page1__NtBb_8PageElemINtNtNtNtBf_11foundations7content5field16SettablePropertyKha_E5FIELD04LOCK, i64 8), align 8, !alias.scope !11397, !noalias !11398, !noundef !41
  %.not.i.i.i.i459.i = icmp eq ptr %i.aca, null
  br i1 %.not.i.i.i.i459.i, label %.thread1004.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  invoke void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_RNvNCNvXsj_NvNtNtCsdaEETE4DqmE_13typst_library6layout4page1__NtBb_8PageElemINtNtNtNtBf_11foundations7content5field16SettablePropertyKha_E5FIELD04LOCK, i64 8))
          to label %..thread1004_crit_edge.i unwind label %bb.ed, !noalias !11207

..thread1004_crit_edge.i:                         ; preds = %bb.eu
  %.sroa.6750.8.copyload751.pre.i = load ptr, ptr %i.v, align 8, !noalias !11399
  br label %.thread1004.i

.thread1004.i:                                    ; preds = %..thread1004_crit_edge.i, %bb.et
  %.sroa.6750.8.copyload751.i = phi ptr [ %.sroa.6750.8.copyload751.pre.i, %..thread1004_crit_edge.i ], [ null, %bb.et ]
  %.sroa.9752.8..sroa_idx753.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9752.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9752.8..sroa_idx753.i, i64 16, i1 false), !noalias !11207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !11396
  br label %bb.ev

.thread1011.i:                                    ; preds = %..thread1011_crit_edge.i, %bb.ep
  %.sroa.6750.8.copyload1013.i = phi ptr [ %.sroa.6750.8.copyload1013.pre.i, %..thread1011_crit_edge.i ], [ null, %bb.ep ]
  %.sroa.9752.8..sroa_idx1014.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9752.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9752.8..sroa_idx1014.i, i64 16, i1 false), !noalias !11207
  br label %bb.ev

bb.ev:                                            ; preds = %.thread1011.i, %.thread1004.i
  %.sroa.6750.01007.i = phi ptr [ %.sroa.6750.8.copyload751.i, %.thread1004.i ], [ %.sroa.6750.8.copyload1013.i, %.thread1011.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !11207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !11207
  %.not250.i = icmp eq ptr %.sroa.6750.01007.i, null
  br i1 %.not250.i, label %bb.fj, label %bb.fi

.thread1008.i:                                    ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtB8_4auto5SmartINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB8_7content7ContentEEECs7tN9tvpkfrg_12typst_layout.exit.i.i, %_RNvYNtNtNtCsdaEETE4DqmE_13typst_library6layout4page8PageElemINtNtNtNtB8_11foundations7content5field16SettablePropertyKha_E11default_refCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !11207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !11207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !11207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 24, i1 false), !noalias !11207
  %i.acb = invoke fastcc { ptr, i64 } @_RNvYNtNtNtCsdaEETE4DqmE_13typst_library6layout4page8PageElemNtNtNtB8_4text4lang9LocalName13local_name_inCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.be)
          to label %bb.ew unwind label %bb.ed, !noalias !11207 ; 2 uses

bb.ew:                                            ; preds = %.thread1008.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !11207
  %i.acc = extractvalue { ptr, i64 } %i.acb, 0    ; 2 uses
  %i.acd = extractvalue { ptr, i64 } %i.acb, 1    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !11207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ace = icmp samesign ugt i64 %i.acd, 15
  br i1 %i.ace, label %.lr.ph.i.i.i.i, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.u, i8 0, i64 15, i1 false), !noalias !11400
  %.not.i.i466.i = icmp eq i64 %i.acd, 0
  br i1 %.not.i.i466.i, label %bb.fa, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.ex
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull readonly align 1 %i.acc, i64 range(i64 0, -9223372036854775808) %i.acd, i1 false), !noalias !11401
  %.0..0..0..0..0..sroa.0776.0.copyload777.pre.i = load ptr, ptr %i.u, align 8, !noalias !11402
  %.8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.8..8..8..8..8..sroa.5778.0.copyload780.pre.i = load i56, ptr %.8..8..8..8..8..sroa_idx, align 8, !noalias !11402
  %i.acf = zext i56 %.8..8..8..8..8..sroa.5778.0.copyload780.pre.i to i64
  br label %bb.fa

.lr.ph.i.i.i.i:                                   ; preds = %bb.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !11403
  store ptr inttoptr (i64 16 to ptr), ptr %i.t, align 8, !noalias !11403
  %i.acg = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store i64 0, ptr %i.acg, align 8, !noalias !11403
  call void @llvm.experimental.noalias.scope.decl(metadata !11404)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.t, i64 noundef range(i64 0, -9223372036854775808) %i.acd)
          to label %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs7tN9tvpkfrg_12typst_layout.exit.i.i unwind label %bb.ey, !noalias !11403

bb.ey:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ach = landingpad { ptr, i32 }
          cleanup
  %.val.i.i467.i = load ptr, ptr %i.t, align 8, !noalias !11403, !nonnull !41, !noundef !41
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs7tN9tvpkfrg_12typst_layout(ptr nonnull %.val.i.i467.i) #54
          to label %.body.i unwind label %bb.ez, !noalias !11403

bb.ez:                                            ; preds = %bb.ey
  %i.aci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !11403
  unreachable

_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.acj = load ptr, ptr %i.t, align 8, !alias.scope !11404, !noalias !11405, !nonnull !41, !noundef !41 ; 2 uses
  %.promoted.i.i.i.i = load i64, ptr %i.acg, align 8, !alias.scope !11404, !noalias !11405 ; 2 uses
  %scevgep.i.i.i.i = getelementptr nuw i8, ptr %i.acj, i64 %.promoted.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %scevgep.i.i.i.i, ptr nonnull readonly align 1 %i.acc, i64 range(i64 0, -9223372036854775808) %i.acd, i1 false), !noalias !11406
  %i.ack = add i64 %.promoted.i.i.i.i, %i.acd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !11403
  br label %bb.fb

bb.fa:                                            ; preds = %.lr.ph.preheader.i.i.i, %bb.ex
  %.8..8..sroa.5778.0.copyload780.i = phi i64 [ %i.acf, %.lr.ph.preheader.i.i.i ], [ 0, %bb.ex ]
  %.0..0..sroa.0776.0.copyload777.i = phi ptr [ %.0..0..0..0..0..sroa.0776.0.copyload777.pre.i, %.lr.ph.preheader.i.i.i ], [ null, %bb.ex ]
  %.sroa.5778.15.insert.ext.i = shl nuw nsw i64 %i.acd, 56
  %.sroa.5778.15.insert.shift.i = or disjoint i64 %.8..8..sroa.5778.0.copyload780.i, %.sroa.5778.15.insert.ext.i
  %.sroa.5778.15.insert.insert.i = or disjoint i64 %.sroa.5778.15.insert.shift.i, -9223372036854775808
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.sroa.5778.0.i = phi i64 [ %i.ack, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.sroa.5778.15.insert.insert.i, %bb.fa ]
  %.sroa.0776.0.i = phi ptr [ %i.acj, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.0..0..sroa.0776.0.copyload777.i, %bb.fa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store ptr %.sroa.0776.0.i, ptr %i.ce, align 8, !noalias !11207
  %.sroa.4782.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i64 %.sroa.5778.0.i, ptr %.sroa.4782.0..sroa_idx.i, align 8, !noalias !11207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !11207
  invoke fastcc void @_RINvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB3_10RawContent3newNtNtB9_4text8TextElemECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.cd, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %i.ce)
          to label %bb.fc unwind label %bb.ed, !noalias !11207

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 24, i1 false), !noalias !11207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !11207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !11207
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fj, %bb.fi, %bb.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !11207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 24, i1 false), !noalias !11207
  %i.acl = invoke noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout4page1__NtB9_8PageElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 11)
          to label %.noexc470.i unwind label %bb.fk, !noalias !11207 ; 4 uses

.noexc470.i:                                      ; preds = %bb.fd
  %.not.i.i468.i = icmp eq ptr %i.acl, null
  br i1 %.not.i.i468.i, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_6layout4page8PageElemKhb_ECs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.fe

bb.fe:                                            ; preds = %.noexc470.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11407)
  %i.acm = load ptr, ptr %i.acl, align 8, !alias.scope !11407, !noalias !11408, !nonnull !41, !noundef !41 ; 3 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acl, i64 8
  %i.aco = load ptr, ptr %i.acn, align 8, !alias.scope !11407, !noalias !11408, !nonnull !41, !align !46, !noundef !41
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 40
  %i.acq = load ptr, ptr %i.acp, align 8, !invariant.load !41, !noalias !11409, !nonnull !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !11409
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 24
  %i.acs = load ptr, ptr %i.acr, align 8, !invariant.load !41, !noalias !11409, !nonnull !41
  invoke void %i.acs(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.s, ptr noundef nonnull %i.acm) #59
          to label %.noexc471.i unwind label %bb.fk, !noalias !11207, !inline_history !10769

.noexc471.i:                                      ; preds = %bb.fe
  %i.act = load i128, ptr %i.s, align 16, !noalias !11409, !noundef !41
  %i.acu = icmp eq i128 %i.act, -34500414736081123616327928396534475552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !11409
  br i1 %i.acu, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtNtBa_6layout5align17SpecificAlignmentNtB1v_10HAlignmentNtB1v_15OuterVAlignmentEECs7tN9tvpkfrg_12typst_layout.exit.i.i, label %.invoke1376.i, !prof !43

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtNtBa_6layout5align17SpecificAlignmentNtB1v_10HAlignmentNtB1v_15OuterVAlignmentEECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %.noexc471.i
  %.val.i.i = load i8, ptr %i.acm, align 1, !range !116, !noalias !11410, !noundef !41 ; 3 uses
  %i.acv = getelementptr i8, ptr %i.acm, i64 1
  %.val16.i.i = load i8, ptr %i.acv, align 1, !noalias !11410
  %i.acw = add nsw i8 %.val.i.i, -2
  %.inv.i.i.i = icmp samesign ult i8 %.val.i.i, 2
  %narrow.i.i.i = select i1 %.inv.i.i.i, i8 2, i8 %i.acw
  switch i8 %narrow.i.i.i, label %bb.ff [
    i8 0, label %_RNvXs1s_NtNtCsdaEETE4DqmE_13typst_library6layout5alignINtB6_17SpecificAlignmentNtB6_10HAlignmentNtB6_15OuterVAlignmentENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i
    i8 1, label %bb.fg
    i8 2, label %bb.fh
  ]

bb.ff:                                            ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtNtBa_6layout5align17SpecificAlignmentNtB1v_10HAlignmentNtB1v_15OuterVAlignmentEECs7tN9tvpkfrg_12typst_layout.exit.i.i
  unreachable

bb.fg:                                            ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtNtBa_6layout5align17SpecificAlignmentNtB1v_10HAlignmentNtB1v_15OuterVAlignmentEECs7tN9tvpkfrg_12typst_layout.exit.i.i
  br label %_RNvXs1s_NtNtCsdaEETE4DqmE_13typst_library6layout5alignINtB6_17SpecificAlignmentNtB6_10HAlignmentNtB6_15OuterVAlignmentENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i

bb.fh:                                            ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtNtBa_6layout5align17SpecificAlignmentNtB1v_10HAlignmentNtB1v_15OuterVAlignmentEECs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.acx = zext nneg i8 %.val.i.i to i16
  br label %_RNvXs1s_NtNtCsdaEETE4DqmE_13typst_library6layout5alignINtB6_17SpecificAlignmentNtB6_10HAlignmentNtB6_15OuterVAlignmentENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i

_RNvXs1s_NtNtCsdaEETE4DqmE_13typst_library6layout5alignINtB6_17SpecificAlignmentNtB6_10HAlignmentNtB6_15OuterVAlignmentENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.fh, %bb.fg, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtNtBa_6layout5align17SpecificAlignmentNtB1v_10HAlignmentNtB1v_15OuterVAlignmentEECs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.sroa.0.0.i17.i.i = phi i16 [ %i.acx, %bb.fh ], [ 3, %bb.fg ], [ 2, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtNtBa_6layout5align17SpecificAlignmentNtB1v_10HAlignmentNtB1v_15OuterVAlignmentEECs7tN9tvpkfrg_12typst_layout.exit.i.i ]
  %.sroa.4.0.insert.ext.i.i.i = zext nneg i8 %.val16.i.i to i16
  %.sroa.4.0.insert.shift.i.i.i = shl nuw nsw i16 %.sroa.4.0.insert.ext.i.i.i, 8
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i16 %.sroa.0.0.i17.i.i, %.sroa.4.0.insert.shift.i.i.i
  br label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_6layout4page8PageElemKhb_ECs7tN9tvpkfrg_12typst_layout.exit.i

bb.fi:                                            ; preds = %bb.ev
  store ptr %.sroa.6750.01007.i, ptr %i.db, align 8, !noalias !11207
  %.sroa.536.0..sroa_idx37.i = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.536.0..sroa_idx37.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9752.i, i64 16, i1 false), !noalias !11207
  br label %bb.fd

bb.fj:                                            ; preds = %bb.ev
  invoke void @_RNvXs0_NtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB5_7ContentNtNtCs3oUPovFnLWP_4core7default7Default7default(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.db)
          to label %bb.fd unwind label %bb.ed, !noalias !11207

.body494.i:                                       ; preds = %bb.gr, %.body693.i, %.body.i.i, %bb.fk
  %.pn321.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.acy, %bb.fk ], [ %.pn318.pn.i, %bb.gr ], [ %.pn318.pn.i, %.body693.i ]
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.db)
          to label %.body.i unwind label %bb.mf, !noalias !11207

bb.fk:                                            ; preds = %bb.oa, %bb.ih, %bb.gk, %bb.gi, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtBa_4text8TextElemKh12_ECs7tN9tvpkfrg_12typst_layout.exit.i.i, %.invoke1376.i, %bb.fn, %bb.fm, %bb.fl, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_6layout4page8PageElemKhb_ECs7tN9tvpkfrg_12typst_layout.exit.i, %bb.fe, %bb.fd
  %i.acy = landingpad { ptr, i32 }
          cleanup
  br label %.body494.i

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_6layout4page8PageElemKhb_ECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %_RNvXs1s_NtNtCsdaEETE4DqmE_13typst_library6layout5alignINtB6_17SpecificAlignmentNtB6_10HAlignmentNtB6_15OuterVAlignmentENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i, %.noexc470.i
  %.sroa.0.1.i469.i = phi i16 [ %.sroa.0.0.insert.insert.i.i.i, %_RNvXs1s_NtNtCsdaEETE4DqmE_13typst_library6layout5alignINtB6_17SpecificAlignmentNtB6_10HAlignmentNtB6_15OuterVAlignmentENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ 513, %.noexc470.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !11207
  %.sroa.0754.0.extract.trunc.i = trunc i16 %.sroa.0.1.i469.i to i8 ; 4 uses
  %.sroa.6755.0.extract.shift.i = lshr i16 %.sroa.0.1.i469.i, 8
  %.sroa.6755.0.extract.trunc.i = trunc nuw nsw i16 %.sroa.6755.0.extract.shift.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !11207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 24, i1 false), !noalias !11207
  %i.acz = invoke noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout4page1__NtB9_8PageElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 6)
          to label %.noexc477.i unwind label %bb.fk, !noalias !11207 ; 4 uses

.noexc477.i:                                      ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_6layout4page8PageElemKhb_ECs7tN9tvpkfrg_12typst_layout.exit.i
  %.not.i.i474.i = icmp eq ptr %i.acz, null
  br i1 %.not.i.i474.i, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_6layout4page8PageElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit.thread.i, label %bb.fl

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_6layout4page8PageElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit.thread.i: ; preds = %.noexc477.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !11207
  br label %bb.fm

bb.fl:                                            ; preds = %.noexc477.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11411)
  %i.ada = load ptr, ptr %i.acz, align 8, !alias.scope !11411, !noalias !11412, !nonnull !41, !noundef !41 ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acz, i64 8
  %i.adc = load ptr, ptr %i.adb, align 8, !alias.scope !11411, !noalias !11412, !nonnull !41, !align !46, !noundef !41
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 40
  %i.ade = load ptr, ptr %i.add, align 8, !invariant.load !41, !noalias !11413, !nonnull !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !11413
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 24
  %i.adg = load ptr, ptr %i.adf, align 8, !invariant.load !41, !noalias !11413, !nonnull !41
  invoke void %i.adg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.r, ptr noundef nonnull %i.ada) #59
          to label %.noexc478.i unwind label %bb.fk, !noalias !11207, !inline_history !10776

.noexc478.i:                                      ; preds = %bb.fl
  %i.adh = load i128, ptr %i.r, align 16, !noalias !11413, !noundef !41
  %i.adi = icmp eq i128 %i.adh, -19819815723326362917546619462651132976
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !11413
  br i1 %i.adi, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_6layout4page8PageElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit.i, label %.invoke1376.i, !prof !43

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_6layout4page8PageElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %.noexc478.i
  %.val.i475.i = load i8, ptr %i.ada, align 1, !range !48, !noalias !11414, !noundef !41 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !11207
  %.not251.i = icmp eq i8 %.val.i475.i, 2
  br i1 %.not251.i, label %bb.fm, label %bb.fp

bb.fm:                                            ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_6layout4page8PageElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit.i, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_6layout4page8PageElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !11415
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dm, i64 24, i1 false), !noalias !11207
  %i.adj = invoke noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtCsdaEETE4DqmE_13typst_library4text1__NtB9_8TextElemNtNtNtNtBb_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 18)
          to label %.noexc482.i unwind label %bb.fk, !noalias !11207 ; 4 uses

.noexc482.i:                                      ; preds = %bb.fm
  %.not.i.i.i480.i = icmp eq ptr %i.adj, null
  br i1 %.not.i.i.i480.i, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtBa_4text8TextElemKh12_ECs7tN9tvpkfrg_12typst_layout.exit.i.i, label %bb.fn

bb.fn:                                            ; preds = %.noexc482.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11416)
  %i.adk = load ptr, ptr %i.adj, align 8, !alias.scope !11416, !noalias !11417, !nonnull !41, !noundef !41 ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adj, i64 8
  %i.adm = load ptr, ptr %i.adl, align 8, !alias.scope !11416, !noalias !11417, !nonnull !41, !align !46, !noundef !41
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 40
  %i.ado = load ptr, ptr %i.adn, align 8, !invariant.load !41, !noalias !11418, !nonnull !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !11418
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 24
  %i.adq = load ptr, ptr %i.adp, align 8, !invariant.load !41, !noalias !11418, !nonnull !41
  invoke void %i.adq(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.p, ptr noundef nonnull %i.adk) #59
          to label %.noexc483.i unwind label %bb.fk, !noalias !11207, !inline_history !10785

.noexc483.i:                                      ; preds = %bb.fn
  %i.adr = load i128, ptr %i.p, align 16, !noalias !11418, !noundef !41
  %i.ads = icmp eq i128 %i.adr, -68289458443327381125253860450044341330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !11418
  br i1 %i.ads, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedNtNtBa_4text7TextDirECs7tN9tvpkfrg_12typst_layout.exit.i.i.i, label %.invoke1376.i, !prof !43

.invoke1376.i:                                    ; preds = %.noexc483.i, %.noexc478.i, %.noexc471.i
  %i.adt = phi ptr [ @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout4page1__NtB9_8PageElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, %.noexc478.i ], [ @_RNvNvXs0_NvNtCsdaEETE4DqmE_13typst_library4text1__NtB9_8TextElemNtNtNtNtBb_11foundations7content7element13NativeElement4ELEM6VTABLE, %.noexc483.i ], [ @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout4page1__NtB9_8PageElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, %.noexc471.i ]
  %i.adu = phi i8 [ 6, %.noexc478.i ], [ 18, %.noexc483.i ], [ 11, %.noexc471.i ]
  %i.adv = phi ptr [ %i.acz, %.noexc478.i ], [ %i.adj, %.noexc483.i ], [ %i.acl, %.noexc471.i ]
  invoke void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %i.adt, i8 noundef %i.adu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.adv) #57
          to label %.cont1377.i unwind label %bb.fk, !noalias !11207

.cont1377.i:                                      ; preds = %.invoke1376.i
  unreachable

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedNtNtBa_4text7TextDirECs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %.noexc483.i
  %.val.i.i481.i = load i8, ptr %i.adk, align 1, !range !117, !noalias !11419, !noundef !41
  br label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtBa_4text8TextElemKh12_ECs7tN9tvpkfrg_12typst_layout.exit.i.i

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtBa_4text8TextElemKh12_ECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedNtNtBa_4text7TextDirECs7tN9tvpkfrg_12typst_layout.exit.i.i.i, %.noexc482.i
  %.sroa.0.1.i.i.i = phi i8 [ %.val.i.i481.i, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedNtNtBa_4text7TextDirECs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ -1, %.noexc482.i ]
  %i.adw = invoke noundef i8 @_RNvXsb_NtCsdaEETE4DqmE_13typst_library4textNtB5_7TextDirNtNtNtB7_11foundations6styles7Resolve7resolve(i8 noundef %.sroa.0.1.i.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.q)
          to label %bb.fo unwind label %bb.fk, !noalias !11207

bb.fo:                                            ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtBa_4text8TextElemKh12_ECs7tN9tvpkfrg_12typst_layout.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !11415
  %i.adx = icmp ne i8 %i.adw, 0
  %i.ady = zext i1 %i.adx to i8
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_6layout4page8PageElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit.i
  %.sroa.038.0.i = phi i8 [ %i.ady, %bb.fo ], [ %.val.i475.i, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_6layout4page8PageElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !11207
  %i.adz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i450.i, i64 32 ; 2 uses
  %i.aea = load i8, ptr %i.adz, align 8, !range !91, !noalias !11207, !noundef !41 ; 3 uses
  %.not252.i = icmp eq i8 %i.aea, -1
  br i1 %.not252.i, label %bb.gm, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !11207
  call void @llvm.experimental.noalias.scope.decl(metadata !11420)
  %i.aeb = icmp eq i8 %i.aea, 2                   ; 2 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i450.i, i64 8
  %i.aed = load i64, ptr %i.aec, align 8, !alias.scope !11420, !noalias !11421 ; 4 uses
  %i.aee = icmp ugt i64 %i.aed, 1
  %narrow2.i.i = select i1 %i.aeb, i1 true, i1 %i.aee
  %.sroa.0.0.i486.i = zext i1 %narrow2.i.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !11422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !11422
  store i64 11, ptr %i.n, align 16, !noalias !11422
  %i.aef = inttoptr i64 %i.aed to ptr             ; 8 uses
  br i1 %i.aeb, label %bb.fr, label %bb.fy

bb.fr:                                            ; preds = %bb.fq
  %.val.i490.i = load i64, ptr %.sroa.0.0.i450.i, align 8, !range !95, !alias.scope !11420, !noalias !11421, !noundef !41 ; 2 uses
  switch i64 %.val.i490.i, label %default.unreachable [
    i64 0, label %bb.gj
    i64 1, label %bb.gj
    i64 2, label %bb.fs
    i64 3, label %bb.ft
    i64 4, label %bb.fu
  ]

bb.fs:                                            ; preds = %bb.fr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aef) ]
  %i.aeg = atomicrmw add ptr %i.aef, i64 1 monotonic, align 8, !noalias !11422
  %i.aeh = icmp slt i64 %i.aeg, 0
  br i1 %i.aeh, label %bb.fv, label %bb.gj

bb.ft:                                            ; preds = %bb.fr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aef) ]
  %i.aei = atomicrmw add ptr %i.aef, i64 1 monotonic, align 8, !noalias !11422
  %i.aej = icmp slt i64 %i.aei, 0
  br i1 %i.aej, label %bb.fw, label %bb.gj

bb.fu:                                            ; preds = %bb.fr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aef) ]
  %i.aek = atomicrmw add ptr %i.aef, i64 1 monotonic, align 8, !noalias !11422
  %i.ael = icmp slt i64 %i.aek, 0
  br i1 %i.ael, label %bb.fx, label %bb.gj

bb.fv:                                            ; preds = %bb.fs
  call void @llvm.trap()
  unreachable

bb.fw:                                            ; preds = %bb.ft
  call void @llvm.trap()
  unreachable

bb.fx:                                            ; preds = %bb.fu
  call void @llvm.trap()
  unreachable

bb.fy:                                            ; preds = %bb.fq
  call void @llvm.experimental.noalias.scope.decl(metadata !11423)
  %.val24.i.i.i = load ptr, ptr %.sroa.0.0.i450.i, align 8, !alias.scope !11424, !noalias !11425, !nonnull !41, !noundef !41 ; 5 uses
  %.not.i.i.i.i487.i = icmp eq ptr %.val24.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i487.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.aem = getelementptr inbounds i8, ptr %.val24.i.i.i, i64 -16
  %i.aen = atomicrmw add ptr %i.aem, i64 1 monotonic, align 8, !noalias !11426
  %i.aeo = icmp slt i64 %i.aen, 0
end_hunk_0
begin_hunk_1_@_RINvNtCsloFShupyl5J_6comemo7memoize7memoizeINtNtB4_5input5MultiTINtNtB4_5track7TrackedDNtCsdaEETE4DqmE_13typst_library5WorldEL_NtNvB1p_1__12___ComemoCallERINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtB1p_7LibraryEIB11_DNtNtNtB1p_13introspection12introspector12IntrospectorEL_NtNvB3A_1__12___ComemoCallEIB11_NtNtB1p_6engine6TracedNtNvB50_1__12___ComemoCallEINtB13_10TrackedMutNtB50_4SinkNtNvB50_s_1__12___ComemoCallEIB11_NtB50_5RouteNtNvB50_s0_1__12___ComemoCallERSTRNtNtNtB1p_11foundations7content7ContentNtNtB7B_6styles10StyleChainEIB11_NtNtB3C_7locator7LocatorNtNvB8J_1__12___ComemoCallEB8a_EEINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEENCNvBaN_20layout_page_run_impl0EBaR_:bb.a
bb.ge:                                            ; preds = %bb.gd
  %i.aew = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecTNtNtBG_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEEECs7tN9tvpkfrg_12typst_layout(ptr nonnull %.val24.i.i.i, i64 %i.aed) #54
          to label %.body.i.i unwind label %bb.gf, !noalias !11426

bb.gf:                                            ; preds = %bb.ge
  %i.aex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !11426
  unreachable

bb.gg:                                            ; preds = %bb.ga
  %i.aey = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.gg, %bb.ge
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.aey, %bb.gg ], [ %i.aew, %bb.ge ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection7counter7CounterECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 16 dereferenceable(64) %i.n) #54
          to label %.body494.i unwind label %bb.gl, !noalias !11422

bb.gh:                                            ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i, %bb.gc, %bb.gb
  %.sroa.06.0.i.i.i = phi ptr [ inttoptr (i64 16 to ptr), %bb.gb ], [ %.val26.i.i.i, %bb.gc ], [ %.val26.i.i.i, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ]
  %i.aez = ptrtoint ptr %.val24.i.i.i to i64
  %i.afa = ptrtoint ptr %.sroa.06.0.i.i.i to i64
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gj, %bb.gh
  %.sroa.02.sroa.7.0.i.i = phi i64 [ undef, %bb.gj ], [ %.val27.i.i.i, %bb.gh ]
  %.sroa.02.sroa.6.0.i.i = phi i64 [ %i.aff, %bb.gj ], [ %i.afa, %bb.gh ]
  %.sroa.02.sroa.0.0.i.i = phi i64 [ %.val.i490.i, %bb.gj ], [ %i.aez, %bb.gh ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.o, ptr noundef nonnull align 16 dereferenceable(64) %i.n, i64 64, i1 false), !noalias !11422
  %i.afb = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store i64 %.sroa.02.sroa.0.0.i.i, ptr %i.afb, align 16, !noalias !11422
  %.sroa.06.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store ptr %i.aef, ptr %.sroa.06.sroa.4.0..sroa_idx.i.i, align 8, !noalias !11422
  %.sroa.06.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store i64 %.sroa.02.sroa.6.0.i.i, ptr %.sroa.06.sroa.5.0..sroa_idx.i.i, align 16, !noalias !11422
  %.sroa.06.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  store i64 %.sroa.02.sroa.7.0.i.i, ptr %.sroa.06.sroa.6.0..sroa_idx.i.i, align 8, !noalias !11422
  %.sroa.47.0..sroa_idx.i489.i = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  store i8 %i.aea, ptr %.sroa.47.0..sroa_idx.i489.i, align 16, !noalias !11422
  %i.afc = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  store i8 %.sroa.0.0.i486.i, ptr %i.afc, align 8, !noalias !11422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !11422
  invoke fastcc void @_RINvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB3_10RawContent3newNtNtNtB9_13introspection7counter18CounterDisplayElemECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.cc, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(112) %i.o)
          to label %.noexc492.i unwind label %bb.fk, !noalias !11207

.noexc492.i:                                      ; preds = %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !11422
  %i.afd = icmp eq i8 %.sroa.0754.0.extract.trunc.i, 3
  br i1 %i.afd, label %_RNCNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages3run20layout_page_run_impl0s1_0B9_.exit.i, label %bb.gk

bb.gj:                                            ; preds = %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aef) ]
  %i.afe = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i450.i, i64 16
  %i.aff = load i64, ptr %i.afe, align 8, !range !53, !alias.scope !11420, !noalias !11421, !noundef !41
  br label %bb.gi

bb.gk:                                            ; preds = %.noexc492.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !11422
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false), !noalias !11427
  %.sroa.427.0.insert.shift.i.i = and i16 %.sroa.0.1.i469.i, -256
  %.sroa.026.0.insert.insert.i.i = or disjoint i16 %.sroa.427.0.insert.shift.i.i, 3
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB4_7Content7aligned(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cc, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m, i16 %.sroa.026.0.insert.insert.i.i)
          to label %.noexc493.i unwind label %bb.fk, !noalias !11207

.noexc493.i:                                      ; preds = %bb.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !11422
  br label %_RNCNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages3run20layout_page_run_impl0s1_0B9_.exit.i

bb.gl:                                            ; preds = %.body.i.i
  %i.afg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !11422
  unreachable

bb.gm:                                            ; preds = %bb.fp
  store ptr null, ptr %i.da, align 8, !noalias !11207
  br label %bb.gn

bb.gn:                                            ; preds = %_RNCNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages3run20layout_page_run_impl0s1_0B9_.exit.i, %bb.gm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !11207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 24, i1 false), !noalias !11207
  %i.afh = invoke noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout4page1__NtB9_8PageElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 12)
          to label %.noexc499.i unwind label %bb.gs, !noalias !11207 ; 4 uses

.noexc499.i:                                      ; preds = %bb.gn
  %.not.i.i496.i = icmp eq ptr %i.afh, null
  br i1 %.not.i.i496.i, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %.noexc499.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11428)
  %i.afi = load ptr, ptr %i.afh, align 8, !alias.scope !11428, !noalias !11429, !nonnull !41, !noundef !41 ; 2 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afh, i64 8
  %i.afk = load ptr, ptr %i.afj, align 8, !alias.scope !11428, !noalias !11429, !nonnull !41, !align !46, !noundef !41
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 40
  %i.afm = load ptr, ptr %i.afl, align 8, !invariant.load !41, !noalias !11430, !nonnull !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !11430
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 24
  %i.afo = load ptr, ptr %i.afn, align 8, !invariant.load !41, !noalias !11430, !nonnull !41
  invoke void %i.afo(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.l, ptr noundef nonnull %i.afi) #59
          to label %.noexc500.i unwind label %bb.gs, !noalias !11207, !inline_history !10798

.noexc500.i:                                      ; preds = %bb.go
  %i.afp = load i128, ptr %i.l, align 16, !noalias !11430, !noundef !41
  %i.afq = icmp eq i128 %i.afp, -13008963403131065458627679077724861446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !11430
  br i1 %i.afq, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_6layout4page8PageElemKhc_ECs7tN9tvpkfrg_12typst_layout.exit.i, label %.invoke1378.i, !prof !43

bb.gp:                                            ; preds = %.noexc499.i
  %i.afr = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvXsn_NvNtNtCsdaEETE4DqmE_13typst_library6layout4page1__NtBb_8PageElemINtNtNtNtBf_11foundations7content5field16SettablePropertyKhc_E5FIELD04LOCK, i64 32) acquire, align 8, !noalias !11431
  %i.afs = icmp eq i32 %i.afr, 0
  br i1 %i.afs, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_6layout4page8PageElemKhc_ECs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.gq, !prof !43

bb.gq:                                            ; preds = %bb.gp
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartINtNtCs3oUPovFnLWP_4core6option6OptionNtNtBY_7content7ContentEEE10initializeNCINvB2_11get_or_initFEBT_E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 @_RNvNCNvXsn_NvNtNtCsdaEETE4DqmE_13typst_library6layout4page1__NtBb_8PageElemINtNtNtNtBf_11foundations7content5field16SettablePropertyKhc_E5FIELD04LOCK)
          to label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_6layout4page8PageElemKhc_ECs7tN9tvpkfrg_12typst_layout.exit.i unwind label %bb.gs, !noalias !11207

_RNCNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages3run20layout_page_run_impl0s1_0B9_.exit.i: ; preds = %.noexc493.i, %.noexc492.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false), !noalias !11207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !11207
  br label %bb.gn

.body693.i:                                       ; preds = %bb.od, %bb.nx, %.body.i692.i, %.thread1034.i, %bb.hi, %bb.gs
  %.pn318.pn.i = phi { ptr, i32 } [ %i.avl, %bb.nx ], [ %.pn318.i, %bb.hi ], [ %i.afv, %bb.gs ], [ %i.avl, %.body.i692.i ], [ %.pn3181017.i, %bb.od ], [ %lpad.thr_comm.split-lp.i, %.thread1034.i ] ; 2 uses
  %i.aft = load ptr, ptr %i.da, align 8, !alias.scope !11432, !noalias !11207, !noundef !41
  %i.afu = icmp eq ptr %i.aft, null
  br i1 %i.afu, label %.body494.i, label %bb.gr

bb.gr:                                            ; preds = %.body693.i
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.da)
          to label %.body494.i unwind label %bb.mf, !noalias !11207

bb.gs:                                            ; preds = %bb.hc, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_6layout7columns11ColumnsElemKh1_ECs7tN9tvpkfrg_12typst_layout.exit.i, %.invoke1378.i, %bb.hb, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_6layout4page8PageElemKh7_ECs7tN9tvpkfrg_12typst_layout.exit.i, %bb.ha, %bb.gz, %bb.gv, %bb.gt, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_6layout4page8PageElemKhc_ECs7tN9tvpkfrg_12typst_layout.exit.i, %bb.gq, %bb.go, %bb.gn
  %i.afv = landingpad { ptr, i32 }
          cleanup
  br label %.body693.i

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_6layout4page8PageElemKhc_ECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.gq, %bb.gp, %.noexc500.i
  %.sroa.0.0.i498.i = phi ptr [ %i.afi, %.noexc500.i ], [ @_RNvNCNvXsn_NvNtNtCsdaEETE4DqmE_13typst_library6layout4page1__NtBb_8PageElemINtNtNtNtBf_11foundations7content5field16SettablePropertyKhc_E5FIELD04LOCK, %bb.gp ], [ @_RNvNCNvXsn_NvNtNtCsdaEETE4DqmE_13typst_library6layout4page1__NtBb_8PageElemINtNtNtNtBf_11foundations7content5field16SettablePropertyKhc_E5FIELD04LOCK, %bb.gq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !11207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !11207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 24, i1 false), !noalias !11207
  %i.afw = invoke noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ba, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout4page1__NtB9_8PageElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 14)
          to label %.noexc507.i unwind label %bb.gs, !noalias !11207 ; 4 uses

.noexc507.i:                                      ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_6layout4page8PageElemKhc_ECs7tN9tvpkfrg_12typst_layout.exit.i
  %.not.i.i504.i = icmp eq ptr %i.afw, null
  br i1 %.not.i.i504.i, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %.noexc507.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11433)
  %i.afx = load ptr, ptr %i.afw, align 8, !alias.scope !11433, !noalias !11434, !nonnull !41, !noundef !41 ; 2 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afw, i64 8
  %i.afz = load ptr, ptr %i.afy, align 8, !alias.scope !11433, !noalias !11434, !nonnull !41, !align !46, !noundef !41
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 40
  %i.agb = load ptr, ptr %i.aga, align 8, !invariant.load !41, !noalias !11435, !nonnull !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !11435
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 24
  %i.agd = load ptr, ptr %i.agc, align 8, !invariant.load !41, !noalias !11435, !nonnull !41
  invoke void %i.agd(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noundef nonnull %i.afx) #59
          to label %.noexc508.i unwind label %bb.gs, !noalias !11207, !inline_history !10807

.noexc508.i:                                      ; preds = %bb.gt
  %i.age = load i128, ptr %i.k, align 16, !noalias !11435, !noundef !41
  %i.agf = icmp eq i128 %i.age, -13008963403131065458627679077724861446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !11435
  br i1 %i.agf, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_6layout4page8PageElemKhe_ECs7tN9tvpkfrg_12typst_layout.exit.i, label %.invoke1378.i, !prof !43

bb.gu:                                            ; preds = %.noexc507.i
  %i.agg = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvXsr_NvNtNtCsdaEETE4DqmE_13typst_library6layout4page1__NtBb_8PageElemINtNtNtNtBf_11foundations7content5field16SettablePropertyKhe_E5FIELD04LOCK, i64 32) acquire, align 8, !noalias !11436
  %i.agh = icmp eq i32 %i.agg, 0
  br i1 %i.agh, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_6layout4page8PageElemKhe_ECs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.gv, !prof !43

bb.gv:                                            ; preds = %bb.gu
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartINtNtCs3oUPovFnLWP_4core6option6OptionNtNtBY_7content7ContentEEE10initializeNCINvB2_11get_or_initFEBT_E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 @_RNvNCNvXsr_NvNtNtCsdaEETE4DqmE_13typst_library6layout4page1__NtBb_8PageElemINtNtNtNtBf_11foundations7content5field16SettablePropertyKhe_E5FIELD04LOCK)
          to label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_6layout4page8PageElemKhe_ECs7tN9tvpkfrg_12typst_layout.exit.i unwind label %bb.gs, !noalias !11207

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_6layout4page8PageElemKhe_ECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.gv, %bb.gu, %.noexc508.i
  %.sroa.0.0.i506.i = phi ptr [ %i.afx, %.noexc508.i ], [ @_RNvNCNvXsr_NvNtNtCsdaEETE4DqmE_13typst_library6layout4page1__NtBb_8PageElemINtNtNtNtBf_11foundations7content5field16SettablePropertyKhe_E5FIELD04LOCK, %bb.gu ], [ @_RNvNCNvXsr_NvNtNtCsdaEETE4DqmE_13typst_library6layout4page1__NtBb_8PageElemINtNtNtNtBf_11foundations7content5field16SettablePropertyKhe_E5FIELD04LOCK, %bb.gv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !11207
  %i.agi = add nsw i8 %.sroa.0754.0.extract.trunc.i, -2
  %.inv253.i = icmp samesign ult i8 %.sroa.0754.0.extract.trunc.i, 2
  %narrow.i = select i1 %.inv253.i, i8 2, i8 %i.agi
  switch i8 %narrow.i, label %bb.gw [
    i8 0, label %bb.gz
    i8 1, label %bb.gx
    i8 2, label %bb.gy
  ]

bb.gw:                                            ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_6layout4page8PageElemKhe_ECs7tN9tvpkfrg_12typst_layout.exit.i
  unreachable

bb.gx:                                            ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_6layout4page8PageElemKhe_ECs7tN9tvpkfrg_12typst_layout.exit.i
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_6layout4page8PageElemKhe_ECs7tN9tvpkfrg_12typst_layout.exit.i
  %.sroa.0172.0.i = phi i8 [ %.sroa.6755.0.extract.trunc.i, %bb.gx ], [ %.sroa.0754.0.extract.trunc.i, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_6layout4page8PageElemKhe_ECs7tN9tvpkfrg_12typst_layout.exit.i ]
  %i.agj = icmp eq i8 %.sroa.0172.0.i, 0          ; 2 uses
  %spec.select1386.i = select i1 %i.agj, ptr %i.da, ptr @263
  %spec.select1387.i = select i1 %i.agj, ptr @263, ptr %i.da
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_6layout4page8PageElemKhe_ECs7tN9tvpkfrg_12typst_layout.exit.i
  %.sink1384.i = phi ptr [ %spec.select1386.i, %bb.gy ], [ @263, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_6layout4page8PageElemKhe_ECs7tN9tvpkfrg_12typst_layout.exit.i ]
  %.sink1381.i = phi ptr [ %spec.select1387.i, %bb.gy ], [ %i.da, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_6layout4page8PageElemKhe_ECs7tN9tvpkfrg_12typst_layout.exit.i ]
  %i.agk = load i64, ptr %.sroa.0.0.i498.i, align 8, !range !49, !noalias !11207, !noundef !41
  %i.agl = trunc nuw i64 %i.agk to i1
  %i.agm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i498.i, i64 8
  %.sroa.045.0.i = select i1 %i.agl, ptr %i.agm, ptr %.sink1384.i ; 2 uses
  %i.agn = load i64, ptr %.sroa.0.0.i506.i, align 8, !range !49, !noalias !11207, !noundef !41
  %i.ago = trunc nuw i64 %i.agn to i1
  %i.agp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i506.i, i64 8
  %.sroa.049.0.i = select i1 %i.ago, ptr %i.agp, ptr %.sink1381.i ; 2 uses
  %.sroa.5802.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !11207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !11207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !11207
  %i.agq = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.agr = load <2 x double>, ptr %i.di, align 16, !noalias !11207
  %i.ags = load <2 x double>, ptr %.sroa.5802.0..sroa_idx.i, align 16, !noalias !11207
  %i.agt = fadd <2 x double> %i.agr, %i.ags       ; 2 uses
  %i.agu = fcmp ord <2 x double> %i.agt, zeroinitializer
  %i.agv = select <2 x i1> %i.agu, <2 x double> %i.agt, <2 x double> zeroinitializer ; 4 uses
  %i.agw = fneg <2 x double> %i.agv
  %i.agx = fcmp uno <2 x double> %i.agv, zeroinitializer
  %i.agy = select <2 x i1> %i.agx, <2 x double> zeroinitializer, <2 x double> %i.agw
  %i.agz = insertelement <2 x double> poison, double %i.od, i64 0
  %i.aha = insertelement <2 x double> %i.agz, double %i.oe, i64 1
  %i.ahb = fadd <2 x double> %i.aha, %i.agy       ; 2 uses
  %i.ahc = fcmp ord <2 x double> %i.ahb, zeroinitializer
  %i.ahd = select <2 x i1> %i.ahc, <2 x double> %i.ahb, <2 x double> zeroinitializer ; 3 uses
  %i.ahe = extractelement <2 x double> %i.ahd, i64 1 ; 2 uses
  %i.ahf = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ahd) ; 2 uses
  %i.ahg = extractelement <2 x double> %i.ahf, i64 0
  %i.ahh = fcmp one double %i.ahg, +inf
  %i.ahi = extractelement <2 x double> %i.ahf, i64 1
  %i.ahj = fcmp one double %i.ahi, +inf
  store <2 x double> %i.ahd, ptr %i.agq, align 8, !noalias !11207
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.cx, i64 56
  %i.ahl = zext i1 %i.ahh to i8
  store i8 %i.ahl, ptr %i.ahk, align 8, !noalias !11207
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.cx, i64 57
  %i.ahn = zext i1 %i.ahj to i8
  store i8 %i.ahn, ptr %i.ahm, align 1, !noalias !11207
  %i.aho = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  store double %i.ahe, ptr %i.aho, align 8, !noalias !11207
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ahp, align 8, !noalias !11207
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store i64 0, ptr %i.ahq, align 8, !noalias !11207
  store i64 1, ptr %i.cx, align 8, !noalias !11207
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store double %i.ahe, ptr %i.ahr, align 8, !noalias !11207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !11207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 24, i1 false), !noalias !11207
  %i.ahs = invoke noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.az, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout4page1__NtB9_8PageElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 7)
          to label %.noexc515.i unwind label %bb.gs, !noalias !11207 ; 4 uses

.noexc515.i:                                      ; preds = %bb.gz
  %.not.i.i512.i = icmp eq ptr %i.ahs, null
  br i1 %.not.i.i512.i, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_6layout4page8PageElemKh7_ECs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.ha

bb.ha:                                            ; preds = %.noexc515.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11437)
  %i.aht = load ptr, ptr %i.ahs, align 8, !alias.scope !11437, !noalias !11438, !nonnull !41, !noundef !41 ; 2 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahs, i64 8
  %i.ahv = load ptr, ptr %i.ahu, align 8, !alias.scope !11437, !noalias !11438, !nonnull !41, !align !46, !noundef !41
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 40
  %i.ahx = load ptr, ptr %i.ahw, align 8, !invariant.load !41, !noalias !11439, !nonnull !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !11440
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 24
  %i.ahz = load ptr, ptr %i.ahy, align 8, !invariant.load !41, !noalias !11439, !nonnull !41
  invoke void %i.ahz(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.j, ptr noundef nonnull %i.aht) #59
          to label %.noexc516.i unwind label %bb.gs, !noalias !11207, !inline_history !10816

.noexc516.i:                                      ; preds = %bb.ha
  %i.aia = load i128, ptr %i.j, align 16, !noalias !11440, !noundef !41
  %i.aib = icmp eq i128 %i.aia, 58065238718486447011671543611546531431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11440
  br i1 %i.aib, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerojEECs7tN9tvpkfrg_12typst_layout.exit.i.i, label %.invoke1378.i, !prof !43

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerojEECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %.noexc516.i
  %.val.i513.i = load i64, ptr %i.aht, align 8, !range !53, !noalias !11441, !noundef !41
  br label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_6layout4page8PageElemKh7_ECs7tN9tvpkfrg_12typst_layout.exit.i

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_6layout4page8PageElemKh7_ECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerojEECs7tN9tvpkfrg_12typst_layout.exit.i.i, %.noexc515.i
  %.sroa.0.1.i514.i = phi i64 [ %.val.i513.i, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerojEECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ 1, %.noexc515.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !11207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !11207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 24, i1 false), !noalias !11207
  %i.aic = invoke noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout7columns1__NtB9_11ColumnsElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 1)
          to label %.noexc524.i unwind label %bb.gs, !noalias !11207 ; 4 uses

.noexc524.i:                                      ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_6layout4page8PageElemKh7_ECs7tN9tvpkfrg_12typst_layout.exit.i
  %.not.i.i518.i = icmp eq ptr %i.aic, null
  br i1 %.not.i.i518.i, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_6layout7columns11ColumnsElemKh1_ECs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.hb

bb.hb:                                            ; preds = %.noexc524.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11442)
  %i.aid = load ptr, ptr %i.aic, align 8, !alias.scope !11442, !noalias !11443, !nonnull !41, !noundef !41 ; 4 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aic, i64 8
  %i.aif = load ptr, ptr %i.aie, align 8, !alias.scope !11442, !noalias !11443, !nonnull !41, !align !46, !noundef !41
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 40
  %i.aih = load ptr, ptr %i.aig, align 8, !invariant.load !41, !noalias !11444, !nonnull !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !11445
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 24
  %i.aij = load ptr, ptr %i.aii, align 8, !invariant.load !41, !noalias !11444, !nonnull !41
  invoke void %i.aij(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.i, ptr noundef nonnull %i.aid) #59
          to label %.noexc525.i unwind label %bb.gs, !noalias !11207, !inline_history !10826

.noexc525.i:                                      ; preds = %bb.hb
  %i.aik = load i128, ptr %i.i, align 16, !noalias !11445, !noundef !41
  %i.ail = icmp eq i128 %i.aik, -21398428227233621785545879069787395029
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !11445
  br i1 %i.ail, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedNtNtNtBa_6layout3rel3RelECs7tN9tvpkfrg_12typst_layout.exit.i519.i, label %.invoke1378.i, !prof !43

.invoke1378.i:                                    ; preds = %.noexc525.i, %.noexc516.i, %.noexc508.i, %.noexc500.i
  %i.aim = phi ptr [ @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout4page1__NtB9_8PageElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, %.noexc516.i ], [ @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout4page1__NtB9_8PageElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, %.noexc508.i ], [ @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout7columns1__NtB9_11ColumnsElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, %.noexc525.i ], [ @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout4page1__NtB9_8PageElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, %.noexc500.i ]
  %i.ain = phi i8 [ 7, %.noexc516.i ], [ 14, %.noexc508.i ], [ 1, %.noexc525.i ], [ 12, %.noexc500.i ]
  %i.aio = phi ptr [ %i.ahs, %.noexc516.i ], [ %i.afw, %.noexc508.i ], [ %i.aic, %.noexc525.i ], [ %i.afh, %.noexc500.i ]
  invoke void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %i.aim, i8 noundef range(i8 0, 16) %i.ain, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aio) #57
          to label %.cont1379.i unwind label %bb.gs, !noalias !11207

.cont1379.i:                                      ; preds = %.invoke1378.i
  unreachable

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedNtNtNtBa_6layout3rel3RelECs7tN9tvpkfrg_12typst_layout.exit.i519.i: ; preds = %.noexc525.i
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aid, i64 16
  %i.aiq = load double, ptr %i.aip, align 8, !alias.scope !11446, !noalias !11447, !noundef !41
  %.val.i.i520.i = load double, ptr %i.aid, align 8, !alias.scope !11446, !noalias !11447, !noundef !41
  %i.air = getelementptr inbounds nuw i8, ptr %i.aid, i64 8
  %.val1.i.i521.i = load double, ptr %i.air, align 8, !alias.scope !11446, !noalias !11447, !noundef !41
  br label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_6layout7columns11ColumnsElemKh1_ECs7tN9tvpkfrg_12typst_layout.exit.i

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_6layout7columns11ColumnsElemKh1_ECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedNtNtNtBa_6layout3rel3RelECs7tN9tvpkfrg_12typst_layout.exit.i519.i, %.noexc524.i
  %.sroa.0756.0.i = phi double [ %.val.i.i520.i, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedNtNtNtBa_6layout3rel3RelECs7tN9tvpkfrg_12typst_layout.exit.i519.i ], [ 0.000000e+00, %.noexc524.i ]
  %.sroa.7758.0.i = phi double [ %i.aiq, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedNtNtNtBa_6layout3rel3RelECs7tN9tvpkfrg_12typst_layout.exit.i519.i ], [ 4.000000e-02, %.noexc524.i ]
  %.sroa.5757.0.i = phi double [ %.val1.i.i521.i, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedNtNtNtBa_6layout3rel3RelECs7tN9tvpkfrg_12typst_layout.exit.i519.i ], [ 0.000000e+00, %.noexc524.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !11207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !11207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 24, i1 false), !noalias !11207
  %i.ais = invoke noundef double @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB5_6LengthNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %.sroa.0756.0.i, double noundef %.sroa.5757.0.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ax)
          to label %bb.hc unwind label %bb.gs, !noalias !11207

bb.hc:                                            ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_6layout7columns11ColumnsElemKh1_ECs7tN9tvpkfrg_12typst_layout.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !11207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !11207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 24, i1 false), !noalias !11207
  invoke fastcc void @_RNvNtCs7tN9tvpkfrg_12typst_layout4flow11layout_flow(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.cy, ptr noalias nofree noundef align 8 dereferenceable(200) %i.do, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.913.0.copyload, i64 noundef %.sroa.1014.0.copyload, ptr noalias nofree noundef align 16 dereferenceable(64) %i.dp, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aw, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %i.cx, i64 noundef %.sroa.0.1.i514.i, double noundef %.sroa.7758.0.i, double noundef %i.ais, i8 noundef 0)
          to label %bb.hd unwind label %bb.gs, !noalias !11207

bb.hd:                                            ; preds = %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !11207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !11207
  %i.ait = load i64, ptr %i.cy, align 8, !range !70, !noalias !11207, !noundef !41 ; 3 uses
  %i.aiu = icmp eq i64 %i.ait, -1
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.aiw = load ptr, ptr %i.aiv, align 8, !noalias !11207 ; 7 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.aiy = load i64, ptr %i.aix, align 8, !noalias !11207 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !11207
  br i1 %i.aiu, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store ptr %i.aiw, ptr %i.aiz, align 8, !alias.scope !11208, !noalias !11448
  %i.aja = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store i64 %i.aiy, ptr %i.aja, align 8, !alias.scope !11208, !noalias !11448
  store i64 -1, ptr %i.dw, align 8, !alias.scope !11208, !noalias !11448
  br label %bb.nz

bb.hf:                                            ; preds = %bb.hd
  store i64 %i.ait, ptr %i.cz, align 8, !noalias !11207
  %.sroa.459.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.aiw, ptr %.sroa.459.0..sroa_idx.i, align 8, !noalias !11207
  %.sroa.560.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store i64 %i.aiy, ptr %.sroa.560.0..sroa_idx.i, align 8, !noalias !11207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !11207
  store ptr %i.do, ptr %i.cw, align 8, !noalias !11207
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr %i.dp, ptr %i.ajb, align 8, !noalias !11207
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store ptr %i.dm, ptr %i.ajc, align 8, !noalias !11207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !11207
  %i.ajd = icmp ult i64 %i.aiy, 192153584101141163
  call void @llvm.assume(i1 %i.ajd)
  %i.aje = mul i64 %i.aiy, 400                    ; 3 uses
  %or.cond.i.i = icmp samesign ugt i64 %i.aiy, 23058430092136939
  br i1 %or.cond.i.i, label %bb.hj, label %bb.hg, !prof !61

bb.hg:                                            ; preds = %bb.hf
  %i.ajf = icmp eq i64 %i.aje, 0
  br i1 %i.ajf, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.hg
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !11449
  %i.ajg = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.aje, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !11449 ; 2 uses
  %i.ajh = icmp eq ptr %i.ajg, null
end_hunk_1
begin_hunk_2_@_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_10ShapedText14stretchability:bb.a
  %.not6.i = icmp ugt i64 %.val7.i, %.sroa.5.0.i
  %or.cond.i = or i1 %i.c, %.not6.i
  br i1 %or.cond.i, label %bb.b, label %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit, !prof !118

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.val.i, i64 noundef %.val7.i, i64 noundef %.sroa.5.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @857) #53, !noalias !25083
  unreachable

_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit: ; preds = %bb.a
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8, !alias.scope !25083, !nonnull !41, !noundef !41
  %.idx1 = mul nuw nsw i64 %.val.i, 104
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.idx1
  %i.e = icmp samesign eq i64 %.val.i, %.val7.i
  br i1 %i.e, label %_RINvXsq_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB6_6ScalarNtNtNtNtCs3oUPovFnLWP_4core4iter6traits5accum3Sum3sumINtNtNtBY_8adapters3map3MapIB1K_INtNtNtB10_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphENCNvMs1_B2I_NtB2I_10ShapedText14stretchability0ENCINvXsa_NtNtCsdaEETE4DqmE_13typst_library6layout3absNtB4C_3AbsBS_3sumB2a_E0EEB2M_.exit, label %bb.c

bb.c:                                             ; preds = %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit
  %.idx2 = sub nuw i64 %.val7.i, %.val.i
  %gepdiff = mul i64 %.idx2, 104
  %i.f = udiv exact i64 %gepdiff, 104
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.04.0.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.q, %bb.d ] ; 2 uses
  %.sroa.02.0.i.i.i.i = phi double [ -0.000000e+00, %bb.c ], [ %i.p, %bb.d ]
  %i.g = getelementptr inbounds nuw [104 x i8], ptr %i.d, i64 %.sroa.04.0.i.i.i.i ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load <2 x double>, ptr %i.h, align 8, !alias.scope !25086
  %i.j = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.i) ; 2 uses
  %.inv.i.i.i.i.i.i = fcmp ord double %i.j, 0.000000e+00
  %spec.store.select.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i, double %i.j, double 0.000000e+00
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.l = load double, ptr %i.k, align 8, !alias.scope !25086, !noundef !41
  %i.m = fmul double %i.l, %spec.store.select.i.i.i.i.i.i ; 2 uses
  %i.n = tail call double @llvm.fabs.f64(double %i.m)
  %i.o = fcmp one double %i.n, +inf
  %spec.store.select2.i.i.i.i.i.i = select i1 %i.o, double %i.m, double 0.000000e+00
  %i.p = fadd double %.sroa.02.0.i.i.i.i, %spec.store.select2.i.i.i.i.i.i ; 2 uses
  %i.q = add nuw i64 %.sroa.04.0.i.i.i.i, 1       ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.f
  br i1 %i.r, label %_RINvXsq_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB6_6ScalarNtNtNtNtCs3oUPovFnLWP_4core4iter6traits5accum3Sum3sumINtNtNtBY_8adapters3map3MapIB1K_INtNtNtB10_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphENCNvMs1_B2I_NtB2I_10ShapedText14stretchability0ENCINvXsa_NtNtCsdaEETE4DqmE_13typst_library6layout3absNtB4C_3AbsBS_3sumB2a_E0EEB2M_.exit, label %bb.d

_RINvXsq_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB6_6ScalarNtNtNtNtCs3oUPovFnLWP_4core4iter6traits5accum3Sum3sumINtNtNtBY_8adapters3map3MapIB1K_INtNtNtB10_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphENCNvMs1_B2I_NtB2I_10ShapedText14stretchability0ENCINvXsa_NtNtCsdaEETE4DqmE_13typst_library6layout3absNtB4C_3AbsBS_3sumB2a_E0EEB2M_.exit: ; preds = %bb.d, %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit
  %.sroa.0.0.i.i.i.i = phi double [ -0.000000e+00, %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit ], [ %i.p, %bb.d ] ; 2 uses
  %.inv.i = fcmp ord double %.sroa.0.0.i.i.i.i, 0.000000e+00
  %spec.store.select.i = select i1 %.inv.i, double %.sroa.0.0.i.i.i.i, double 0.000000e+00
  ret double %spec.store.select.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_10ShapedText18find_safe_to_break(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 101
  %i.b = load i8, ptr %i.a, align 1, !range !116, !noundef !41 ; 2 uses
  %switch.idx.cast = trunc i8 %i.b to i1          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25099)
  %.sroa.5.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.i = load i64, ptr %.sroa.5.0.in.i, align 8, !alias.scope !25099, !noundef !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load i64, ptr %i.c, align 8, !alias.scope !25100, !noundef !41 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val7.i = load i64, ptr %i.d, align 8, !alias.scope !25101, !noundef !41 ; 4 uses
  %i.e = icmp ult i64 %.val7.i, %.val.i
  %.not6.i = icmp ugt i64 %.val7.i, %.sroa.5.0.i
  %or.cond.i = or i1 %i.e, %.not6.i
  br i1 %or.cond.i, label %bb.a, label %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit, !prof !118

bb.a:                                             ; preds = %switch.lookup
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.val.i, i64 noundef %.val7.i, i64 noundef %.sroa.5.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @857) #53, !noalias !25099
  unreachable

_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit: ; preds = %switch.lookup
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8, !alias.scope !25099, !nonnull !41, !noundef !41
  %i.f = sub nuw i64 %.val7.i, %.val.i            ; 11 uses
  %i.g = getelementptr inbounds nuw [104 x i8], ptr %.sroa.0.0.i, i64 %.val.i ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load i64, ptr %i.h, align 8, !noundef !41 ; 3 uses
  %i.j = icmp eq i64 %1, %i.i
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i64, ptr %i.l, align 8, !noundef !41 ; 6 uses
  %i.n = add i64 %i.m, %i.i
  %i.o = icmp eq i64 %1, %i.n
  br i1 %i.o, label %bb.e, label %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit35

bb.c:                                             ; preds = %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit
  %spec.select = select i1 %switch.idx.cast, i64 %i.f, i64 0
  br label %.thread

_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit35: ; preds = %bb.b
  switch i64 %i.f, label %.lr.ph.i [
    i64 0, label %.thread
    i64 1, label %._crit_edge.i
  ]

.lr.ph.i:                                         ; preds = %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit35
  br i1 %switch.idx.cast, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.lr.ph.split.us.i
  %.sroa.01.020.us.i = phi i64 [ %i.w, %.lr.ph.split.us.i ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %.sroa.05.019.us.i = phi i64 [ %i.v, %.lr.ph.split.us.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.p = lshr i64 %.sroa.01.020.us.i, 1           ; 2 uses
  %i.q = add nuw nsw i64 %i.p, %.sroa.05.019.us.i ; 3 uses
  %i.r = icmp ult i64 %i.q, %i.f
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw [104 x i8], ptr %i.g, i64 %i.q
  %i.t = getelementptr i8, ptr %i.s, i64 72
  %.val13.us.i = load i64, ptr %i.t, align 8, !alias.scope !25102, !noalias !25103, !noundef !41
  %i.u = icmp ugt i64 %.val13.us.i, %1
  %i.v = select i1 %i.u, i64 %.sroa.05.019.us.i, i64 %i.q, !unpredictable !41 ; 3 uses
  %i.w = sub nuw nsw i64 %.sroa.01.020.us.i, %i.p ; 2 uses
  %i.x = icmp ugt i64 %i.w, 1
  br i1 %i.x, label %.lr.ph.split.us.i, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %.lr.ph.split.us.i
  %i.y = getelementptr inbounds nuw [104 x i8], ptr %i.g, i64 %i.v
  %i.z = getelementptr i8, ptr %i.y, i64 72
  %.val1627.i = load i64, ptr %i.z, align 8, !alias.scope !25102, !noalias !25103, !noundef !41
  %i.aa = tail call i8 @llvm.ucmp.i8.i64(i64 %.val1627.i, i64 %1)
  br label %bb.d

._crit_edge.i:                                    ; preds = %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit35
  %i.ab = getelementptr i8, ptr %i.g, i64 72
  %.val16.i = load i64, ptr %i.ab, align 8, !alias.scope !25102, !noalias !25103, !noundef !41
  %i.ac = tail call i8 @llvm.ucmp.i8.i64(i64 %.val16.i, i64 %1) ; 2 uses
  %switch.offset.i.i = sub nsw i8 0, %i.ac
  %spec.select.i = select i1 %switch.idx.cast, i8 %switch.offset.i.i, i8 %i.ac
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread32.i, %._crit_edge.i, %._crit_edge.thread.i
  %.sroa.05.0.lcssa30.i = phi i64 [ %i.al, %._crit_edge.thread32.i ], [ 0, %._crit_edge.i ], [ %i.v, %._crit_edge.thread.i ] ; 2 uses
  %i.ad = phi i8 [ %i.aq, %._crit_edge.thread32.i ], [ %spec.select.i, %._crit_edge.i ], [ %i.aa, %._crit_edge.thread.i ] ; 2 uses
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %bb.f

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.split.i
  %.sroa.01.020.i = phi i64 [ %i.am, %.lr.ph.split.i ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %.sroa.05.019.i = phi i64 [ %i.al, %.lr.ph.split.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.af = lshr i64 %.sroa.01.020.i, 1             ; 2 uses
  %i.ag = add nuw nsw i64 %i.af, %.sroa.05.019.i  ; 3 uses
  %i.ah = icmp ult i64 %i.ag, %i.f
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw [104 x i8], ptr %i.g, i64 %i.ag
  %i.aj = getelementptr i8, ptr %i.ai, i64 72
  %.val13.i = load i64, ptr %i.aj, align 8, !alias.scope !25102, !noalias !25103, !noundef !41
  %i.ak = icmp ugt i64 %1, %.val13.i
  %i.al = select i1 %i.ak, i64 %.sroa.05.019.i, i64 %i.ag, !unpredictable !41 ; 3 uses
  %i.am = sub nuw nsw i64 %.sroa.01.020.i, %i.af  ; 2 uses
  %i.an = icmp ugt i64 %i.am, 1
  br i1 %i.an, label %.lr.ph.split.i, label %._crit_edge.thread32.i

._crit_edge.thread32.i:                           ; preds = %.lr.ph.split.i
  %i.ao = getelementptr inbounds nuw [104 x i8], ptr %i.g, i64 %i.al
  %i.ap = getelementptr i8, ptr %i.ao, i64 72
  %.val1635.i = load i64, ptr %i.ap, align 8, !alias.scope !25102, !noalias !25103, !noundef !41
  %i.aq = tail call i8 @llvm.ucmp.i8.i64(i64 %1, i64 %.val1635.i)
  br label %bb.d

bb.e:                                             ; preds = %bb.b
  %spec.select25 = select i1 %switch.idx.cast, i64 0, i64 %i.f
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.ar = icmp eq i8 %i.ad, -1
  %i.as = zext i1 %i.ar to i64
  %i.at = add nuw nsw i64 %.sroa.05.0.lcssa30.i, %i.as ; 6 uses
  %i.au = icmp ule i64 %i.at, %i.f
  tail call void @llvm.assume(i1 %i.au)
  %.not23 = icmp eq i64 %i.at, 0
  br i1 %.not23, label %.thread, label %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit63

bb.g:                                             ; preds = %bb.d
  %_RNvMs9_NtCs3oUPovFnLWP_4core3numj11checked_sub._RNvMs9_NtCs3oUPovFnLWP_4core3numj11checked_add = select i1 %switch.idx.cast, ptr @_RNvMs9_NtCs3oUPovFnLWP_4core3numj11checked_add, ptr @_RNvMs9_NtCs3oUPovFnLWP_4core3numj11checked_sub
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.sroa.06.0 = phi i64 [ %.sroa.05.0.lcssa30.i, %bb.g ], [ %i.ax, %bb.i ] ; 3 uses
  %i.av = tail call { i64, i64 } %_RNvMs9_NtCs3oUPovFnLWP_4core3numj11checked_sub._RNvMs9_NtCs3oUPovFnLWP_4core3numj11checked_add(i64 noundef %.sroa.06.0, i64 noundef 1), !callees !25104 ; 2 uses
  %i.aw = extractvalue { i64, i64 } %i.av, 0
  %i.ax = extractvalue { i64, i64 } %i.av, 1      ; 3 uses
  %i.ay = trunc nuw i64 %i.aw to i1
  %i.az = icmp ult i64 %i.ax, %i.f
  %or.cond = select i1 %i.ay, i1 %i.az, i1 false
  br i1 %or.cond, label %bb.i, label %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit54

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw [104 x i8], ptr %i.g, i64 %i.ax
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !41
  %.not = icmp eq i64 %i.bc, %1
  br i1 %.not, label %bb.h, label %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit54

_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit54: ; preds = %bb.i, %bb.h
  %i.bd = getelementptr inbounds nuw [104 x i8], ptr %i.g, i64 %.sroa.06.0
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 94
  %i.bf = load i8, ptr %i.be, align 2, !range !54, !noundef !41
  %switch.idx.cast.mask = and i8 %i.b, 1
  %i.bg = zext nneg i8 %switch.idx.cast.mask to i64
  %i.bh = add nuw i64 %.sroa.06.0, %i.bg
  %.sroa.0.0 = zext nneg i8 %i.bf to i64
  br label %.thread

.thread:                                          ; preds = %bb.l, %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit35, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs7tN9tvpkfrg_12typst_layout.exit, %bb.c, %bb.e, %bb.f, %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit63, %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit54
  %.sroa.7.1 = phi i64 [ %i.bh, %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit54 ], [ %spec.select, %bb.c ], [ %spec.select25, %bb.e ], [ %i.at, %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit63 ], [ %i.f, %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit35 ], [ 0, %bb.f ], [ %i.at, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs7tN9tvpkfrg_12typst_layout.exit ], [ %i.at, %bb.l ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit54 ], [ 1, %bb.c ], [ 1, %bb.e ], [ 0, %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit63 ], [ %i.f, %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit35 ], [ 0, %bb.f ], [ %spec.select79, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs7tN9tvpkfrg_12typst_layout.exit ], [ 0, %bb.l ]
  %i.bi = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.bj = insertvalue { i64, i64 } %i.bi, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.bj

_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit63: ; preds = %bb.f
  %i.bk = getelementptr [104 x i8], ptr %i.g, i64 %i.at
  %i.bl = getelementptr i8, ptr %i.bk, i64 -24
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !41
  %i.bn = icmp eq i64 %i.bm, %1
  br i1 %i.bn, label %bb.j, label %.thread

bb.j:                                             ; preds = %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit63
  %i.bo = load ptr, ptr %i.k, align 8, !nonnull !41, !noundef !41 ; 3 uses
  %i.bp = sub i64 %1, %i.i                        ; 6 uses
  %.not.i64 = icmp ult i64 %i.bp, %i.m
  br i1 %.not.i64, label %bb.k, label %.split.i

.split.i:                                         ; preds = %bb.j
  %i.bq = icmp eq i64 %i.bp, %i.m
  br i1 %i.bq, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp
  %i.bs = load i8, ptr %i.br, align 1, !alias.scope !25105, !noundef !41
  %i.bt = icmp sgt i8 %i.bs, -65
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %.split.i
  %.not.i66 = icmp eq i64 %i.m, %i.bp
  br i1 %.not.i66, label %.thread, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs7tN9tvpkfrg_12typst_layout.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp
  %rhsc = load i8, ptr %i.bu, align 1
  %rhsc.fr = freeze i8 %rhsc
  %i.bv = icmp eq i8 %rhsc.fr, 10
  %spec.select79 = zext i1 %i.bv to i64
  br label %.thread

bb.m:                                             ; preds = %bb.k, %.split.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bo, i64 noundef %i.m, i64 noundef %i.bp, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @374) #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_10ShapedText23cjk_justifiable_at_last(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25112)
  %.sroa.5.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.i = load i64, ptr %.sroa.5.0.in.i, align 8, !alias.scope !25112, !noundef !41 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !25113, !noundef !41 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val7.i = load i64, ptr %i.b, align 8, !alias.scope !25114, !noundef !41 ; 5 uses
  %i.c = icmp ult i64 %.val7.i, %.val.i
  %.not6.i = icmp ugt i64 %.val7.i, %.sroa.5.0.i
  %or.cond.i = or i1 %i.c, %.not6.i
  br i1 %or.cond.i, label %bb.b, label %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit, !prof !118

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.val.i, i64 noundef %.val7.i, i64 noundef %.sroa.5.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @857) #53, !noalias !25112
  unreachable

_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit: ; preds = %bb.a
  %.not = icmp eq i64 %.val7.i, %.val.i
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8, !alias.scope !25112, !nonnull !41, !noundef !41
  %i.d = getelementptr [104 x i8], ptr %.sroa.0.0.i, i64 %.val7.i ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -104
  %i.f = getelementptr i8, ptr %i.d, i64 -8
  %i.g = load i8, ptr %i.f, align 8, !range !141, !noundef !41
  switch i8 %i.g, label %bb.e [
    i8 49, label %bb.d
    i8 53, label %bb.d
    i8 61, label %bb.d
  ]

bb.d:                                             ; preds = %bb.f, %bb.c, %bb.c, %bb.c, %bb.e, %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit
  %.sroa.0.0 = phi i1 [ false, %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit ], [ %i.k, %bb.f ], [ true, %bb.c ], [ true, %bb.c ], [ true, %bb.c ], [ true, %bb.e ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.d, i64 -16
  %i.i = load i32, ptr %i.h, align 8, !range !135, !noundef !41
  %i.j = icmp eq i32 %i.i, 12540
  br i1 %i.j, label %bb.d, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call noundef zeroext i1 @_RNvMs0_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_11ShapedGlyph18is_cjk_punctuation(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.e)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_10ShapedText5build(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %3, double noundef %4, double noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [176 x i8], align 16              ; 19 uses
  %i.d = alloca [176 x i8], align 16              ; 19 uses
  %.sroa.0.sroa.0.sroa.7.i.sroa.8 = alloca [24 x i8], align 8 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [72 x i8], align 8                ; 10 uses
  %i.i = alloca [64 x i8], align 8                ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.4 = alloca [48 x i8], align 8            ; 4 uses
  %.sroa.55.i.i.i.i.i = alloca [168 x i8], align 8 ; 4 uses
  %.sroa.8.i32.i.i.i.i = alloca [128 x i8], align 8 ; 4 uses
  %i.l = alloca [136 x i8], align 8               ; 4 uses
  %i.m = alloca [136 x i8], align 8               ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [8 x i8], align 8                 ; 5 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [216 x i8], align 8               ; 15 uses
  %i.t = alloca [10 x i8], align 2                ; 5 uses
  %i.u = alloca [48 x i8], align 8                ; 11 uses
  %i.v = alloca [24 x i8], align 8                ; 13 uses
  %i.w = alloca [32 x i8], align 8                ; 9 uses
  %i.x = alloca [48 x i8], align 8                ; 10 uses
  %i.y = alloca [8 x i8], align 8                 ; 6 uses
  %i.z = alloca [8 x i8], align 8                 ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [80 x i8], align 8               ; 10 uses
  %i.ac = alloca [96 x i8], align 8               ; 5 uses
  %i.ad = alloca [80 x i8], align 8               ; 23 uses
  %i.ae = alloca [8 x i8], align 8                ; 9 uses
  %i.af = alloca [1 x i8], align 1                ; 7 uses
  %i.ag = alloca [40 x i8], align 8               ; 8 uses
  %i.ah = alloca [16 x i8], align 16              ; 7 uses
  %i.ai = alloca [24 x i8], align 8               ; 8 uses
  %i.aj = alloca [24 x i8], align 8               ; 6 uses
  %i.ak = alloca [16 x i8], align 8               ; 6 uses
  %i.al = alloca [16 x i8], align 8               ; 7 uses
  %i.am = alloca [15 x i8], align 8               ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 10 uses
  %i.ao = alloca [24 x i8], align 8               ; 11 uses
  %i.ap = alloca [16 x i8], align 16              ; 4 uses
  %i.aq = alloca [16 x i8], align 16              ; 4 uses
  %i.ar = alloca [944 x i8], align 8              ; 5 uses
  %i.as = alloca [16 x i8], align 16              ; 4 uses
  %i.at = alloca [472 x i8], align 8              ; 4 uses
  %i.au = alloca [472 x i8], align 8              ; 4 uses
  %i.av = alloca [480 x i8], align 8              ; 5 uses
  %i.aw = alloca [472 x i8], align 8              ; 6 uses
  %i.ax = alloca [16 x i8], align 16              ; 4 uses
  %i.ay = alloca [472 x i8], align 8              ; 4 uses
  %i.az = alloca [472 x i8], align 8              ; 4 uses
  %i.ba = alloca [472 x i8], align 8              ; 6 uses
  %i.bb = alloca [16 x i8], align 16              ; 4 uses
  %i.bc = alloca [96 x i8], align 8               ; 4 uses
  %i.bd = alloca [80 x i8], align 8               ; 4 uses
  %i.be = alloca [96 x i8], align 8               ; 4 uses
  %i.bf = alloca [96 x i8], align 8               ; 4 uses
  %i.bg = alloca [112 x i8], align 8              ; 4 uses
  %i.bh = alloca [112 x i8], align 8              ; 5 uses
  %i.bi = alloca [24 x i8], align 8               ; 4 uses
  %i.bj = alloca [168 x i8], align 8              ; 4 uses
  %i.bk = alloca [176 x i8], align 16             ; 5 uses
  %i.bl = alloca [176 x i8], align 16             ; 5 uses
  %i.bm = alloca [80 x i8], align 8               ; 6 uses
  %i.bn = alloca [24 x i8], align 8               ; 10 uses
  %i.bo = alloca [8 x i8], align 8                ; 4 uses
  %i.bp = alloca [168 x i8], align 8              ; 18 uses
  %i.bq = alloca [8 x i8], align 8                ; 4 uses
  %i.br = alloca [96 x i8], align 8               ; 13 uses
  %i.bs = alloca [472 x i8], align 8              ; 10 uses
  %i.bt = alloca [24 x i8], align 8               ; 4 uses
  %i.bu = alloca [24 x i8], align 8               ; 4 uses
  %i.bv = alloca [48 x i8], align 8               ; 15 uses
  %i.bw = tail call { double, double } @_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_10ShapedText7measure(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1, ptr noundef nonnull align 8 %2) ; 2 uses
  %i.bx = extractvalue { double, double } %i.bw, 0 ; 3 uses
  %i.by = extractvalue { double, double } %i.bw, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25834)
  %.sroa.5.0.in.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.i.i = load i64, ptr %.sroa.5.0.in.i.i, align 8, !alias.scope !25835, !noundef !41 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i = load i64, ptr %i.bz, align 8, !alias.scope !25836, !noundef !41 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val7.i.i = load i64, ptr %i.ca, align 8, !alias.scope !25837, !noundef !41 ; 6 uses
  %i.cb = icmp ult i64 %.val7.i.i, %.val.i.i
  %.not6.i.i = icmp ugt i64 %.val7.i.i, %.sroa.5.0.i.i
  %or.cond.i.i = or i1 %i.cb, %.not6.i.i
  br i1 %or.cond.i.i, label %bb.b, label %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit.i, !prof !118

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.val.i.i, i64 noundef %.val7.i.i, i64 noundef %.sroa.5.0.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @857) #53, !noalias !25835
  unreachable
end_hunk_2
begin_hunk_3_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout6inline7prepare7prepare:bb.a
bb.na:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7collect7SegmentEEB1v_.exit
  %i.atc = icmp eq i64 %i.ata, 0
  br i1 %i.atc, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit45, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i43

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i43: ; preds = %bb.na
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !47581
  %i.atd = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.ata, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !47581 ; 2 uses
  %i.ate = icmp eq ptr %i.atd, null
  br i1 %i.ate, label %bb.nc, label %bb.nb

bb.nb:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i43
  %i.atf = ptrtoint ptr %i.atd to i64
  br label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit45

bb.nc:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7collect7SegmentEEB1v_.exit, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i43
  %.sroa.4111.0.ph = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i43 ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7collect7SegmentEEB1v_.exit ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4111.0.ph, i64 %i.ata) #57
          to label %bb.ok unwind label %bb.mz

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit45: ; preds = %bb.na, %bb.nb
  %.sroa.10113.0 = phi i64 [ %i.atf, %bb.nb ], [ 8, %bb.na ]
  %.sroa.4111.0 = phi i64 [ %4, %bb.nb ], [ 0, %bb.na ] ; 2 uses
  %i.atg = inttoptr i64 %.sroa.10113.0 to ptr     ; 2 uses
  %i.ath = icmp samesign ule i64 %4, %.sroa.4111.0
  call void @llvm.assume(i1 %i.ath)
  store i64 %.sroa.4111.0, ptr %i.ai, align 8
  %i.ati = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  store ptr %i.atg, ptr %i.ati, align 8
  %i.atj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
  store i64 0, ptr %i.atj, align 8
  %i.atk = load ptr, ptr %i.arr, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.atl = load i64, ptr %i.ars, align 8, !noundef !41 ; 2 uses
  %.idx753 = shl nuw nsw i64 %i.atl, 7
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atk, i64 %.idx753
  %i.atn = icmp eq i64 %i.atl, 0
  br i1 %i.atn, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %bb.ni, %bb.no, %bb.nq, %bb.nx
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.nd

.loopexit.split-lp:                               ; preds = %bb.oi
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.nd

bb.nd:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.val = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ato = icmp eq i64 %.val, 0
  br i1 %i.ato, label %.body39, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %.val29 = load ptr, ptr %i.ati, align 8, !nonnull !41, !noundef !41
  %i.atp = shl nuw i64 %.val, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef %i.atp, i64 noundef range(i64 1, -9223372036854775807) 8) #56
  br label %.body39

._crit_edge:                                      ; preds = %.loopexit151, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit45
  %i.atq = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.atr = load i8, ptr %i.atq, align 8, !range !54, !noundef !41
  %i.ats = trunc nuw i8 %i.atr to i1
  br i1 %i.ats, label %bb.ng, label %bb.nf

bb.nf:                                            ; preds = %_RNvNtNtCs7tN9tvpkfrg_12typst_layout6inline7prepare21add_cjk_latin_spacing.exit, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.09.sroa.0)
  %.sroa.7102.0.copyload = load i64, ptr %i.hm, align 8 ; 3 uses
  %.sroa.8.0.copyload = load ptr, ptr %i.aqy, align 8 ; 3 uses
  br i1 %.not.not.not.i.not.lcssa, label %bb.oc, label %bb.og

bb.ng:                                            ; preds = %._crit_edge
  %i.att = load ptr, ptr %i.arr, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.atu = load i64, ptr %i.ars, align 8, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !47582
  %i.atv = getelementptr inbounds nuw [128 x i8], ptr %i.att, i64 %i.atu
  %i.atw = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.att, ptr %i.atw, align 8, !noalias !47582
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.atv, ptr %.sroa.435.0..sroa_idx.i, align 8, !noalias !47582
  %.sroa.536.sroa.4.0..sroa.536.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i8 -2, ptr %.sroa.536.sroa.4.0..sroa.536.0..sroa_idx.sroa_idx.i, align 8, !noalias !47582
  %.sroa.637.sroa.4.0..sroa.637.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i8 -2, ptr %.sroa.637.sroa.4.0..sroa.637.0..sroa_idx.sroa_idx.i, align 8, !noalias !47582
  %i.atx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  br label %bb.nh

bb.nh:                                            ; preds = %bb.nl, %bb.ng
  %i.aty = phi ptr [ %i.auj, %bb.nl ], [ undef, %bb.ng ]
  %i.atz = phi ptr [ %i.auk, %bb.nl ], [ undef, %bb.ng ] ; 2 uses
  %i.aua = phi i8 [ %.pr.i, %bb.nl ], [ -3, %bb.ng ] ; 2 uses
  %.sroa.6.0.i = phi i8 [ %.sroa.7.0.i, %bb.nl ], [ -1, %bb.ng ] ; 4 uses
  %.sroa.0.0.i47 = phi ptr [ %.sroa.012.0.i, %bb.nl ], [ undef, %bb.ng ] ; 3 uses
  store i8 -3, ptr %i.atx, align 8, !noalias !47582
  %.not.i48 = icmp eq i8 %i.aua, -3
  br i1 %.not.i48, label %bb.ni, label %bb.nj

bb.ni:                                            ; preds = %bb.nh
  %i.aub = invoke fastcc { ptr, i8 } @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter7IterMutTINtNtNtBb_3ops5range5RangejENtNtNtCs7tN9tvpkfrg_12typst_layout6inline7collect4ItemEENCNvNtB2N_7prepare21add_cjk_latin_spacing0ENCB3F_s_0EINtCsj9ySjdMHKcw_6either6EitherIB1c_IB1O_NtNtB2N_7shaping11ShapedGlyphENCNCB3F_s_0s_0EINtNtNtB9_7sources4once4OnceINtNtBb_6option6OptionTQB59_IB6l_NtNtNtCsdaEETE4DqmE_13typst_library4text5shift10ScriptKindEEEEEENtNtNtB9_6traits8iterator8Iterator4nextB2P_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.atw) #59
          to label %.noexc50 unwind label %.loopexit ; 2 uses

.noexc50:                                         ; preds = %bb.ni
  %i.auc = extractvalue { ptr, i8 } %i.aub, 0
  %i.aud = extractvalue { ptr, i8 } %i.aub, 1
  %.pre.i = load ptr, ptr %i.i, align 8, !noalias !47582 ; 2 uses
  br label %bb.nj

bb.nj:                                            ; preds = %.noexc50, %bb.nh
  %i.aue = phi ptr [ %.pre.i, %.noexc50 ], [ %i.aty, %bb.nh ] ; 3 uses
  %i.auf = phi ptr [ %.pre.i, %.noexc50 ], [ %i.atz, %bb.nh ] ; 3 uses
  %.sroa.7.0.i = phi i8 [ %i.aud, %.noexc50 ], [ %i.aua, %bb.nh ] ; 6 uses
  %.sroa.012.0.i = phi ptr [ %i.auc, %.noexc50 ], [ %i.atz, %bb.nh ] ; 8 uses
  switch i8 %.sroa.7.0.i, label %bb.nk [
    i8 -2, label %_RNvNtNtCs7tN9tvpkfrg_12typst_layout6inline7prepare21add_cjk_latin_spacing.exit
    i8 -1, label %bb.nl
  ]

bb.nk:                                            ; preds = %bb.nj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.012.0.i) ]
  %i.aug = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 88 ; 2 uses
  %i.auh = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 96 ; 2 uses
  %i.aui = load i8, ptr %i.auh, align 8, !range !141, !noundef !41 ; 2 uses
  switch i8 %i.aui, label %bb.nm [
    i8 49, label %bb.nn
    i8 53, label %bb.nn
    i8 61, label %bb.nn
  ]

bb.nl:                                            ; preds = %bb.ob, %bb.oa, %bb.nz, %bb.ny, %bb.nw, %bb.nv, %bb.nj
  %i.auj = phi ptr [ %i.auv, %bb.ny ], [ %i.auv, %bb.oa ], [ %i.auv, %bb.nz ], [ %i.auv, %bb.nv ], [ %i.auv, %bb.nw ], [ %i.auv, %bb.ob ], [ %i.aue, %bb.nj ]
  %i.auk = phi ptr [ %i.auw, %bb.ny ], [ %i.auw, %bb.oa ], [ %i.auw, %bb.nz ], [ %i.auw, %bb.nv ], [ %i.auw, %bb.nw ], [ %i.auw, %bb.ob ], [ %i.auf, %bb.nj ]
  %.pr.i = load i8, ptr %i.atx, align 8, !noalias !47582
  br label %bb.nh

bb.nm:                                            ; preds = %bb.nk
  %i.aul = load i32, ptr %i.aug, align 8, !range !135, !noundef !41
  %i.aum = icmp eq i32 %i.aul, 12540
  br i1 %i.aum, label %bb.nn, label %bb.np

bb.nn:                                            ; preds = %bb.nm, %bb.nk, %bb.nk, %bb.nk
  %i.aun = load i8, ptr %i.atx, align 8, !range !155, !noalias !47582, !noundef !41 ; 2 uses
  %.not.i.i = icmp eq i8 %i.aun, -3
  br i1 %.not.i.i, label %bb.no, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_IBw_TQNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphIBw_NtNtNtCsdaEETE4DqmE_13typst_library4text5shift10ScriptKindEEEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB3p_8PeekableINtNtB3r_7flatten7FlatMapINtNtB3r_6filter6FilterINtNtNtB5_5slice4iter7IterMutTINtNtNtB5_3ops5range5RangejENtNtBW_7collect4ItemEENCNvNtBW_7prepare21add_cjk_latin_spacing0EINtCsj9ySjdMHKcw_6either6EitherINtNtB3r_3map3MapIB4Y_BS_ENCNCB6h_s_0s_0EINtNtNtB3t_7sources4once4OnceBM_EENCB6h_s_0EE4peek0EBY_.exit.i

bb.no:                                            ; preds = %bb.nn
  %i.auo = invoke fastcc { ptr, i8 } @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter7IterMutTINtNtNtBb_3ops5range5RangejENtNtNtCs7tN9tvpkfrg_12typst_layout6inline7collect4ItemEENCNvNtB2N_7prepare21add_cjk_latin_spacing0ENCB3F_s_0EINtCsj9ySjdMHKcw_6either6EitherIB1c_IB1O_NtNtB2N_7shaping11ShapedGlyphENCNCB3F_s_0s_0EINtNtNtB9_7sources4once4OnceINtNtBb_6option6OptionTQB59_IB6l_NtNtNtCsdaEETE4DqmE_13typst_library4text5shift10ScriptKindEEEEEENtNtNtB9_6traits8iterator8Iterator4nextB2P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.atw) #59
          to label %.noexc51 unwind label %.loopexit ; 2 uses

.noexc51:                                         ; preds = %bb.no
  %i.aup = extractvalue { ptr, i8 } %i.auo, 0     ; 3 uses
  %i.auq = extractvalue { ptr, i8 } %i.auo, 1     ; 2 uses
  store ptr %i.aup, ptr %i.i, align 8, !alias.scope !47583, !noalias !47584
  store i8 %i.auq, ptr %i.atx, align 8, !alias.scope !47583, !noalias !47584
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_IBw_TQNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphIBw_NtNtNtCsdaEETE4DqmE_13typst_library4text5shift10ScriptKindEEEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB3p_8PeekableINtNtB3r_7flatten7FlatMapINtNtB3r_6filter6FilterINtNtNtB5_5slice4iter7IterMutTINtNtNtB5_3ops5range5RangejENtNtBW_7collect4ItemEENCNvNtBW_7prepare21add_cjk_latin_spacing0EINtCsj9ySjdMHKcw_6either6EitherINtNtB3r_3map3MapIB4Y_BS_ENCNCB6h_s_0s_0EINtNtNtB3t_7sources4once4OnceBM_EENCB6h_s_0EE4peek0EBY_.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_IBw_TQNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphIBw_NtNtNtCsdaEETE4DqmE_13typst_library4text5shift10ScriptKindEEEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB3p_8PeekableINtNtB3r_7flatten7FlatMapINtNtB3r_6filter6FilterINtNtNtB5_5slice4iter7IterMutTINtNtNtB5_3ops5range5RangejENtNtBW_7collect4ItemEENCNvNtBW_7prepare21add_cjk_latin_spacing0EINtCsj9ySjdMHKcw_6either6EitherINtNtB3r_3map3MapIB4Y_BS_ENCNCB6h_s_0s_0EINtNtNtB3t_7sources4once4OnceBM_EENCB6h_s_0EE4peek0EBY_.exit.i: ; preds = %.noexc51, %bb.nn
  %i.aur = phi ptr [ %i.aue, %bb.nn ], [ %i.aup, %.noexc51 ] ; 6 uses
  %i.aus = phi ptr [ %i.auf, %bb.nn ], [ %i.aup, %.noexc51 ]
  %i.aut = phi i8 [ %i.aun, %bb.nn ], [ %i.auq, %.noexc51 ] ; 3 uses
  %switch.i = icmp ugt i8 %i.aut, -3
  br i1 %switch.i, label %thread-pre-split.i, label %bb.nq

thread-pre-split.i:                               ; preds = %bb.nu, %bb.nt, %bb.ns, %bb.nr, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_IBw_TQNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphIBw_NtNtNtCsdaEETE4DqmE_13typst_library4text5shift10ScriptKindEEEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB3p_8PeekableINtNtB3r_7flatten7FlatMapINtNtB3r_6filter6FilterINtNtNtB5_5slice4iter7IterMutTINtNtNtB5_3ops5range5RangejENtNtBW_7collect4ItemEENCNvNtBW_7prepare21add_cjk_latin_spacing0EINtCsj9ySjdMHKcw_6either6EitherINtNtB3r_3map3MapIB4Y_BS_ENCNCB6h_s_0s_0EINtNtNtB3t_7sources4once4OnceBM_EENCB6h_s_0EE4peek0EBY_.exit.i
  %i.auu = phi ptr [ %i.aur, %bb.nr ], [ %i.aur, %bb.nu ], [ %i.aur, %bb.ns ], [ %i.aur, %bb.nt ], [ %i.aus, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_IBw_TQNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphIBw_NtNtNtCsdaEETE4DqmE_13typst_library4text5shift10ScriptKindEEEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB3p_8PeekableINtNtB3r_7flatten7FlatMapINtNtB3r_6filter6FilterINtNtNtB5_5slice4iter7IterMutTINtNtNtB5_3ops5range5RangejENtNtBW_7collect4ItemEENCNvNtBW_7prepare21add_cjk_latin_spacing0EINtCsj9ySjdMHKcw_6either6EitherINtNtB3r_3map3MapIB4Y_BS_ENCNCB6h_s_0s_0EINtNtNtB3t_7sources4once4OnceBM_EENCB6h_s_0EE4peek0EBY_.exit.i ]
  %.pr93.i = load i8, ptr %i.auh, align 8
  br label %bb.np

bb.np:                                            ; preds = %thread-pre-split.i, %bb.nm
  %i.auv = phi ptr [ %i.aur, %thread-pre-split.i ], [ %i.aue, %bb.nm ] ; 6 uses
  %i.auw = phi ptr [ %i.auu, %thread-pre-split.i ], [ %i.auf, %bb.nm ] ; 6 uses
  %i.aux = phi i8 [ %.pr93.i, %thread-pre-split.i ], [ %i.aui, %bb.nm ]
  switch i8 %i.aux, label %bb.nv [
    i8 49, label %bb.nw
    i8 53, label %bb.nw
    i8 61, label %bb.nw
  ]

bb.nq:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_IBw_TQNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphIBw_NtNtNtCsdaEETE4DqmE_13typst_library4text5shift10ScriptKindEEEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB3p_8PeekableINtNtB3r_7flatten7FlatMapINtNtB3r_6filter6FilterINtNtNtB5_5slice4iter7IterMutTINtNtNtB5_3ops5range5RangejENtNtBW_7collect4ItemEENCNvNtBW_7prepare21add_cjk_latin_spacing0EINtCsj9ySjdMHKcw_6either6EitherINtNtB3r_3map3MapIB4Y_BS_ENCNCB6h_s_0s_0EINtNtNtB3t_7sources4once4OnceBM_EENCB6h_s_0EE4peek0EBY_.exit.i
  %i.auy = getelementptr inbounds nuw i8, ptr %i.aur, i64 88 ; 2 uses
  %i.auz = invoke noundef i8 @_RNvXsa_Cs9k8Y7U0KtaK_14unicode_scriptcNtB5_13UnicodeScript6script(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.auy)
          to label %.noexc52 unwind label %.loopexit

.noexc52:                                         ; preds = %bb.nq
  switch i8 %i.auz, label %bb.nr [
    i8 27, label %_RNvMs0_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_11ShapedGlyph19is_letter_or_number.exit.thread.i
    i8 44, label %_RNvMs0_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_11ShapedGlyph19is_letter_or_number.exit.thread.i
    i8 72, label %_RNvMs0_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_11ShapedGlyph19is_letter_or_number.exit.thread.i
  ]

bb.nr:                                            ; preds = %.noexc52
  %i.ava = load i32, ptr %i.auy, align 8, !range !135, !alias.scope !47585, !noundef !41 ; 2 uses
  %.off.i.i = add nsw i32 %i.ava, -35
  %switch.i.i = icmp ult i32 %.off.i.i, 4
  %i.avb = add nsw i32 %i.ava, -48
  %spec.select.i.i = icmp ult i32 %i.avb, 10
  %or.cond97.i = select i1 %switch.i.i, i1 true, i1 %spec.select.i.i
  br i1 %or.cond97.i, label %_RNvMs0_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_11ShapedGlyph19is_letter_or_number.exit.thread.i, label %thread-pre-split.i

_RNvMs0_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_11ShapedGlyph19is_letter_or_number.exit.thread.i: ; preds = %bb.nr, %.noexc52, %.noexc52, %.noexc52
  %.not79.i = icmp eq i8 %.sroa.7.0.i, 2
  br i1 %.not79.i, label %bb.nt, label %bb.ns

bb.ns:                                            ; preds = %_RNvMs0_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_11ShapedGlyph19is_letter_or_number.exit.thread.i
  %7 = icmp eq i8 %.sroa.7.0.i, %i.aut
  br i1 %7, label %bb.nu, label %thread-pre-split.i

bb.nt:                                            ; preds = %_RNvMs0_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_11ShapedGlyph19is_letter_or_number.exit.thread.i
  %8 = icmp eq i8 %i.aut, 2
  br i1 %8, label %bb.nu, label %thread-pre-split.i

bb.nu:                                            ; preds = %bb.nt, %bb.ns
  %i.avc = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 8 ; 2 uses
  %i.avd = load double, ptr %i.avc, align 8, !noundef !41
  %i.ave = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 64 ; 2 uses
  %i.avf = load double, ptr %i.ave, align 8, !noundef !41
  %i.avg = insertelement <2 x double> poison, double %i.avd, i64 0
  %i.avh = insertelement <2 x double> %i.avg, double %i.avf, i64 1
  %i.avi = fadd <2 x double> %i.avh, <double 2.500000e-01, double 1.250000e-01> ; 2 uses
  %i.avj = fcmp ord <2 x double> %i.avi, zeroinitializer
  %i.avk = select <2 x i1> %i.avj, <2 x double> %i.avi, <2 x double> zeroinitializer ; 2 uses
  %i.avl = extractelement <2 x double> %i.avk, i64 0
  store double %i.avl, ptr %i.avc, align 8
  %i.avm = extractelement <2 x double> %i.avk, i64 1
  store double %i.avm, ptr %i.ave, align 8
  br label %thread-pre-split.i

bb.nv:                                            ; preds = %bb.np
  %i.avn = load i32, ptr %i.aug, align 8, !range !135, !noundef !41
  %i.avo = icmp ne i32 %i.avn, 12540
  %.not82.i = icmp eq i8 %.sroa.6.0.i, -1
  %or.cond.i49 = or i1 %.not82.i, %i.avo
  br i1 %or.cond.i49, label %bb.nl, label %bb.nx

bb.nw:                                            ; preds = %bb.np, %bb.np, %bb.np
  %.not82.old.i = icmp eq i8 %.sroa.6.0.i, -1
  br i1 %.not82.old.i, label %bb.nl, label %bb.nx

bb.nx:                                            ; preds = %bb.nw, %bb.nv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i47) ]
  %i.avp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i47, i64 88 ; 2 uses
  %i.avq = invoke noundef i8 @_RNvXsa_Cs9k8Y7U0KtaK_14unicode_scriptcNtB5_13UnicodeScript6script(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.avp)
          to label %.noexc53 unwind label %.loopexit

.noexc53:                                         ; preds = %bb.nx
  switch i8 %i.avq, label %bb.ny [
    i8 27, label %_RNvMs0_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_11ShapedGlyph19is_letter_or_number.exit92.thread.i
    i8 44, label %_RNvMs0_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_11ShapedGlyph19is_letter_or_number.exit92.thread.i
    i8 72, label %_RNvMs0_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_11ShapedGlyph19is_letter_or_number.exit92.thread.i
  ]

bb.ny:                                            ; preds = %.noexc53
  %i.avr = load i32, ptr %i.avp, align 8, !range !135, !alias.scope !47586, !noundef !41 ; 2 uses
  %.off.i89.i = add nsw i32 %i.avr, -35
  %switch.i90.i = icmp ult i32 %.off.i89.i, 4
  %i.avs = add nsw i32 %i.avr, -48
  %spec.select.i91.i = icmp ult i32 %i.avs, 10
  %or.cond101.i = select i1 %switch.i90.i, i1 true, i1 %spec.select.i91.i
  br i1 %or.cond101.i, label %_RNvMs0_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_11ShapedGlyph19is_letter_or_number.exit92.thread.i, label %bb.nl

_RNvMs0_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_11ShapedGlyph19is_letter_or_number.exit92.thread.i: ; preds = %bb.ny, %.noexc53, %.noexc53, %.noexc53
  %.not83.i = icmp eq i8 %.sroa.7.0.i, 2
  br i1 %.not83.i, label %bb.oa, label %bb.nz

bb.nz:                                            ; preds = %_RNvMs0_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_11ShapedGlyph19is_letter_or_number.exit92.thread.i
  %9 = icmp eq i8 %.sroa.7.0.i, %.sroa.6.0.i
  br i1 %9, label %bb.ob, label %bb.nl

bb.oa:                                            ; preds = %_RNvMs0_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_11ShapedGlyph19is_letter_or_number.exit92.thread.i
  %10 = icmp eq i8 %.sroa.6.0.i, 2
  br i1 %10, label %bb.ob, label %bb.nl

bb.ob:                                            ; preds = %bb.oa, %bb.nz
  %i.avt = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 8 ; 2 uses
  %i.avu = load <2 x double>, ptr %i.avt, align 8
  %i.avv = fadd <2 x double> %i.avu, splat (double 2.500000e-01) ; 2 uses
  %i.avw = fcmp ord <2 x double> %i.avv, zeroinitializer
  %i.avx = select <2 x i1> %i.avw, <2 x double> %i.avv, <2 x double> zeroinitializer
  store <2 x double> %i.avx, ptr %i.avt, align 8
  %i.avy = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 56 ; 2 uses
  %i.avz = load double, ptr %i.avy, align 8, !noundef !41
  %i.awa = fadd double %i.avz, 1.250000e-01       ; 2 uses
  %.inv87.i = fcmp ord double %i.awa, 0.000000e+00
  %spec.store.select9.i = select i1 %.inv87.i, double %i.awa, double 0.000000e+00
  store double %spec.store.select9.i, ptr %i.avy, align 8
  %i.awb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i47, i64 95
  store i8 1, ptr %i.awb, align 1
  br label %bb.nl

_RNvNtNtCs7tN9tvpkfrg_12typst_layout6inline7prepare21add_cjk_latin_spacing.exit: ; preds = %bb.nj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !47582
  br label %bb.nf

bb.oc:                                            ; preds = %bb.nf
  %i.awc = icmp eq i64 %.sroa.01.i.sroa.0.0.copyload.i, 0
  br i1 %i.awc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassEECs7tN9tvpkfrg_12typst_layout.exit.i55, label %bb.od

bb.od:                                            ; preds = %bb.oc
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.01.i.sroa.4.0.copyload.i, i64 noundef %.sroa.01.i.sroa.0.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !47587
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassEECs7tN9tvpkfrg_12typst_layout.exit.i55

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassEECs7tN9tvpkfrg_12typst_layout.exit.i55: ; preds = %bb.od, %bb.oc
  %i.awd = icmp eq i64 %.sroa.7102.0.copyload, 0
  br i1 %i.awd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsgCGKXfV80i0_12unicode_bidi5level5LevelEECs7tN9tvpkfrg_12typst_layout.exit11.i, label %bb.oe

bb.oe:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassEECs7tN9tvpkfrg_12typst_layout.exit.i55
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload, i64 noundef %.sroa.7102.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !47587
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsgCGKXfV80i0_12unicode_bidi5level5LevelEECs7tN9tvpkfrg_12typst_layout.exit11.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsgCGKXfV80i0_12unicode_bidi5level5LevelEECs7tN9tvpkfrg_12typst_layout.exit11.i: ; preds = %bb.oe, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassEECs7tN9tvpkfrg_12typst_layout.exit.i55
  %i.awe = icmp eq i64 %.sroa.0.i.sroa.6.24.copyload.i, 0
  br i1 %i.awe, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgCGKXfV80i0_12unicode_bidi8BidiInfoECs7tN9tvpkfrg_12typst_layout.exit, label %bb.of

bb.of:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsgCGKXfV80i0_12unicode_bidi5level5LevelEECs7tN9tvpkfrg_12typst_layout.exit11.i
  %i.awf = mul nuw i64 %.sroa.0.i.sroa.6.24.copyload.i, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.i.sroa.8.24.copyload.i, i64 noundef %i.awf, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !47587
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgCGKXfV80i0_12unicode_bidi8BidiInfoECs7tN9tvpkfrg_12typst_layout.exit

bb.og:                                            ; preds = %bb.nf
  %.sroa.9.0.copyload = load i64, ptr %i.ara, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.512.sroa.10, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.534.0..sroa_idx.i, i64 24, i1 false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgCGKXfV80i0_12unicode_bidi8BidiInfoECs7tN9tvpkfrg_12typst_layout.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgCGKXfV80i0_12unicode_bidi8BidiInfoECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.of, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsgCGKXfV80i0_12unicode_bidi5level5LevelEECs7tN9tvpkfrg_12typst_layout.exit11.i, %bb.og
  %.sroa.512.sroa.9.0 = phi ptr [ %.sroa.0.i.sroa.8.24.copyload.i, %bb.og ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsgCGKXfV80i0_12unicode_bidi5level5LevelEECs7tN9tvpkfrg_12typst_layout.exit11.i ], [ undef, %bb.of ]
  %.sroa.512.sroa.8.0 = phi i64 [ %.sroa.0.i.sroa.6.24.copyload.i, %bb.og ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsgCGKXfV80i0_12unicode_bidi5level5LevelEECs7tN9tvpkfrg_12typst_layout.exit11.i ], [ undef, %bb.of ]
  %.sroa.512.sroa.7.0 = phi i64 [ %.sroa.9.0.copyload, %bb.og ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsgCGKXfV80i0_12unicode_bidi5level5LevelEECs7tN9tvpkfrg_12typst_layout.exit11.i ], [ undef, %bb.of ]
  %.sroa.512.sroa.6.0 = phi ptr [ %.sroa.8.0.copyload, %bb.og ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsgCGKXfV80i0_12unicode_bidi5level5LevelEECs7tN9tvpkfrg_12typst_layout.exit11.i ], [ undef, %bb.of ]
  %.sroa.512.sroa.5.0 = phi i64 [ %.sroa.7102.0.copyload, %bb.og ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsgCGKXfV80i0_12unicode_bidi5level5LevelEECs7tN9tvpkfrg_12typst_layout.exit11.i ], [ undef, %bb.of ]
  %.sroa.512.sroa.0.0 = phi ptr [ %.sroa.01.i.sroa.4.0.copyload.i, %bb.og ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsgCGKXfV80i0_12unicode_bidi5level5LevelEECs7tN9tvpkfrg_12typst_layout.exit11.i ], [ undef, %bb.of ]
  %.sroa.010.0 = phi i64 [ %.sroa.01.i.sroa.0.0.copyload.i, %bb.og ], [ -1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsgCGKXfV80i0_12unicode_bidi5level5LevelEECs7tN9tvpkfrg_12typst_layout.exit11.i ], [ -1, %bb.of ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  %.sroa.09.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.09.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  %.sroa.09.sroa.0.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.09.sroa.0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.sroa.0.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.09.sroa.0, i64 72, i1 false)
  %.sroa.09.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.010.0, ptr %.sroa.09.sroa.6.0..sroa_idx, align 8
  %.sroa.09.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.512.sroa.0.0, ptr %.sroa.09.sroa.7.0..sroa_idx, align 8
  %.sroa.09.sroa.7.sroa.4.0..sroa.09.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.01.i.sroa.5.0.copyload.i, ptr %.sroa.09.sroa.7.sroa.4.0..sroa.09.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.09.sroa.7.sroa.5.0..sroa.09.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.512.sroa.5.0, ptr %.sroa.09.sroa.7.sroa.5.0..sroa.09.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.09.sroa.7.sroa.6.0..sroa.09.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.512.sroa.6.0, ptr %.sroa.09.sroa.7.sroa.6.0..sroa.09.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.09.sroa.7.sroa.7.0..sroa.09.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.512.sroa.7.0, ptr %.sroa.09.sroa.7.sroa.7.0..sroa.09.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.09.sroa.7.sroa.8.0..sroa.09.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.512.sroa.8.0, ptr %.sroa.09.sroa.7.sroa.8.0..sroa.09.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.09.sroa.7.sroa.9.0..sroa.09.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.sroa.512.sroa.9.0, ptr %.sroa.09.sroa.7.sroa.9.0..sroa.09.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.09.sroa.7.sroa.10.0..sroa.09.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.sroa.7.sroa.10.0..sroa.09.sroa.7.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.512.sroa.10, i64 24, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %3, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %4, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %2, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.09.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.awg = load ptr, ptr %i.ao, align 8, !alias.scope !47588, !noundef !41
  %i.awh = icmp eq ptr %i.awg, null
  br i1 %i.awh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit57, label %bb.oh

bb.oh:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgCGKXfV80i0_12unicode_bidi8BidiInfoECs7tN9tvpkfrg_12typst_layout.exit
  call void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ao)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit57

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit57: ; preds = %bb.oh, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgCGKXfV80i0_12unicode_bidi8BidiInfoECs7tN9tvpkfrg_12typst_layout.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  ret void

.lr.ph:                                           ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit45, %.loopexit151
  %i.awi = phi ptr [ %i.awq, %.loopexit151 ], [ %i.atg, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit45 ]
  %i.awj = phi i64 [ %.val6.i.i.i.i, %.loopexit151 ], [ 0, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit45 ] ; 3 uses
  %.sroa.095.0752 = phi ptr [ %i.awk, %.loopexit151 ], [ %i.atk, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit45 ] ; 3 uses
  %.sroa.797.0751 = phi i64 [ %i.awl, %.loopexit151 ], [ 0, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit45 ] ; 3 uses
  %i.awk = getelementptr inbounds nuw i8, ptr %.sroa.095.0752, i64 128 ; 2 uses
  %i.awl = add nuw nsw i64 %.sroa.797.0751, 1
  %.val30 = load i64, ptr %.sroa.095.0752, align 8, !alias.scope !139, !noundef !41 ; 5 uses
  %i.awm = getelementptr i8, ptr %.sroa.095.0752, i64 8
  %.val31 = load i64, ptr %i.awm, align 8, !alias.scope !140, !noundef !41 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !47589)
  %spec.select.i.i.i60 = call i64 @llvm.usub.sat.i64(i64 %.val31, i64 %.val30) ; 2 uses
  %i.awn = load i64, ptr %i.ai, align 8, !range !45, !alias.scope !47590, !noalias !47591, !noundef !41
  %i.awo = sub i64 %i.awn, %i.awj
  %i.awp = icmp ugt i64 %spec.select.i.i.i60, %i.awo
  br i1 %i.awp, label %bb.oi, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i, !prof !44

bb.oi:                                            ; preds = %.lr.ph
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef %i.awj, i64 noundef %spec.select.i.i.i60, i64 noundef 8, i64 noundef 8)
          to label %.noexc64 unwind label %.loopexit.split-lp

.noexc64:                                         ; preds = %bb.oi
  %.pre.i63 = load i64, ptr %i.atj, align 8, !alias.scope !47589, !noalias !47591
  %.pre = load ptr, ptr %i.ati, align 8, !alias.scope !47589, !noalias !47591
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %.noexc64, %.lr.ph
  %i.awq = phi ptr [ %i.awi, %.lr.ph ], [ %.pre, %.noexc64 ] ; 3 uses
  %i.awr = phi i64 [ %i.awj, %.lr.ph ], [ %.pre.i63, %.noexc64 ] ; 4 uses
  %i.aws = icmp ult i64 %.val30, %.val31
  br i1 %i.aws, label %.lr.ph.i.i.i.i61.preheader, label %.loopexit151

.lr.ph.i.i.i.i61.preheader:                       ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i
  %i.awt = sub nuw i64 %.val31, %.val30           ; 3 uses
  %min.iters.check = icmp ult i64 %i.awt, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i61.preheader2698, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i61.preheader
  %n.vec = and i64 %i.awt, -4                     ; 4 uses
  %i.awu = add i64 %i.awr, %n.vec                 ; 2 uses
  %i.awv = add i64 %.val30, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.sroa.797.0751, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aww = getelementptr [8 x i8], ptr %i.awq, i64 %i.awr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.awx = getelementptr [8 x i8], ptr %i.aww, i64 %index ; 2 uses
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awx, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.awx, align 8, !noalias !47592
  store <2 x i64> %broadcast.splat, ptr %i.awy, align 8, !noalias !47592
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.awz = icmp eq i64 %index.next, %n.vec
  br i1 %i.awz, label %middle.block, label %vector.body, !llvm.loop !47343

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.awt, %n.vec
  br i1 %cmp.n, label %.loopexit151, label %.lr.ph.i.i.i.i61.preheader2698

.lr.ph.i.i.i.i61.preheader2698:                   ; preds = %.lr.ph.i.i.i.i61.preheader, %middle.block
  %.ph = phi i64 [ %i.awr, %.lr.ph.i.i.i.i61.preheader ], [ %i.awu, %middle.block ]
  %.sroa.0.010.i.i.i.i.ph = phi i64 [ %.val30, %.lr.ph.i.i.i.i61.preheader ], [ %i.awv, %middle.block ]
  br label %.lr.ph.i.i.i.i61

.lr.ph.i.i.i.i61:                                 ; preds = %.lr.ph.i.i.i.i61.preheader2698, %.lr.ph.i.i.i.i61
  %i.axa = phi i64 [ %i.axd, %.lr.ph.i.i.i.i61 ], [ %.ph, %.lr.ph.i.i.i.i61.preheader2698 ] ; 2 uses
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.axb, %.lr.ph.i.i.i.i61 ], [ %.sroa.0.010.i.i.i.i.ph, %.lr.ph.i.i.i.i61.preheader2698 ]
  %i.axb = add nuw i64 %.sroa.0.010.i.i.i.i, 1    ; 2 uses
  %i.axc = getelementptr inbounds nuw [8 x i8], ptr %i.awq, i64 %i.axa
  store i64 %.sroa.797.0751, ptr %i.axc, align 8, !noalias !47592
  %i.axd = add i64 %i.axa, 1                      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.axb, %.val31
  br i1 %exitcond.not.i.i.i.i, label %.loopexit151, label %.lr.ph.i.i.i.i61, !llvm.loop !47344

.loopexit151:                                     ; preds = %.lr.ph.i.i.i.i61, %middle.block, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i
  %.val6.i.i.i.i = phi i64 [ %i.awr, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i ], [ %i.awu, %middle.block ], [ %i.axd, %.lr.ph.i.i.i.i61 ] ; 2 uses
  store i64 %.val6.i.i.i.i, ptr %i.atj, align 8, !alias.scope !47589, !noalias !47593
  %i.axe = icmp eq ptr %i.awk, %i.atm
  br i1 %i.axe, label %._crit_edge, label %.lr.ph

bb.oj:                                            ; preds = %bb.mj, %bb.pu, %.body39, %.body65.thread
  %i.axf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

bb.ok:                                            ; preds = %bb.nc, %bb.mn
  unreachable

.body65.loopexit:                                 ; preds = %bb.oy
  %lpad.loopexit153 = landingpad { ptr, i32 }
          cleanup
end_hunk_3
begin_hunk_4_@_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout:bb.a
  br i1 %i.aw, label %bb.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs7tN9tvpkfrg_12typst_layout.exit

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func7ClosureEE9drop_slowB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aq) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.u, !inline_history !50151

bb.q:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50183)
  %i.ax = load ptr, ptr %i.aq, align 16, !alias.scope !50184, !nonnull !41, !noundef !41
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !50185
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs7tN9tvpkfrg_12typst_layout.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations7plugin_10PluginFuncE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aq) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.u, !inline_history !50151

bb.s:                                             ; preds = %bb.i
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !inline_history !50151
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.l, %bb.l, %bb.m, %bb.o, %bb.q, %bb.n, %bb.p, %bb.r, %bb.k, %bb.j, %bb.e, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %.lr.ph
  %i.bb = icmp eq i64 %i.o, %i.l
  br i1 %i.bb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph

bb.t:                                             ; preds = %.lr.ph55
  %i.bc = add i64 %.sroa.0.1.i54, 1               ; 2 uses
  %i.bd = icmp eq i64 %i.bc, %i.l
  br i1 %i.bd, label %.body, label %.lr.ph55

bb.u:                                             ; preds = %bb.r, %bb.p, %bb.n, %bb.k, %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body17

.body17:                                          ; preds = %bb.u, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.f, %bb.i
  %eh.lpad-body18 = phi { ptr, i32 } [ %i.ao, %bb.i ], [ %i.be, %bb.u ], [ %i.ad, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.ad, %bb.f ]
  %i.bf = icmp eq i64 %i.o, %i.l
  br i1 %i.bf, label %.body, label %.lr.ph55

.lr.ph55:                                         ; preds = %.body17, %bb.t
  %.sroa.0.1.i54 = phi i64 [ %i.bc, %bb.t ], [ %i.o, %.body17 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [128 x i8], ptr %.val4, i64 %.sroa.0.1.i54
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 16 dereferenceable(128) %i.bg) #54
          to label %bb.t unwind label %bb.v, !inline_history !0

bb.v:                                             ; preds = %.lr.ph55
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !inline_history !0
  unreachable

.body:                                            ; preds = %bb.t, %.body17
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.w

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs7tN9tvpkfrg_12typst_layout.exit, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEE4sizeCs7tN9tvpkfrg_12typst_layout.exit
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.thread: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs7tN9tvpkfrg_12typst_layout.exit
  ret void

bb.w:                                             ; preds = %.body
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body18
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val4 = load ptr, ptr %0, align 8, !nonnull !41, !noundef !41 ; 5 uses
  %.not.i = icmp eq ptr %.val4, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.val4, i64 -16 ; 2 uses
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not = icmp eq i64 %i.c, 1
  br i1 %.not, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.val4, i64 -8
  %.val.i = load i64, ptr %i.d, align 8, !noundef !41 ; 2 uses
  %i.e = icmp ult i64 %.val.i, 288230376151711744
  %i.f = shl nuw i64 %.val.i, 6
  %i.g = or disjoint i64 %i.f, 16                 ; 2 uses
  %i.h = icmp ult i64 %i.g, 9223372036854775791
  %narrow.i.i = select i1 %i.e, i1 %i.h, i1 false
  br i1 %narrow.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE4sizeCs7tN9tvpkfrg_12typst_layout.exit, label %bb.b, !prof !43

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE4sizeCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.i, align 8
  store i64 16, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !41 ; 4 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.p, %i.l
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE4sizeCs7tN9tvpkfrg_12typst_layout.exit, %bb.c
  %.sroa.0.0.i1013 = phi i64 [ %i.p, %bb.c ], [ 0, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE4sizeCs7tN9tvpkfrg_12typst_layout.exit ] ; 2 uses
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %.val4, i64 %.sroa.0.0.i1013
  %i.p = add i64 %.sroa.0.0.i1013, 1              ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 16 dereferenceable(64) %i.o)
          to label %bb.c unwind label %bb.e, !inline_history !50186

bb.d:                                             ; preds = %.lr.ph15
  %i.q = add i64 %.sroa.0.1.i14, 1                ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.l
  br i1 %i.r, label %.body, label %.lr.ph15

bb.e:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.p, %i.l
  br i1 %i.t, label %.body, label %.lr.ph15

.lr.ph15:                                         ; preds = %bb.e, %bb.d
  %.sroa.0.1.i14 = phi i64 [ %i.q, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %.val4, i64 %.sroa.0.1.i14
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 16 dereferenceable(64) %i.u) #54
          to label %bb.d unwind label %bb.f, !inline_history !50186

bb.f:                                             ; preds = %.lr.ph15
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !inline_history !50186
  unreachable

.body:                                            ; preds = %bb.d, %bb.e
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.c, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE4sizeCs7tN9tvpkfrg_12typst_layout.exit
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.thread: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECs7tN9tvpkfrg_12typst_layout.exit
  ret void

bb.g:                                             ; preds = %.body
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %.body
  resume { ptr, i32 } %i.s
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB5_5PaintNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !110, !noundef !41 ; 2 uses
  %i.b = icmp samesign ugt i32 %i.a, 1
  %i.c = zext nneg i32 %i.a to i64
  %i.d = add nsw i64 %i.c, -1
  %i.e = select i1 %i.b, i64 %i.d, i64 0          ; 2 uses
  %i.f = load i32, ptr %1, align 8, !range !110, !noundef !41 ; 2 uses
  %i.g = icmp samesign ult i32 %i.f, 2            ; 2 uses
  %i.h = zext nneg i32 %i.f to i64
  %i.i = add nsw i64 %i.h, -1
  %i.j = select i1 %i.g, i64 0, i64 %i.i
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %bb.b, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %i.e, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.ar
  ]

_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit: ; preds = %_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs7tN9tvpkfrg_12typst_layout.exit.i.i23.i, %.lr.ph.i.i21.i, %_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs7tN9tvpkfrg_12typst_layout.exit.i.i11.i, %.lr.ph.i.i9.i, %_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs7tN9tvpkfrg_12typst_layout.exit.i.i.i, %.lr.ph.i.i.i, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %_RINvMse_NtCs6xpQEr8gLsQ_11typst_utils4hashNtB6_8HashLock18get_or_insert_withNCNvMs0_B6_INtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE20load_or_compute_hash0ECs7tN9tvpkfrg_12typst_layout.exit4.i.i.i, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %.split.i31.i, %bb.am, %bb.al, %bb.ak, %.loopexit.i25.i, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %.split.i19.i, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %.loopexit.i13.i, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %.split.i.i, %bb.n, %.loopexit.i.i, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.e, %bb.a, %bb.d
  %.sroa.0.0.shrunk = phi i1 [ %i.l, %bb.d ], [ false, %bb.a ], [ false, %bb.av ], [ false, %bb.e ], [ true, %bb.i ], [ true, %bb.g ], [ false, %bb.al ], [ true, %bb.h ], [ false, %.split.i31.i ], [ %spec.select.i.i, %bb.r ], [ false, %bb.q ], [ false, %.loopexit.i.i ], [ false, %bb.n ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.p ], [ false, %.split.i.i ], [ false, %bb.ba ], [ %spec.select.i18.i, %bb.af ], [ false, %bb.ae ], [ false, %bb.w ], [ false, %bb.ab ], [ false, %bb.y ], [ false, %.loopexit.i13.i ], [ false, %bb.t ], [ false, %bb.s ], [ false, %bb.ad ], [ false, %bb.aa ], [ false, %bb.z ], [ false, %bb.x ], [ false, %.split.i19.i ], [ false, %_RINvMse_NtCs6xpQEr8gLsQ_11typst_utils4hashNtB6_8HashLock18get_or_insert_withNCNvMs0_B6_INtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE20load_or_compute_hash0ECs7tN9tvpkfrg_12typst_layout.exit4.i.i.i ], [ %spec.select.i30.i, %bb.aq ], [ false, %bb.ap ], [ false, %.loopexit.i25.i ], [ false, %bb.am ], [ false, %bb.ak ], [ false, %bb.ah ], [ false, %bb.ag ], [ false, %bb.ao ], [ false, %bb.ay ], [ false, %_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs7tN9tvpkfrg_12typst_layout.exit.i.i11.i ], [ false, %_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ true, %bb.ar ], [ %spec.select.i.i.i, %bb.bc ], [ false, %bb.bb ], [ false, %bb.aw ], [ false, %bb.az ], [ false, %bb.ax ], [ false, %.lr.ph.i.i.i ], [ false, %.lr.ph.i.i9.i ], [ false, %.lr.ph.i.i21.i ], [ false, %_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs7tN9tvpkfrg_12typst_layout.exit.i.i23.i ]
  ret i1 %.sroa.0.0.shrunk

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.g)
  %i.l = tail call fastcc noundef zeroext i1 @_RNvXsw_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_5ColorNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #59
  br label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i64, ptr %i.m, align 8, !range !52, !noundef !41 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load ptr, ptr %i.o, align 8            ; 30 uses
  %.val3 = load i64, ptr %i.n, align 8, !range !52, !noundef !41
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val4 = load ptr, ptr %i.p, align 8            ; 30 uses
  %i.q = icmp eq i64 %.val, %.val3
  br i1 %i.q, label %bb.f, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  %i.r = icmp eq ptr %.val2, %.val4               ; 3 uses
  switch i64 %.val, label %default.unreachable [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 2, label %bb.i
  ]

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  br i1 %i.r, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit, label %bb.j

bb.h:                                             ; preds = %bb.f
  br i1 %i.r, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit, label %bb.s

bb.i:                                             ; preds = %bb.f
  br i1 %i.r, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit, label %bb.ag

bb.j:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.val2, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val4, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50199)
  %i.u = getelementptr inbounds nuw i8, ptr %.val2, i64 96
  %i.v = load i8, ptr %i.u, align 8, !range !54, !alias.scope !50198, !noalias !50199, !noundef !41
  %i.w = getelementptr inbounds nuw i8, ptr %.val4, i64 96
  %i.x = load i8, ptr %i.w, align 8, !range !54, !alias.scope !50199, !noalias !50198, !noundef !41
  %i.y = icmp eq i8 %i.v, %i.x
  br i1 %i.y, label %bb.k, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %.val2, i64 80
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !50198, !noalias !50199, !noundef !41 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val4, i64 80
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !50199, !noalias !50198, !noundef !41
  %i.ad = icmp eq i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.l, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %.val4, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !50199, !noalias !50198, !nonnull !41, !noundef !41
  %i.ag = getelementptr inbounds nuw i8, ptr %.val2, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !50198, !noalias !50199, !nonnull !41, !noundef !41
  %i.ai = icmp eq i64 %i.aa, 0
  br i1 %i.ai, label %.loopexit.i.i, label %.lr.ph.i.i.i

bb.m:                                             ; preds = %_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %i.aj = add nuw i64 %.sroa.01.06.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.aj, %i.aa
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %bb.m
  %.sroa.01.06.i.i.i = phi i64 [ %i.aj, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %.sroa.01.06.i.i.i ; 2 uses
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %.sroa.01.06.i.i.i ; 2 uses
  %i.am = tail call fastcc noundef zeroext i1 @_RNvXsw_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_5ColorNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.al) #59, !noalias !50200
  br i1 %i.am, label %_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs7tN9tvpkfrg_12typst_layout.exit.i.i.i, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.ap = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ao), !noalias !50200
  br i1 %i.ap, label %bb.m, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

.loopexit.i.i:                                    ; preds = %bb.m, %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %.val2, i64 88
  %i.ar = getelementptr inbounds nuw i8, ptr %.val4, i64 88
  %i.as = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ar)
  br i1 %i.as, label %bb.n, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %.loopexit.i.i
  %i.at = load i64, ptr %i.s, align 8, !range !58, !alias.scope !50198, !noalias !50199, !noundef !41
  %i.au = icmp ne i64 %i.at, -1                   ; 2 uses
  %i.av = load i64, ptr %i.t, align 8, !range !58, !alias.scope !50199, !noalias !50198, !noundef !41
  %i.aw = icmp eq i64 %i.av, -1                   ; 3 uses
  %not..i.i = xor i1 %i.aw, true
  %i.ax = xor i1 %i.au, %i.aw
  br i1 %i.ax, label %bb.o, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  br i1 %i.au, label %.split.i.i, label %bb.p

.split.i.i:                                       ; preds = %bb.o
  tail call void @llvm.assume(i1 %not..i.i)
  %i.ay = tail call fastcc noundef zeroext i1 @_RNvXsU_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12SpotColorantNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.t) #59
  br i1 %i.ay, label %bb.q, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.assume(i1 %i.aw)
  %i.az = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %i.ba = load i8, ptr %i.az, align 8, !range !127, !alias.scope !50198, !noalias !50199, !noundef !41
  %i.bb = getelementptr inbounds nuw i8, ptr %.val4, i64 24
  %i.bc = load i8, ptr %i.bb, align 8, !range !127, !alias.scope !50199, !noalias !50198, !noundef !41
  %i.bd = icmp eq i8 %i.ba, %i.bc
  br i1 %i.bd, label %bb.q, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.p, %.split.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.val2, i64 97
  %i.bf = load i8, ptr %i.be, align 1, !range !48, !alias.scope !50198, !noalias !50199, !noundef !41 ; 2 uses
  %i.bg = icmp ne i8 %i.bf, 2                     ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val4, i64 97
  %i.bi = load i8, ptr %i.bh, align 1, !range !48, !alias.scope !50199, !noalias !50198, !noundef !41 ; 2 uses
  %i.bj = icmp ne i8 %i.bi, 2                     ; 2 uses
  %i.bk = xor i1 %i.bg, %i.bj
  br i1 %i.bk, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %brmerge.demorgan.i.i = and i1 %i.bg, %i.bj
  %brmerge.i.i = xor i1 %brmerge.demorgan.i.i, true
  %2 = icmp eq i8 %i.bf, %i.bi
  %spec.select.i.i = or i1 %2, %brmerge.i.i
  br label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %.val2, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val4, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50202)
  %i.bn = getelementptr inbounds nuw i8, ptr %.val2, i64 136
  %i.bo = load i8, ptr %i.bn, align 8, !range !54, !alias.scope !50201, !noalias !50202, !noundef !41
  %i.bp = getelementptr inbounds nuw i8, ptr %.val4, i64 136
  %i.bq = load i8, ptr %i.bp, align 8, !range !54, !alias.scope !50202, !noalias !50201, !noundef !41
  %i.br = icmp eq i8 %i.bo, %i.bq
  br i1 %i.br, label %bb.t, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %.val2, i64 80
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !50201, !noalias !50202, !noundef !41 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.val4, i64 80
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !50202, !noalias !50201, !noundef !41
  %i.bw = icmp eq i64 %i.bt, %i.bv
  br i1 %i.bw, label %bb.u, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %bb.t
  %i.bx = getelementptr inbounds nuw i8, ptr %.val4, i64 72
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !50202, !noalias !50201, !nonnull !41, !noundef !41
  %i.bz = getelementptr inbounds nuw i8, ptr %.val2, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !50201, !noalias !50202, !nonnull !41, !noundef !41
  %i.cb = icmp eq i64 %i.bt, 0
  br i1 %i.cb, label %.loopexit.i13.i, label %.lr.ph.i.i9.i

bb.v:                                             ; preds = %_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs7tN9tvpkfrg_12typst_layout.exit.i.i11.i
  %i.cc = add nuw i64 %.sroa.01.06.i.i10.i, 1     ; 2 uses
  %exitcond.not.i.i12.i = icmp eq i64 %i.cc, %i.bt
  br i1 %exitcond.not.i.i12.i, label %.loopexit.i13.i, label %.lr.ph.i.i9.i

.lr.ph.i.i9.i:                                    ; preds = %bb.u, %bb.v
  %.sroa.01.06.i.i10.i = phi i64 [ %i.cc, %bb.v ], [ 0, %bb.u ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [32 x i8], ptr %i.ca, i64 %.sroa.01.06.i.i10.i ; 2 uses
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %.sroa.01.06.i.i10.i ; 2 uses
  %i.cf = tail call fastcc noundef zeroext i1 @_RNvXsw_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_5ColorNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ce) #59, !noalias !50203
  br i1 %i.cf, label %_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs7tN9tvpkfrg_12typst_layout.exit.i.i11.i, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs7tN9tvpkfrg_12typst_layout.exit.i.i11.i: ; preds = %.lr.ph.i.i9.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.ci = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ch), !noalias !50203
  br i1 %i.ci, label %bb.v, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

.loopexit.i13.i:                                  ; preds = %bb.v, %bb.u
  %i.cj = getelementptr inbounds nuw i8, ptr %.val2, i64 88
  %i.ck = getelementptr inbounds nuw i8, ptr %.val4, i64 88
  %i.cl = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ck)
  br i1 %i.cl, label %bb.w, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.w:                                             ; preds = %.loopexit.i13.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.val2, i64 96
  %i.cn = getelementptr inbounds nuw i8, ptr %.val4, i64 96
  %i.co = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cn)
  br i1 %i.co, label %bb.x, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %bb.w
  %i.cp = getelementptr inbounds nuw i8, ptr %.val2, i64 104
  %i.cq = getelementptr inbounds nuw i8, ptr %.val4, i64 104
  %i.cr = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cq)
  br i1 %i.cr, label %bb.y, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %bb.x
  %i.cs = getelementptr inbounds nuw i8, ptr %.val2, i64 112
  %i.ct = getelementptr inbounds nuw i8, ptr %.val4, i64 112
  %i.cu = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ct)
  br i1 %i.cu, label %bb.z, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %bb.y
  %i.cv = getelementptr inbounds nuw i8, ptr %.val2, i64 120
  %i.cw = getelementptr inbounds nuw i8, ptr %.val4, i64 120
  %i.cx = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cw)
  br i1 %i.cx, label %bb.aa, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.aa:                                            ; preds = %bb.z
  %i.cy = getelementptr inbounds nuw i8, ptr %.val2, i64 128
  %i.cz = getelementptr inbounds nuw i8, ptr %.val4, i64 128
  %i.da = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cz)
  br i1 %i.da, label %bb.ab, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.aa
  %i.db = load i64, ptr %i.bl, align 8, !range !58, !alias.scope !50201, !noalias !50202, !noundef !41
  %i.dc = icmp ne i64 %i.db, -1                   ; 2 uses
  %i.dd = load i64, ptr %i.bm, align 8, !range !58, !alias.scope !50202, !noalias !50201, !noundef !41
  %i.de = icmp eq i64 %i.dd, -1                   ; 3 uses
  %not..i14.i = xor i1 %i.de, true
  %i.df = xor i1 %i.dc, %i.de
  br i1 %i.df, label %bb.ac, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.dc, label %.split.i19.i, label %bb.ad

.split.i19.i:                                     ; preds = %bb.ac
  tail call void @llvm.assume(i1 %not..i14.i)
  %i.dg = tail call fastcc noundef zeroext i1 @_RNvXsU_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12SpotColorantNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.bl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.bm) #59
  br i1 %i.dg, label %bb.ae, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.assume(i1 %i.de)
  %i.dh = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %i.di = load i8, ptr %i.dh, align 8, !range !127, !alias.scope !50201, !noalias !50202, !noundef !41
  %i.dj = getelementptr inbounds nuw i8, ptr %.val4, i64 24
  %i.dk = load i8, ptr %i.dj, align 8, !range !127, !alias.scope !50202, !noalias !50201, !noundef !41
  %i.dl = icmp eq i8 %i.di, %i.dk
  br i1 %i.dl, label %bb.ae, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.ae:                                            ; preds = %bb.ad, %.split.i19.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.val2, i64 137
  %i.dn = load i8, ptr %i.dm, align 1, !range !48, !alias.scope !50201, !noalias !50202, !noundef !41 ; 2 uses
  %i.do = icmp ne i8 %i.dn, 2                     ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.val4, i64 137
  %i.dq = load i8, ptr %i.dp, align 1, !range !48, !alias.scope !50202, !noalias !50201, !noundef !41 ; 2 uses
  %i.dr = icmp ne i8 %i.dq, 2                     ; 2 uses
  %i.ds = xor i1 %i.do, %i.dr
  br i1 %i.ds, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %brmerge.demorgan.i15.i = and i1 %i.do, %i.dr
  %brmerge.i16.i = xor i1 %brmerge.demorgan.i15.i, true
  %3 = icmp eq i8 %i.dn, %i.dq
  %spec.select.i18.i = or i1 %3, %brmerge.i16.i
  br label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.ag:                                            ; preds = %bb.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.val2, i64 16 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.val4, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50205)
  %i.dv = getelementptr inbounds nuw i8, ptr %.val2, i64 112
  %i.dw = load i8, ptr %i.dv, align 8, !range !54, !alias.scope !50204, !noalias !50205, !noundef !41
  %i.dx = getelementptr inbounds nuw i8, ptr %.val4, i64 112
  %i.dy = load i8, ptr %i.dx, align 8, !range !54, !alias.scope !50205, !noalias !50204, !noundef !41
  %i.dz = icmp eq i8 %i.dw, %i.dy
  br i1 %i.dz, label %bb.ah, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.ah:                                            ; preds = %bb.ag
  %i.ea = getelementptr inbounds nuw i8, ptr %.val2, i64 80
  %i.eb = load i64, ptr %i.ea, align 8, !alias.scope !50204, !noalias !50205, !noundef !41 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.val4, i64 80
  %i.ed = load i64, ptr %i.ec, align 8, !alias.scope !50205, !noalias !50204, !noundef !41
  %i.ee = icmp eq i64 %i.eb, %i.ed
  br i1 %i.ee, label %bb.ai, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.ai:                                            ; preds = %bb.ah
  %i.ef = getelementptr inbounds nuw i8, ptr %.val4, i64 72
  %i.eg = load ptr, ptr %i.ef, align 8, !alias.scope !50205, !noalias !50204, !nonnull !41, !noundef !41
  %i.eh = getelementptr inbounds nuw i8, ptr %.val2, i64 72
  %i.ei = load ptr, ptr %i.eh, align 8, !alias.scope !50204, !noalias !50205, !nonnull !41, !noundef !41
  %i.ej = icmp eq i64 %i.eb, 0
  br i1 %i.ej, label %.loopexit.i25.i, label %.lr.ph.i.i21.i

bb.aj:                                            ; preds = %_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs7tN9tvpkfrg_12typst_layout.exit.i.i23.i
  %i.ek = add nuw i64 %.sroa.01.06.i.i22.i, 1     ; 2 uses
  %exitcond.not.i.i24.i = icmp eq i64 %i.ek, %i.eb
  br i1 %exitcond.not.i.i24.i, label %.loopexit.i25.i, label %.lr.ph.i.i21.i

.lr.ph.i.i21.i:                                   ; preds = %bb.ai, %bb.aj
  %.sroa.01.06.i.i22.i = phi i64 [ %i.ek, %bb.aj ], [ 0, %bb.ai ] ; 3 uses
  %i.el = getelementptr inbounds nuw [32 x i8], ptr %i.ei, i64 %.sroa.01.06.i.i22.i ; 2 uses
  %i.em = getelementptr inbounds nuw [32 x i8], ptr %i.eg, i64 %.sroa.01.06.i.i22.i ; 2 uses
  %i.en = tail call fastcc noundef zeroext i1 @_RNvXsw_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_5ColorNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.el, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.em) #59, !noalias !50206
  br i1 %i.en, label %_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs7tN9tvpkfrg_12typst_layout.exit.i.i23.i, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs7tN9tvpkfrg_12typst_layout.exit.i.i23.i: ; preds = %.lr.ph.i.i21.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eq = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.eo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ep), !noalias !50206
  br i1 %i.eq, label %bb.aj, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

.loopexit.i25.i:                                  ; preds = %bb.aj, %bb.ai
  %i.er = getelementptr inbounds nuw i8, ptr %.val2, i64 88
  %i.es = getelementptr inbounds nuw i8, ptr %.val4, i64 88
  %i.et = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.er, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.es)
  br i1 %i.et, label %bb.ak, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.ak:                                            ; preds = %.loopexit.i25.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.val2, i64 96
  %i.ev = getelementptr inbounds nuw i8, ptr %.val4, i64 96
  %i.ew = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.eu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ev)
  br i1 %i.ew, label %bb.al, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.al:                                            ; preds = %bb.ak
  %i.ex = getelementptr inbounds nuw i8, ptr %.val2, i64 104
  %i.ey = getelementptr inbounds nuw i8, ptr %.val4, i64 104
  %i.ez = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ex, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ey)
  br i1 %i.ez, label %bb.am, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.am:                                            ; preds = %bb.al
  %i.fa = load i64, ptr %i.dt, align 8, !range !58, !alias.scope !50204, !noalias !50205, !noundef !41
  %i.fb = icmp ne i64 %i.fa, -1                   ; 2 uses
  %i.fc = load i64, ptr %i.du, align 8, !range !58, !alias.scope !50205, !noalias !50204, !noundef !41
  %i.fd = icmp eq i64 %i.fc, -1                   ; 3 uses
  %not..i26.i = xor i1 %i.fd, true
  %i.fe = xor i1 %i.fb, %i.fd
  br i1 %i.fe, label %bb.an, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.an:                                            ; preds = %bb.am
  br i1 %i.fb, label %.split.i31.i, label %bb.ao

.split.i31.i:                                     ; preds = %bb.an
  tail call void @llvm.assume(i1 %not..i26.i)
  %i.ff = tail call fastcc noundef zeroext i1 @_RNvXsU_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12SpotColorantNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.dt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.du) #59
  br i1 %i.ff, label %bb.ap, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.ao:                                            ; preds = %bb.an
  tail call void @llvm.assume(i1 %i.fd)
  %i.fg = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %i.fh = load i8, ptr %i.fg, align 8, !range !127, !alias.scope !50204, !noalias !50205, !noundef !41
  %i.fi = getelementptr inbounds nuw i8, ptr %.val4, i64 24
  %i.fj = load i8, ptr %i.fi, align 8, !range !127, !alias.scope !50205, !noalias !50204, !noundef !41
  %i.fk = icmp eq i8 %i.fh, %i.fj
  br i1 %i.fk, label %bb.ap, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.ap:                                            ; preds = %bb.ao, %.split.i31.i
  %i.fl = getelementptr inbounds nuw i8, ptr %.val2, i64 113
  %i.fm = load i8, ptr %i.fl, align 1, !range !48, !alias.scope !50204, !noalias !50205, !noundef !41 ; 2 uses
  %i.fn = icmp ne i8 %i.fm, 2                     ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.val4, i64 113
  %i.fp = load i8, ptr %i.fo, align 1, !range !48, !alias.scope !50205, !noalias !50204, !noundef !41 ; 2 uses
  %i.fq = icmp ne i8 %i.fp, 2                     ; 2 uses
  %i.fr = xor i1 %i.fn, %i.fq
  br i1 %i.fr, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %brmerge.demorgan.i27.i = and i1 %i.fn, %i.fq
  %brmerge.i27.i = xor i1 %brmerge.demorgan.i27.i, true
  %4 = icmp eq i8 %i.fm, %i.fp
  %spec.select.i30.i = or i1 %4, %brmerge.i27.i
  br label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.ar:                                            ; preds = %bb.b
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load ptr, ptr %i.fs, align 8, !nonnull !41, !noundef !41 ; 10 uses
  %.val6 = load ptr, ptr %i.ft, align 8, !nonnull !41, !noundef !41 ; 10 uses
  %i.fu = icmp eq ptr %.val5, %.val6
  br i1 %i.fu, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fv = getelementptr inbounds nuw i8, ptr %.val5, i64 16 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.val6, i64 16 ; 2 uses
  %i.fx = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6411atomic_load4FUNC monotonic, align 8, !nonnull !41, !noundef !41
  %i.fy = tail call noundef i128 %i.fx(ptr noundef nonnull align 16 %i.fv), !inline_history !50196 ; 2 uses
  %i.fz = icmp eq i128 %i.fy, 0
  br i1 %i.fz, label %bb.at, label %_RINvMse_NtCs6xpQEr8gLsQ_11typst_utils4hashNtB6_8HashLock18get_or_insert_withNCNvMs0_B6_INtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE20load_or_compute_hash0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i

bb.at:                                            ; preds = %bb.as
  %i.ga = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %i.gb = tail call fastcc noundef i128 @_RINvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ga), !inline_history !11 ; 2 uses
  %i.gc = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6412atomic_store4FUNC monotonic, align 8, !nonnull !41, !noundef !41
  tail call void %i.gc(ptr noundef nonnull align 16 %i.fv, i128 noundef %i.gb), !inline_history !50197
  br label %_RINvMse_NtCs6xpQEr8gLsQ_11typst_utils4hashNtB6_8HashLock18get_or_insert_withNCNvMs0_B6_INtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE20load_or_compute_hash0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i

_RINvMse_NtCs6xpQEr8gLsQ_11typst_utils4hashNtB6_8HashLock18get_or_insert_withNCNvMs0_B6_INtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE20load_or_compute_hash0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %bb.at, %bb.as
  %.sroa.0.0.i.i.i.i = phi i128 [ %i.gb, %bb.at ], [ %i.fy, %bb.as ]
  %i.gd = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6411atomic_load4FUNC monotonic, align 8, !nonnull !41, !noundef !41
  %i.ge = tail call noundef i128 %i.gd(ptr noundef nonnull align 16 %i.fw), !inline_history !50196 ; 2 uses
  %i.gf = icmp eq i128 %i.ge, 0
  br i1 %i.gf, label %bb.au, label %_RINvMse_NtCs6xpQEr8gLsQ_11typst_utils4hashNtB6_8HashLock18get_or_insert_withNCNvMs0_B6_INtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE20load_or_compute_hash0ECs7tN9tvpkfrg_12typst_layout.exit4.i.i.i

bb.au:                                            ; preds = %_RINvMse_NtCs6xpQEr8gLsQ_11typst_utils4hashNtB6_8HashLock18get_or_insert_withNCNvMs0_B6_INtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE20load_or_compute_hash0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %.val6, i64 32
  %i.gh = tail call fastcc noundef i128 @_RINvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gg), !inline_history !11 ; 2 uses
  %i.gi = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6412atomic_store4FUNC monotonic, align 8, !nonnull !41, !noundef !41
  tail call void %i.gi(ptr noundef nonnull align 16 %i.fw, i128 noundef %i.gh), !inline_history !50197
  br label %_RINvMse_NtCs6xpQEr8gLsQ_11typst_utils4hashNtB6_8HashLock18get_or_insert_withNCNvMs0_B6_INtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE20load_or_compute_hash0ECs7tN9tvpkfrg_12typst_layout.exit4.i.i.i

_RINvMse_NtCs6xpQEr8gLsQ_11typst_utils4hashNtB6_8HashLock18get_or_insert_withNCNvMs0_B6_INtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE20load_or_compute_hash0ECs7tN9tvpkfrg_12typst_layout.exit4.i.i.i: ; preds = %bb.au, %_RINvMse_NtCs6xpQEr8gLsQ_11typst_utils4hashNtB6_8HashLock18get_or_insert_withNCNvMs0_B6_INtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE20load_or_compute_hash0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %.sroa.0.0.i3.i.i.i = phi i128 [ %i.gh, %bb.au ], [ %i.ge, %_RINvMse_NtCs6xpQEr8gLsQ_11typst_utils4hashNtB6_8HashLock18get_or_insert_withNCNvMs0_B6_INtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE20load_or_compute_hash0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i ]
  %i.gj = icmp eq i128 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i3.i.i.i
  br i1 %i.gj, label %bb.av, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.av:                                            ; preds = %_RINvMse_NtCs6xpQEr8gLsQ_11typst_utils4hashNtB6_8HashLock18get_or_insert_withNCNvMs0_B6_INtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE20load_or_compute_hash0ECs7tN9tvpkfrg_12typst_layout.exit4.i.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %.val5, i64 80
  %i.gl = getelementptr inbounds nuw i8, ptr %.val6, i64 80
  %i.gm = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gl)
  br i1 %i.gm, label %bb.aw, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.aw:                                            ; preds = %bb.av
  %i.gn = getelementptr inbounds nuw i8, ptr %.val5, i64 88
  %i.go = getelementptr inbounds nuw i8, ptr %.val6, i64 88
  %i.gp = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.go)
  br i1 %i.gp, label %bb.ax, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.ax:                                            ; preds = %bb.aw
  %i.gq = getelementptr inbounds nuw i8, ptr %.val5, i64 96
  %i.gr = getelementptr inbounds nuw i8, ptr %.val6, i64 96
  %i.gs = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gr)
  br i1 %i.gs, label %bb.ay, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.ay:                                            ; preds = %bb.ax
  %i.gt = getelementptr inbounds nuw i8, ptr %.val5, i64 104
  %i.gu = getelementptr inbounds nuw i8, ptr %.val6, i64 104
  %i.gv = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gu)
  br i1 %i.gv, label %bb.az, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.az:                                            ; preds = %bb.ay
  %i.gw = getelementptr inbounds nuw i8, ptr %.val5, i64 112
  %i.gx = getelementptr inbounds nuw i8, ptr %.val6, i64 112
  %i.gy = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gx)
  br i1 %i.gy, label %bb.ba, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.ba:                                            ; preds = %bb.az
  %i.gz = getelementptr inbounds nuw i8, ptr %.val5, i64 120
  %i.ha = getelementptr inbounds nuw i8, ptr %.val6, i64 120
  %i.hb = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ha)
  br i1 %i.hb, label %bb.bb, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.bb:                                            ; preds = %bb.ba
  %i.hc = getelementptr inbounds nuw i8, ptr %.val5, i64 128
  %i.hd = load i8, ptr %i.hc, align 16, !range !48, !noundef !41 ; 2 uses
  %i.he = icmp ne i8 %i.hd, 2                     ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.val6, i64 128
  %i.hg = load i8, ptr %i.hf, align 16, !range !48, !noundef !41 ; 2 uses
  %i.hh = icmp ne i8 %i.hg, 2                     ; 2 uses
  %i.hi = xor i1 %i.he, %i.hh
  br i1 %i.hi, label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %brmerge.demorgan.i.i.i = and i1 %i.he, %i.hh
  %brmerge.i.i.i = xor i1 %brmerge.demorgan.i.i.i, true
  %5 = icmp eq i8 %i.hd, %i.hg
  %spec.select.i.i.i = or i1 %5, %brmerge.i.i.i
  br label %_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs8_NtCs7tN9tvpkfrg_12typst_layout4flowNtB5_4WorkNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(168) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !41, !align !46, !noundef !41
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load i64, ptr %i.d, align 8, !noundef !41
  %i.f = load i64, ptr %1, align 8, !range !70, !noundef !41
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load i8, ptr %i.g, align 8, !range !54, !noundef !41
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !41, !align !59, !noundef !41
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load <2 x double>, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.m, align 8, !nonnull !41, !noundef !41
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val6 = load i64, ptr %i.n, align 8, !noundef !41 ; 4 uses
  %i.o = shl nuw nsw i64 %.val6, 3                ; 3 uses
  %i.p = icmp eq i64 %.val6, 0
  br i1 %i.p, label %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !50226
  %i.q = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef range(i64 1, 17) 8) #56, !noalias !50226 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.o) #57, !noalias !50227
  unreachable

bb.d:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull readonly align 8 %.val, i64 %i.o, i1 false), !noalias !50228
  br label %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit

_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.b, %bb.d
  %.sroa.539.0 = phi ptr [ %i.q, %bb.d ], [ inttoptr (i64 8 to ptr), %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load i64, ptr %i.s, align 8, !noundef !41
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit
  %.sroa.11.0 = phi i8 [ %i.h, %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit ], [ undef, %bb.a ]
  %.sroa.10.0 = phi i64 [ %i.t, %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit ], [ undef, %bb.a ]
  %.sroa.733.0 = phi ptr [ %i.j, %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit ], [ undef, %bb.a ]
  %.sroa.7.0 = phi i64 [ %.val6, %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit ], [ undef, %bb.a ]
  %.sroa.6.0 = phi ptr [ %.sroa.539.0, %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit ], [ undef, %bb.a ] ; 3 uses
  %.sroa.027.0 = phi i64 [ %.val6, %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit ], [ -1, %bb.a ] ; 3 uses
  %i.u = phi <2 x double> [ %i.l, %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit ], [ undef, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val12 = load ptr, ptr %i.v, align 8, !nonnull !41, !noundef !41 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val13 = load i64, ptr %i.w, align 8
  %.not.i.i = icmp eq ptr %.val12, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds i8, ptr %.val12, i64 -16
  %i.y = atomicrmw add ptr %i.x, i64 1 monotonic, align 8
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.g, label %bb.k, !prof !44

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildEBS_(ptr noundef nonnull %.val12) #57
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.n, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.n ], [ %i.ab, %bb.j ]
  %.0.val.off.i = add i64 %.sroa.027.0, -1
  %switch.i = icmp ult i64 %.0.val.off.i, -2
  br i1 %switch.i, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect10MultiSpillEEB13_.exit

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0) ]
  %i.aa = shl nuw i64 %.sroa.027.0, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !50229
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect10MultiSpillEEB13_.exit

bb.j:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.k:                                             ; preds = %bb.f, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val14 = load ptr, ptr %i.ac, align 8, !nonnull !41, !noundef !41 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val15 = load i64, ptr %i.ad, align 8          ; 3 uses
  %.not.i.i20 = icmp eq ptr %.val14, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i20, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds i8, ptr %.val14, i64 -16
  %i.af = atomicrmw add ptr %i.ae, i64 1 monotonic, align 8
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %bb.m, label %bb.p, !prof !44

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBU_5model8footnote12FootnoteElemEECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull %.val14, i64 noundef %.val15) #57
          to label %.noexc21 unwind label %bb.o

.noexc21:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEEECs7tN9tvpkfrg_12typst_layout.exit, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEEECs7tN9tvpkfrg_12typst_layout.exit ], [ %i.ah, %bb.o ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildEEB1h_(ptr nonnull %.val12) #54
          to label %bb.h unwind label %bb.af

bb.o:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.aj = load ptr, ptr %i.ai, align 8, !noundef !41
  %.not2 = icmp eq ptr %i.aj, null                ; 2 uses
  br i1 %.not2, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.val16 = load ptr, ptr %i.ak, align 8, !nonnull !41, !noundef !41 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val17 = load ptr, ptr %i.al, align 8, !nonnull !41, !noundef !41 ; 3 uses
  %i.am = ptrtoint ptr %.val17 to i64
  %i.an = ptrtoint ptr %.val16 to i64
  %i.ao = sub nuw i64 %i.am, %i.an                ; 5 uses
  %i.ap = udiv exact i64 %i.ao, 48                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50230)
  %i.aq = icmp eq ptr %.val17, %.val16
  br i1 %i.aq, label %.loopexit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i22

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i22: ; preds = %bb.q
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !50231
  %i.ar = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.ao, i64 noundef range(i64 1, 17) 8) #56, !noalias !50231 ; 4 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.r, label %.lr.ph.i.i

bb.r:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i22
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ao) #57
          to label %.noexc23 unwind label %bb.z

.noexc23:                                         ; preds = %bb.r
  unreachable

.lr.ph.i.i:                                       ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i22, %bb.u
  %.sroa.012.047.i.i = phi ptr [ %i.bf, %bb.u ], [ %.val16, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i22 ] ; 7 uses
  %.sroa.7.046.i.i = phi i64 [ %i.be, %bb.u ], [ 0, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i22 ] ; 2 uses
  %.sroa.10.045.i.i = phi i64 [ %i.at, %bb.u ], [ %i.ap, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i22 ]
  %i.at = add nsw i64 %.sroa.10.045.i.i, -1       ; 2 uses
  %i.au = icmp eq ptr %.sroa.012.047.i.i, %.val17
  br i1 %i.au, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50232)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i.i, i64 24
  %i.aw = load <2 x double>, ptr %i.av, align 8, !alias.scope !50233, !noalias !50234
  %i.ax = load i64, ptr %.sroa.012.047.i.i, align 8, !range !49, !alias.scope !50233, !noalias !50234, !noundef !41 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i.i, i64 8
  %i.az = load double, ptr %i.ay, align 8, !alias.scope !50233, !noalias !50234
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i.i, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !50233, !noalias !50234, !nonnull !41, !noundef !41 ; 2 uses
  %i.bc = atomicrmw add ptr %i.bb, i64 1 monotonic, align 8, !noalias !50235
  %i.bd = icmp slt i64 %i.bc, 0
  br i1 %i.bd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.be = add nuw nsw i64 %.sroa.7.046.i.i, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i.i, i64 48
  %i.bg = trunc nuw i64 %i.ax to i1
  %.sroa.5.0.i.i.i = select i1 %i.bg, double %i.az, double undef
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i.i, i64 40
  %i.bi = load i8, ptr %i.bh, align 8, !range !54, !alias.scope !50233, !noalias !50234, !noundef !41
  %i.bj = getelementptr inbounds nuw [48 x i8], ptr %i.ar, i64 %.sroa.7.046.i.i ; 5 uses
  store i64 %i.ax, ptr %i.bj, align 8, !noalias !50236
  %.sroa.432.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store double %.sroa.5.0.i.i.i, ptr %.sroa.432.0..sroa_idx.i.i, align 8, !noalias !50236
  %.sroa.533.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store ptr %i.bb, ptr %.sroa.533.0..sroa_idx.i.i, align 8, !noalias !50236
  %.sroa.634.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store <2 x double> %i.aw, ptr %.sroa.634.0..sroa_idx.i.i, align 8, !noalias !50236
  %.sroa.836.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
end_hunk_4
