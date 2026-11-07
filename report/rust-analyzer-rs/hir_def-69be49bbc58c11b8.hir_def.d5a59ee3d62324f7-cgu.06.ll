Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.06?download=true
inline.NumInlined: 3669
inline.NumDeleted: 1647
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB5_8Resolver14names_in_scope:bb.a
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 92
  %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  %i.ih = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.8.112..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 24
  %i.ii = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.4.28..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 24
  %i.ij = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.4.i.sroa.3.0..sroa.4.0..sroa_idx.i71.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.i.sroa.4.0..sroa.4.0..sroa_idx.i71.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  br label %bb.ay

bb.ay:                                            ; preds = %_RNvMs5_NtCsileJQcQObtj_7hir_def8resolverNtB5_10ScopeNames10add_per_ns.exit, %bb.ax
  %i.ik = invoke noundef align 8 ptr @_RNvXs0_NtNtCscFGNKo4Sl5v_9itertools8adaptors8coalesceINtB5_10CoalesceByINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterRNtNtCs33K2ylI4knu_10hir_expand4name4NameEINtB5_22DedupPred2CoalescePredNtB5_7DedupEqENtB5_7NoCountENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.as)
          to label %bb.ba unwind label %bb.az     ; 7 uses

bb.az:                                            ; preds = %_RNvMNtCsileJQcQObtj_7hir_def6per_nsNtB2_5PerNs7is_none.exit.i, %.thread.i, %bb.bh, %bb.bf, %bb.bb, %bb.ay
  %i.il = landingpad { ptr, i32 }
          cleanup
  %i.im = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterRNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.im)
          to label %.body unwind label %bb.bk

bb.ba:                                            ; preds = %bb.ay
  %.not10 = icmp eq ptr %i.ik, null
  br i1 %.not10, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %.val15 = load ptr, ptr %i.if, align 8, !nonnull !110, !align !111, !noundef !110
  invoke void @_RNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope3get(ptr noalias nofree noundef nonnull sret([128 x i8]) align 4 captures(none) dereferenceable(128) %i.ig, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %.val15, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ik)
          to label %bb.be unwind label %bb.az

bb.bc:                                            ; preds = %bb.ba
  %i.in = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterRNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.in)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscFGNKo4Sl5v_9itertools8adaptors8coalesce10CoalesceByINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterRNtNtCs33K2ylI4knu_10hir_expand4name4NameEINtB1c_22DedupPred2CoalescePredNtB1c_7DedupEqENtB1c_7NoCountENCNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB4J_9ItemScope7entries0EEB4L_.exit69 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscFGNKo4Sl5v_9itertools8adaptors8coalesce10CoalesceByINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterRNtNtCs33K2ylI4knu_10hir_expand4name4NameEINtB1c_22DedupPred2CoalescePredNtB1c_7DedupEqENtB1c_7NoCountENCNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB4J_9ItemScope7entries0EEB4L_.exit69: ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit81, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscFGNKo4Sl5v_9itertools8adaptors8coalesce10CoalesceByINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterRNtNtCs33K2ylI4knu_10hir_expand4name4NameEINtB1c_22DedupPred2CoalescePredNtB1c_7DedupEqENtB1c_7NoCountENCNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB4J_9ItemScope7entries0EEB4L_.exit69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.aw, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  ret void

bb.be:                                            ; preds = %bb.bb
  store ptr %i.ik, ptr %i.ap, align 8, !alias.scope !5317
  %.sroa.5.sroa.0.0.copyload = load i32, ptr %i.ig, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.4, ptr noundef nonnull align 4 dereferenceable(40) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 40, i1 false)
  %.sroa.5.sroa.6.0.copyload = load i32, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 4 ; 2 uses
  %.sroa.5.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.8.0.copyload = load i32, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %.not.i70 = icmp eq i32 %.sroa.5.sroa.8.0.copyload, -2 ; 2 uses
  br i1 %.not.i70, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5318
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ih, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.112..sroa_idx, i64 16, i1 false), !noalias !5319
  store i32 3, ptr %i.e, align 4, !noalias !5318
  invoke void @_RNvMs5_NtCsileJQcQObtj_7hir_def8resolverNtB5_10ScopeNames3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ik, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(20) %i.e)
          to label %.noexc72 unwind label %bb.az

