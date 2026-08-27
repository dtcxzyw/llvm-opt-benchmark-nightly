Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-ab2aac80bfe783bd.diesel.1982d20ac86e90f0-cgu.13?download=true
inline.NumInlined: 961
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_RNvMs1_NtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structuresNtB5_20ForeignKeyConstraint14ordered_tables:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1810)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1813)
  br i1 %i.n, label %_RNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp3Ord3minB9_.exit._RNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp3Ord3minB9_.exit.thread_crit_edge, label %_RNvXs8_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_10PartialOrd2ltBJ_.exit.i3

_RNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp3Ord3minB9_.exit._RNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp3Ord3minB9_.exit.thread_crit_edge: ; preds = %_RNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp3Ord3minB9_.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1815, !noalias !1816
  %.phi.trans.insert16 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre17 = load i64, ptr %.phi.trans.insert16, align 8, !alias.scope !1815, !noalias !1816 ; 2 uses
  %.phi.trans.insert18 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre19 = load ptr, ptr %.phi.trans.insert18, align 8, !alias.scope !1816, !noalias !1815
  %.phi.trans.insert20 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre21 = load i64, ptr %.phi.trans.insert20, align 8, !alias.scope !1816, !noalias !1815 ; 2 uses
  %.pre22 = tail call i64 @llvm.umin.i64(i64 %.pre17, i64 %.pre21)
  %.pre23 = sub i64 %.pre17, %.pre21
  br label %_RNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp3Ord3minB9_.exit.thread

_RNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp3Ord3minB9_.exit.thread: ; preds = %_RNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp3Ord3minB9_.exit._RNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp3Ord3minB9_.exit.thread_crit_edge, %.split.i, %.split8.i, %bb.d
  %.pre-phi = phi i64 [ %.pre23, %_RNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp3Ord3minB9_.exit._RNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp3Ord3minB9_.exit.thread_crit_edge ], [ %i.z, %.split.i ], [ %i.z, %.split8.i ], [ %i.z, %bb.d ]
  %spec.store.select1.i.i.i.i7.pre-phi = phi i64 [ %.pre22, %_RNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp3Ord3minB9_.exit._RNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp3Ord3minB9_.exit.thread_crit_edge ], [ %spec.store.select1.i.i.i.i, %.split.i ], [ %spec.store.select1.i.i.i.i, %.split8.i ], [ %spec.store.select1.i.i.i.i, %bb.d ]
  %i.at = phi ptr [ %.pre19, %_RNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp3Ord3minB9_.exit._RNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp3Ord3minB9_.exit.thread_crit_edge ], [ %i.t, %.split.i ], [ %i.t, %.split8.i ], [ %i.t, %bb.d ]
  %i.au = phi ptr [ %.pre, %_RNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp3Ord3minB9_.exit._RNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp3Ord3minB9_.exit.thread_crit_edge ], [ %i.p, %.split.i ], [ %i.p, %.split8.i ], [ %i.p, %bb.d ]
  %i.av = phi ptr [ %i.as, %_RNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp3Ord3minB9_.exit._RNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp3Ord3minB9_.exit.thread_crit_edge ], [ %i.a, %.split.i ], [ %i.a, %.split8.i ], [ %i.a, %bb.d ] ; 6 uses
  %i.aw = tail call i32 @memcmp(ptr nonnull %i.au, ptr nonnull %i.at, i64 %spec.store.select1.i.i.i.i7.pre-phi), !noalias !1817 ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp eq i32 %i.aw, 0
  %spec.select30.i.i.i.i8 = select i1 %i.ay, i64 %.pre-phi, i64 %i.ax ; 2 uses
  %i.az = icmp eq i64 %spec.select30.i.i.i.i8, 0
  br i1 %i.az, label %bb.f, label %_RNvXs8_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_10PartialOrd2ltBJ_.exit.i3

