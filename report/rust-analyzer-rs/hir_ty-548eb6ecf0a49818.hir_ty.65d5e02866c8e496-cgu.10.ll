Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.10?download=true
inline.NumInlined: 7065
inline.NumDeleted: 2270
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_RINvNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits46extract_tupled_inputs_and_output_from_callableNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEB2h_:bb.a
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.av, ptr %.sroa.53.0..sroa_idx, align 8
  br label %_RNvMsi_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kindINtB5_5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE22is_fn_trait_compatibleB16_.exit.thread

_RNvMsi_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kindINtB5_5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE22is_fn_trait_compatibleB16_.exit.thread: ; preds = %bb.d, %_RNvMsi_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kindINtB5_5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE22is_fn_trait_compatibleB16_.exit, %bb.j
  %storemerge45 = phi i64 [ 0, %bb.j ], [ 1, %_RNvMsi_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kindINtB5_5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE22is_fn_trait_compatibleB16_.exit ], [ 1, %bb.d ]
  store i64 %storemerge45, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ae

_RNvMsi_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kindINtB5_5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE22is_fn_trait_compatibleB16_.exit48.thread: ; preds = %bb.e, %_RNvMsi_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kindINtB5_5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE22is_fn_trait_compatibleB16_.exit48
  store i64 1, ptr %0, align 8
  br label %bb.ae

bb.k:                                             ; preds = %_RNvMsi_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kindINtB5_5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE22is_fn_trait_compatibleB16_.exit48
  %i.ba = call fastcc { ptr, ptr } @_RNCINvNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits46extract_tupled_inputs_and_output_from_callableNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEs_0B2j_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull %.sroa.6.0.copyload) #54 ; 2 uses
  %i.bb = extractvalue { ptr, ptr } %i.ba, 0
  %i.bc = extractvalue { ptr, ptr } %i.ba, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %i.bd, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bc, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.10.0.copyload, ptr %.sroa.59.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.ae

bb.l:                                             ; preds = %bb.f
  %.not43 = icmp eq i8 %3, 2
  br i1 %.not43, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.be, align 8
  br label %bb.p

bb.n:                                             ; preds = %bb.q, %bb.f, %bb.r, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvMs_NtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind7closureINtB4_11ClosureArgsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE3sigB1m_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %.sroa.10.0.copyload)
  %i.bf = load ptr, ptr %i.p, align 8, !nonnull !37, !noundef !37 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !nonnull !37, !noundef !37
  %i.bi = tail call { ptr, i64 } @_RNvXsd_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB5_3TysINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent3TysNtNtB7_8interner10DbInternerE6inputs(ptr noundef nonnull %i.bf) ; 2 uses
  %i.bj = extractvalue { ptr, i64 } %i.bi, 0
  %i.bk = extractvalue { ptr, i64 } %i.bi, 1
  %i.bl = tail call noundef ptr @_RNvYRSNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent9SliceLike3getBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.bj, i64 noundef %i.bk, i64 noundef 0) ; 2 uses
  %.not.i = icmp eq ptr %i.bl, null
  br i1 %.not.i, label %bb.o, label %_RNCINvNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits46extract_tupled_inputs_and_output_from_callableNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEs0_0B2j_.exit, !prof !39

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #55
  unreachable

_RNCINvNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits46extract_tupled_inputs_and_output_from_callableNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEs0_0B2j_.exit: ; preds = %bb.n
  %i.bm = tail call noundef nonnull ptr @_RNvXsd_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB5_3TysINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent3TysNtNtB7_8interner10DbInternerE6output(ptr noundef nonnull %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bl, ptr %i.bn, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bm, ptr %.sroa.418.0..sroa_idx, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bh, ptr %.sroa.519.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.ae

bb.p:                                             ; preds = %bb.r, %bb.q, %bb.m
  %storemerge44 = phi i64 [ 0, %bb.m ], [ 1, %bb.q ], [ 1, %bb.r ]
  store i64 %storemerge44, ptr %0, align 8
  br label %bb.ae

bb.q:                                             ; preds = %bb.f
  %i.bo = icmp eq i8 %3, 0
  br i1 %i.bo, label %bb.p, label %bb.n

bb.r:                                             ; preds = %bb.f
  %i.bp = icmp eq i8 %3, 2
  br i1 %i.bp, label %bb.n, label %bb.p

bb.s:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvXsu_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB5_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent11GenericArgsNtNtB7_8interner10DbInternerE28split_coroutine_closure_args(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noundef nonnull %.sroa.10.0.copyload)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bs = tail call noundef zeroext i1 @_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent2TyNtNtB6_8interner10DbInternerE9is_ty_varB8_(ptr noundef nonnull %i.br)
  br i1 %i.bs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.g
  %.not41 = icmp eq i8 %3, 2
  br i1 %.not41, label %bb.ac, label %bb.ad

bb.u:                                             ; preds = %bb.s
  switch i8 %i.as, label %default.unreachable [
    i8 0, label %bb.x
    i8 1, label %bb.v
    i8 2, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  switch i8 %3, label %bb.z [
    i8 0, label %bb.ab
    i8 2, label %bb.y
  ]

bb.w:                                             ; preds = %bb.u
  %cond = icmp eq i8 %3, 2
  br i1 %cond, label %bb.y, label %bb.ab

bb.x:                                             ; preds = %bb.u
  %.not40 = icmp eq i8 %3, 2
  br i1 %.not40, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.w, %bb.v, %bb.z, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.bt = call noundef nonnull ptr @_RNvXs8_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6regionNtB5_6RegionINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent6RegionNtNtB7_8interner10DbInternerE10new_static(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %.sroa.020.0.copyload, ptr %i.d, align 8
  %.sroa.7.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx23, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  %i.bu = call fastcc noundef nonnull ptr @_RINvNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits38coroutine_closure_to_certain_coroutineNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEB29_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.l, i8 noundef %3, ptr noundef nonnull %i.bt, i32 noundef %.sroa.6.0.extract.trunc, i32 noundef %.sroa.6.4.extract.trunc, ptr noundef nonnull %.sroa.10.0.copyload, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.aa

bb.z:                                             ; preds = %bb.v, %bb.x
  %i.bv = call noundef zeroext i1 @_RNvMs1_NtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind7closureINtB5_20CoroutineClosureArgsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE16has_self_borrowsB1w_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o)
  br i1 %i.bv, label %bb.ab, label %bb.y

bb.aa:                                            ; preds = %bb.ac, %bb.y
  %.sroa.025.0 = phi ptr [ %i.ca, %bb.ac ], [ %i.bu, %bb.y ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvMs1_NtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind7closureINtB5_20CoroutineClosureArgsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE21coroutine_closure_sigB1w_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, ptr noundef nonnull %.sroa.10.0.copyload)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.020.0.copyload) ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8, !nonnull !37, !noundef !37
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.020.0.copyload, ptr %i.by, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.025.0, ptr %.sroa.434.0..sroa_idx, align 8
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bx, ptr %.sroa.535.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

bb.ab:                                            ; preds = %bb.w, %bb.z, %bb.v, %bb.ad
  %storemerge = phi i64 [ 0, %bb.ad ], [ 1, %bb.w ], [ 1, %bb.v ], [ 1, %bb.z ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

bb.ac:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.bz = tail call noundef nonnull ptr @_RNvXs8_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6regionNtB5_6RegionINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent6RegionNtNtB7_8interner10DbInternerE10new_static(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.020.0.copyload, ptr %i.c, align 8
  %.sroa.7.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx24, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  %i.ca = call fastcc noundef nonnull ptr @_RINvNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits40coroutine_closure_to_ambiguous_coroutineNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEB2b_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.k, i8 noundef 2, ptr noundef nonnull %i.bz, i32 noundef %.sroa.6.0.extract.trunc, i32 noundef %.sroa.6.4.extract.trunc, ptr noundef nonnull %.sroa.10.0.copyload, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.aa

bb.ad:                                            ; preds = %bb.t
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.cb, align 8
  br label %bb.ab

bb.ae:                                            ; preds = %bb.p, %bb.ab, %bb.c, %_RNvMsi_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kindINtB5_5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE22is_fn_trait_compatibleB16_.exit.thread, %_RNCINvNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits46extract_tupled_inputs_and_output_from_callableNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEs0_0B2j_.exit, %bb.aa, %bb.k, %_RNvMsi_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kindINtB5_5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE22is_fn_trait_compatibleB16_.exit48.thread
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits47instantiate_constituent_tys_for_sizedness_traitNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB2g_8interner10DbInternerEB2i_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %1, i1 noundef zeroext %2, ptr noundef nonnull %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !8063 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [12 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 17 uses
  %i.o = alloca [40 x i8], align 8                ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [40 x i8], align 8                ; 17 uses
  %i.u = alloca [8 x i8], align 8                 ; 3 uses
  %i.v = alloca [1 x i8], align 1                 ; 3 uses
  %i.w = zext i1 %2 to i8
  store i8 %i.w, ptr %i.v, align 1
  store ptr %3, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.x = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.w, label %bb.c

.body:                                            ; preds = %bb.b, %bb.t, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.bw, %bb.ah ], [ %i.ab, %bb.b ], [ %i.be, %bb.t ] ; 2 uses
  %.sroa.023.0 = phi i8 [ %.sroa.021.2, %bb.ah ], [ %.sroa.023.1, %bb.b ], [ %.sroa.021.2, %bb.t ]
  %.sroa.021.0 = phi i8 [ %.sroa.021.2, %bb.ah ], [ %.sroa.021.1, %bb.b ], [ %.sroa.021.2, %bb.t ]
  %i.z = trunc nuw i8 %.sroa.021.0 to i1
  %i.aa = load i64, ptr %i.t, align 8, !range !72
  %.not.i.i57 = icmp ne i64 %i.aa, 2
  %or.cond.not = select i1 %i.z, i1 %.not.i.i57, i1 false
  br i1 %or.cond.not, label %bb.az, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit59

bb.b:                                             ; preds = %.invoke, %bb.u, %bb.r, %bb.p, %bb.m, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyE11map_or_elseINtNtCsbSS6DM8SDEO_5alloc3vec3VecBI_ENvMB1J_B1G_3newNCNCINvNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits47instantiate_constituent_tys_for_sizedness_traitNtNtBM_6solver13SolverContextNtNtBM_8interner10DbInternerE0s_0EBO_.exit.i, %bb.j, %bb.f, %bb.e, %bb.ag, %bb.ad, %bb.aa, %bb.z
  %.sroa.023.1 = phi i8 [ %.sroa.021.2, %bb.u ], [ 1, %bb.ag ], [ 0, %bb.ad ], [ 0, %bb.aa ], [ 0, %bb.z ], [ %.sroa.021.2, %bb.r ], [ %.sroa.021.2, %bb.e ], [ %.sroa.021.2, %bb.f ], [ %.sroa.021.2, %.invoke ], [ %.sroa.021.2, %bb.j ], [ %.sroa.021.2, %bb.p ], [ %.sroa.021.2, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyE11map_or_elseINtNtCsbSS6DM8SDEO_5alloc3vec3VecBI_ENvMB1J_B1G_3newNCNCINvNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits47instantiate_constituent_tys_for_sizedness_traitNtNtBM_6solver13SolverContextNtNtBM_8interner10DbInternerE0s_0EBO_.exit.i ], [ %.sroa.021.2, %bb.m ]
  %.sroa.021.1 = phi i8 [ %.sroa.021.2, %bb.u ], [ 0, %bb.ag ], [ 0, %bb.ad ], [ 0, %bb.aa ], [ 0, %bb.z ], [ %.sroa.021.2, %bb.r ], [ %.sroa.021.2, %bb.e ], [ %.sroa.021.2, %bb.f ], [ %.sroa.021.2, %.invoke ], [ %.sroa.021.2, %bb.j ], [ %.sroa.021.2, %bb.p ], [ %.sroa.021.2, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyE11map_or_elseINtNtCsbSS6DM8SDEO_5alloc3vec3VecBI_ENvMB1J_B1G_3newNCNCINvNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits47instantiate_constituent_tys_for_sizedness_traitNtNtBM_6solver13SolverContextNtNtBM_8interner10DbInternerE0s_0EBO_.exit.i ], [ %.sroa.021.2, %bb.m ]
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.ae, %bb.ag, %bb.a
  %.sroa.021.2 = phi i8 [ 0, %bb.a ], [ 1, %bb.ag ], [ 1, %bb.ae ] ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ac = load ptr, ptr %i.u, align 8, !nonnull !37, !noundef !37 ; 6 uses
  store ptr %i.ac, ptr %i.m, align 8
  %4 = load i8, ptr %i.v, align 1, !range !63, !noundef !37 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i8 %4, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %1, ptr %i.ae, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !8064)
  %.sroa.0.0.copyload.i = load i32, ptr %i.ac, align 8, !noalias !8065 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !8065 ; 6 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !8065 ; 3 uses
  %i.af = icmp ne i32 %.sroa.0.0.copyload.i, 27
  call void @llvm.assume(i1 %i.af)
  %i.ag = add nsw i32 %.sroa.0.0.copyload.i, -2
  %i.ah = icmp samesign ugt i32 %.sroa.0.0.copyload.i, 1
  %narrow.i = select i1 %i.ah, i32 %i.ag, i32 25
  switch i32 %narrow.i, label %bb.d [
    i32 0, label %bb.e
    i32 1, label %bb.e
    i32 2, label %bb.e
    i32 3, label %bb.e
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
    i32 8, label %bb.e
    i32 9, label %bb.e
    i32 10, label %bb.h
    i32 11, label %bb.e
    i32 12, label %bb.e
    i32 13, label %bb.e
    i32 14, label %bb.e
    i32 15, label %bb.i
    i32 16, label %bb.h
    i32 17, label %bb.e
    i32 18, label %bb.e
    i32 19, label %bb.e
    i32 20, label %bb.e
    i32 21, label %bb.e
    i32 22, label %bb.j
    i32 23, label %bb.l
    i32 24, label %bb.l
    i32 25, label %bb.m
    i32 26, label %bb.l
    i32 27, label %bb.n
    i32 28, label %bb.e
  ], !prof !79

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.n, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8065
  store i64 0, ptr %i.i, align 8, !noalias !8065
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ai, align 8, !noalias !8065
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %i.aj, align 8, !noalias !8065
  invoke void @_RNvMs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtB14_2ty2TyEE5dummyB16_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8065
  br label %bb.ai

bb.f:                                             ; preds = %bb.c
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.10.0.copyload.i = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !8065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8065
  store ptr %.sroa.8.0.copyload.i, ptr %i.e, align 8, !noalias !8065
  %.sroa.10.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.10.16.extract.trunc.i = trunc i64 %.sroa.10.0.copyload.i to i32
  store i32 %.sroa.10.16.extract.trunc.i, ptr %.sroa.10.16..sroa_idx.i, align 8, !noalias !8065
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8065
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !8065, !nonnull !37, !align !43, !noundef !37
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.am, i64 32, i1 false), !noalias !8065
  %i.an = trunc nuw i8 %4 to i1
  %i.ao = invoke noundef ptr @_RNvXs3_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver8internerNtB5_6AdtDefINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent6AdtDefNtB5_10DbInternerE20sizedness_constraint(ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.d, i1 noundef zeroext %i.an)
          to label %.noexc44 unwind label %bb.b   ; 2 uses

.noexc44:                                         ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8065
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.g:                                             ; preds = %bb.c
  store i64 -1, ptr %i.n, align 8, !alias.scope !8064
  br label %bb.ai

bb.h:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.ap = trunc nuw i8 %4 to i1
  br i1 %i.ap, label %bb.u, label %bb.v

bb.i:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i), "nonnull"(ptr %.sroa.8.0.copyload.i) ]
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #57, !noalias !8065
  %i.aq = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 8) #57, !noalias !8065 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.invoke, label %_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit.exit.i, !prof !39