.noexc72:                                         ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5318
  br label %bb.bg

bb.bg:                                            ; preds = %.noexc72, %bb.be
  %.not1.i = icmp eq i32 %.sroa.5.sroa.0.0.copyload, -1 ; 2 uses
  br i1 %.not1.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5318
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ii, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.28..sroa_idx, i64 16, i1 false), !noalias !5319
  store i32 3, ptr %i.d, align 4, !noalias !5318
  invoke void @_RNvMs5_NtCsileJQcQObtj_7hir_def8resolverNtB5_10ScopeNames3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ik, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(20) %i.d)
          to label %.noexc73 unwind label %bb.az

.noexc73:                                         ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5318
  br label %bb.bi

bb.bi:                                            ; preds = %.noexc73, %bb.bg
  %.not2.i = icmp eq i32 %.sroa.5.sroa.6.0.copyload, -1
  br i1 %.not2.i, label %bb.bj, label %.thread.i

bb.bj:                                            ; preds = %bb.bi
  %or.cond.i.i = and i1 %.not1.i, %.not.i70
  br i1 %or.cond.i.i, label %_RNvMNtCsileJQcQObtj_7hir_def6per_nsNtB2_5PerNs7is_none.exit.i, label %_RNvMs5_NtCsileJQcQObtj_7hir_def8resolverNtB5_10ScopeNames10add_per_ns.exit

.thread.i:                                        ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5318
  store i8 9, ptr %i.ij, align 4, !noalias !5318
  store i32 %.sroa.5.sroa.6.0.copyload, ptr %.sroa.4.i.sroa.3.0..sroa.4.0..sroa_idx.i71.sroa_idx, align 4, !noalias !5318
  store i64 %.sroa.5.sroa.7.sroa.0.0.copyload, ptr %.sroa.4.i.sroa.4.0..sroa.4.0..sroa_idx.i71.sroa_idx, align 4, !noalias !5318
  store i32 3, ptr %i.c, align 4, !noalias !5318
  invoke void @_RNvMs5_NtCsileJQcQObtj_7hir_def8resolverNtB5_10ScopeNames3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ik, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(20) %i.c)
          to label %.noexc74 unwind label %bb.az

.noexc74:                                         ; preds = %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5318
  br label %_RNvMs5_NtCsileJQcQObtj_7hir_def8resolverNtB5_10ScopeNames10add_per_ns.exit

_RNvMNtCsileJQcQObtj_7hir_def6per_nsNtB2_5PerNs7is_none.exit.i: ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5318
  store i32 4, ptr %i.b, align 4, !noalias !5318
  invoke void @_RNvMs5_NtCsileJQcQObtj_7hir_def8resolverNtB5_10ScopeNames3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ik, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(20) %i.b)
          to label %.noexc75 unwind label %bb.az

.noexc75:                                         ; preds = %_RNvMNtCsileJQcQObtj_7hir_def6per_nsNtB2_5PerNs7is_none.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5318
  br label %_RNvMs5_NtCsileJQcQObtj_7hir_def8resolverNtB5_10ScopeNames10add_per_ns.exit

_RNvMs5_NtCsileJQcQObtj_7hir_def8resolverNtB5_10ScopeNames10add_per_ns.exit: ; preds = %.noexc75, %.noexc74, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %bb.ay

bb.bk:                                            ; preds = %bb.az, %.body
  %i.io = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.bl:                                            ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB5_8Resolver14reset_to_guard(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i64 noundef %1) unnamed_addr #1 !guid !5320 {
