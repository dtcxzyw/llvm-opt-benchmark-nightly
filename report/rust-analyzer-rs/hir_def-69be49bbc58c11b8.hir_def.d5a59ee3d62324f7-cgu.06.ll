Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.06?download=true
inline.NumInlined: 3669
inline.NumDeleted: 1647
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres15path_resolutionNtB7_6DefMap28resolve_in_macro_use_prelude:bb.a
  %i.ak = load i32, ptr %i.aj, align 4, !alias.scope !6296, !noalias !6297
  %.sroa.56.sroa.4.0.i.i = select i1 %.not.i.i, i32 undef, i32 %i.ak
  %.sroa.04.0.i.i = select i1 %.not.i.i, i32 -1, i32 2
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 -2, ptr %i.al, align 4, !alias.scope !6298, !noalias !6299
  store i32 -1, ptr %0, align 4, !alias.scope !6298, !noalias !6299
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.am, ptr noundef nonnull readonly align 4 dereferenceable(20) dereferenceable_or_null(20) %i.ag, i64 12, i1 false), !alias.scope !6300, !noalias !6293
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.sroa.04.0.i.i, ptr %.sroa.420.0..sroa_idx.i.i, align 4, !alias.scope !6298, !noalias !6299
  %.sroa.521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.ai, ptr %.sroa.521.0..sroa_idx.i.i, align 4, !alias.scope !6298, !noalias !6299
  %.sroa.622.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.sroa.56.sroa.4.0.i.i, ptr %.sroa.622.0..sroa_idx.i.i, align 4, !alias.scope !6298, !noalias !6299
  %.sroa.824.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 2, ptr %.sroa.824.0..sroa_idx.i.i, align 4, !alias.scope !6298, !noalias !6299
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRTNtCsileJQcQObtj_7hir_def7MacroIdIBw_NtBM_13ExternCrateIdEEE6map_orNtNtBM_6per_ns5PerNsNCNvMs0_NtNtBM_7nameres15path_resolutionNtB2i_6DefMap28resolve_in_macro_use_prelude0EBM_.exit

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.a
  store i32 -1, ptr %0, align 4, !alias.scope !6301, !noalias !6292
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 -1, ptr %.sroa.46.0..sroa_idx, align 4, !alias.scope !6301, !noalias !6292
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 -2, ptr %.sroa.57.0..sroa_idx, align 4, !alias.scope !6301, !noalias !6292
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRTNtCsileJQcQObtj_7hir_def7MacroIdIBw_NtBM_13ExternCrateIdEEE6map_orNtNtBM_6per_ns5PerNsNCNvMs0_NtNtBM_7nameres15path_resolutionNtB2i_6DefMap28resolve_in_macro_use_prelude0EBM_.exit

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRTNtCsileJQcQObtj_7hir_def7MacroIdIBw_NtBM_13ExternCrateIdEEE6map_orNtNtBM_6per_ns5PerNsNCNvMs0_NtNtBM_7nameres15path_resolutionNtB2i_6DefMap28resolve_in_macro_use_prelude0EBM_.exit: ; preds = %bb.f, %select.unfold
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres15path_resolutionNtB7_6DefMap30resolve_name_in_extern_prelude(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 4 captures(none) dereferenceable(128) initializes((0, 4), (44, 48), (84, 88)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(232) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef align 4 ptr @_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtCshzWfHUSfYae_4core6option6OptionNtB1v_13ExternCrateIdEENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1v_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3) ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6311)
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRTNtCsileJQcQObtj_7hir_def10ModuleIdLtIBw_NtBM_13ExternCrateIdEEE6map_orNtNtBM_6per_ns5PerNsNCNvMs0_NtNtBM_7nameres15path_resolutionNtB2m_6DefMap30resolve_name_in_extern_prelude0EBM_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6313)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 4, !alias.scope !6314, !noalias !6315, !noundef !31 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.e = load i32, ptr %i.d, align 4, !alias.scope !6314, !noalias !6315
  %.sroa.510.sroa.4.0.i.i = select i1 %.not.i.i, i32 undef, i32 %i.e
  %.sroa.08.0.i.i = select i1 %.not.i.i, i32 -1, i32 2
  %.sroa.421.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.c, ptr %.sroa.421.0..sroa_idx.i.i, align 4, !alias.scope !6316, !noalias !6317
  %.sroa.522.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %.sroa.510.sroa.4.0.i.i, ptr %.sroa.522.0..sroa_idx.i.i, align 4, !alias.scope !6316, !noalias !6317
  %.sroa.724.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i8 2, ptr %.sroa.724.0..sroa_idx.i.i, align 4, !alias.scope !6316, !noalias !6317
  %.sroa.926.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %.sroa.926.0..sroa_idx.i.i, align 4, !alias.scope !6316, !noalias !6317
  %.sroa.1128.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.f = load <2 x i32>, ptr %i.a, align 4, !alias.scope !6314, !noalias !6315
  store <2 x i32> %i.f, ptr %.sroa.1128.0..sroa_idx.i.i, align 4, !alias.scope !6316, !noalias !6317
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRTNtCsileJQcQObtj_7hir_def10ModuleIdLtIBw_NtBM_13ExternCrateIdEEE6map_orNtNtBM_6per_ns5PerNsNCNvMs0_NtNtBM_7nameres15path_resolutionNtB2m_6DefMap30resolve_name_in_extern_prelude0EBM_.exit

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRTNtCsileJQcQObtj_7hir_def10ModuleIdLtIBw_NtBM_13ExternCrateIdEEE6map_orNtNtBM_6per_ns5PerNsNCNvMs0_NtNtBM_7nameres15path_resolutionNtB2m_6DefMap30resolve_name_in_extern_prelude0EBM_.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0.i.i.sink = phi i32 [ %.sroa.08.0.i.i, %bb.b ], [ -2, %bb.a ]
  store i32 -1, ptr %0, align 4, !alias.scope !6318, !noalias !6310
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 -1, ptr %i.g, align 4, !alias.scope !6318, !noalias !6310
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %.sroa.08.0.i.i.sink, ptr %i.h, align 4, !alias.scope !6318, !noalias !6310
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres15path_resolutionNtB7_6DefMap33resolve_path_fp_with_macro_single(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(152) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %4, i1 noundef zeroext %5, i32 noundef range(i32 1, 0) %6, i32 noundef %7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %8, i1 noundef zeroext %9, i8 noundef range(i8 0, 3) %10) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 4                 ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [8 x i8], align 4                 ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 4                 ; 5 uses
  %i.g = alloca [8 x i8], align 4                 ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 4                 ; 5 uses
  %i.j = alloca [8 x i8], align 4                 ; 5 uses
  %i.k = alloca [40 x i8], align 8                ; 8 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [128 x i8], align 4               ; 4 uses
  %i.o = alloca [8 x i8], align 4                 ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
  %i.q = alloca [8 x i8], align 4                 ; 5 uses
  %i.r = alloca [8 x i8], align 4                 ; 5 uses
  %.sroa.320.i72.sroa.7.i = alloca [12 x i8], align 4 ; 9 uses
  %.sroa.320.i72.sroa.11.i = alloca [11 x i8], align 1 ; 7 uses
  %.sroa.312.i73.i = alloca [40 x i8], align 4    ; 9 uses
  %.sroa.3.i74.i = alloca [40 x i8], align 4      ; 8 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [32 x i8], align 8                ; 6 uses
  %i.v = alloca [8 x i8], align 4                 ; 5 uses
  %i.w = alloca [8 x i8], align 4                 ; 5 uses
  %i.x = alloca [32 x i8], align 8                ; 6 uses
  %i.y = alloca [8 x i8], align 4                 ; 5 uses
  %i.z = alloca [8 x i8], align 4                 ; 5 uses
  %i.aa = alloca [128 x i8], align 4              ; 13 uses
  %i.ab = alloca [128 x i8], align 4              ; 4 uses
  %i.ac = alloca [128 x i8], align 4              ; 4 uses
  %i.ad = alloca [40 x i8], align 8               ; 8 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.6103.i = alloca [40 x i8], align 4       ; 6 uses
  %.sroa.14.sroa.5.i = alloca [12 x i8], align 4  ; 6 uses
  %.sroa.14.sroa.7.i = alloca [11 x i8], align 1  ; 6 uses
  %.sroa.22.i = alloca [40 x i8], align 4         ; 6 uses
  %i.af = alloca [128 x i8], align 4              ; 4 uses
  %i.ag = alloca [128 x i8], align 4              ; 31 uses
  %i.ah = alloca [12 x i8], align 4               ; 6 uses
  %i.ai = alloca [8 x i8], align 4                ; 6 uses
  %i.aj = alloca [40 x i8], align 8               ; 8 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [24 x i8], align 8               ; 4 uses
  %i.am = alloca [128 x i8], align 4              ; 29 uses
  %i.an = alloca [128 x i8], align 4              ; 7 uses
  %i.ao = alloca [40 x i8], align 8               ; 6 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [16 x i8], align 8               ; 5 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [32 x i8], align 8               ; 7 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %i.aw = alloca [16 x i8], align 8               ; 5 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  %i.ay = alloca [32 x i8], align 8               ; 7 uses
  %i.az = alloca [8 x i8], align 8                ; 4 uses
  %i.ba = alloca [16 x i8], align 8               ; 5 uses
  %i.bb = alloca [16 x i8], align 8               ; 5 uses
  %i.bc = alloca [16 x i8], align 8               ; 5 uses
  %i.bd = alloca [32 x i8], align 8               ; 7 uses
  %i.be = alloca [8 x i8], align 8                ; 4 uses
  %i.bf = alloca [24 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  %i.bg = tail call { ptr, i64 } @_RNvMs_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB4_7ModPath8segments(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %8) ; 2 uses
  %i.bh = extractvalue { ptr, i64 } %i.bg, 0      ; 15 uses
  %i.bi = extractvalue { ptr, i64 } %i.bg, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bh) ]
  %.idx = shl nuw nsw i64 %i.bi, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.idx
  store ptr %i.bh, ptr %i.bf, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bj, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 3 uses
  store i64 0, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bn = load i8, ptr %i.bm, align 8, !range !58, !noundef !31
  switch i8 %i.bn, label %default.unreachable295 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.e
    i8 3, label %bb.h
    i8 4, label %bb.i
  ]

