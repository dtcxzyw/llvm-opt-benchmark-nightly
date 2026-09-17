Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.07?download=true
inline.NumInlined: 1664
inline.NumDeleted: 903
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RNvNtCsileJQcQObtj_7hir_def9lang_item20crate_notable_traits:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %3, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = call { ptr, i64 } @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachINtNtCshzWfHUSfYae_4core6option6OptionRSNtCsileJQcQObtj_7hir_def7TraitIdEDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNtB2z_9lang_item20crate_notable_traits0E0B1T_EB2z_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @107, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsileJQcQObtj_7hir_def10expr_store5scope19compute_expr_scopes(i32 noundef %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %3, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [4 x i8], align 4                 ; 5 uses
  %i.k = alloca [4 x i8], align 4                 ; 7 uses
  %i.l = alloca [4 x i8], align 4                 ; 4 uses
  %i.m = alloca [4 x i8], align 4                 ; 4 uses
  %i.n = alloca [4 x i8], align 4                 ; 4 uses
  %i.o = alloca [4 x i8], align 4                 ; 4 uses
  %i.p = load i32, ptr %3, align 4, !noundef !10  ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.r = tail call { i32, i32 } @_RNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB2_8ArenaMapINtB4_3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEIBL_NtNtNtBY_10expr_store5scope9ScopeDataEE6insertBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, i32 noundef %0, i32 noundef %i.p) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val = load ptr, ptr %i.s, align 8, !align !11, !noundef !10 ; 3 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.t = zext i32 %0 to i64                       ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !10 ; 2 uses
  %i.w = icmp ugt i64 %i.v, %i.t
  br i1 %i.w, label %_RNvXs5_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_15ExpressionStoreINtNtNtCshzWfHUSfYae_4core3ops5index5IndexINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtB7_3hir4ExprEE5index.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @273, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #55
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.t, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #55
  unreachable

_RNvXs5_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_15ExpressionStoreINtNtNtCshzWfHUSfYae_4core3ops5index5IndexINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtB7_3hir4ExprEE5index.exit: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !10, !noundef !10
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %i.t ; 38 uses
  %i.aa = load i32, ptr %i.z, align 16, !range !47, !noundef !10 ; 4 uses
  %i.ab = icmp ne i32 %i.aa, 29
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = add nsw i32 %i.aa, -2
  %i.ad = icmp samesign ugt i32 %i.aa, 1
  %narrow = select i1 %i.ad, i32 %i.ac, i32 27
  switch i32 %narrow, label %bb.e [
    i32 2, label %bb.f
    i32 3, label %bb.h
    i32 4, label %bb.j
    i32 5, label %bb.n
    i32 6, label %bb.o
    i32 7, label %bb.s
    i32 10, label %bb.u
    i32 27, label %bb.v
    i32 29, label %bb.z
  ]

bb.e:                                             ; preds = %bb.z, %_RNvXs5_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_15ExpressionStoreINtNtNtCshzWfHUSfYae_4core3ops5index5IndexINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtB7_3hir4ExprEE5index.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %1, ptr %i.i, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %2, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %3, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %4, ptr %i.ag, align 8
  call void @_RINvMs2_NtCsileJQcQObtj_7hir_def10expr_storeNtB6_15ExpressionStore19visit_expr_childrenNtNtB6_5scope16ExprScopeVisitorEB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, i32 noundef %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.loopexit

bb.f:                                             ; preds = %_RNvXs5_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_15ExpressionStoreINtNtNtCshzWfHUSfYae_4core3ops5index5IndexINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtB7_3hir4ExprEE5index.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !noundef !10
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ak = load i32, ptr %i.aj, align 16, !noundef !10
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.am = load i32, ptr %i.al, align 4, !range !36, !noundef !10
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ao = load i32, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !1980, !noundef !10 ; 2 uses
  %i.ar = icmp ult i64 %i.aq, 576460752303423488
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !1980, !noundef !10 ; 5 uses
  %i.au = icmp ult i64 %i.at, 288230376151711744
  tail call void @llvm.assume(i1 %i.au)
  %i.av = load i64, ptr %2, align 8, !range !16, !alias.scope !1981, !noalias !1982, !noundef !10
  %i.aw = icmp eq i64 %i.at, %i.av
  br i1 %i.aw, label %bb.g, label %_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ExprScopes9new_scope.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsileJQcQObtj_7hir_def10expr_store5scope9ScopeDataE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2), !noalias !1982
  br label %_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ExprScopes9new_scope.exit

