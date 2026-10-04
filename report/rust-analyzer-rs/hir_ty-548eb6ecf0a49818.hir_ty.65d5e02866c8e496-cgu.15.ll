Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.15?download=true
inline.NumInlined: 5463
inline.NumDeleted: 1751
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB2_5Const3new:bb.a
  %i.au = zext nneg i16 %i.at to i64
  %i.av = add i64 %.sroa.0.017.i.i.i, %i.au
  %i.aw = and i64 %i.av, %.val5.i.i
  br label %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i

_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.4.1.i.i.i = phi i64 [ %.sroa.4.0.i.i.i, %bb.j ], [ %i.aw, %bb.l ], [ undef, %bb.k ] ; 3 uses
  %.sroa.01.1.i.i.i = phi i64 [ 1, %bb.j ], [ 1, %bb.l ], [ 0, %bb.k ]
  %i.ax = icmp eq <16 x i8> %.sroa.0.0.copyload.i18.i.i.i, splat (i8 -1)
  %i.ay = bitcast <16 x i1> %i.ax to i16
  %i.az = icmp eq i16 %i.ay, 0
  br i1 %i.az, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i
  %i.ba = add i64 %i.ac, 16                       ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.0.017.i.i.i
  br label %bb.g

bb.n:                                             ; preds = %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.4.1.i.i.i
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !8858, !noundef !9
  %i.be = icmp sgt i8 %i.bd, -1
  br i1 %i.be, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.val62.i.i.i.i = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !8858
  %i.bf = icmp slt <16 x i8> %.val62.i.i.i.i, zeroinitializer
  %i.bg = bitcast <16 x i1> %i.bf to i16          ; 2 uses
  %.not.i22.i.i.i = icmp ne i16 %i.bg, 0
  %i.bh = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bg, i1 true)
  %i.bi = zext nneg i16 %i.bh to i64
  call void @llvm.assume(i1 %.not.i22.i.i.i)
  br label %bb.r

bb.p:                                             ; preds = %bb.s, %bb.f
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = cmpxchg ptr %i.p, i64 -4, i64 0 release monotonic, align 8
  %i.bl = extractvalue { i64, i1 } %i.bk, 1
  br i1 %i.bl, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api6rwlock16RwLockWriteGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts13ConstInternedEINtNtB1w_4util11SharedValueuEEEEEB3C_.exit.i, label %bb.q, !prof !11

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.p)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api6rwlock16RwLockWriteGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts13ConstInternedEINtNtB1w_4util11SharedValueuEEEEEB3C_.exit.i unwind label %bb.v

bb.r:                                             ; preds = %bb.o, %bb.n
  %.sroa.3.0.i.i.ph.i = phi i64 [ %i.bi, %bb.o ], [ %.sroa.4.1.i.i.i, %bb.n ] ; 3 uses
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #55
  %i.bm = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 4, 49) 48, i64 noundef range(i64 4, 9) 8) #55 ; 5 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.s, label %bb.u, !prof !8

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #51
          to label %.noexc9.i unwind label %bb.p

.noexc9.i:                                        ; preds = %bb.s
  unreachable

.loopexit.i:                                      ; preds = %bb.i, %bb.u
  %i.bo = phi ptr [ %i.bm, %bb.u ], [ %.val2.i.i.i, %bb.i ]
  %i.bp = cmpxchg ptr %i.p, i64 -4, i64 0 release monotonic, align 8
  %i.bq = extractvalue { i64, i1 } %i.bp, 1
  br i1 %i.bq, label %_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts13ConstInternedE6new_gcBR_.exit, label %bb.t, !prof !11

bb.t:                                             ; preds = %.loopexit.i
  call void @_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.p)
  br label %_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts13ConstInternedE6new_gcBR_.exit