bb.f:                                             ; preds = %_RNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp3Ord3minB9_.exit.thread
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = load i64, ptr %i.ba, align 8, !range !36, !alias.scope !1815, !noalias !1816, !noundef !5
  %.not.i.i.i.i9 = icmp eq i64 %i.bb, -1
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bd = load i64, ptr %i.bc, align 8, !range !36, !alias.scope !1816, !noalias !1815, !noundef !5
  %.not28.i.i.i.not.i10 = icmp eq i64 %i.bd, -1   ; 2 uses
  br i1 %.not.i.i.i.i9, label %.split8.i15, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not28.i.i.i.not.i10, label %_RNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp3Ord3maxB9_.exit, label %.split.i11

.split8.i15:                                      ; preds = %bb.f
  br i1 %.not28.i.i.i.not.i10, label %_RNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp3Ord3maxB9_.exit, label %bb.h

.split.i11:                                       ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !1815, !noalias !1816, !nonnull !5, !noundef !5
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !1815, !noalias !1816, !noundef !5 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !1816, !noalias !1815, !nonnull !5, !noundef !5
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !1816, !noalias !1815, !noundef !5 ; 2 uses
  %spec.store.select2.i.i.i.i12 = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 %i.bl)
  %i.bm = tail call i32 @memcmp(ptr nonnull %i.bf, ptr nonnull %i.bj, i64 %spec.store.select2.i.i.i.i12), !noalias !1817 ; 2 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp eq i32 %i.bm, 0
  %i.bp = sub i64 %i.bh, %i.bl
  %spec.select31.i.i.i.i13 = select i1 %i.bo, i64 %i.bp, i64 %i.bn
  %spec.select31.i.i.i.fr.i14 = freeze i64 %spec.select31.i.i.i.i13
  %i.bq = icmp slt i64 %spec.select31.i.i.i.fr.i14, 0
  br i1 %i.bq, label %bb.h, label %_RNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp3Ord3maxB9_.exit

_RNvXs8_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_10PartialOrd2ltBJ_.exit.i3: ; preds = %_RNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp3Ord3minB9_.exit.thread, %_RNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp3Ord3minB9_.exit
  %i.br = phi ptr [ %i.as, %_RNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp3Ord3minB9_.exit ], [ %i.av, %_RNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp3Ord3minB9_.exit.thread ] ; 2 uses
  %.sroa.0.0.i.i.i.in.i4 = phi i64 [ %spec.select.i.i.i.i, %_RNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp3Ord3minB9_.exit ], [ %spec.select30.i.i.i.i8, %_RNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp3Ord3minB9_.exit.thread ]
  %.sroa.0.0.i.i.i.in.fr.i5 = freeze i64 %.sroa.0.0.i.i.i.in.i4
  %.sroa.0.0.i.i.i.i6 = icmp slt i64 %.sroa.0.0.i.i.i.in.fr.i5, 0
  br i1 %.sroa.0.0.i.i.i.i6, label %bb.h, label %_RNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp3Ord3maxB9_.exit

bb.h:                                             ; preds = %_RNvXs8_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_10PartialOrd2ltBJ_.exit.i3, %.split.i11, %.split8.i15
  %i.bs = phi ptr [ %i.br, %_RNvXs8_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_10PartialOrd2ltBJ_.exit.i3 ], [ %i.av, %.split.i11 ], [ %i.av, %.split8.i15 ]
  br label %_RNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp3Ord3maxB9_.exit

_RNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp3Ord3maxB9_.exit: ; preds = %bb.g, %.split8.i15, %.split.i11, %_RNvXs8_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_10PartialOrd2ltBJ_.exit.i3, %bb.h
  %i.bt = phi ptr [ %i.bs, %bb.h ], [ %i.br, %_RNvXs8_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_10PartialOrd2ltBJ_.exit.i3 ], [ %i.av, %.split8.i15 ], [ %i.av, %.split.i11 ], [ %i.av, %bb.g ]
  %i.bu = phi ptr [ %i.a, %bb.h ], [ %0, %_RNvXs8_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_10PartialOrd2ltBJ_.exit.i3 ], [ %0, %.split8.i15 ], [ %0, %.split.i11 ], [ %0, %bb.g ]
  %i.bv = insertvalue { ptr, ptr } poison, ptr %i.bt, 0
  %i.bw = insertvalue { ptr, ptr } %i.bv, ptr %i.bu, 1
  ret { ptr, ptr } %i.bw
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsc_CslibzpPmnZjn_8smallvecINtB5_8SmallVecAINtNtCseEiWxPEiqDv_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredNtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryEEj10_E21reserve_one_uncheckedCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(656) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1818, !noalias !1821, !noundef !5 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 16
  br i1 %i.c, label %_RNvMsc_CslibzpPmnZjn_8smallvecINtB5_8SmallVecAINtNtCseEiWxPEiqDv_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredNtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryEEj10_E6tripleCs2bNgeUs5Jlc_6diesel.exit, label %_RNvMsc_CslibzpPmnZjn_8smallvecINtB5_8SmallVecAINtNtCseEiWxPEiqDv_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredNtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryEEj10_E6tripleCs2bNgeUs5Jlc_6diesel.exit.thread

_RNvMsc_CslibzpPmnZjn_8smallvecINtB5_8SmallVecAINtNtCseEiWxPEiqDv_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredNtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryEEj10_E6tripleCs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1818, !noalias !1821, !noundef !5 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.e, label %_RNvMsc_CslibzpPmnZjn_8smallvecINtB5_8SmallVecAINtNtCseEiWxPEiqDv_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredNtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryEEj10_E6tripleCs2bNgeUs5Jlc_6diesel.exit.thread, !prof !1823

_RNvMsc_CslibzpPmnZjn_8smallvecINtB5_8SmallVecAINtNtCseEiWxPEiqDv_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredNtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryEEj10_E6tripleCs2bNgeUs5Jlc_6diesel.exit.thread: ; preds = %bb.a, %_RNvMsc_CslibzpPmnZjn_8smallvecINtB5_8SmallVecAINtNtCseEiWxPEiqDv_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredNtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryEEj10_E6tripleCs2bNgeUs5Jlc_6diesel.exit
  %.sink11.i8 = phi i64 [ %i.e, %_RNvMsc_CslibzpPmnZjn_8smallvecINtB5_8SmallVecAINtNtCseEiWxPEiqDv_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredNtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryEEj10_E6tripleCs2bNgeUs5Jlc_6diesel.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq i64 %.sink11.i8, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink11.i8, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.e, label %bb.b, !prof !4

bb.b:                                             ; preds = %_RNvMsc_CslibzpPmnZjn_8smallvecINtB5_8SmallVecAINtNtCseEiWxPEiqDv_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredNtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryEEj10_E6tripleCs2bNgeUs5Jlc_6diesel.exit.thread
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsc_CslibzpPmnZjn_8smallvecINtB5_8SmallVecAINtNtCseEiWxPEiqDv_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredNtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryEEj10_E8try_growCs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 dereferenceable(656) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 -1, label %_RINvCslibzpPmnZjn_8smallvec10infallibleuECs2bNgeUs5Jlc_6diesel.exit
    i64 0, label %bb.d
  ], !prof !1824

bb.c:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25
  unreachable