bb.a:
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtCsileJQcQObtj_7hir_def8resolver5ScopeE8truncateBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB5_8Resolver15traits_in_scope(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %3) unnamed_addr #1 personality ptr @rust_eh_personality !guid !5340 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 4                 ; 5 uses
  %i.c = alloca [8 x i8], align 4                 ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 4                 ; 5 uses
  %i.f = alloca [8 x i8], align 4                 ; 5 uses
  %i.g = alloca [56 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 4                 ; 5 uses
  %i.j = alloca [8 x i8], align 4                 ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) @235, i64 32, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.o, align 8, !nonnull !110, !noundef !110 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9 = load i64, ptr %i.p, align 8, !noundef !110 ; 2 uses
  %i.q = icmp eq i64 %.val9, 0
  %.sink57.sroa.gep = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sink57.sroa.gep65 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sink57.sroa.gep66 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sink57.sroa.gep68 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sink57.sroa.gep69 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sink57.sroa.gep70 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sink57.sroa.gep72 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sink57.sroa.gep73 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sink57.sroa.gep74 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = mul nuw nsw i64 %.val9, 40
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx
  %.sroa.68.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.4.0..sroa.68.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %.sroa.530.0..sroa.68.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %bb.b

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXsb_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_15ExpressionStoreINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtNtNtB7_3hir8type_ref6PathIdE5index.exit, %bb.c, %bb.p, %bb.i, %bb.g, %bb.f, %.invoke, %bb.w, %bb.r, %bb.m, %bb.z, %bb.y, %bb.u, %bb.t, %bb.q
  %lpad.loopexit.split-lp61 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCsileJQcQObtj_7hir_def7TraitIduEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtCsileJQcQObtj_7hir_def7TraitIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1y_.exit unwind label %bb.ab

bb.b:                                             ; preds = %.lr.ph, %_RNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB5_8Resolver29resolve_path_in_type_ns_fully.exit.thread
  %.sroa.4.039 = phi ptr [ %i.r, %.lr.ph ], [ %i.u, %_RNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB5_8Resolver29resolve_path_in_type_ns_fully.exit.thread ] ; 7 uses
  %i.u = getelementptr inbounds i8, ptr %.sroa.4.039, i64 -40 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !range !118, !noundef !110
  switch i32 %i.v, label %_RNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB5_8Resolver29resolve_path_in_type_ns_fully.exit.thread [
    i32 0, label %bb.c
    i32 1, label %bb.e
  ]

_RNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB5_8Resolver29resolve_path_in_type_ns_fully.exit.thread: ; preds = %bb.n, %bb.o, %bb.p, %5, %bb.j, %bb.h, %bb.e, %bb.b
  %i.w = icmp eq ptr %.val, %i.u
  br i1 %i.w, label %._crit_edge, label %bb.b

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.x = getelementptr inbounds i8, ptr %.sroa.4.039, i64 -32
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !110, !align !111, !noundef !110 ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %.sroa.4.039, i64 -16
  %i.aa = load i32, ptr %i.z, align 8, !range !113, !noundef !110 ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %.sroa.4.039, i64 -12
  %i.ac = load i32, ptr %i.ab, align 4, !noundef !110 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i32 %i.aa, ptr %i.j, align 4, !noalias !5341
  store i32 %i.ac, ptr %i.s, align 4, !noalias !5341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5341
  store i32 %i.aa, ptr %i.i, align 4, !noalias !5341
  store i32 %i.ac, ptr %i.t, align 4, !noalias !5341
  %i.ad = invoke noundef align 8 ptr @_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBQ_7nameres10ModuleDataNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBQ_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.y, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.i)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.c
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %bb.d, label %bb.f, !prof !123

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5341
  br label %.invoke.sink.split

bb.e:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds i8, ptr %.sroa.4.039, i64 -36
  %i.af = load i32, ptr %i.ae, align 4, !range !141, !noundef !110
  %i.ag = icmp eq i32 %i.af, 5
  br i1 %i.ag, label %bb.i, label %_RNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB5_8Resolver29resolve_path_in_type_ns_fully.exit.thread

bb.f:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  invoke void @_RNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope6traits(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %i.ah)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  invoke void @_RINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB6_7HashSetNtCsileJQcQObtj_7hir_def7TraitIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB29_8adapters5chain5ChainINtNtB3b_10filter_map9FilterMapINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtBQ_6per_ns4ItemNtBQ_11ModuleDefIdNtNtBQ_10item_scope19ImportOrExternCrateEENCNvMs1_B69_NtB69_9ItemScope6traits0EINtNtB3b_3map3MapINtNtNtB2b_5slice4iter4IterTBO_IB5w_uEEENCB6P_s_0EEEBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.m)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB5_8Resolver29resolve_path_in_type_ns_fully.exit.thread