bb.u:                                             ; preds = %bb.r
  store i64 1, ptr %i.bm, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !8863)
  %i.br = load ptr, ptr %i.s, align 8, !alias.scope !8863, !nonnull !9, !noundef !9 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %.sroa.3.0.i.i.ph.i ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !noalias !8863, !noundef !9
  %i.bu = and i8 %i.bt, 1
  %i.bv = zext nneg i8 %i.bu to i64
  %i.bw = add i64 %.sroa.3.0.i.i.ph.i, -16
  %i.bx = load i64, ptr %i.x, align 8, !alias.scope !8863, !noundef !9
  %i.by = and i64 %i.bx, %i.bw
  store i8 %i.z, ptr %i.bs, align 1, !noalias !8863
  %i.bz = getelementptr i8, ptr %i.br, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bz, i64 16
  store i8 %i.z, ptr %i.ca, align 1, !noalias !8863
  %i.cb = load <2 x i64>, ptr %i.t, align 8, !alias.scope !8863
  %i.cc = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bv, i64 0
  %i.cd = sub <2 x i64> %i.cb, %i.cc
  store <2 x i64> %i.cd, ptr %i.t, align 8, !alias.scope !8863
  %i.ce = sub nsw i64 0, %.sroa.3.0.i.i.ph.i
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.ce
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -8
  store ptr %i.bm, ptr %i.cg, align 8, !noalias !8863
  br label %.loopexit.i

bb.v:                                             ; preds = %bb.q
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #53
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api6rwlock16RwLockWriteGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts13ConstInternedEINtNtB1w_4util11SharedValueuEEEEEB3C_.exit.i: ; preds = %bb.q, %bb.p
  resume { ptr, i32 } %i.bj

