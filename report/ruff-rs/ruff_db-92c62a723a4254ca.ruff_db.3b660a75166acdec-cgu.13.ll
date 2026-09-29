Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_db-92c62a723a4254ca.ruff_db.3b660a75166acdec-cgu.13?download=true
inline.NumInlined: 1158
inline.NumDeleted: 693
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditENCNvNtNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic6render6rdjson18rdjson_suggestions0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3q_8for_each4callNtB2c_16RdjsonSuggestionNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB50_3VecB4t_E14extend_trustedBN_E0E0EB2i_:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.u = load i32, ptr %i.t, align 4, !alias.scope !802, !noalias !803, !noundef !3
  %i.v = load ptr, ptr %i.k, align 8, !noalias !804, !nonnull !3, !align !14, !noundef !3
  %i.w = load ptr, ptr %i.e, align 8, !noalias !804, !nonnull !3, !noundef !3
  %i.x = load i64, ptr %i.l, align 8, !noalias !804, !noundef !3
  %i.y = invoke { i64, i64 } @_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex11line_column(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v, i32 noundef %i.u, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %i.x)
          to label %bb.d unwind label %bb.e, !noalias !805 ; 2 uses

bb.d:                                             ; preds = %.noexc.i
  %i.z = load ptr, ptr %i.m, align 8, !alias.scope !802, !noalias !803, !noundef !3 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, null            ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !802, !noalias !803
  %.sroa.3.0.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.ab
  %.sroa.01.0.i.i.i = select i1 %.not.i.i.i, ptr inttoptr (i64 1 to ptr), ptr %i.z
  %i.ac = extractvalue { i64, i64 } %i.y, 1
  %i.ad = extractvalue { i64, i64 } %i.y, 0
  %i.ae = extractvalue { i64, i64 } %i.s, 1
  %i.af = extractvalue { i64, i64 } %i.s, 0
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i ; 6 uses
  store i64 %i.ad, ptr %i.ag, align 8, !noalias !806
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %i.ac, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !806
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %i.af, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !806
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i64 %i.ae, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !noalias !806
  %.sroa.76.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store ptr %.sroa.01.0.i.i.i, ptr %.sroa.76.0..sroa_idx.i.i, align 8, !noalias !806
  %.sroa.87.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store i64 %.sroa.3.0.i.i.i, ptr %.sroa.87.0..sroa_idx.i.i, align 8, !noalias !806
  %i.ah = add i64 %.val15.i, 1                    ; 2 uses
  %i.ai = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.aj = icmp eq i64 %i.ai, %i.j
  br i1 %i.aj, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_NtNtNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic6render6rdjson16RdjsonSuggestionuNCNvB31_18rdjson_suggestions0NCINvNvB1B_8for_each4callB2Z_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5h_3VecB2Z_E14extend_trustedINtB2r_3MapBF_B4c_EE0E0E0EB37_.exit, label %bb.c

bb.e:                                             ; preds = %.noexc.i, %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !805
  resume { ptr, i32 } %i.ak

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_NtNtNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic6render6rdjson16RdjsonSuggestionuNCNvB31_18rdjson_suggestions0NCINvNvB1B_8for_each4callB2Z_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5h_3VecB2Z_E14extend_trustedINtB2r_3MapBF_B4c_EE0E0E0EB37_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.ah, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !805
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCscdodAO9FK5_5alloc6string6StringENCNvXs_NtCs56aZGHL6Dc6_7ruff_db8vendoredNtB26_18VendoredFileSystemNtNtBc_3fmt5Debug3fmt0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3q_8for_each4callTB1n_NtB26_16ZipFileDebugInfoENCINvMsj_NtB1r_3vecINtB56_3VecB4t_E14extend_trustedBN_E0E0EB28_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [264 x i8], align 8               ; 6 uses
  %i.c = alloca [264 x i8], align 8               ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !3, !align !14, !noundef !3
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.l = icmp eq ptr %i.g, %i.i
  br i1 %i.l, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1y_8adapters3map8map_foldRBQ_TBQ_NtNtCs56aZGHL6Dc6_7ruff_db8vendored16ZipFileDebugInfoEuNCNvXs_B2W_NtB2W_18VendoredFileSystemNtNtBb_3fmt5Debug3fmt0NCINvNvB1s_8for_each4callB2Q_NCINvMsj_NtBU_3vecINtB5m_3VecB2Q_E14extend_trustedINtB2i_3MapBF_B3N_EE0E0E0EB2Y_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = ptrtoint ptr %i.g to i64
  %i.o = sub nuw i64 %i.m, %i.n
  %i.p = udiv exact i64 %i.o, 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.d:                                             ; preds = %bb.m, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.af, %bb.m ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.ag, %bb.m ] ; 2 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.01.0.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !818)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !819)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !820
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s)
          to label %.noexc.i unwind label %bb.c, !noalias !821