_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ExprScopes9new_scope.exit: ; preds = %bb.f, %bb.g
  %i.ax = trunc i64 %i.at to i32
  %i.ay = trunc i64 %i.aq to i32                  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !1981, !noalias !1982, !nonnull !10, !noundef !10
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.ba, i64 %i.at ; 5 uses
  store i32 1, ptr %i.bb, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store i32 %i.p, ptr %.sroa.4.0..sroa_idx.i, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i32 2, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store i32 %i.ay, ptr %.sroa.8.0..sroa_idx.i, align 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 28
  store i32 %i.ay, ptr %.sroa.9.0..sroa_idx.i, align 4
  %i.bc = add nuw nsw i64 %i.at, 1
  store i64 %i.bc, ptr %i.as, align 8, !alias.scope !1981, !noalias !1982
  store i32 %i.ax, ptr %i.j, align 4
  call fastcc void @_RNvNtNtCsileJQcQObtj_7hir_def10expr_store5scope19compute_expr_scopes(i32 noundef %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.j, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %4), !noalias !1983, !inline_history !1874
  call fastcc void @_RNvNtNtCsileJQcQObtj_7hir_def10expr_store5scope19compute_expr_scopes(i32 noundef %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.j, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %4), !noalias !1984, !inline_history !1874
  %i.bd = trunc nuw i32 %i.am to i1
  br i1 %i.bd, label %bb.aa, label %bb.ab

bb.h:                                             ; preds = %_RNvXs5_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_15ExpressionStoreINtNtNtCshzWfHUSfYae_4core3ops5index5IndexINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtB7_3hir4ExprEE5index.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !noundef !10
  %i.bg = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !noundef !10
  tail call fastcc void @_RNvNtNtCsileJQcQObtj_7hir_def10expr_store5scope19compute_expr_scopes(i32 noundef %i.bh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %3, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %4), !noalias !1985, !inline_history !1874
  %i.bi = load i32, ptr %3, align 4, !noundef !10
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !1986, !noundef !10 ; 2 uses
  %i.bl = icmp ult i64 %i.bk, 576460752303423488
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !1986, !noundef !10 ; 5 uses
  %i.bo = icmp ult i64 %i.bn, 288230376151711744
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = load i64, ptr %2, align 8, !range !16, !alias.scope !1987, !noalias !1988, !noundef !10
  %i.bq = icmp eq i64 %i.bn, %i.bp
  br i1 %i.bq, label %bb.i, label %_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ExprScopes9new_scope.exit85

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsileJQcQObtj_7hir_def10expr_store5scope9ScopeDataE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2), !noalias !1988
  br label %_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ExprScopes9new_scope.exit85

_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ExprScopes9new_scope.exit85: ; preds = %bb.h, %bb.i
  %i.br = trunc i64 %i.bn to i32                  ; 2 uses
  %i.bs = trunc i64 %i.bk to i32                  ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !1987, !noalias !1988, !nonnull !10, !noundef !10
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.bu, i64 %i.bn ; 5 uses
  store i32 1, ptr %i.bv, align 8
  %.sroa.4.0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i32 %i.bi, ptr %.sroa.4.0..sroa_idx.i81, align 4
  %.sroa.5.0..sroa_idx.i82 = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i32 2, ptr %.sroa.5.0..sroa_idx.i82, align 8
  %.sroa.8.0..sroa_idx.i83 = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store i32 %i.bs, ptr %.sroa.8.0..sroa_idx.i83, align 8
  %.sroa.9.0..sroa_idx.i84 = getelementptr inbounds nuw i8, ptr %i.bv, i64 28
  store i32 %i.bs, ptr %.sroa.9.0..sroa_idx.i84, align 4
  %i.bw = add nuw nsw i64 %i.bn, 1
  store i64 %i.bw, ptr %i.bm, align 8, !alias.scope !1987, !noalias !1988
  store i32 %i.br, ptr %3, align 4
  tail call void @_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ExprScopes16add_pat_bindings(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, i32 noundef %i.br, i32 noundef %i.bf)
  br label %.loopexit