_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.i
  store ptr %.sroa.5.0.copyload.i, ptr %i.aq, align 8, !noalias !8065
  store i64 1, ptr %i.n, align 8, !alias.scope !8064
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.aq, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8064
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 1, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !alias.scope !8064
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %.sroa.8.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8064
  br label %bb.ai

bb.j:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8065
  %i.as = invoke noundef ptr @_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty3TysNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent9SliceLike4lastB8_(ptr noundef nonnull %.sroa.5.0.copyload.i)
          to label %.noexc46 unwind label %bb.b   ; 2 uses

.noexc46:                                         ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !8066)
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyE11map_or_elseINtNtCsbSS6DM8SDEO_5alloc3vec3VecBI_ENvMB1J_B1G_3newNCNCINvNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits47instantiate_constituent_tys_for_sizedness_traitNtNtBM_6solver13SolverContextNtNtBM_8interner10DbInternerE0s_0EBO_.exit.i, label %bb.k

bb.k:                                             ; preds = %.noexc46
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #57, !noalias !8067
  %i.at = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 8) #57, !noalias !8067 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.invoke, label %_RNCNCINvNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits47instantiate_constituent_tys_for_sizedness_traitNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB2k_8interner10DbInternerE0s_0B2m_.exit.i.i, !prof !39

_RNCNCINvNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits47instantiate_constituent_tys_for_sizedness_traitNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB2k_8interner10DbInternerE0s_0B2m_.exit.i.i: ; preds = %bb.k
  store ptr %i.as, ptr %i.at, align 8, !noalias !8067
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyE11map_or_elseINtNtCsbSS6DM8SDEO_5alloc3vec3VecBI_ENvMB1J_B1G_3newNCNCINvNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits47instantiate_constituent_tys_for_sizedness_traitNtNtBM_6solver13SolverContextNtNtBM_8interner10DbInternerE0s_0EBO_.exit.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyE11map_or_elseINtNtCsbSS6DM8SDEO_5alloc3vec3VecBI_ENvMB1J_B1G_3newNCNCINvNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits47instantiate_constituent_tys_for_sizedness_traitNtNtBM_6solver13SolverContextNtNtBM_8interner10DbInternerE0s_0EBO_.exit.i: ; preds = %_RNCNCINvNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits47instantiate_constituent_tys_for_sizedness_traitNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB2k_8interner10DbInternerE0s_0B2m_.exit.i.i, %.noexc46
  %.sink8.i.i = phi i64 [ 1, %_RNCNCINvNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits47instantiate_constituent_tys_for_sizedness_traitNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB2k_8interner10DbInternerE0s_0B2m_.exit.i.i ], [ 0, %.noexc46 ] ; 2 uses
  %.sink6.i.i = phi ptr [ %i.at, %_RNCNCINvNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits47instantiate_constituent_tys_for_sizedness_traitNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB2k_8interner10DbInternerE0s_0B2m_.exit.i.i ], [ inttoptr (i64 8 to ptr), %.noexc46 ]
  store i64 %.sink8.i.i, ptr %i.f, align 8, !alias.scope !8066, !noalias !8065
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sink6.i.i, ptr %i.av, align 8, !alias.scope !8066, !noalias !8065
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sink8.i.i, ptr %i.aw, align 8, !alias.scope !8066, !noalias !8065
  invoke void @_RNvMs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtB14_2ty2TyEE5dummyB16_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68)
          to label %.noexc48 unwind label %bb.b