bb.i:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds i8, ptr %.sroa.4.039, i64 -32
  %i.aj = load i32, ptr %i.ai, align 8, !range !113, !noundef !110
  %i.ak = getelementptr inbounds i8, ptr %.sroa.4.039, i64 -28
  %i.al = load i32, ptr %i.ak, align 4, !noundef !110
  %i.am = invoke noundef nonnull align 8 ptr @_RNvMs19_NtCsileJQcQObtj_7hir_def10signaturesNtB6_13ImplSignature2of(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3, i32 noundef %i.aj, i32 noundef %i.al)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 120
  %i.ao = load i32, ptr %i.an, align 8, !range !134, !noundef !110
  %i.ap = trunc nuw i32 %i.ao to i1
  br i1 %i.ap, label %bb.k, label %_RNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB5_8Resolver29resolve_path_in_type_ns_fully.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 124
  %i.ar = load i32, ptr %i.aq, align 4, !noundef !110
  %i.as = getelementptr i8, ptr %i.am, i64 80
  %.val11 = load i64, ptr %i.as, align 8, !noundef !110 ; 2 uses
  %i.at = zext i32 %i.ar to i64                   ; 3 uses
  %i.au = icmp ugt i64 %.val11, %i.at
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr i8, ptr %i.am, i64 72
  %.val10 = load ptr, ptr %i.av, align 8, !nonnull !110, !noundef !110
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %.val10, i64 %i.at ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !range !5342, !noundef !110 ; 2 uses
  %i.ay = icmp ne i32 %i.ax, 6
  call void @llvm.assume(i1 %i.ay)
  %.inv.i = icmp samesign ult i32 %i.ax, 3
  br i1 %.inv.i, label %_RNvXsb_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_15ExpressionStoreINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtNtNtB7_3hir8type_ref6PathIdE5index.exit, label %.invoke, !prof !119

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.at, i64 noundef %.val11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @243) #42
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %bb.m
  unreachable

_RNvXsb_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_15ExpressionStoreINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtNtNtB7_3hir8type_ref6PathIdE5index.exit: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5343
  invoke void @_RNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB5_8Resolver40resolve_path_in_type_ns_with_prefix_info(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aw)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc15:                                         ; preds = %_RNvXsb_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_15ExpressionStoreINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtNtNtB7_3hir8type_ref6PathIdE5index.exit
  %i.az = load i64, ptr %i.g, align 8, !range !127, !noalias !5343, !noundef !110 ; 2 uses
  %.not.i.i = icmp eq i64 %i.az, 2
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.noexc15
  %.sroa.029.0.copyload = load i32, ptr %.sroa.68.0..sroa_idx.i.i, align 8, !noalias !5344 ; 3 uses
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa.68.0..sroa_idx.i.i.sroa_idx, align 4, !noalias !5344
  %.sroa.530.0.copyload = load i32, ptr %.sroa.530.0..sroa.68.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !5344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5343
  %4 = icmp eq i64 %i.az, 1
  %.not = icmp eq i32 %.sroa.029.0.copyload, -1
  %or.cond = select i1 %4, i1 true, i1 %.not
  br i1 %or.cond, label %_RNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB5_8Resolver29resolve_path_in_type_ns_fully.exit.thread, label %5

bb.o:                                             ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5343
  br label %_RNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB5_8Resolver29resolve_path_in_type_ns_fully.exit.thread

5:                                                ; preds = %bb.n
  %6 = icmp ne i32 %.sroa.029.0.copyload, 10
  call void @llvm.assume(i1 %6)
  %7 = icmp eq i32 %.sroa.029.0.copyload, 16
  br i1 %7, label %bb.p, label %_RNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB5_8Resolver29resolve_path_in_type_ns_fully.exit.thread

bb.p:                                             ; preds = %5
  %i.ba = invoke noundef zeroext i1 @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtCsileJQcQObtj_7hir_def7TraitIduNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n, i32 noundef %.sroa.4.0.copyload, i32 noundef %.sroa.530.0.copyload)
          to label %_RNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB5_8Resolver29resolve_path_in_type_ns_fully.exit.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