bb.j:                                             ; preds = %_RNvXs5_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_15ExpressionStoreINtNtNtCshzWfHUSfYae_4core3ops5index5IndexINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtB7_3hir4ExprEE5index.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.by = load i32, ptr %i.bx, align 8, !noundef !10 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.z, i64 44
  %i.ca = load i32, ptr %i.bz, align 4            ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !10, !noundef !10
  %i.cd = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ce = load i64, ptr %i.cd, align 16, !noundef !10
  %i.cf = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.cg = load i32, ptr %i.cf, align 8, !range !36, !noundef !10
  %i.ch = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ck = load i32, ptr %i.cj, align 16, !range !36, !noundef !10 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.cm = load i32, ptr %i.cl, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1989)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1990
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !1991, !noalias !1992, !noundef !10 ; 2 uses
  %i.cp = icmp ult i64 %i.co, 576460752303423488
  tail call void @llvm.assume(i1 %i.cp), !noalias !1992
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !1991, !noalias !1992, !noundef !10 ; 7 uses
  %i.cs = icmp ult i64 %i.cr, 288230376151711744
  tail call void @llvm.assume(i1 %i.cs), !noalias !1992
  %i.ct = load i64, ptr %2, align 8, !range !16, !alias.scope !1993, !noalias !1994, !noundef !10
  %i.cu = icmp eq i64 %i.cr, %i.ct
  br i1 %i.cu, label %bb.k, label %_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ExprScopes15new_block_scope.exit128

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsileJQcQObtj_7hir_def10expr_store5scope9ScopeDataE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2), !noalias !1994
  br label %_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ExprScopes15new_block_scope.exit128

_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ExprScopes15new_block_scope.exit128: ; preds = %bb.j, %bb.k
  %i.cv = trunc i64 %i.cr to i32                  ; 2 uses
  %.not.i114 = icmp ne i32 %i.by, 0               ; 3 uses
  %.sroa.7.0.i115 = select i1 %.not.i114, i32 %i.ca, i32 undef
  %.sroa.8.4.insert.ext.i116 = zext i32 %.sroa.7.0.i115 to i64
  %.sroa.8.4.insert.shift.i117 = shl nuw i64 %.sroa.8.4.insert.ext.i116, 32
  %.sroa.8.0.insert.ext.i118 = zext i32 %i.by to i64 ; 2 uses
  %.sroa.8.4.insert.insert.i119 = or disjoint i64 %.sroa.8.4.insert.shift.i117, %.sroa.8.0.insert.ext.i118
  %i.cw = inttoptr i64 %.sroa.8.4.insert.insert.i119 to ptr
  %i.cx = trunc i64 %i.co to i32                  ; 2 uses
  %i.cy = trunc nuw i32 %i.ck to i1               ; 2 uses
  %.not12.i = or i1 %.not.i114, %i.cy
  %.sroa.4.0.i = select i1 %.not12.i, i32 %i.cm, i32 undef
  %..i120 = select i1 %i.cy, i32 4, i32 2
  %.sroa.08.0.i121 = select i1 %.not.i114, i32 %i.ck, i32 %..i120
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !alias.scope !1993, !noalias !1994, !nonnull !10, !noundef !10
  %i.db = getelementptr inbounds nuw [32 x i8], ptr %i.da, i64 %i.cr ; 7 uses
  store i32 1, ptr %i.db, align 8, !noalias !1992
  %.sroa.4.0..sroa_idx10.i122 = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store i32 %i.p, ptr %.sroa.4.0..sroa_idx10.i122, align 4, !noalias !1992
  %.sroa.5.0..sroa_idx.i123 = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i32 %.sroa.08.0.i121, ptr %.sroa.5.0..sroa_idx.i123, align 8, !noalias !1992
  %.sroa.7.0..sroa_idx11.i124 = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  store i32 %.sroa.4.0.i, ptr %.sroa.7.0..sroa_idx11.i124, align 4, !noalias !1992
  %.sroa.8.0..sroa_idx.i125 = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store ptr %i.cw, ptr %.sroa.8.0..sroa_idx.i125, align 8, !noalias !1992
  %.sroa.11.0..sroa_idx.i126 = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store i32 %i.cx, ptr %.sroa.11.0..sroa_idx.i126, align 8, !noalias !1992
  %.sroa.12.0..sroa_idx.i127 = getelementptr inbounds nuw i8, ptr %i.db, i64 28
  store i32 %i.cx, ptr %.sroa.12.0..sroa_idx.i127, align 4, !noalias !1992
  %i.dc = add nuw nsw i64 %i.cr, 1                ; 4 uses
  store i64 %i.dc, ptr %i.cq, align 8, !alias.scope !1993, !noalias !1994
  store i32 %i.cv, ptr %i.h, align 4, !noalias !1990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1990
  %.not.i86 = icmp eq i32 %i.by, 0
  %i.dd = load i32, ptr %4, align 4, !alias.scope !1989, !noalias !1995, !noundef !10 ; 2 uses
  br i1 %.not.i86, label %_RNCNvNtNtCsileJQcQObtj_7hir_def10expr_store5scope19compute_expr_scopess_0B7_.exit, label %bb.l