.noexc48:                                         ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyE11map_or_elseINtNtCsbSS6DM8SDEO_5alloc3vec3VecBI_ENvMB1J_B1G_3newNCNCINvNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits47instantiate_constituent_tys_for_sizedness_traitNtNtBM_6solver13SolverContextNtNtBM_8interner10DbInternerE0s_0EBO_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8065
  br label %bb.ai

bb.l:                                             ; preds = %bb.c, %bb.c, %bb.c
  store i64 -1, ptr %i.n, align 8, !alias.scope !8064
  br label %bb.ai

bb.m:                                             ; preds = %bb.n, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8065
  store ptr %i.m, ptr %i.g, align 8, !noalias !8065
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB5_2TyNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !8065
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @26, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #55
          to label %.noexc49 unwind label %bb.b

.noexc49:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.c
  %.sroa.4.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx13.i, align 4, !noalias !8065
  %.off.i = add i32 %.sroa.4.0.copyload.i, -1
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %bb.e, label %bb.m, !prof !80

bb.o:                                             ; preds = %.noexc44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8065
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #57, !noalias !8065
  %i.ax = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 8) #57, !noalias !8065 ; 4 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.invoke, label %bb.q, !prof !39

.invoke:                                          ; preds = %bb.o, %bb.k, %bb.i
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #59
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.p:                                             ; preds = %.noexc44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8065
  store i64 0, ptr %i.a, align 8, !noalias !8065
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.az, align 8, !noalias !8065
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.ba, align 8, !noalias !8065
  invoke void @_RNvMs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtB14_2ty2TyEE5dummyB16_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66)
          to label %.noexc51 unwind label %bb.b