default.unreachable295:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !31, !noundef !31
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 187
  %i.br = load i8, ptr %i.bq, align 1, !range !57, !noundef !31
  %i.bs = icmp ne i8 %i.br, 0
  %brmerge = or i1 %5, %i.bs
  br i1 %brmerge, label %bb.j, label %_RNvXsh_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit138

bb.c:                                             ; preds = %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 25
  %i.bu = load i8, ptr %i.bt, align 1, !noundef !31 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6449)
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val8.i = load i32, ptr %i.bv, align 8, !range !34, !alias.scope !6449, !noalias !6450, !noundef !31
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 92
  %.val9.i = load i32, ptr %i.bw, align 4, !alias.scope !6449, !noalias !6450, !noundef !31
  %i.bx = icmp ne i32 %.val9.i, %7
  %i.by = icmp ne i32 %.val8.i, %6
  %.sroa.0.0.i.not53.i = or i1 %i.by, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ca = load i32, ptr %i.bz, align 8, !alias.scope !6449, !noalias !6450 ; 2 uses
  %.not31.i = icmp eq i32 %i.ca, 0                ; 2 uses
  %or.cond.i = select i1 %.sroa.0.0.i.not53.i, i1 true, i1 %.not31.i
  br i1 %or.cond.i, label %_RNvNtNtCsileJQcQObtj_7hir_def7nameres15path_resolution34adjust_to_nearest_non_block_module.exit, label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ce, i64 200
  %i.cc = load i32, ptr %i.cb, align 8, !noalias !6451, !noundef !31
  %.not.i104 = icmp eq i32 %i.cc, 0
  br i1 %.not.i104, label %_RNvNtNtCsileJQcQObtj_7hir_def7nameres15path_resolution34adjust_to_nearest_non_block_module.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.sroa.0.032.i = phi ptr [ %i.ce, %bb.d ], [ %1, %bb.c ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i, i64 208
  %11 = load <2 x i32>, ptr %i.cd, align 8, !noalias !6452 ; 3 uses
  %12 = extractelement <2 x i32> %11, i64 0       ; 3 uses
  %13 = extractelement <2 x i32> %11, i64 1       ; 3 uses
  %i.ce = tail call noundef nonnull align 8 ptr @_RNvMsn_CsileJQcQObtj_7hir_defNtB5_10ModuleIdLt7def_map(i32 noundef %12, i32 noundef %13, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %4), !noalias !6451 ; 5 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 88
  %14 = load i64, ptr %i.cf, align 8, !noalias !6451
  %.scalar310 = bitcast <2 x i32> %11 to i64
  %i.cg = icmp eq i64 %14, %.scalar310
  br i1 %i.cg, label %bb.d, label %_RNvNtNtCsileJQcQObtj_7hir_def7nameres15path_resolution34adjust_to_nearest_non_block_module.exit

_RNvNtNtCsileJQcQObtj_7hir_def7nameres15path_resolution34adjust_to_nearest_non_block_module.exit: ; preds = %bb.d, %.lr.ph.i, %bb.c
  %.lcssa44.sink.i = phi ptr [ %1, %bb.c ], [ %i.ce, %.lr.ph.i ], [ %i.ce, %bb.d ] ; 2 uses
  %.lcssa48.sink.i = phi i32 [ %6, %bb.c ], [ %12, %.lr.ph.i ], [ %12, %bb.d ] ; 2 uses
  %.lcssa46.sink.i = phi i32 [ %7, %bb.c ], [ %13, %.lr.ph.i ], [ %13, %bb.d ] ; 2 uses
  %.not263 = icmp eq i8 %i.bu, 0
  br i1 %.not263, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvNtNtCsileJQcQObtj_7hir_def7nameres15path_resolution34adjust_to_nearest_non_block_module.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  br label %bb.at

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6454)
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ck = load i32, ptr %i.cj, align 8, !alias.scope !6453, !noalias !6454, !noundef !31
  %.not.i105 = icmp eq i32 %i.ck, 0
  br i1 %.not.i105, label %_RNvMs5_NtCsileJQcQObtj_7hir_def7nameresNtB5_6DefMap10crate_root.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6455)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !6456
  %i.cm = load <2 x i32>, ptr %i.cl, align 8, !alias.scope !6453, !noalias !6454
  store <2 x i32> %i.cm, ptr %i.ak, align 8, !noalias !6457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !6457
  store ptr %3, ptr %i.aj, align 8, !noalias !6457
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %4, ptr %i.cn, align 8, !noalias !6457
  %i.co = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %3, ptr %i.co, align 8, !noalias !6457
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %4, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !6457
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.ak, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !6457
  %i.cp = call noundef nonnull align 4 ptr @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachRNtNtCsileJQcQObtj_7hir_def7nameres10DefMapPairDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvB1W_19crate_local_def_map0E0B1T_EB1Y_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @231, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.aj), !noalias !6453 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !6457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !6456
  %i.cq = load i32, ptr %i.cp, align 4, !range !34, !noalias !6453, !noundef !31
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !noalias !6453, !noundef !31
  call void @llvm.experimental.noalias.scope.decl(metadata !6458)
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !invariant.load !31, !alias.scope !6459, !noalias !6453, !nonnull !31
  %i.cv = call { ptr, ptr } %i.cu(ptr noundef nonnull %3) #41, !noalias !6460, !inline_history !6332 ; 2 uses
  %i.cw = extractvalue { ptr, ptr } %i.cv, 0      ; 4 uses
  %i.cx = load atomic i32, ptr @_RNvNvMs0_NvNtCsileJQcQObtj_7hir_def7nameres1__NtB9_10DefMapPair11ingredient_5CACHE acquire, align 4, !noalias !6461 ; 2 uses
  %i.cy = icmp eq i32 %i.cx, -1
  br i1 %i.cy, label %bb.g, label %_RNvNtCsileJQcQObtj_7hir_def7nameres13crate_def_map.exit.i, !prof !44