_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts13ConstInternedE6new_gcBR_.exit: ; preds = %.loopexit.i, %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.ci
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB2_5Const5error(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load <2 x ptr>, ptr %0, align 8
  store <2 x ptr> %i.b, ptr %i.a, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 0, ptr %i.c, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %i.d, align 8
  %i.e = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types5TYPES, i64 2424) acquire, align 8, !noalias !8866
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE15get_or_try_initNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_.exit, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  call void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE10initializeNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_(ptr noundef nonnull align 8 @_RNvNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types5TYPES, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  br label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE15get_or_try_initNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_.exit

_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE15get_or_try_initNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types5TYPES, i64 216), align 8, !nonnull !9, !noundef !9
  ret ptr %i.g
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB2_5Const9new_bound(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %1, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %2, ptr %i.d, align 4
  store i32 2, ptr %i.a, align 8
  %i.e = call noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB2_5Const3new(ptr noalias nofree nonnull readonly align 8 captures(none) poison, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB2_5Const9new_param(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(20) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.b, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false)
  store i32 0, ptr %i.a, align 8
  %i.c = call noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB2_5Const3new(ptr noalias nofree nonnull readonly align 8 captures(none) poison, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty5infer11diagnosticsNtB2_11Diagnostics19push_ty_diagnostics(ptr nofree noundef nonnull align 8 captures(none) %0, i1 noundef zeroext %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 13 uses
  %.sroa.530.i = alloca [40 x i8], align 4        ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  %i.e = alloca [1 x i8], align 1                 ; 6 uses
  %i.f = zext i1 %1 to i8
  store i8 %i.f, ptr %i.e, align 1
  store i64 %2, ptr %i.d, align 8
  %i.g = load i64, ptr %0, align 8, !noundef !9
  %.not = icmp eq i64 %i.g, 0
  %i.h = inttoptr i64 %2 to ptr                   ; 8 uses
  br i1 %.not, label %bb.b, label %bb.aa, !prof !11

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %2, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.j, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !8913)
  %i.k = icmp ne i64 %2, 0
  call void @llvm.assume(i1 %i.k)
  %i.l = load i64, ptr %i.h, align 8, !noalias !8914, !noundef !9 ; 4 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtCsbdtVtHYmo6x_8thin_vec8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENCNvMNtNtB1B_5infer11diagnosticsNtB2H_11Diagnostics19push_ty_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.thread.i.thread, label %bb.c

_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtCsbdtVtHYmo6x_8thin_vec8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENCNvMNtNtB1B_5infer11diagnosticsNtB2H_11Diagnostics19push_ty_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.thread.i.thread: ; preds = %bb.j, %bb.b
  %.ph = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.j ]
  %.sroa.5.0.ph = phi i64 [ 0, %bb.b ], [ %i.aa, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8915
  store ptr %i.h, ptr %i.b, align 8, !noalias !8915
  %.sroa.5.0..sroa_idx1134 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %.sroa.5.0.ph, ptr %.sroa.5.0..sroa_idx1134, align 8, !noalias !8915
  %.sroa.7.0..sroa_idx1335 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %.sroa.7.0..sroa_idx1335, align 8, !noalias !8915
  br label %_RNvXsC_CsbdtVtHYmo6x_8thin_vecINtB5_8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBN_.exit.i13._crit_edge.i

_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtCsbdtVtHYmo6x_8thin_vec8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENCNvMNtNtB1B_5infer11diagnosticsNtB2H_11Diagnostics19push_ty_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.thread.i: ; preds = %_RNvXsC_CsbdtVtHYmo6x_8thin_vecINtB5_8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBN_.exit.i.i, %._RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtCsbdtVtHYmo6x_8thin_vec8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENCNvMNtNtB1B_5infer11diagnosticsNtB2H_11Diagnostics19push_ty_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.thread.i.loopexit_crit_edge
  %3 = phi i64 [ %.pre.pre, %._RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtCsbdtVtHYmo6x_8thin_vec8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENCNvMNtNtB1B_5infer11diagnosticsNtB2H_11Diagnostics19push_ty_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.thread.i.loopexit_crit_edge ], [ %i.ac, %_RNvXsC_CsbdtVtHYmo6x_8thin_vecINtB5_8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBN_.exit.i.i ] ; 2 uses
  %.sroa.5.0 = phi i64 [ %i.l, %._RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtCsbdtVtHYmo6x_8thin_vec8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENCNvMNtNtB1B_5infer11diagnosticsNtB2H_11Diagnostics19push_ty_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.thread.i.loopexit_crit_edge ], [ %i.ae, %_RNvXsC_CsbdtVtHYmo6x_8thin_vecINtB5_8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBN_.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8915
  store ptr %i.h, ptr %i.b, align 8, !noalias !8915
  %.sroa.5.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %.sroa.7.0..sroa_idx13, align 8, !noalias !8915
  %i.m = icmp eq i64 %.sroa.5.0, %3
  br i1 %i.m, label %_RNvXsC_CsbdtVtHYmo6x_8thin_vecINtB5_8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBN_.exit.i13._crit_edge.i, label %_RNvXsC_CsbdtVtHYmo6x_8thin_vecINtB5_8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBN_.exit.i13.lr.ph.i

_RNvXsC_CsbdtVtHYmo6x_8thin_vecINtB5_8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBN_.exit.i13.lr.ph.i: ; preds = %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtCsbdtVtHYmo6x_8thin_vec8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENCNvMNtNtB1B_5infer11diagnosticsNtB2H_11Diagnostics19push_ty_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.thread.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.733.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.834.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.935.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  br label %_RNvXsC_CsbdtVtHYmo6x_8thin_vecINtB5_8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBN_.exit.i13.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !8916)
  %i.o = load ptr, ptr %i.i, align 8, !alias.scope !8917, !noalias !8918, !nonnull !9, !noundef !9 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !noalias !8919, !noundef !9 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noalias !8919, !noundef !9 ; 4 uses
  %i.s = add i64 %i.p, %i.l                       ; 3 uses
  %i.t = icmp ult i64 %i.s, %i.p
  br i1 %i.t, label %bb.e, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp ugt i64 %i.s, %i.r
  br i1 %.not.i.i, label %bb.f, label %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty5infer19InferenceDiagnosticE7reserveBK_.exit.i

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #51
          to label %.noexc.i unwind label %bb.z, !noalias !8915

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.u = icmp eq i64 %i.r, 0
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = shl nuw i64 %i.r, 1
  %i.w = icmp slt i64 %i.r, 0
  br i1 %i.w, label %bb.i, label %bb.h, !prof !8

bb.h:                                             ; preds = %bb.i, %bb.g, %bb.f
  %.sroa.01.0.i.i = phi i64 [ %i.v, %bb.g ], [ -1, %bb.i ], [ 4, %bb.f ]
  %..i.i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.01.0.i.i, i64 %i.s)
  invoke fastcc void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty5infer19InferenceDiagnosticE10reallocateBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef %..i.i.i)
          to label %._RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty5infer19InferenceDiagnosticE7reserveBK_.exit_crit_edge.i unwind label %bb.z, !noalias !8918

._RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty5infer19InferenceDiagnosticE7reserveBK_.exit_crit_edge.i: ; preds = %bb.h
  %.val10.pre.i = load ptr, ptr %i.i, align 8, !alias.scope !8913, !noalias !8918
  br label %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty5infer19InferenceDiagnosticE7reserveBK_.exit.i

bb.i:                                             ; preds = %bb.g
  br label %bb.h

_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty5infer19InferenceDiagnosticE7reserveBK_.exit.i: ; preds = %._RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty5infer19InferenceDiagnosticE7reserveBK_.exit_crit_edge.i, %bb.d
  %.val10.i = phi ptr [ %.val10.pre.i, %._RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty5infer19InferenceDiagnosticE7reserveBK_.exit_crit_edge.i ], [ %i.o, %bb.d ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  br label %bb.j

bb.j:                                             ; preds = %bb.y, %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty5infer19InferenceDiagnosticE7reserveBK_.exit.i
  %.sroa.0.057.i = phi i64 [ %i.l, %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty5infer19InferenceDiagnosticE7reserveBK_.exit.i ], [ %i.ab, %bb.y ]
  %i.aa = phi i64 [ 0, %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty5infer19InferenceDiagnosticE7reserveBK_.exit.i ], [ %i.ae, %bb.y ] ; 4 uses
  %i.ab = add i64 %.sroa.0.057.i, -1              ; 2 uses
  %i.ac = load i64, ptr %i.h, align 8, !noalias !8920, !noundef !9 ; 3 uses
  %i.ad = icmp eq i64 %i.aa, %i.ac
  br i1 %i.ad, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtCsbdtVtHYmo6x_8thin_vec8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENCNvMNtNtB1B_5infer11diagnosticsNtB2H_11Diagnostics19push_ty_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.thread.i.thread, label %_RNvXsC_CsbdtVtHYmo6x_8thin_vecINtB5_8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBN_.exit.i.i

_RNvXsC_CsbdtVtHYmo6x_8thin_vecINtB5_8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBN_.exit.i.i: ; preds = %bb.j
  %i.ae = add i64 %i.aa, 1                        ; 2 uses
  %i.af = getelementptr inbounds nuw [44 x i8], ptr %i.x, i64 %i.aa ; 2 uses
  %.sroa.0.0.copyload1.i.i = load i32, ptr %i.af, align 4, !noalias !8921 ; 2 uses
  %.not.i12.i = icmp eq i32 %.sroa.0.0.copyload1.i.i, -2
  br i1 %.not.i12.i, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtCsbdtVtHYmo6x_8thin_vec8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENCNvMNtNtB1B_5infer11diagnosticsNtB2H_11Diagnostics19push_ty_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.thread.i, label %bb.y

_RNvXsC_CsbdtVtHYmo6x_8thin_vecINtB5_8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBN_.exit.i13.i: ; preds = %bb.w, %_RNvXsC_CsbdtVtHYmo6x_8thin_vecINtB5_8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBN_.exit.i13.lr.ph.i
  %i.ag = phi i64 [ %.sroa.5.0, %_RNvXsC_CsbdtVtHYmo6x_8thin_vecINtB5_8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBN_.exit.i13.lr.ph.i ], [ %i.ah, %bb.w ] ; 2 uses
  %i.ah = add i64 %i.ag, 1                        ; 6 uses
  %i.ai = getelementptr inbounds nuw [44 x i8], ptr %i.n, i64 %i.ag ; 2 uses
  %.sroa.0.0.copyload1.i14.i = load i32, ptr %i.ai, align 4, !noalias !8922 ; 2 uses
  %.not.i15.i = icmp eq i32 %.sroa.0.0.copyload1.i14.i, -2
  br i1 %.not.i15.i, label %_RNvXsC_CsbdtVtHYmo6x_8thin_vecINtB5_8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBN_.exit.i13._crit_edge.i, label %bb.k

.body.i:                                          ; preds = %bb.q
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCsbdtVtHYmo6x_8thin_vec8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENCNvMNtNtB1O_5infer11diagnosticsNtB2U_11Diagnostics19push_ty_diagnostics0EEB1O_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #52
          to label %bb.ac unwind label %bb.x, !noalias !8915

bb.k:                                             ; preds = %_RNvXsC_CsbdtVtHYmo6x_8thin_vecINtB5_8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBN_.exit.i13.i
  %.sroa.6.0..sroa_idx2.i16.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8915
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.834.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(40) %.sroa.6.0..sroa_idx2.i16.i, i64 40, i1 false), !noalias !8915
  %i.aj = load i8, ptr %i.e, align 1, !range !26, !noalias !8923, !noundef !9
  store i64 -9223372036854775780, ptr %i.a, align 16, !noalias !8915
  store i32 %.sroa.0.0.copyload1.i14.i, ptr %.sroa.733.0..sroa_idx.i, align 8, !noalias !8915
  store i8 %i.aj, ptr %.sroa.935.0..sroa_idx.i, align 4, !noalias !8915
  call void @llvm.experimental.noalias.scope.decl(metadata !8924)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !8925, !noalias !8926, !nonnull !9, !noundef !9 ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !noalias !8927, !noundef !9 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i64, ptr %i.am, align 8, !noalias !8927, !noundef !9 ; 2 uses
  %i.ao = icmp eq i64 %i.al, %i.an
  br i1 %i.ao, label %bb.l, label %bb.w

bb.l:                                             ; preds = %bb.k
  %i.ap = add nuw i64 %i.al, 1
  switch i64 %i.al, label %bb.n [
    i64 -1, label %bb.m
    i64 0, label %bb.o
  ], !prof !41

bb.m:                                             ; preds = %bb.l
  store i64 %i.ah, ptr %.sroa.5.0..sroa_idx11, align 8, !noalias !8915
  invoke void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #51
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i, !noalias !8927

.noexc.i.i:                                       ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.aq = shl nuw i64 %i.al, 1
  %i.ar = icmp slt i64 %i.al, 0
  br i1 %i.ar, label %bb.p, label %bb.o, !prof !8

bb.o:                                             ; preds = %bb.p, %bb.n, %bb.l
  %.sroa.01.0.i.i.i = phi i64 [ %i.aq, %bb.n ], [ -1, %bb.p ], [ 4, %bb.l ]
  %..i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.01.0.i.i.i, i64 %i.ap)
  invoke fastcc void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty5infer19InferenceDiagnosticE10reallocateBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef %..i.i.i.i)
          to label %._crit_edge.i.i unwind label %.loopexit.i, !noalias !8926