.noexc51:                                         ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8065
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8065
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.am, i64 32, i1 false), !noalias !8065
  %i.bb = invoke noundef nonnull ptr @_RINvMsq_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB6_11EarlyBinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB1b_2ty2TyE11instantiateNtNtB1b_11generic_arg11GenericArgsEB1d_(ptr noundef nonnull %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b, ptr noundef nonnull %.sroa.5.0.copyload.i)
          to label %bb.r unwind label %bb.t, !noalias !8065

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8065
  store ptr %i.bb, ptr %i.ax, align 8, !noalias !8065
  store i64 1, ptr %i.c, align 8, !noalias !8065
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ax, ptr %i.bc, align 8, !noalias !8065
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1, ptr %i.bd, align 8, !noalias !8065
  invoke void @_RNvMs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtB14_2ty2TyEE5dummyB16_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65)
          to label %.noexc52 unwind label %bb.b

.noexc52:                                         ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8065
  br label %bb.s

bb.s:                                             ; preds = %.noexc52, %.noexc51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8065
  br label %bb.ai

bb.t:                                             ; preds = %bb.q
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ax, i64 noundef 8, i64 noundef 8) #57, !noalias !8065
  br label %.body

bb.u:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8065
  store i64 0, ptr %i.h, align 8, !noalias !8065
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bf, align 8, !noalias !8065
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %i.bg, align 8, !noalias !8065
  invoke void @_RNvMs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtB14_2ty2TyEE5dummyB16_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67)
          to label %.noexc53 unwind label %bb.b

.noexc53:                                         ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8065
  br label %bb.ai

bb.v:                                             ; preds = %bb.h
  store i64 -1, ptr %i.n, align 8, !alias.scope !8064
  br label %bb.ai

bb.w:                                             ; preds = %bb.a
  %i.bh = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.y, %bb.w, %bb.ac, %bb.ab
  store i64 2, ptr %i.o, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr null, ptr %i.bj, align 8
  br label %bb.ae

bb.y:                                             ; preds = %bb.w
  %i.bk = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits47instantiate_constituent_tys_for_sizedness_trait10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.bk, label %bb.z [
    i8 0, label %bb.x
    i8 1, label %bb.aa
    i8 2, label %bb.aa
  ], !prof !71

bb.z:                                             ; preds = %bb.y
  %i.bl = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits47instantiate_constituent_tys_for_sizedness_trait10___CALLSITE)
          to label %bb.ab unwind label %bb.b      ; 2 uses

bb.aa:                                            ; preds = %bb.y, %bb.y, %bb.ab
  %.sroa.010.0 = phi i8 [ %i.bl, %bb.ab ], [ %i.bk, %bb.y ], [ %i.bk, %bb.y ]
  %i.bm = load ptr, ptr @_RNvNvNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits47instantiate_constituent_tys_for_sizedness_trait10___CALLSITE, align 8, !nonnull !37, !align !43, !noundef !37
  %i.bn = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bm, i8 noundef %.sroa.010.0)
          to label %bb.ac unwind label %bb.b

bb.ab:                                            ; preds = %bb.z
  %.not = icmp eq i8 %i.bl, 0
  br i1 %.not, label %bb.x, label %bb.aa

bb.ac:                                            ; preds = %bb.aa
  br i1 %i.bn, label %bb.ad, label %bb.x