bb.g:                                             ; preds = %bb.f
  %i.cz = call noundef i32 @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_14tracked_struct14IngredientImplNtNtCsileJQcQObtj_7hir_def7nameres10DefMapPairEE24get_or_create_index_slowNCNvMs0_NvB1S_1__B1Q_11ingredient_0EB1U_(ptr noundef nonnull align 4 @_RNvNvMs0_NvNtCsileJQcQObtj_7hir_def7nameres1__NtB9_10DefMapPair11ingredient_5CACHE, ptr noundef nonnull align 8 %i.cw) #40, !noalias !6460
  br label %_RNvNtCsileJQcQObtj_7hir_def7nameres13crate_def_map.exit.i

_RNvNtCsileJQcQObtj_7hir_def7nameres13crate_def_map.exit.i: ; preds = %bb.g, %bb.f
  %.sink5.i.i.i.i.i = phi i32 [ %i.cz, %bb.g ], [ %i.cx, %bb.f ]
  %i.da = extractvalue { ptr, ptr } %i.cv, 1
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !6460, !nonnull !31, !noundef !31
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %i.de = load i64, ptr %i.dd, align 8, !noalias !6460, !noundef !31
  %i.df = zext i32 %.sink5.i.i.i.i.i to i64       ; 2 uses
  %i.dg = icmp ugt i64 %i.de, %i.df
  call void @llvm.assume(i1 %i.dg)
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.df
  %.sroa.0.0.i.i.i.i.i = load ptr, ptr %i.dh, align 8, !noalias !6460, !nonnull !31, !noundef !31
  %i.di = call noundef nonnull align 8 ptr @_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtNtCsileJQcQObtj_7hir_def7nameres10DefMapPairE13tracked_fieldB17_(ptr noundef nonnull align 128 %.sroa.0.0.i.i.i.i.i, ptr noundef nonnull align 8 %i.cw, ptr noundef nonnull align 8 %i.da, i32 noundef range(i32 1, 0) %i.cq, i32 noundef %i.cs, i64 noundef 0), !noalias !6460
  br label %_RNvMs5_NtCsileJQcQObtj_7hir_def7nameresNtB5_6DefMap10crate_root.exit