.noexc.i:                                         ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !820
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !820
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !820
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !822, !noalias !823, !nonnull !3, !noundef !3
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !822, !noalias !823, !noundef !3
  invoke void @_RNvMs0_NtNtCsb9zoKkpXuBA_3zip4read11zip_archiveINtB5_10ZipArchiveINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtCs56aZGHL6Dc6_7ruff_db8vendored11ArchiveDataEE30by_name_with_optional_passwordB1M_(ptr noalias noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef %i.w, ptr noalias noundef readonly captures(address, read_provenance) null, i64 undef)
          to label %bb.f unwind label %bb.e, !noalias !823

bb.e:                                             ; preds = %bb.k, %.noexc.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.h, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.ab, %bb.h ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(24) %i.e) #38
          to label %bb.n unwind label %bb.l, !noalias !823

bb.f:                                             ; preds = %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !824)
  call void @llvm.experimental.noalias.scope.decl(metadata !825)
  %i.y = load i64, ptr %i.b, align 8, !range !26, !alias.scope !825, !noalias !826, !noundef !3
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %bb.g, label %bb.k, !prof !8

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !827
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !826
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #36
          to label %bb.i unwind label %bb.h, !noalias !828

bb.h:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb9zoKkpXuBA_3zip6result8ZipErrorECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #38
          to label %.body.i.i.i unwind label %bb.j, !noalias !828

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !noalias !828
  unreachable

bb.k:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(264) %i.b, i64 264, i1 false), !alias.scope !829, !noalias !820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !820
  invoke void @_RNvXs1_NtCs56aZGHL6Dc6_7ruff_db8vendoredNtB5_16ZipFileDebugInfoINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCsb9zoKkpXuBA_3zip4read7ZipFileINtNtNtB14_2io6cursor6CursorNtB5_11ArchiveDataEEE4fromB7_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(264) %i.c)
          to label %bb.m unwind label %bb.e, !noalias !823

bb.l:                                             ; preds = %.body.i.i.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !noalias !823
  unreachable

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !820
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !830
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !820
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !831
  %i.af = add i64 %.val15.i, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ag = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ah = icmp eq i64 %i.ag, %i.p
  br i1 %i.ah, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1y_8adapters3map8map_foldRBQ_TBQ_NtNtCs56aZGHL6Dc6_7ruff_db8vendored16ZipFileDebugInfoEuNCNvXs_B2W_NtB2W_18VendoredFileSystemNtNtBb_3fmt5Debug3fmt0NCINvNvB1s_8for_each4callB2Q_NCINvMsj_NtBU_3vecINtB5m_3VecB2Q_E14extend_trustedINtB2i_3MapBF_B3N_EE0E0E0EB2Y_.exit, label %bb.d