._crit_edge:                                      ; preds = %_RNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB5_8Resolver29resolve_path_in_type_ns_fully.exit.thread, %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !110, !align !111, !noundef !110 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 216
  %.sroa.028.0.copyload = load i32, ptr %i.bd, align 8, !alias.scope !5345 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 220
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !alias.scope !5345 ; 3 uses
  %.not8 = icmp eq i32 %.sroa.028.0.copyload, 0
  br i1 %.not8, label %bb.w, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.be = invoke noundef nonnull align 8 ptr @_RNvMsn_CsileJQcQObtj_7hir_defNtB5_10ModuleIdLt7def_map(i32 noundef %.sroa.028.0.copyload, i32 noundef %.sroa.5.0.copyload, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %.sroa.028.0.copyload, ptr %i.f, align 4, !noalias !5346
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %.sroa.5.0.copyload, ptr %i.bf, align 4, !noalias !5346
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5346
  store i32 %.sroa.028.0.copyload, ptr %i.e, align 4, !noalias !5346
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %.sroa.5.0.copyload, ptr %i.bg, align 4, !noalias !5346
  %i.bh = invoke noundef align 8 ptr @_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBQ_7nameres10ModuleDataNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBQ_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.be, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc19:                                         ; preds = %bb.r
  %.not.i16 = icmp eq ptr %i.bh, null
  br i1 %.not.i16, label %bb.s, label %bb.t, !prof !123

bb.s:                                             ; preds = %.noexc19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5346
  br label %.invoke.sink.split

bb.t:                                             ; preds = %.noexc19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  invoke void @_RNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope6traits(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %i.bi)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  invoke void @_RINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB6_7HashSetNtCsileJQcQObtj_7hir_def7TraitIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB29_8adapters5chain5ChainINtNtB3b_10filter_map9FilterMapINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtBQ_6per_ns4ItemNtBQ_11ModuleDefIdNtNtBQ_10item_scope19ImportOrExternCrateEENCNvMs1_B69_NtB69_9ItemScope6traits0EINtNtB3b_3map3MapINtNtNtB2b_5slice4iter4IterTBO_IB5w_uEEENCB6P_s_0EEEBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.l)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bk = load i32, ptr %i.bj, align 8, !range !113, !noundef !110 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bm = load i32, ptr %i.bl, align 4, !noundef !110 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.bk, ptr %i.c, align 4, !noalias !5347
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.bm, ptr %i.bn, align 4, !noalias !5347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5347
  store i32 %i.bk, ptr %i.b, align 4, !noalias !5347
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.bm, ptr %i.bo, align 4, !noalias !5347
  %i.bp = invoke noundef align 8 ptr @_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBQ_7nameres10ModuleDataNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBQ_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.bc, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc25:                                         ; preds = %bb.w
  %.not.i22 = icmp eq ptr %i.bp, null
  br i1 %.not.i22, label %bb.x, label %bb.y, !prof !123

bb.x:                                             ; preds = %.noexc25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5347
  br label %.invoke.sink.split