_RNvMs5_NtCsileJQcQObtj_7hir_def7nameresNtB5_6DefMap10crate_root.exit: ; preds = %bb.e, %_RNvNtCsileJQcQObtj_7hir_def7nameres13crate_def_map.exit.i
  %.pn.i = phi ptr [ %i.di, %_RNvNtCsileJQcQObtj_7hir_def7nameres13crate_def_map.exit.i ], [ %1, %bb.e ]
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 88
  %i.dj = getelementptr inbounds nuw i8, ptr %i.am, i64 84
  store i32 -1, ptr %i.dj, align 4, !noalias !6462
  %.sroa.5209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 100
  store i8 2, ptr %.sroa.5209.0..sroa_idx, align 4, !noalias !6462
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 112
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 4, !noalias !6462
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 116
  %i.dk = load <2 x i32>, ptr %.sroa.0.0.in.i, align 8
  store <2 x i32> %i.dk, ptr %.sroa.9.0..sroa_idx, align 4, !noalias !6462
  store i32 -1, ptr %i.am, align 4, !alias.scope !6463, !noalias !6462
  %i.dl = getelementptr inbounds nuw i8, ptr %i.am, i64 44
  store i32 -1, ptr %i.dl, align 4, !alias.scope !6463, !noalias !6462
  br label %bb.as