_RINvCslibzpPmnZjn_8smallvec10infallibleuECs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %_RNvMsc_CslibzpPmnZjn_8smallvecINtB5_8SmallVecAINtNtCseEiWxPEiqDv_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredNtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryEEj10_E6tripleCs2bNgeUs5Jlc_6diesel.exit.thread, %_RNvMsc_CslibzpPmnZjn_8smallvecINtB5_8SmallVecAINtNtCseEiWxPEiqDv_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredNtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryEEj10_E6tripleCs2bNgeUs5Jlc_6diesel.exit
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsc_CslibzpPmnZjn_8smallvecINtB5_8SmallVecAINtNtCseEiWxPEiqDv_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredNtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryEEj10_E8try_growCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(656) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsc_CslibzpPmnZjn_8smallvecINtB5_8SmallVecAINtNtCseEiWxPEiqDv_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredNtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryEEj10_E10triple_mutCs2bNgeUs5Jlc_6diesel.exit:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 6 uses
  %i.d = icmp ult i64 %i.c, 17                    ; 2 uses
  %i.e = icmp ugt i64 %i.c, 16                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5
  %.sink11.i = select i1 %i.e, ptr %i.h, ptr %i.f ; 4 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16) ; 2 uses
  %.val = load i64, ptr %i.f, align 8
  %.val72 = load i64, ptr %i.b, align 8
  %i.i = select i1 %i.e, i64 %.val, i64 %.val72   ; 5 uses
  %.not = icmp ult i64 %1, %i.i
  br i1 %.not, label %bb.a, label %bb.b, !prof !4

bb.a:                                             ; preds = %_RNvMsc_CslibzpPmnZjn_8smallvecINtB5_8SmallVecAINtNtCseEiWxPEiqDv_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredNtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryEEj10_E10triple_mutCs2bNgeUs5Jlc_6diesel.exit
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #25
  unreachable

bb.b:                                             ; preds = %_RNvMsc_CslibzpPmnZjn_8smallvecINtB5_8SmallVecAINtNtCseEiWxPEiqDv_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredNtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryEEj10_E10triple_mutCs2bNgeUs5Jlc_6diesel.exit
  %i.j = icmp ult i64 %1, 17
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not46 = icmp eq i64 %i.c, %1
  br i1 %.not46, label %bb.l, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.l, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.k = mul i64 %1, 40                           ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 230584300921369395
  br i1 %or.cond.not, label %bb.l, label %_RINvCslibzpPmnZjn_8smallvec12layout_arrayINtNtCseEiWxPEiqDv_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtBG_7sharded8RegistryEEECs2bNgeUs5Jlc_6diesel.exit, !prof !1825

_RINvCslibzpPmnZjn_8smallvec12layout_arrayINtNtCseEiWxPEiqDv_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtBG_7sharded8RegistryEEECs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.e
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvCslibzpPmnZjn_8smallvec12layout_arrayINtNtCseEiWxPEiqDv_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtBG_7sharded8RegistryEEECs2bNgeUs5Jlc_6diesel.exit
  %i.l = mul i64 %.sink.i, 40                     ; 2 uses
  %or.cond65.not = icmp ugt i64 %i.c, 230584300921369395
  br i1 %or.cond65.not, label %bb.l, label %_RINvCslibzpPmnZjn_8smallvec12layout_arrayINtNtCseEiWxPEiqDv_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtBG_7sharded8RegistryEEECs2bNgeUs5Jlc_6diesel.exit48, !prof !1825

bb.g:                                             ; preds = %_RINvCslibzpPmnZjn_8smallvec12layout_arrayINtNtCseEiWxPEiqDv_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtBG_7sharded8RegistryEEECs2bNgeUs5Jlc_6diesel.exit
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.m = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef 8) #28 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.l, label %bb.i