.invoke.sink.split:                               ; preds = %bb.x, %bb.s, %bb.d
  %.lcssa51.sink = phi ptr [ %i.y, %bb.d ], [ %i.be, %bb.s ], [ %i.bc, %bb.x ]
  %.sink57.sroa.phi = phi ptr [ %.sink57.sroa.gep, %bb.d ], [ %.sink57.sroa.gep65, %bb.s ], [ %.sink57.sroa.gep66, %bb.x ]
  %.sink57.sroa.phi67 = phi ptr [ %.sink57.sroa.gep68, %bb.d ], [ %.sink57.sroa.gep69, %bb.s ], [ %.sink57.sroa.gep70, %bb.x ]
  %.sink57.sroa.phi71 = phi ptr [ %.sink57.sroa.gep72, %bb.d ], [ %.sink57.sroa.gep73, %bb.s ], [ %.sink57.sroa.gep74, %bb.x ]
  %.sink57 = phi ptr [ %i.h, %bb.d ], [ %i.d, %bb.s ], [ %i.a, %bb.x ] ; 2 uses
  %.sink52 = phi ptr [ %i.j, %bb.d ], [ %i.f, %bb.s ], [ %i.c, %bb.x ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.lcssa51.sink, i64 88
  store ptr %i.bq, ptr %.sink57, align 8, !noalias !110
  store ptr @_RNvXsa_NvCsileJQcQObtj_7hir_defsi_1__NtB7_10ModuleIdLtNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sink57.sroa.phi, align 8, !noalias !110
  store ptr %.sink52, ptr %.sink57.sroa.phi67, align 8, !noalias !110
  store ptr @_RNvXsa_NvCsileJQcQObtj_7hir_defsi_1__NtB7_10ModuleIdLtNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sink57.sroa.phi71, align 8, !noalias !110
  br label %.invoke

.invoke:                                          ; preds = %bb.l, %.invoke.sink.split
  %i.br = phi ptr [ @345, %.invoke.sink.split ], [ @448, %bb.l ]
  %i.bs = phi ptr [ %.sink57, %.invoke.sink.split ], [ inttoptr (i64 167 to ptr), %bb.l ]
  %i.bt = phi ptr [ @346, %.invoke.sink.split ], [ @243, %bb.l ]
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull %i.br, ptr noundef nonnull %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bt) #42
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.y:                                             ; preds = %.noexc25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  invoke void @_RNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope6traits(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %i.bu)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  invoke void @_RINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB6_7HashSetNtCsileJQcQObtj_7hir_def7TraitIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB29_8adapters5chain5ChainINtNtB3b_10filter_map9FilterMapINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtBQ_6per_ns4ItemNtBQ_11ModuleDefIdNtNtBQ_10item_scope19ImportOrExternCrateEENCNvMs1_B69_NtB69_9ItemScope6traits0EINtNtB3b_3map3MapINtNtNtB2b_5slice4iter4IterTBO_IB5w_uEEENCB6P_s_0EEEBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.k)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

bb.ab:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtCsileJQcQObtj_7hir_def7TraitIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1y_.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp61
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @_RNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB5_8Resolver16resolve_lifetime(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #10 personality ptr @rust_eh_personality !guid !5369 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !range !5370, !noundef !110 ; 3 uses
  %i.b = icmp ne i32 %i.a, 12
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i32 %i.a, -9
  %i.d = icmp samesign ugt i32 %i.a, 8
  %narrow = select i1 %i.d, i32 %i.c, i32 3
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !110, !noundef !110 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !110 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5371)
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %.idx = mul nuw nsw i64 %i.h, 40
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !5371, !nonnull !110
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %i.m = phi ptr [ %i.j, %.lr.ph.i ], [ %i.n, %.loopexit.i ] ; 4 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -40 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5373)
  %i.o = load i32, ptr %i.n, align 8, !range !118, !alias.scope !5374, !noalias !5375, !noundef !110
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %.loopexit.i

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 -24
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !5374, !noalias !5375, !nonnull !110, !align !111, !noundef !110 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.m, i64 -36
  %.sroa.01.0.copyload.i.i.i = load i32, ptr %i.s, align 4, !alias.scope !5374, !noalias !5375
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5376)
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !5376, !noalias !5377, !nonnull !110, !noundef !110 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !5376, !noalias !5377, !noundef !110 ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.w, 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i.i.i.i
  %i.y = icmp eq i64 %i.w, 0
  br i1 %i.y, label %.loopexit.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.e
  %.sroa.0.0.copyload3.i.i.i.i.fr.i.i.i.i = freeze i32 %.sroa.01.0.copyload.i.i.i ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload3.i.i.i.i.fr.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.preheader.i.i.i.i, %bb.f
  %i.z = phi i32 [ %i.ad, %bb.f ], [ 0, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  %i.aa = phi ptr [ %i.ac, %bb.f ], [ %i.u, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !5378, !noalias !5379, !nonnull !110, !noundef !110
  %i.ab = icmp eq ptr %.val.i.i.i.i.i, %i.l
  br i1 %i.ab, label %_RNCNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB7_8Resolver16resolve_lifetime0B9_.exit.i.i, label %bb.f
end_hunk_0