bb.l:                                             ; preds = %_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ExprScopes15new_block_scope.exit128
  %i.de = load i64, ptr %i.cn, align 8, !alias.scope !1996, !noalias !1992, !noundef !10 ; 2 uses
  %i.df = icmp ult i64 %i.de, 576460752303423488
  tail call void @llvm.assume(i1 %i.df), !noalias !1992
  %i.dg = icmp ne i64 %i.cr, 288230376151711743
  tail call void @llvm.assume(i1 %i.dg), !noalias !1992
  %i.dh = load i64, ptr %2, align 8, !range !16, !alias.scope !1997, !noalias !1998, !noundef !10
  %i.di = icmp eq i64 %i.dc, %i.dh
  br i1 %i.di, label %bb.m, label %_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ExprScopes15new_block_scope.exit

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsileJQcQObtj_7hir_def10expr_store5scope9ScopeDataE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2), !noalias !1998
  br label %_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ExprScopes15new_block_scope.exit

_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ExprScopes15new_block_scope.exit: ; preds = %bb.l, %bb.m
  %i.dj = trunc i64 %i.dc to i32
  %.sroa.8.4.insert.ext.i = zext i32 %i.ca to i64
  %.sroa.8.4.insert.shift.i = shl nuw i64 %.sroa.8.4.insert.ext.i, 32
  %.sroa.8.4.insert.insert.i = or disjoint i64 %.sroa.8.4.insert.shift.i, %.sroa.8.0.insert.ext.i118
  %i.dk = inttoptr i64 %.sroa.8.4.insert.insert.i to ptr
  %i.dl = trunc i64 %i.de to i32                  ; 2 uses
  %i.dm = load ptr, ptr %i.cz, align 8, !alias.scope !1997, !noalias !1998, !nonnull !10, !noundef !10
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr %i.dm, i64 %i.dc ; 6 uses
  store i32 1, ptr %i.dn, align 8, !noalias !1992
  %.sroa.4.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  store i32 %i.dd, ptr %.sroa.4.0..sroa_idx10.i, align 4, !noalias !1992
  %.sroa.5.0..sroa_idx.i112 = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx.i112, align 8, !noalias !1992
  %.sroa.8.0..sroa_idx.i113 = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store ptr %i.dk, ptr %.sroa.8.0..sroa_idx.i113, align 8, !noalias !1992
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  store i32 %i.dl, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !1992
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 28
  store i32 %i.dl, ptr %.sroa.12.0..sroa_idx.i, align 4, !noalias !1992
  %i.do = add nuw nsw i64 %i.cr, 2
  store i64 %i.do, ptr %i.cq, align 8, !alias.scope !1997, !noalias !1998
  br label %_RNCNvNtNtCsileJQcQObtj_7hir_def10expr_store5scope19compute_expr_scopess_0B7_.exit