bb.ad:                                            ; preds = %bb.ac
  %i.bo = load ptr, ptr @_RNvNvNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits47instantiate_constituent_tys_for_sizedness_trait10___CALLSITE, align 8, !nonnull !37, !align !43, !noundef !37 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.v, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.u, ptr %i.p, align 8
  store ptr %i.q, ptr %i.r, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @32, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.p, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr @14, ptr %i.bs, align 8
  store i64 1, ptr %i.s, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.r, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.bp, ptr %i.bt, align 8
  invoke void @_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s)
          to label %bb.af unwind label %bb.b

bb.ae:                                            ; preds = %bb.af, %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false)
  %i.bu = load i64, ptr %i.t, align 8, !range !72, !noundef !37
  %.not39 = icmp eq i64 %i.bu, 2
  br i1 %.not39, label %bb.c, label %bb.ag

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.ae

bb.ag:                                            ; preds = %bb.ae
  %i.bv = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bv)
          to label %bb.c unwind label %bb.b

bb.ah:                                            ; preds = %bb.ap, %bb.al, %bb.ak
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtB1T_2ty2TyEENtNtB12_5solve10NoSolutionEEB1V_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n) #56
          to label %.body unwind label %bb.ay

bb.ai:                                            ; preds = %.noexc, %bb.g, %_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit.exit.i, %.noexc48, %bb.l, %bb.s, %.noexc53, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.bx = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.bz = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits47instantiate_constituent_tys_for_sizedness_traits_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.bz, label %bb.ak [
    i8 0, label %bb.ao
    i8 1, label %bb.al
    i8 2, label %bb.al
  ], !prof !71

bb.ak:                                            ; preds = %bb.aj
  %i.ca = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits47instantiate_constituent_tys_for_sizedness_traits_10___CALLSITE)
          to label %bb.am unwind label %bb.ah     ; 2 uses

bb.al:                                            ; preds = %bb.aj, %bb.aj, %bb.am
  %.sroa.018.0 = phi i8 [ %i.ca, %bb.am ], [ %i.bz, %bb.aj ], [ %i.bz, %bb.aj ]
  %i.cb = load ptr, ptr @_RNvNvNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits47instantiate_constituent_tys_for_sizedness_traits_10___CALLSITE, align 8, !nonnull !37, !align !43, !noundef !37
  %i.cc = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cb, i8 noundef %.sroa.018.0)
          to label %bb.an unwind label %bb.ah

bb.am:                                            ; preds = %bb.ak
  %i.cd = icmp eq i8 %i.ca, 0
  br i1 %i.cd, label %bb.ao, label %bb.al

bb.an:                                            ; preds = %bb.al
  br i1 %i.cc, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.aj, %bb.ai, %bb.aq, %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ce = trunc nuw i8 %.sroa.021.2 to i1
  %i.cf = load i64, ptr %i.t, align 8, !range !72
  %.not.i.i54 = icmp ne i64 %i.cf, 2
  %or.cond68.not = select i1 %i.ce, i1 %.not.i.i54, i1 false
  br i1 %or.cond68.not, label %bb.ar, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit

bb.ap:                                            ; preds = %bb.an
  %i.cg = load ptr, ptr @_RNvNvNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits47instantiate_constituent_tys_for_sizedness_traits_10___CALLSITE, align 8, !nonnull !37, !align !43, !noundef !37 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.n, ptr %i.k, align 8
  store ptr %i.k, ptr %i.l, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @30, ptr %i.ci, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 1, ptr %i.j, align 8
  %.sroa.020.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.l, ptr %.sroa.020.sroa.4.0..sroa_idx, align 8
  %.sroa.020.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 1, ptr %.sroa.020.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.ch, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j)
          to label %bb.aq unwind label %bb.ah

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ao

bb.ar:                                            ; preds = %bb.ao
  %i.cj = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cj)
          to label %.thread unwind label %.thread60

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit59: ; preds = %bb.az, %.body
  %i.ck = trunc nuw i8 %.sroa.023.0 to i1
  br i1 %i.ck, label %bb.ba, label %common.resume