bb.n:                                             ; preds = %.body.i.i.i, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.r, %bb.c ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !821
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1y_8adapters3map8map_foldRBQ_TBQ_NtNtCs56aZGHL6Dc6_7ruff_db8vendored16ZipFileDebugInfoEuNCNvXs_B2W_NtB2W_18VendoredFileSystemNtNtBb_3fmt5Debug3fmt0NCINvNvB1s_8for_each4callB2Q_NCINvMsj_NtBU_3vecINtB5m_3VecB2Q_E14extend_trustedINtB2i_3MapBF_B3N_EE0E0E0EB2Y_.exit: ; preds = %bb.m, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.af, %bb.m ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !821
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefENCNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB2v_12IndexedNodes17extend_from_nodess_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3R_8for_each4callyNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB54_3VecyE14extend_trustedBN_E0E0EB2z_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldRBQ_yuNCNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB3o_12IndexedNodes17extend_from_nodess_0NCINvNvB1Q_8for_each4callyNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5i_3VecyE14extend_trustedINtB2G_3MapBF_B3g_EE0E0E0EB3s_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 4                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 240
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 3           ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.g = lshr exact i64 %i.d, 1
  %i.h = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %scevgep2 = getelementptr i8, ptr %i.h, i64 %i.g
  %scevgep3 = getelementptr i8, ptr %0, i64 8
  %3 = and i64 %i.d, -16
  %scevgep4 = getelementptr i8, ptr %0, i64 %3
  %bound0 = icmp ult ptr %scevgep, %scevgep4
  %bound1 = icmp ult ptr %scevgep3, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.i = and i64 %i.e, 3                          ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  %i.k = select i1 %i.j, i64 4, i64 %i.i
  %n.vec = sub nsw i64 %i.e, %i.k                 ; 3 uses
  %i.l = add i64 %.sroa.5.0.copyload, %n.vec
  %i.m = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.r = getelementptr i8, ptr %i.n, i64 8
  %i.s = getelementptr i8, ptr %i.o, i64 24
  %i.t = getelementptr i8, ptr %i.p, i64 40
  %i.u = getelementptr i8, ptr %i.q, i64 56
  %i.v = load ptr, ptr %i.r, align 8, !alias.scope !846, !noalias !847, !nonnull !3, !noundef !3
  %i.w = load ptr, ptr %i.s, align 8, !alias.scope !846, !noalias !847, !nonnull !3, !noundef !3
  %i.x = insertelement <2 x ptr> poison, ptr %i.v, i64 0
  %i.y = insertelement <2 x ptr> %i.x, ptr %i.w, i64 1
  %i.z = load ptr, ptr %i.t, align 8, !alias.scope !846, !noalias !847, !nonnull !3, !noundef !3
  %i.aa = load ptr, ptr %i.u, align 8, !alias.scope !846, !noalias !847, !nonnull !3, !noundef !3
  %i.ab = insertelement <2 x ptr> poison, ptr %i.z, i64 0
  %i.ac = insertelement <2 x ptr> %i.ab, ptr %i.aa, i64 1
  %i.ad = ptrtoint <2 x ptr> %i.y to <2 x i64>
  %i.ae = ptrtoint <2 x ptr> %i.ac to <2 x i64>
  %i.af = getelementptr [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <2 x i64> %i.ad, ptr %i.af, align 8, !alias.scope !848, !noalias !849
  store <2 x i64> %i.ae, ptr %i.ag, align 8, !alias.scope !848, !noalias !849
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %scalar.ph.preheader, label %vector.body, !llvm.loop !843

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.l, %vector.body ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 4 uses
  %i.ai = sub nsw i64 %i.e, %.sroa.01.0.i.ph
  %xtraiter = and i64 %i.ai, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.aj = phi i64 [ %i.ao, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ap, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %.val17.i.prol = load ptr, ptr %i.al, align 8, !noalias !847, !nonnull !3, !noundef !3
  %i.am = ptrtoint ptr %.val17.i.prol to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.aj
  store i64 %i.am, ptr %i.an, align 8, !noalias !852
  %i.ao = add i64 %i.aj, 1                        ; 3 uses
  %i.ap = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !844

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ao, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ao, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ap, %scalar.ph.prol ]
  %i.aq = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.ar = icmp ugt i64 %i.aq, -4
  br i1 %i.ar, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldRBQ_yuNCNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB3o_12IndexedNodes17extend_from_nodess_0NCINvNvB1Q_8for_each4callyNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5i_3VecyE14extend_trustedINtB2G_3MapBF_B3g_EE0E0E0EB3s_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.as = phi i64 [ %i.bm, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.bn, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %.val17.i = load ptr, ptr %i.au, align 8, !noalias !847, !nonnull !3, !noundef !3
  %i.av = ptrtoint ptr %.val17.i to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.as
  store i64 %i.av, ptr %i.aw, align 8, !noalias !852
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ay = getelementptr i8, ptr %i.ax, i64 24
  %.val17.i.1 = load ptr, ptr %i.ay, align 8, !noalias !847, !nonnull !3, !noundef !3
  %i.az = ptrtoint ptr %.val17.i.1 to i64
  %i.ba = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.as
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  store i64 %i.az, ptr %i.bb, align 8, !noalias !852
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 40
  %.val17.i.2 = load ptr, ptr %i.bd, align 8, !noalias !847, !nonnull !3, !noundef !3
  %i.be = ptrtoint ptr %.val17.i.2 to i64
  %i.bf = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.as
  %i.bg = getelementptr i8, ptr %i.bf, i64 16
  store i64 %i.be, ptr %i.bg, align 8, !noalias !852
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bi = getelementptr i8, ptr %i.bh, i64 56
  %.val17.i.3 = load ptr, ptr %i.bi, align 8, !noalias !847, !nonnull !3, !noundef !3
  %i.bj = ptrtoint ptr %.val17.i.3 to i64
  %i.bk = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.as
  %i.bl = getelementptr i8, ptr %i.bk, i64 24
  store i64 %i.bj, ptr %i.bl, align 8, !noalias !852
  %i.bm = add i64 %i.as, 4                        ; 2 uses
  %i.bn = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.bo = icmp eq i64 %i.bn, %i.e
  br i1 %i.bo, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldRBQ_yuNCNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB3o_12IndexedNodes17extend_from_nodess_0NCINvNvB1Q_8for_each4callyNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5i_3VecyE14extend_trustedINtB2G_3MapBF_B3g_EE0E0E0EB3s_.exit, label %scalar.ph, !llvm.loop !845

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldRBQ_yuNCNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB3o_12IndexedNodes17extend_from_nodess_0NCINvNvB1Q_8for_each4callyNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5i_3VecyE14extend_trustedINtB2G_3MapBF_B3g_EE0E0E0EB3s_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bm, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !847
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic6render18ResolvedDiagnosticENCNvMs2_B1p_NtB1p_8Resolved13to_renderable0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3b_8for_each4callNtB1p_20RenderableDiagnosticNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4P_3VecB4e_E14extend_trustedBN_E0E0EB1t_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !align !14, !noundef !3
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.g = icmp eq ptr %i.b, %i.d
  br i1 %i.g, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic6render18ResolvedDiagnosticENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB22_8adapters3map8map_foldRBQ_NtBS_20RenderableDiagnosticuNCNvMs2_BS_NtBS_8Resolved13to_renderable0NCINvNvB1W_8for_each4callB3k_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB53_3VecB3k_E14extend_trustedINtB2M_3MapBF_B3M_EE0E0E0EBW_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = udiv exact i64 %i.j, 144
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.n, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.o, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !862
  invoke void @_RNvMs3_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic6renderNtB5_18ResolvedDiagnostic13to_renderable(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.f)
          to label %bb.d unwind label %bb.e, !noalias !863

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [120 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(120) %i.a, i64 120, i1 false), !noalias !864
  %i.n = add i64 %.val15.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !862
  %i.o = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.k
  br i1 %i.p, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic6render18ResolvedDiagnosticENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB22_8adapters3map8map_foldRBQ_NtBS_20RenderableDiagnosticuNCNvMs2_BS_NtBS_8Resolved13to_renderable0NCINvNvB1W_8for_each4callB3k_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB53_3VecB3k_E14extend_trustedINtB2M_3MapBF_B3M_EE0E0E0EBW_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !863
  resume { ptr, i32 } %i.q

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic6render18ResolvedDiagnosticENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB22_8adapters3map8map_foldRBQ_NtBS_20RenderableDiagnosticuNCNvMs2_BS_NtBS_8Resolved13to_renderable0NCINvNvB1W_8for_each4callB3k_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB53_3VecB3k_E14extend_trustedINtB2M_3MapBF_B3M_EE0E0E0EBW_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.n, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !863
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic6render20RenderableAnnotationENvMs8_B1p_B1n_11to_annotateENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2X_8for_each4callNtNtCs2sepWsjoOnX_17annotate_snippets7snippet10AnnotationNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB54_3VecB40_E14extend_trustedBN_E0E0EB1t_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic6render20RenderableAnnotationENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB24_8adapters3map8map_foldRBQ_NtNtCs2sepWsjoOnX_17annotate_snippets7snippet10AnnotationuNvMs8_BS_BQ_11to_annotateNCINvNvB1Y_8for_each4callB3m_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5j_3VecB3m_E14extend_trustedINtB2O_3MapBF_B4i_EE0E0E0EBW_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 5
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !874
  invoke void @_RNvMs8_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic6renderNtB5_20RenderableAnnotation11to_annotate(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g)
          to label %bb.d unwind label %bb.e, !noalias !875

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [48 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
end_hunk_0
begin_hunk_1_@_RNvYNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtB6_14WritableSystem12get_or_cacheB8_:bb.a
          to label %.noexc39 unwind label %bb.j

.noexc39:                                         ; preds = %bb.o
  %i.am = load i32, ptr %i.a, align 8, !range !28, !noalias !1673, !noundef !3
  %i.an = trunc nuw i32 %i.am to i1
  br i1 %i.an, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.noexc39
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !1673, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1673
  br label %bb.u

bb.q:                                             ; preds = %.noexc39
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !range !31, !noalias !1673, !noundef !3
  %i.as = call noundef i32 @close(i32 noundef %i.ar) #37 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1673
  %i.at = load ptr, ptr %i.n, align 8, !nonnull !3, !noundef !3
  %i.au = load i64, ptr %i.p, align 8, !noundef !3
  %i.av = load ptr, ptr %.sroa.48.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  %i.aw = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noundef !3
  %i.ax = invoke noundef ptr @_RINvNtCs2AWtUsOyxgP_3std2fs5writeRNtNtB4_4path4PathRShECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.at, i64 noundef %i.au, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef range(i64 0, -9223372036854775808) %i.aw)
          to label %_RNvYNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtB6_14WritableSystem10write_fileB8_.exit unwind label %bb.j ; 2 uses

_RNvYNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtB6_14WritableSystem10write_fileB8_.exit: ; preds = %bb.q
  %.not33 = icmp eq ptr %i.ax, null
  br i1 %.not33, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_RNvYNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtB6_14WritableSystem10write_fileB8_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(24) %i.d)
          to label %bb.s unwind label %bb.e

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEBH_(ptr noalias noundef align 8 dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.t

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEBH_.exit47, %bb.s, %bb.c
  ret void

bb.u:                                             ; preds = %_RNvYNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtB6_14WritableSystem10write_fileB8_.exit, %_RNvXs0_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB5_8OsSystemNtB7_14WritableSystem20create_directory_all.exit, %bb.p
  %.sink = phi ptr [ %i.aj, %_RNvXs0_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB5_8OsSystemNtB7_14WritableSystem20create_directory_all.exit ], [ %i.ap, %bb.p ], [ %i.ax, %_RNvYNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtB6_14WritableSystem10write_fileB8_.exit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ay, align 8
  store i64 -2, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs56aZGHL6Dc6_7ruff_db.exit.i unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.thread unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs56aZGHL6Dc6_7ruff_db.exit.i: ; preds = %bb.u
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56aZGHL6Dc6_7ruff_db.exit unwind label %.thread54

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56aZGHL6Dc6_7ruff_db.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs56aZGHL6Dc6_7ruff_db.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs56aZGHL6Dc6_7ruff_db.exit.i unwind label %bb.x

bb.x:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56aZGHL6Dc6_7ruff_db.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body42 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs56aZGHL6Dc6_7ruff_db.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56aZGHL6Dc6_7ruff_db.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEBH_.exit unwind label %bb.d

bb.z:                                             ; preds = %.thread, %bb.j, %.body42
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEBH_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs56aZGHL6Dc6_7ruff_db.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEBH_.exit47 unwind label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEBH_.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

common.resume:                                    ; preds = %.body42, %bb.aa
  %common.resume.op = phi { ptr, i32 } [ %i.be, %bb.aa ], [ %.pn35, %.body42 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEBH_.exit47: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEBH_.exit
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.t

.thread:                                          ; preds = %bb.v, %bb.j, %.thread54
  %.pn50 = phi { ptr, i32 } [ %i.ag, %bb.j ], [ %lpad.thr_comm, %.thread54 ], [ %i.az, %bb.v ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEBH_(ptr noalias noundef align 8 dereferenceable(24) %i.e) #38
          to label %.body42 unwind label %bb.z
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 -1, 3) i8 @_RNvYNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtB6_6System11source_typeB8_(ptr noalias readonly align 8 captures(none) %0, ptr noalias nonnull readonly captures(none) %1, i64 %2) unnamed_addr #12 {
bb.a:
  ret i8 -1
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtB6_6System12is_directoryB8_(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1679
  call void @_RINvNtCs2AWtUsOyxgP_3std2fs8metadataRNtNtB4_4path4PathECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !1680
  %i.b = load i64, ptr %i.a, align 8, !range !12, !noalias !1679, !noundef !3
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system8MetadataNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEB11_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.915.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.915.0.copyload.i = load i32, ptr %.sroa.915.0..sroa_idx.i, align 8, !noalias !1679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1679
  %i.d = and i32 %.sroa.915.0.copyload.i, 61440
  %i.e = icmp eq i32 %i.d, 16384
  br label %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system8MetadataNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE9is_ok_andNCNvYNtNtBK_2os8OsSystemNtBK_6System12is_directory0EBM_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system8MetadataNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEB11_.exit.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1679, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1679
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs56aZGHL6Dc6_7ruff_db(ptr nonnull %i.g), !noalias !1681
  br label %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system8MetadataNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE9is_ok_andNCNvYNtNtBK_2os8OsSystemNtBK_6System12is_directory0EBM_.exit

_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system8MetadataNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE9is_ok_andNCNvYNtNtBK_2os8OsSystemNtBK_6System12is_directory0EBM_.exit: ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system8MetadataNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEB11_.exit.i
  %.sroa.0.011.i = phi i1 [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system8MetadataNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEB11_.exit.i ], [ %i.e, %bb.b ]
  ret i1 %.sroa.0.011.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 -1, 3) i8 @_RNvYNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtB6_6System24virtual_path_source_typeB8_(ptr noalias readonly align 8 captures(none) %0, ptr noalias nonnull readonly captures(none) %1, i64 %2) unnamed_addr #12 {
bb.a:
  ret i8 -1
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtB6_6System7is_fileB8_(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1687
  call void @_RINvNtCs2AWtUsOyxgP_3std2fs8metadataRNtNtB4_4path4PathECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !1688
  %i.b = load i64, ptr %i.a, align 8, !range !12, !noalias !1687, !noundef !3
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system8MetadataNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEB11_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.915.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.915.0.copyload.i = load i32, ptr %.sroa.915.0..sroa_idx.i, align 8, !noalias !1687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1687
  %i.d = and i32 %.sroa.915.0.copyload.i, 61440
  %switch.selectcmp32.i = icmp eq i32 %i.d, 32768
  br label %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system8MetadataNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE9is_ok_andNCNvYNtNtBK_2os8OsSystemNtBK_6System7is_file0EBM_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system8MetadataNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEB11_.exit.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noalias !1687, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1687
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs56aZGHL6Dc6_7ruff_db(ptr nonnull %i.f), !noalias !1689
  br label %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system8MetadataNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE9is_ok_andNCNvYNtNtBK_2os8OsSystemNtBK_6System7is_file0EBM_.exit

_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system8MetadataNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE9is_ok_andNCNvYNtNtBK_2os8OsSystemNtBK_6System7is_file0EBM_.exit: ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system8MetadataNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEB11_.exit.i
  %.sroa.0.011.i = phi i1 [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system8MetadataNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEB11_.exit.i ], [ %switch.selectcmp32.i, %bb.b ]
  ret i1 %.sroa.0.011.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4from11StringErrorBW_11descriptionCs56aZGHL6Dc6_7ruff_db(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, i64 } { ptr @184, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4from11StringErrorBW_5causeCs56aZGHL6Dc6_7ruff_db(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4from11StringErrorBW_6sourceCs56aZGHL6Dc6_7ruff_db(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4from11StringErrorBW_7provideCs56aZGHL6Dc6_7ruff_db(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #12 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4from11StringErrorBW_7type_idCs56aZGHL6Dc6_7ruff_db(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @185, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #20

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs4_NtCs5o9EGYvxRCY_9same_file4unixNtB6_6Handle9from_pathRNtNtCs2AWtUsOyxgP_3std4path4PathECs56aZGHL6Dc6_7ruff_db(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize nonlazybind optsize uwtable
declare hidden void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockyE10initializeNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #23

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #24

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path11is_absolute(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #25

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvMNtCs3pBv9WGWlWf_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8) unnamed_addr #26

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support12___is_enabled(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsl_NtCs3pBv9WGWlWf_12tracing_core5fieldNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsNtB5_5Value6record(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvCsdxG2AMukdbL_3log6logger() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support13___tracing_log(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB2_10SystemPath11to_path_buf(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable_or_null(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtCs1hjZZAukk1a_12thread_local9thread_id6ThreadEEE4withNCNvB1Q_3get0B1O_ECs56aZGHL6Dc6_7ruff_db(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXNtNtCs2AWtUsOyxgP_3std2io6cursorINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtCs56aZGHL6Dc6_7ruff_db8vendored11ArchiveDataENtB4_4Seek4seekB1j_(ptr noalias noundef align 8 dereferenceable(32), i64 noundef range(i64 0, 3), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtCsb9zoKkpXuBA_3zip4spec18ZipLocalEntryBlockNtB5_14FixedSizeBlock5parseINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtCs56aZGHL6Dc6_7ruff_db8vendored11ArchiveDataEEB20_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtCsb9zoKkpXuBA_3zip4spec22ZipDataDescriptorBlockNtB5_14FixedSizeBlock5writeINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEEECs56aZGHL6Dc6_7ruff_db(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 1 captures(none) dead_on_return dereferenceable(12), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs56aZGHL6Dc6_7ruff_db(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBd_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBf_6string6StringE4fromNtB5_11StringErrorNtNtB11_3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB10_3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5Error4__new(i8 noundef range(i8 0, 42), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #27

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtCsb9zoKkpXuBA_3zip4spec24Zip64DataDescriptorBlockNtB5_14FixedSizeBlock5writeINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEEECs56aZGHL6Dc6_7ruff_db(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 1 captures(none) dead_on_return dereferenceable(20), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtCsb9zoKkpXuBA_3zip4spec22ZipDataDescriptorBlockNtB5_14FixedSizeBlock5writeQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorQINtNtCscdodAO9FK5_5alloc3vec3VechEEECs56aZGHL6Dc6_7ruff_db(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 1 captures(none) dead_on_return dereferenceable(12), ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtCsb9zoKkpXuBA_3zip4spec24Zip64DataDescriptorBlockNtB5_14FixedSizeBlock5writeQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorQINtNtCscdodAO9FK5_5alloc3vec3VechEEECs56aZGHL6Dc6_7ruff_db(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 1 captures(none) dead_on_return dereferenceable(20), ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 1, 0) i32 @_RNvXs0_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_9NodeIndexINtNtCs4NRVxsYgnAr_4core7convert4FrommE4from(i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex3set(ptr noundef nonnull align 4, i32 noundef range(i32 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCsiqiOkcJdymw_7similar4text11abstractionRNtNtCscdodAO9FK5_5alloc6string6StringNtB5_13IntoDiffInput15into_diff_inputCs56aZGHL6Dc6_7ruff_db(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsiqiOkcJdymw_7similar6common21capture_diff_deadlineINtNtB4_4text12TextDiffSideeEBU_ECs56aZGHL6Dc6_7ruff_db(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i8 noundef range(i8 0, 5), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, i64 noundef, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs4_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB6_16IdentifyDistinctmE3newINtNtBa_4text12TextDiffSideeEB1i_ECs56aZGHL6Dc6_7ruff_db(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsiqiOkcJdymw_7similar6common21capture_diff_deadlineINtNtNtB4_10algorithms5utils12OffsetLookupmEBU_ECs56aZGHL6Dc6_7ruff_db(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i8 noundef range(i8 0, 5), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, i64 noundef, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path4joinRBw_ECs56aZGHL6Dc6_7ruff_db(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs1_NtCscdodAO9FK5_5alloc6borrowINtB5_3CowShE6to_mutCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs2isvxI5XMib_9quick_xml6eventsNtB4_10BytesStart9push_attr(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs8p1poYNiitJ_5which6finderNtNtCs2AWtUsOyxgP_3std4path7PathBufNtB2_7PathExt13has_separator(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec16in_place_collectINtB6_3VecNtNtB8_6string6StringEINtNtB6_14spec_from_iter12SpecFromIterBX_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterReENvYeNtNtB8_6borrow7ToOwned8to_ownedEE9from_iterCs56aZGHL6Dc6_7ruff_db(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXNtNtCs2AWtUsOyxgP_3std2io6cursorINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEENtB4_4Seek4seekCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(32), i64 noundef range(i64 0, 3), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsb9zoKkpXuBA_3zip8unstable20LittleEndianWriteExt12write_u32_leCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(32), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsb9zoKkpXuBA_3zip8unstable20LittleEndianWriteExt12write_u32_leCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtNtCsb9zoKkpXuBA_3zip12extra_fields26zip64_extended_informationNtB2_24Zip64ExtendedInformation9serialize(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXs3_NtNtCs2AWtUsOyxgP_3std2io6cursorINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEENtB7_5Write9write_allCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData5block(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsb9zoKkpXuBA_3zip5write27strip_alignment_extra_field(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtCsb9zoKkpXuBA_3zip4spec20ZipCentralEntryBlockNtB5_14FixedSizeBlock5writeINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEEECs56aZGHL6Dc6_7ruff_db(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 1 captures(none) dead_on_return dereferenceable(42), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtCsb9zoKkpXuBA_3zip4spec20ZipCentralEntryBlockNtB5_14FixedSizeBlock5writeQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorQINtNtCscdodAO9FK5_5alloc3vec3VechEEECs56aZGHL6Dc6_7ruff_db(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 1 captures(none) dead_on_return dereferenceable(42), ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs2AWtUsOyxgP_3std3env4__var(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs2AWtUsOyxgP_3std3env7__var_os(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvYNtNtCs9BeaGo73rC4_16ruff_source_file10line_index10OneIndexedNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRBR_B2m_EE9call_onceCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutuEp6OutputINtNtB14_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtB14_6marker4SendNtB2U_4SyncEL_EENtNtB12_4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsizY4S0OBG5z_6ignore5ErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

end_hunk_1