_RINvCslibzpPmnZjn_8smallvec12layout_arrayINtNtCseEiWxPEiqDv_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtBG_7sharded8RegistryEEECs2bNgeUs5Jlc_6diesel.exit48: ; preds = %bb.f
  %i.o = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc14___rust_realloc(ptr noundef nonnull %.sink11.i, i64 noundef %i.l, i64 noundef 8, i64 noundef %i.k) #28 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_RINvCslibzpPmnZjn_8smallvec12layout_arrayINtNtCseEiWxPEiqDv_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtBG_7sharded8RegistryEEECs2bNgeUs5Jlc_6diesel.exit48, %bb.i
  %.sroa.031.0 = phi ptr [ %i.m, %bb.i ], [ %i.o, %_RINvCslibzpPmnZjn_8smallvec12layout_arrayINtNtCseEiWxPEiqDv_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtBG_7sharded8RegistryEEECs2bNgeUs5Jlc_6diesel.exit48 ]
  store i64 1, ptr %0, align 8
  store i64 %i.i, ptr %i.f, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0, ptr %.sroa.540.0..sroa_idx, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.q = mul nuw i64 %i.i, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %.sink11.i, i64 %i.q, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.d
  store i64 0, ptr %0, align 8
  %i.r = mul nuw i64 %i.i, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %.sink11.i, i64 %i.r, i1 false)
  store i64 %i.i, ptr %i.b, align 8
  %i.s = mul i64 %.sink.i, 40                     ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.c, 230584300921369395
  br i1 %or.cond.not.i, label %bb.k, label %_RINvCslibzpPmnZjn_8smallvec10deallocateINtNtCseEiWxPEiqDv_18tracing_subscriber8registry7SpanRefINtNtNtBG_5layer7layered7LayeredNtNtNtBG_6filter3env9EnvFilterNtNtBE_7sharded8RegistryEEECs2bNgeUs5Jlc_6diesel.exit, !prof !1825

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1826
  store i64 0, ptr %i.a, align 8, !noalias !1826
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.s, ptr %i.t, align 8, !noalias !1826
  call void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #25, !noalias !1826
  unreachable