._crit_edge.i.i:                                  ; preds = %bb.o
  %.val.pre.i.i = load ptr, ptr %i.i, align 8, !alias.scope !8925, !noalias !8926 ; 3 uses
  %.pre.i.i = load i64, ptr %.val.pre.i.i, align 8, !noalias !8928
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.val.pre.i.i, i64 8
  %.pre4.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !8929
  br label %bb.w

bb.p:                                             ; preds = %bb.n
  br label %bb.o

.loopexit.i:                                      ; preds = %bb.o
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %i.ah, ptr %.sroa.5.0..sroa_idx11, align 8, !noalias !8915
  br label %bb.q

.loopexit.split-lp.i:                             ; preds = %bb.m
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5infer19InferenceDiagnosticEBF_(ptr noalias nofree noundef align 16 dereferenceable(64) %i.a) #52
          to label %.body.i unwind label %bb.r, !noalias !8930

bb.r:                                             ; preds = %bb.q
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #53, !noalias !8930
  unreachable

_RNvXsC_CsbdtVtHYmo6x_8thin_vecINtB5_8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBN_.exit.i13._crit_edge.i: ; preds = %bb.w, %_RNvXsC_CsbdtVtHYmo6x_8thin_vecINtB5_8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBN_.exit.i13.i, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtCsbdtVtHYmo6x_8thin_vec8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENCNvMNtNtB1B_5infer11diagnosticsNtB2H_11Diagnostics19push_ty_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.thread.i.thread, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtCsbdtVtHYmo6x_8thin_vec8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENCNvMNtNtB1B_5infer11diagnosticsNtB2H_11Diagnostics19push_ty_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.thread.i
  %.sroa.5.0..sroa_idx1136 = phi ptr [ %.sroa.5.0..sroa_idx11, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtCsbdtVtHYmo6x_8thin_vec8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENCNvMNtNtB1B_5infer11diagnosticsNtB2H_11Diagnostics19push_ty_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.thread.i ], [ %.sroa.5.0..sroa_idx1134, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtCsbdtVtHYmo6x_8thin_vec8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENCNvMNtNtB1B_5infer11diagnosticsNtB2H_11Diagnostics19push_ty_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.thread.i.thread ], [ %.sroa.5.0..sroa_idx11, %_RNvXsC_CsbdtVtHYmo6x_8thin_vecINtB5_8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBN_.exit.i13.i ], [ %.sroa.5.0..sroa_idx11, %bb.w ]
  %i.at = phi i64 [ %3, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtCsbdtVtHYmo6x_8thin_vec8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENCNvMNtNtB1B_5infer11diagnosticsNtB2H_11Diagnostics19push_ty_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.thread.i ], [ %.ph, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtCsbdtVtHYmo6x_8thin_vec8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENCNvMNtNtB1B_5infer11diagnosticsNtB2H_11Diagnostics19push_ty_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.thread.i.thread ], [ %i.ah, %_RNvXsC_CsbdtVtHYmo6x_8thin_vecINtB5_8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBN_.exit.i13.i ], [ %i.ah, %bb.w ]
  store i64 %i.at, ptr %.sroa.5.0..sroa_idx1136, align 8, !noalias !8915
  %i.au = icmp eq i64 %2, ptrtoint (ptr @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER to i64)
  br i1 %i.au, label %bb.ad, label %bb.s, !prof !11