bb.h:                                             ; preds = %bb.a
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.dn = load ptr, ptr %i.dm, align 8, !nonnull !31, !noundef !31
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 187
  %i.dp = load i8, ptr %i.do, align 1, !range !57, !noundef !31
  %i.dq = icmp eq i8 %i.dp, 0
  br i1 %i.dq, label %_RNvXsh_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit138, label %bb.br

bb.i:                                             ; preds = %bb.a
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.ds = load i32, ptr %i.dr, align 4, !range !34, !noundef !31 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.du = load i32, ptr %i.dt, align 8, !noundef !31 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.dw = load i32, ptr %i.dv, align 4, !noundef !31
  %i.dx = icmp eq i32 %i.du, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dz = load i32, ptr %i.dy, align 8, !range !34
  %i.ea = icmp eq i32 %i.ds, %i.dz
  %or.cond = select i1 %i.dx, i1 %i.ea, i1 false
  br i1 %or.cond, label %bb.cm, label %bb.ch

bb.j:                                             ; preds = %bb.b
  %i.eb = icmp eq i64 %i.bi, 0
  br i1 %i.eb, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.ec, ptr %i.bf, align 8, !alias.scope !6464
  store i64 1, ptr %i.bl, align 8, !alias.scope !6465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store ptr %i.bh, ptr %i.az, align 8, !captures !42
  %i.ed = tail call { ptr, i64 } @_RNvMs_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB4_7ModPath8segments(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %8)
  %i.ee = extractvalue { ptr, i64 } %i.ed, 1
  %i.ef = icmp eq i64 %i.ee, 1
  %. = and i1 %9, %i.ef
  %i.eg = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.eh = icmp ult i64 %i.eg, 2
  br i1 %i.eh, label %bb.m, label %.critedge