_RNCNvNtNtCsileJQcQObtj_7hir_def10expr_store5scope19compute_expr_scopess_0B7_.exit: ; preds = %_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ExprScopes15new_block_scope.exit128, %_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ExprScopes15new_block_scope.exit
  %storemerge.i = phi i32 [ %i.dj, %_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ExprScopes15new_block_scope.exit ], [ %i.dd, %_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ExprScopes15new_block_scope.exit128 ]
  store i32 %storemerge.i, ptr %i.g, align 4, !noalias !1990
  %i.dp = tail call { i32, i32 } @_RNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB2_8ArenaMapINtB4_3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEIBL_NtNtNtBY_10expr_store5scope9ScopeDataEE6insertBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, i32 noundef %0, i32 noundef %i.cv), !noalias !1992 ; 0 uses
  call fastcc void @_RNvNtNtCsileJQcQObtj_7hir_def10expr_store5scope20compute_block_scopes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.cc, i64 noundef range(i64 0, 288230376151711744) %i.ce, i32 noundef range(i32 0, 2) %i.cg, i32 %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef align 4 dereferenceable(4) %i.h, ptr noalias nofree noundef align 4 dereferenceable(4) %i.g), !noalias !1999, !inline_history !1900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1990
  br label %.loopexit

bb.n:                                             ; preds = %_RNvXs5_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_15ExpressionStoreINtNtNtCshzWfHUSfYae_4core3ops5index5IndexINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtB7_3hir4ExprEE5index.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.dq = load i32, ptr %4, align 4, !noundef !10
  store i32 %i.dq, ptr %i.o, align 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !noundef !10
  call fastcc void @_RNvNtNtCsileJQcQObtj_7hir_def10expr_store5scope19compute_expr_scopes(i32 noundef %i.ds, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.o, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %4), !noalias !2000, !inline_history !1874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %.loopexit

bb.o:                                             ; preds = %_RNvXs5_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_15ExpressionStoreINtNtNtCshzWfHUSfYae_4core3ops5index5IndexINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtB7_3hir4ExprEE5index.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.du = load i32, ptr %i.dt, align 16, !noundef !10 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.z, i64 36
  %i.dw = load i32, ptr %i.dv, align 4            ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.dy = load ptr, ptr %i.dx, align 16, !nonnull !10, !noundef !10
  %i.dz = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ea = load i64, ptr %i.dz, align 8, !noundef !10
  %i.eb = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ec = load i32, ptr %i.eb, align 8, !range !36, !noundef !10
  %i.ed = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ee = load i32, ptr %i.ed, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2001)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2002
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !alias.scope !2003, !noalias !2004, !noundef !10 ; 2 uses
  %i.eh = icmp ult i64 %i.eg, 576460752303423488
  tail call void @llvm.assume(i1 %i.eh), !noalias !2004
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ej = load i64, ptr %i.ei, align 8, !alias.scope !2003, !noalias !2004, !noundef !10 ; 7 uses
  %i.ek = icmp ult i64 %i.ej, 288230376151711744
  tail call void @llvm.assume(i1 %i.ek), !noalias !2004
  %i.el = load i64, ptr %2, align 8, !range !16, !alias.scope !2005, !noalias !2006, !noundef !10
  %i.em = icmp eq i64 %i.ej, %i.el
  br i1 %i.em, label %bb.p, label %_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ExprScopes15new_block_scope.exit160

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsileJQcQObtj_7hir_def10expr_store5scope9ScopeDataE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2), !noalias !2006
  br label %_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ExprScopes15new_block_scope.exit160