.thread60:                                        ; preds = %bb.ar
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.aw, %bb.av, %bb.au, %.thread, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  ret void

.thread:                                          ; preds = %bb.ar
  %.pr = load i64, ptr %i.t, align 8, !alias.scope !8068 ; 2 uses
  %.not.i.i56 = icmp eq i64 %.pr, 2
  br i1 %.not.i.i56, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit, label %bb.as

bb.as:                                            ; preds = %.thread
  %i.cm = load i64, ptr %i.cj, align 8, !range !73, !alias.scope !8069, !noundef !37
  %i.cn = invoke noundef zeroext i1 @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.t, i64 noundef %i.cm)
          to label %bb.au unwind label %bb.at     ; 0 uses

bb.at:                                            ; preds = %bb.as
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbDqbwph1Irx_7tracing4span5InnerEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.t) #56
          to label %common.resume unwind label %bb.ax

bb.au:                                            ; preds = %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !8070)
  call void @llvm.experimental.noalias.scope.decl(metadata !8071)
  call void @llvm.experimental.noalias.scope.decl(metadata !8072)
  call void @llvm.experimental.noalias.scope.decl(metadata !8073)
  %i.cp = icmp eq i64 %.pr, 0
  br i1 %i.cp, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cq = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8074)
  call void @llvm.experimental.noalias.scope.decl(metadata !8075)
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !8076, !nonnull !37, !noundef !37
  %i.cs = atomicrmw add ptr %i.cr, i64 -1 release, align 8, !noalias !8077
  %i.ct = icmp eq i64 %i.cs, 1
  br i1 %i.ct, label %bb.aw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit

bb.aw:                                            ; preds = %bb.av
  fence acquire
  call void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcDNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10SubscriberNtNtCshzWfHUSfYae_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cq) #53
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit

bb.ax:                                            ; preds = %bb.at
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #58
  unreachable

common.resume:                                    ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit59, %bb.ba, %bb.at
  %common.resume.op = phi { ptr, i32 } [ %i.co, %bb.at ], [ %.pn4164, %bb.ba ], [ %.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit59 ]
  resume { ptr, i32 } %common.resume.op

bb.ay:                                            ; preds = %bb.az, %bb.ba, %bb.ah
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.az:                                            ; preds = %.body
  %i.cw = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cw)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit59 unwind label %bb.ay

bb.ba:                                            ; preds = %.thread60, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit59
  %.pn4164 = phi { ptr, i32 } [ %i.cl, %.thread60 ], [ %.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit59 ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 dereferenceable(40) %i.t) #56
          to label %common.resume unwind label %bb.ay
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits48instantiate_constituent_tys_for_copy_clone_traitNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB2h_8interner10DbInternerEB2j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !8097 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [32 x i8], align 8                ; 17 uses
  %i.s = alloca [40 x i8], align 8                ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [40 x i8], align 8                ; 17 uses
  %i.x = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.y = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.w, label %bb.c

.body:                                            ; preds = %bb.b, %bb.t, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.cb, %bb.ah ], [ %i.ac, %bb.b ], [ %.pn.i, %bb.t ] ; 2 uses
  %.sroa.023.0 = phi i8 [ %.sroa.021.2, %bb.ah ], [ %.sroa.023.1, %bb.b ], [ %.sroa.021.2, %bb.t ]
  %.sroa.021.0 = phi i8 [ %.sroa.021.2, %bb.ah ], [ %.sroa.021.1, %bb.b ], [ %.sroa.021.2, %bb.t ]
  %i.aa = trunc nuw i8 %.sroa.021.0 to i1
  %i.ab = load i64, ptr %i.w, align 8, !range !72
  %.not.i.i59 = icmp ne i64 %i.ab, 2
  %or.cond.not = select i1 %i.aa, i1 %.not.i.i59, i1 false
  br i1 %or.cond.not, label %bb.az, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit61

bb.b:                                             ; preds = %.invoke, %bb.v, %bb.s, %bb.p, %.noexc52, %bb.o, %.noexc50, %.noexc49, %bb.n, %bb.m, %bb.i, %_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit.exit.i, %bb.ag, %bb.ad, %bb.aa, %bb.z
end_hunk_0