bb.s:                                             ; preds = %_RNvXsC_CsbdtVtHYmo6x_8thin_vecINtB5_8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBN_.exit.i13._crit_edge.i
  invoke void @_RINvNvXsG_CsbdtVtHYmo6x_8thin_vecINtB8_8IntoIterpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticEB1U_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.b) #57
          to label %bb.u unwind label %bb.t, !noalias !8915

bb.t:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticEB1T_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.b) #57
          to label %bb.ac unwind label %bb.v, !noalias !8915

bb.u:                                             ; preds = %bb.s
  invoke void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticEB1T_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.b) #57
          to label %bb.ad unwind label %bb.ab

bb.v:                                             ; preds = %bb.t
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #53, !noalias !8931
  unreachable

bb.w:                                             ; preds = %._crit_edge.i.i, %bb.k
  %i.ax = phi i64 [ %.pre4.i.i, %._crit_edge.i.i ], [ %i.an, %bb.k ]
  %i.ay = phi i64 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.al, %bb.k ] ; 2 uses
  %.val.i23.i = phi ptr [ %.val.pre.i.i, %._crit_edge.i.i ], [ %i.ak, %bb.k ] ; 2 uses
  %i.az = icmp eq i64 %i.ax, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i23.i, i64 16
  %.sroa.0.0.i.i.i.i = select i1 %i.az, ptr inttoptr (i64 16 to ptr), ptr %i.ba
  %i.bb = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0.i.i.i.i, i64 %i.ay
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bb, ptr noundef nonnull align 16 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !8930
  %i.bc = add i64 %i.ay, 1
  store i64 %i.bc, ptr %.val.i23.i, align 8, !noalias !8928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8915
  %i.bd = load i64, ptr %i.h, align 8, !noalias !8932, !noundef !9
  %i.be = icmp eq i64 %i.ah, %i.bd
  br i1 %i.be, label %_RNvXsC_CsbdtVtHYmo6x_8thin_vecINtB5_8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBN_.exit.i13._crit_edge.i, label %_RNvXsC_CsbdtVtHYmo6x_8thin_vecINtB5_8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBN_.exit.i13.i