_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ExprScopes15new_block_scope.exit160: ; preds = %bb.o, %bb.p
  %i.en = trunc i64 %i.ej to i32                  ; 2 uses
  %.not.i145.not = icmp eq i32 %i.du, 0           ; 3 uses
  %.sroa.7.0.i146 = select i1 %.not.i145.not, i32 undef, i32 %i.dw
  %.sroa.8.4.insert.ext.i147 = zext i32 %.sroa.7.0.i146 to i64
  %.sroa.8.4.insert.shift.i148 = shl nuw i64 %.sroa.8.4.insert.ext.i147, 32
  %.sroa.8.0.insert.ext.i149 = zext i32 %i.du to i64 ; 2 uses
  %.sroa.8.4.insert.insert.i150 = or disjoint i64 %.sroa.8.4.insert.shift.i148, %.sroa.8.0.insert.ext.i149
  %i.eo = inttoptr i64 %.sroa.8.4.insert.insert.i150 to ptr
  %i.ep = trunc i64 %i.eg to i32                  ; 2 uses
  %.sroa.08.0.i153 = select i1 %.not.i145.not, i32 2, i32 0
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !alias.scope !2005, !noalias !2006, !nonnull !10, !noundef !10
  %i.es = getelementptr inbounds nuw [32 x i8], ptr %i.er, i64 %i.ej ; 6 uses
  store i32 1, ptr %i.es, align 8, !noalias !2004
  %.sroa.4.0..sroa_idx10.i154 = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  store i32 %i.p, ptr %.sroa.4.0..sroa_idx10.i154, align 4, !noalias !2004
  %.sroa.5.0..sroa_idx.i155 = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store i32 %.sroa.08.0.i153, ptr %.sroa.5.0..sroa_idx.i155, align 8, !noalias !2004
  %.sroa.8.0..sroa_idx.i157 = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store ptr %i.eo, ptr %.sroa.8.0..sroa_idx.i157, align 8, !noalias !2004
  %.sroa.11.0..sroa_idx.i158 = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  store i32 %i.ep, ptr %.sroa.11.0..sroa_idx.i158, align 8, !noalias !2004
  %.sroa.12.0..sroa_idx.i159 = getelementptr inbounds nuw i8, ptr %i.es, i64 28
  store i32 %i.ep, ptr %.sroa.12.0..sroa_idx.i159, align 4, !noalias !2004
  %i.et = add nuw nsw i64 %i.ej, 1                ; 4 uses
  store i64 %i.et, ptr %i.ei, align 8, !alias.scope !2005, !noalias !2006
  store i32 %i.en, ptr %i.f, align 4, !noalias !2002
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2002
  %i.eu = load i32, ptr %4, align 4, !alias.scope !2001, !noalias !2007, !noundef !10 ; 2 uses
  br i1 %.not.i145.not, label %_RNCNvNtNtCsileJQcQObtj_7hir_def10expr_store5scope19compute_expr_scopess_0B7_.exit89, label %bb.q

bb.q:                                             ; preds = %_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ExprScopes15new_block_scope.exit160
  %i.ev = load i64, ptr %i.ef, align 8, !alias.scope !2008, !noalias !2004, !noundef !10 ; 2 uses
  %i.ew = icmp ult i64 %i.ev, 576460752303423488
  tail call void @llvm.assume(i1 %i.ew), !noalias !2004
  %i.ex = icmp ne i64 %i.ej, 288230376151711743
  tail call void @llvm.assume(i1 %i.ex), !noalias !2004
  %i.ey = load i64, ptr %2, align 8, !range !16, !alias.scope !2009, !noalias !2010, !noundef !10
  %i.ez = icmp eq i64 %i.et, %i.ey
  br i1 %i.ez, label %bb.r, label %_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ExprScopes15new_block_scope.exit144

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsileJQcQObtj_7hir_def10expr_store5scope9ScopeDataE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2), !noalias !2010
  br label %_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ExprScopes15new_block_scope.exit144

_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ExprScopes15new_block_scope.exit144: ; preds = %bb.q, %bb.r
  %i.fa = trunc i64 %i.et to i32
  %.sroa.8.4.insert.ext.i131 = zext i32 %i.dw to i64
  %.sroa.8.4.insert.shift.i132 = shl nuw i64 %.sroa.8.4.insert.ext.i131, 32
  %.sroa.8.4.insert.insert.i134 = or disjoint i64 %.sroa.8.4.insert.shift.i132, %.sroa.8.0.insert.ext.i149
  %i.fb = inttoptr i64 %.sroa.8.4.insert.insert.i134 to ptr
  %i.fc = trunc i64 %i.ev to i32                  ; 2 uses
  %i.fd = load ptr, ptr %i.eq, align 8, !alias.scope !2009, !noalias !2010, !nonnull !10, !noundef !10
  %i.fe = getelementptr inbounds nuw [32 x i8], ptr %i.fd, i64 %i.et ; 6 uses
  store i32 1, ptr %i.fe, align 8, !noalias !2004
  %.sroa.4.0..sroa_idx10.i138 = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  store i32 %i.eu, ptr %.sroa.4.0..sroa_idx10.i138, align 4, !noalias !2004
  %.sroa.5.0..sroa_idx.i139 = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx.i139, align 8, !noalias !2004
  %.sroa.8.0..sroa_idx.i141 = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store ptr %i.fb, ptr %.sroa.8.0..sroa_idx.i141, align 8, !noalias !2004
  %.sroa.11.0..sroa_idx.i142 = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  store i32 %i.fc, ptr %.sroa.11.0..sroa_idx.i142, align 8, !noalias !2004
  %.sroa.12.0..sroa_idx.i143 = getelementptr inbounds nuw i8, ptr %i.fe, i64 28
  store i32 %i.fc, ptr %.sroa.12.0..sroa_idx.i143, align 4, !noalias !2004
  %i.ff = add nuw nsw i64 %i.ej, 2
  store i64 %i.ff, ptr %i.ei, align 8, !alias.scope !2009, !noalias !2010
  br label %_RNCNvNtNtCsileJQcQObtj_7hir_def10expr_store5scope19compute_expr_scopess_0B7_.exit89