bb.l:                                             ; preds = %bb.j
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1, ptr %i.ei, align 8, !alias.scope !6466
  %.sroa.01.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 -1, ptr %.sroa.01.sroa.5.0..sroa_idx.i, align 4, !alias.scope !6466
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 -2, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !6466
  store i64 0, ptr %0, align 8, !alias.scope !6466
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 146
  store i8 0, ptr %i.ej, align 2, !alias.scope !6466
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 0, ptr %i.ek, align 8, !alias.scope !6466
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 145
  store i8 0, ptr %i.el, align 1, !alias.scope !6466
  br label %bb.bw

bb.m:                                             ; preds = %bb.k
  %i.em = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres15path_resolutionNtB9_6DefMap33resolve_path_fp_with_macro_singles_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.em, label %bb.n [
    i8 0, label %.critedge
    i8 1, label %bb.o
    i8 2, label %bb.o
  ], !prof !41

bb.n:                                             ; preds = %bb.m
  %i.en = tail call noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres15path_resolutionNtB9_6DefMap33resolve_path_fp_with_macro_singles_10___CALLSITE) #40 ; 2 uses
  %i.eo = icmp eq i8 %i.en, 0
  br i1 %i.eo, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.m, %bb.n
  %.sroa.023.0 = phi i8 [ %i.en, %bb.n ], [ %i.em, %bb.m ], [ %i.em, %bb.m ]
  %i.ep = load ptr, ptr @_RNvNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres15path_resolutionNtB9_6DefMap33resolve_path_fp_with_macro_singles_10___CALLSITE, align 8, !nonnull !31, !align !32, !noundef !31
  %i.eq = tail call noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ep, i8 noundef %.sroa.023.0)
  br i1 %i.eq, label %bb.ar, label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.n, %bb.m, %bb.ar, %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !6467)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.320.i72.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.320.i72.sroa.11.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.312.i73.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i74.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6103.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store i32 %6, ptr %i.ai, align 4, !noalias !6468
  %i.er = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %7, ptr %i.er, align 4, !noalias !6468
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !6468
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !6468
  store i32 %6, ptr %i.z, align 4, !noalias !6469
  %i.es = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %7, ptr %i.es, align 4, !noalias !6469
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !6469
  store i32 %6, ptr %i.y, align 4, !noalias !6469
  %i.et = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 %7, ptr %i.et, align 4, !noalias !6469
  %i.eu = call noundef align 8 ptr @_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBQ_7nameres10ModuleDataNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBQ_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.y), !noalias !6470 ; 2 uses
  %.not.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i, label %bb.p, label %_RNvXs1_NtCsileJQcQObtj_7hir_def7nameresNtB5_6DefMapINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtB7_10ModuleIdLtE5index.exit.i, !prof !44

bb.p:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !6469
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %i.ev, ptr %i.x, align 8, !noalias !6469
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @_RNvXsa_NvCsileJQcQObtj_7hir_defsi_1__NtB7_10ModuleIdLtNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !noalias !6469
  %i.ew = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.z, ptr %i.ew, align 8, !noalias !6469
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr @_RNvXsa_NvCsileJQcQObtj_7hir_defsi_1__NtB7_10ModuleIdLtNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !6469
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @345, ptr noundef nonnull %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @346) #42, !noalias !6471
  unreachable

_RNvXs1_NtCsileJQcQObtj_7hir_def7nameresNtB5_6DefMapINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtB7_10ModuleIdLtE5index.exit.i: ; preds = %.critedge
end_hunk_0