bb.x:                                             ; preds = %bb.z, %.body.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #53, !noalias !8915
  unreachable

bb.y:                                             ; preds = %_RNvXsC_CsbdtVtHYmo6x_8thin_vecINtB5_8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBN_.exit.i.i
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.530.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.530.i, ptr noundef nonnull align 4 dereferenceable(40) %.sroa.6.0..sroa_idx2.i.i, i64 40, i1 false), !noalias !8915
  %i.bg = load i8, ptr %i.e, align 1, !range !26, !noalias !8933, !noundef !9
  %i.bh = load i64, ptr %.val10.i, align 8, !noalias !8934, !noundef !9 ; 2 uses
  %i.bi = load i64, ptr %i.y, align 8, !noalias !8935, !noundef !9
  %i.bj = icmp eq i64 %i.bi, 0
  %.sroa.0.0.i.i.i = select i1 %i.bj, ptr inttoptr (i64 16 to ptr), ptr %i.z
  %i.bk = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0.i.i.i, i64 %i.bh ; 4 uses
  store i64 -9223372036854775780, ptr %i.bk, align 16, !noalias !8915
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i32 %.sroa.0.0.copyload1.i.i, ptr %.sroa.429.0..sroa_idx.i, align 8, !noalias !8915
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.530.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(40) %.sroa.530.i, i64 40, i1 false), !noalias !8915
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 52
  store i8 %i.bg, ptr %.sroa.6.0..sroa_idx.i, align 4, !noalias !8915
  %i.bl = add i64 %i.bh, 1
  store i64 %i.bl, ptr %.val10.i, align 8, !noalias !8934
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.530.i)
  %i.bm = icmp eq i64 %i.ab, 0
  br i1 %i.bm, label %._RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtCsbdtVtHYmo6x_8thin_vec8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENCNvMNtNtB1B_5infer11diagnosticsNtB2H_11Diagnostics19push_ty_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.thread.i.loopexit_crit_edge, label %bb.j

._RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtCsbdtVtHYmo6x_8thin_vec8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENCNvMNtNtB1B_5infer11diagnosticsNtB2H_11Diagnostics19push_ty_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.thread.i.loopexit_crit_edge: ; preds = %bb.y
  %.pre.pre = load i64, ptr %i.h, align 8, !noalias !8936
  br label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtCsbdtVtHYmo6x_8thin_vec8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENCNvMNtNtB1B_5infer11diagnosticsNtB2H_11Diagnostics19push_ty_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.thread.i

bb.z:                                             ; preds = %bb.h, %bb.e
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCsbdtVtHYmo6x_8thin_vec8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENCNvMNtNtB1O_5infer11diagnosticsNtB2U_11Diagnostics19push_ty_diagnostics0EEB1O_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.c) #52
          to label %bb.ac unwind label %bb.x, !noalias !8913

bb.aa:                                            ; preds = %bb.a
  invoke void @_RNvNtCshzWfHUSfYae_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @205) #51
          to label %bb.af unwind label %bb.ag

bb.ab:                                            ; preds = %bb.u
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z, %bb.t, %.body.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bn, %bb.ab ], [ %lpad.phi.i, %.body.i ], [ %lpad.thr_comm.i, %bb.z ], [ %i.av, %bb.t ]
  %i.bo = load i64, ptr %0, align 8, !noundef !9
  %i.bp = add i64 %i.bo, 1
  store i64 %i.bp, ptr %0, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticEEB1f_.exit