_RNCNvNtNtCsileJQcQObtj_7hir_def10expr_store5scope19compute_expr_scopess_0B7_.exit89: ; preds = %_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ExprScopes15new_block_scope.exit160, %_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ExprScopes15new_block_scope.exit144
  %storemerge.i88 = phi i32 [ %i.fa, %_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ExprScopes15new_block_scope.exit144 ], [ %i.eu, %_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ExprScopes15new_block_scope.exit160 ]
  store i32 %storemerge.i88, ptr %i.e, align 4, !noalias !2002
  %i.fg = tail call { i32, i32 } @_RNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB2_8ArenaMapINtB4_3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEIBL_NtNtNtBY_10expr_store5scope9ScopeDataEE6insertBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, i32 noundef %0, i32 noundef %i.en), !noalias !2004 ; 0 uses
  call fastcc void @_RNvNtNtCsileJQcQObtj_7hir_def10expr_store5scope20compute_block_scopes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.dy, i64 noundef range(i64 0, 288230376151711744) %i.ea, i32 noundef range(i32 0, 2) %i.ec, i32 %i.ee, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef align 4 dereferenceable(4) %i.f, ptr noalias nofree noundef align 4 dereferenceable(4) %i.e), !noalias !2011, !inline_history !1900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2002
  br label %.loopexit

bb.s:                                             ; preds = %_RNvXs5_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_15ExpressionStoreINtNtNtCshzWfHUSfYae_4core3ops5index5IndexINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtB7_3hir4ExprEE5index.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.fi = load i32, ptr %i.fh, align 4, !range !36, !noundef !10
  %i.fj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.fk = load i32, ptr %i.fj, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.fm = load i64, ptr %i.fl, align 8, !alias.scope !2012, !noundef !10 ; 2 uses
  %i.fn = icmp ult i64 %i.fm, 576460752303423488
  tail call void @llvm.assume(i1 %i.fn)
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !2012, !noundef !10 ; 5 uses
  %i.fq = icmp ult i64 %i.fp, 288230376151711744
  tail call void @llvm.assume(i1 %i.fq)
  %i.fr = load i64, ptr %2, align 8, !range !16, !alias.scope !2013, !noalias !2014, !noundef !10
  %i.fs = icmp eq i64 %i.fp, %i.fr
  br i1 %i.fs, label %bb.t, label %_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ExprScopes17new_labeled_scope.exit

bb.t:                                             ; preds = %bb.s
  tail call void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsileJQcQObtj_7hir_def10expr_store5scope9ScopeDataE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2), !noalias !2014
  br label %_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ExprScopes17new_labeled_scope.exit

_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ExprScopes17new_labeled_scope.exit: ; preds = %bb.s, %bb.t
  %i.ft = trunc i64 %i.fp to i32
  %i.fu = trunc i64 %i.fm to i32                  ; 2 uses
  %i.fv = trunc nuw i32 %i.fi to i1               ; 2 uses
  %.3.i = select i1 %i.fv, i32 %i.fk, i32 undef
  %..i = select i1 %i.fv, i32 4, i32 2
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !alias.scope !2013, !noalias !2014, !nonnull !10, !noundef !10
  %i.fy = getelementptr inbounds nuw [32 x i8], ptr %i.fx, i64 %i.fp ; 6 uses
  store i32 1, ptr %i.fy, align 8
end_hunk_0