_RINvCslibzpPmnZjn_8smallvec10deallocateINtNtCseEiWxPEiqDv_18tracing_subscriber8registry7SpanRefINtNtNtBG_5layer7layered7LayeredNtNtNtBG_6filter3env9EnvFilterNtNtBE_7sharded8RegistryEEECs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.j
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink11.i, i64 noundef %i.s, i64 noundef 8) #28
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.d, %_RINvCslibzpPmnZjn_8smallvec12layout_arrayINtNtCseEiWxPEiqDv_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtBG_7sharded8RegistryEEECs2bNgeUs5Jlc_6diesel.exit48, %bb.g, %_RINvCslibzpPmnZjn_8smallvec10deallocateINtNtCseEiWxPEiqDv_18tracing_subscriber8registry7SpanRefINtNtNtBG_5layer7layered7LayeredNtNtNtBG_6filter3env9EnvFilterNtNtBE_7sharded8RegistryEEECs2bNgeUs5Jlc_6diesel.exit, %bb.h, %bb.c
  %.sroa.7.1 = phi i64 [ undef, %_RINvCslibzpPmnZjn_8smallvec10deallocateINtNtCseEiWxPEiqDv_18tracing_subscriber8registry7SpanRefINtNtNtBG_5layer7layered7LayeredNtNtNtBG_6filter3env9EnvFilterNtNtBE_7sharded8RegistryEEECs2bNgeUs5Jlc_6diesel.exit ], [ undef, %bb.c ], [ undef, %bb.h ], [ %i.k, %bb.g ], [ undef, %bb.d ], [ %i.k, %_RINvCslibzpPmnZjn_8smallvec12layout_arrayINtNtCseEiWxPEiqDv_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtBG_7sharded8RegistryEEECs2bNgeUs5Jlc_6diesel.exit48 ], [ %i.l, %bb.f ], [ %i.k, %bb.e ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCslibzpPmnZjn_8smallvec10deallocateINtNtCseEiWxPEiqDv_18tracing_subscriber8registry7SpanRefINtNtNtBG_5layer7layered7LayeredNtNtNtBG_6filter3env9EnvFilterNtNtBE_7sharded8RegistryEEECs2bNgeUs5Jlc_6diesel.exit ], [ -1, %bb.c ], [ -1, %bb.h ], [ 8, %bb.g ], [ -1, %bb.d ], [ 8, %_RINvCslibzpPmnZjn_8smallvec12layout_arrayINtNtCseEiWxPEiqDv_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtBG_7sharded8RegistryEEECs2bNgeUs5Jlc_6diesel.exit48 ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.u = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.v = insertvalue { i64, i64 } %i.u, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.v
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals5mysqlNtNtB4_15data_structures17ColumnInformationINtNtCsjRvGck33osM_6diesel11deserialize9QueryableTNtNtB1H_9sql_types4TextB2q_INtB2s_8NullableB2q_EB2q_IB2S_INtNtNtB1H_5mysql5types8UnsignedNtB2s_6BigIntEEB2R_ENtNtB3q_7backend5MysqlE5buildB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) initializes((0, 113)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(136) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = load i64, ptr %i.e, align 8, !noundef !5
  %i.g = icmp eq i64 %i.f, 3
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.j = load i16, ptr %i.i, align 1
  %i.k = xor i16 %i.j, 17753
  %i.l = getelementptr i8, ptr %i.i, i64 2
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i16
  %i.o = xor i16 %i.n, 83
  %i.p = or i16 %i.k, %i.o
  %i.q = icmp ne i16 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  %i.t = zext i1 %i.s to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i8 [ %i.t, %bb.b ], [ 0, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.v = load <2 x i64>, ptr %1, align 8
  store <2 x i64> %i.v, ptr %0, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %.sroa.0.0, ptr %.sroa.9.0..sroa_idx, align 8
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECs2bNgeUs5Jlc_6diesel.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECs2bNgeUs5Jlc_6diesel.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.w

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsjRvGck33osM_6diesel9query_dsl10select_dslNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals18information_schema18information_schema6tables5tableINtB2_9SelectDslNtNtBP_7columns10table_nameE6selectBX_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvMs0_NtNtCsjRvGck33osM_6diesel13query_builder16select_statementINtB5_15SelectStatementINtNtB7_11from_clause10FromClauseNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals18information_schema18information_schema6tables5tableEE6simpleB25_()
  tail call void @_RNvXs0_NtNtNtCsjRvGck33osM_6diesel13query_builder16select_statement9dsl_implsINtB7_15SelectStatementINtNtB9_11from_clause10FromClauseNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals18information_schema18information_schema6tables5tableEEINtNtNtBb_9query_dsl10select_dsl9SelectDslNtNtB29_7columns10table_nameE6selectB2h_()
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCseEiWxPEiqDv_18tracing_subscriber3fmt6formatNtB5_6WriterNtNtCscI6d9CVNmLh_4core3fmt5Write10write_char(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !161, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, i32 noundef %1)
  ret i1 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCseEiWxPEiqDv_18tracing_subscriber3fmt6formatNtB5_6WriterNtNtCscI6d9CVNmLh_4core3fmt5Write9write_fmt(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMs_NtNtCseEiWxPEiqDv_18tracing_subscriber3fmt6formatNtB4_6Writer9write_fmt(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCseEiWxPEiqDv_18tracing_subscriber3fmt6formatNtB5_6WriterNtNtCscI6d9CVNmLh_4core3fmt5Write9write_str(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !161, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8find_map5checkRINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeERB2c_QNCNvXs1_NtB2i_12print_schemaNtB3J_15TableDefinitionNtNtBb_3fmt7Display3fmt0E0INtB7_5FnMutTuB1P_EE8call_mutB2i_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !161, !noundef !5
  %i.b = tail call noundef align 8 ptr @_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvXs1_NtCs2bNgeUs5Jlc_6diesel12print_schemaNtBW_15TableDefinitionNtNtBb_3fmt7Display3fmt0INtB7_5FnMutTRINtNtBb_6option6OptionNtNtNtBY_22infer_schema_internals15data_structures10ColumnTypeEEE8call_mutBY_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8find_map5checkTINtNtCs40k4W9msRzi_5alloc6borrow3CoweEINtNtBb_6option6OptionRSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEETB1Q_B2O_EQNCNvNtNtB2W_10migrations11diff_schema20collect_record_typess_0E0INtB7_5FnMutTuB1P_EE8call_mutB2W_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !5, !align !161, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1829)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %2, i64 40, i1 false), !noalias !1835
  call void @_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema20collect_record_typess_0INtB7_5FnMutTTINtNtCs40k4W9msRzi_5alloc6borrow3CoweEINtNtBb_6option6OptionRSNtNtNtBW_22infer_schema_internals15data_structures10ColumnTypeEEEE8call_mutBW_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !1836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1832
  %i.d = load i64, ptr %i.b, align 8, !range !1837, !noalias !1832, !noundef !5
  %.not.i = icmp eq i64 %i.d, -2
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !1838
  br label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8find_map5checkTINtNtCs40k4W9msRzi_5alloc6borrow3CoweEINtNtBe_6option6OptionRSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEETB1h_B2f_EQNCNvNtNtB2n_10migrations11diff_schema20collect_record_typess_0E0B2n_.exit

bb.c:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8, !alias.scope !1829, !noalias !1838
  br label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8find_map5checkTINtNtCs40k4W9msRzi_5alloc6borrow3CoweEINtNtBe_6option6OptionRSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEETB1h_B2f_EQNCNvNtNtB2n_10migrations11diff_schema20collect_record_typess_0E0B2n_.exit

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8find_map5checkTINtNtCs40k4W9msRzi_5alloc6borrow3CoweEINtNtBe_6option6OptionRSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEETB1h_B2f_EQNCNvNtNtB2n_10migrations11diff_schema20collect_record_typess_0E0B2n_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1832
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8find_map5checkTRINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeERNtB2f_16ColumnDefinitionRNtNtB2h_10table_data9TableNameETRB2d_B3V_B3w_EQNCNvXNtB2j_12print_schemaNtB4M_30CustomTypesForTablesForDisplayNtNtBb_3fmt7Display3fmts2_0E0INtB7_5FnMutTuB1P_EE8call_mutB2j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !5, !align !161, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1839)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1842
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1842
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !1845
  call void @_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvXNtCs2bNgeUs5Jlc_6diesel12print_schemaNtBT_30CustomTypesForTablesForDisplayNtNtBb_3fmt7Display3fmts2_0INtB7_5FnMutTTRINtNtBb_6option6OptionNtNtNtBV_22infer_schema_internals15data_structures10ColumnTypeERNtB39_16ColumnDefinitionRNtNtB3b_10table_data9TableNameEEE8call_mutBV_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1842
  %i.d = load ptr, ptr %i.b, align 8, !noalias !1842, !noundef !5
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1847
  br label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8find_map5checkTRINtNtBe_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeERNtB1G_16ColumnDefinitionRNtNtB1I_10table_data9TableNameETRB1E_B3m_B2X_EQNCNvXNtB1K_12print_schemaNtB4d_30CustomTypesForTablesForDisplayNtNtBe_3fmt7Display3fmts2_0E0B1K_.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !alias.scope !1839, !noalias !1847
  br label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8find_map5checkTRINtNtBe_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeERNtB1G_16ColumnDefinitionRNtNtB1I_10table_data9TableNameETRB1E_B3m_B2X_EQNCNvXNtB1K_12print_schemaNtB4d_30CustomTypesForTablesForDisplayNtNtBe_3fmt7Display3fmts2_0E0B1K_.exit

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8find_map5checkTRINtNtBe_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeERNtB1G_16ColumnDefinitionRNtNtB1I_10table_data9TableNameETRB1E_B3m_B2X_EQNCNvXNtB1K_12print_schemaNtB4d_30CustomTypesForTablesForDisplayNtNtBe_3fmt7Display3fmts2_0E0B1K_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1842
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs40k4W9msRzi_5alloc6stringNtB1Y_6StringINtNtBZ_7collect6ExtendcE6extendINtNtNtB11_8adapters5chain5ChainNtNtBb_4char11ToUppercaseNtNtNtBb_3str4iter5CharsEE0E0INtB7_5FnMutTucEE8call_mutCs2bNgeUs5Jlc_6diesel(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 {
bb.a:
end_hunk_0