bb.ad:                                            ; preds = %bb.u, %_RNvXsC_CsbdtVtHYmo6x_8thin_vecINtB5_8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBN_.exit.i13._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bq = load i64, ptr %0, align 8, !noundef !9
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %0, align 8
  ret void

bb.ae:                                            ; preds = %bb.ah
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.af:                                            ; preds = %bb.aa
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticEEB1f_.exit: ; preds = %bb.ag, %bb.ah, %bb.ac
  %.pn17 = phi { ptr, i32 } [ %eh.lpad-body, %bb.ac ], [ %i.bt, %bb.ah ], [ %i.bt, %bb.ag ]
  resume { ptr, i32 } %.pn17

bb.ag:                                            ; preds = %bb.aa
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = icmp eq i64 %2, ptrtoint (ptr @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER to i64)
  br i1 %i.bu, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticEEB1f_.exit, label %bb.ah, !prof !11

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticEB1T_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.d) #57
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticEEB1f_.exit unwind label %bb.ae
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty5infer11diagnosticsNtB2_11Diagnostics4push(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef align 16 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = load i64, ptr %0, align 8, !noundef !9
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.j, !prof !11

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %1, i64 64, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8944)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !8944, !noalias !8945, !nonnull !9, !noundef !9 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !noalias !8946, !noundef !9 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noalias !8946, !noundef !9 ; 2 uses
  %i.h = icmp eq i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.i = add nuw i64 %i.e, 1
  switch i64 %i.e, label %bb.e [
    i64 -1, label %bb.d
    i64 0, label %bb.f
  ], !prof !41

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #51
          to label %.noexc.i unwind label %bb.h, !noalias !8946

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = shl nuw i64 %i.e, 1
  %i.k = icmp slt i64 %i.e, 0
  br i1 %i.k, label %bb.g, label %bb.f, !prof !8

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.c
  %.sroa.01.0.i.i = phi i64 [ %i.j, %bb.e ], [ -1, %bb.g ], [ 4, %bb.c ]
  %..i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.01.0.i.i, i64 %i.i)
  invoke fastcc void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty5infer19InferenceDiagnosticE10reallocateBK_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.c, i64 noundef %..i.i.i)
          to label %._crit_edge.i unwind label %bb.h, !noalias !8945

._crit_edge.i:                                    ; preds = %bb.f
  %.val.pre.i = load ptr, ptr %i.c, align 8, !alias.scope !8944, !noalias !8945 ; 3 uses
  %.pre.i = load i64, ptr %.val.pre.i, align 8, !noalias !8947
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val.pre.i, i64 8
  %.pre4.i = load i64, ptr %.phi.trans.insert.i, align 8, !noalias !8948
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  br label %bb.f

bb.h:                                             ; preds = %bb.f, %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5infer19InferenceDiagnosticEBF_(ptr noalias nofree noundef align 16 dereferenceable(64) %i.a) #52
          to label %bb.k unwind label %bb.i, !noalias !8944

bb.i:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #53, !noalias !8944
  unreachable

bb.j:                                             ; preds = %bb.a
  invoke void @_RNvNtCshzWfHUSfYae_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) #51
          to label %bb.n unwind label %bb.p

bb.k:                                             ; preds = %bb.h
end_hunk_0
